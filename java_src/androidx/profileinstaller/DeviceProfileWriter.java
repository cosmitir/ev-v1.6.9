package androidx.profileinstaller;

import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.os.Build;
import androidx.profileinstaller.ProfileInstaller;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public class DeviceProfileWriter {
    private final AssetManager mAssetManager;
    private final File mCurProfile;
    private final ProfileInstaller.DiagnosticsCallback mDiagnostics;
    private final Executor mExecutor;
    private Map<String, DexProfileData> mProfile;
    private final String mProfileSourceLocation;
    private final File mRefProfile;
    private byte[] mTranscodedProfile;
    private boolean mDeviceSupportsAotProfile = false;
    private final byte[] mDesiredVersion = desiredVersion();

    /* loaded from: classes.dex */
    public interface SkipStrategy {
        boolean shouldSkip(long newProfileLength, ExistingProfileState existingProfileState);
    }

    private void result(final int code, final Object data) {
        this.mExecutor.execute(new Runnable() { // from class: androidx.profileinstaller.DeviceProfileWriter$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                DeviceProfileWriter.this.m2348lambda$result$0$androidxprofileinstallerDeviceProfileWriter(code, data);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$result$0$androidx-profileinstaller-DeviceProfileWriter  reason: not valid java name */
    public /* synthetic */ void m2348lambda$result$0$androidxprofileinstallerDeviceProfileWriter(int i, Object obj) {
        this.mDiagnostics.onResultReceived(i, obj);
    }

    public DeviceProfileWriter(AssetManager assetManager, Executor executor, ProfileInstaller.DiagnosticsCallback diagnosticsCallback, String profileSourceLocation, File curProfile, File refProfile) {
        this.mAssetManager = assetManager;
        this.mExecutor = executor;
        this.mDiagnostics = diagnosticsCallback;
        this.mProfileSourceLocation = profileSourceLocation;
        this.mCurProfile = curProfile;
        this.mRefProfile = refProfile;
    }

    public boolean deviceAllowsProfileInstallerAotWrites() {
        if (this.mDesiredVersion == null) {
            result(3, Integer.valueOf(Build.VERSION.SDK_INT));
            return false;
        } else if (!this.mCurProfile.canWrite()) {
            result(4, null);
            return false;
        } else {
            this.mDeviceSupportsAotProfile = true;
            return true;
        }
    }

    private void assertDeviceAllowsProfileInstallerAotWritesCalled() {
        if (!this.mDeviceSupportsAotProfile) {
            throw new IllegalStateException("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
        }
    }

    public DeviceProfileWriter copyProfileOrRead(SkipStrategy skipStrategy) {
        AssetFileDescriptor openFd;
        FileInputStream createInputStream;
        byte[] readHeader;
        assertDeviceAllowsProfileInstallerAotWritesCalled();
        byte[] bArr = this.mDesiredVersion;
        if (bArr == null) {
            return this;
        }
        try {
            openFd = this.mAssetManager.openFd(this.mProfileSourceLocation);
            try {
                createInputStream = openFd.createInputStream();
                readHeader = ProfileTranscoder.readHeader(createInputStream);
            } catch (Throwable th) {
                if (openFd != null) {
                    try {
                        openFd.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (FileNotFoundException e) {
            this.mDiagnostics.onResultReceived(6, e);
        } catch (IOException e2) {
            this.mDiagnostics.onResultReceived(7, e2);
        } catch (IllegalStateException e3) {
            this.mDiagnostics.onResultReceived(8, e3);
        }
        if (!Arrays.equals(bArr, readHeader)) {
            this.mProfile = ProfileTranscoder.readProfile(createInputStream, readHeader);
            if (createInputStream != null) {
                createInputStream.close();
            }
            if (openFd != null) {
                openFd.close();
            }
            return this;
        }
        if (!skipStrategy.shouldSkip(openFd.getLength(), generateExistingProfileStateFromFileSystem())) {
            FileOutputStream fileOutputStream = new FileOutputStream(this.mCurProfile);
            try {
                ProfileTranscoder.writeHeader(fileOutputStream, bArr);
                Encoding.writeAll(createInputStream, fileOutputStream);
                fileOutputStream.close();
                this.mDiagnostics.onResultReceived(1, null);
            } catch (Throwable th3) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                }
                throw th3;
            }
        }
        if (createInputStream != null) {
            createInputStream.close();
        }
        if (openFd != null) {
            openFd.close();
        }
        return this;
    }

    public DeviceProfileWriter transcodeIfNeeded() {
        ByteArrayOutputStream byteArrayOutputStream;
        Map<String, DexProfileData> map = this.mProfile;
        byte[] bArr = this.mDesiredVersion;
        if (map != null && bArr != null) {
            assertDeviceAllowsProfileInstallerAotWritesCalled();
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    ProfileTranscoder.writeHeader(byteArrayOutputStream, bArr);
                } catch (Throwable th) {
                    try {
                        byteArrayOutputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (IOException e) {
                this.mDiagnostics.onResultReceived(7, e);
            } catch (IllegalStateException e2) {
                this.mDiagnostics.onResultReceived(8, e2);
            }
            if (!ProfileTranscoder.transcodeAndWriteBody(byteArrayOutputStream, bArr, map)) {
                this.mDiagnostics.onResultReceived(5, null);
                this.mProfile = null;
                byteArrayOutputStream.close();
                return this;
            }
            this.mTranscodedProfile = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            this.mProfile = null;
        }
        return this;
    }

    /* JADX WARN: Type inference failed for: r5v2, types: [byte[], java.util.Map<java.lang.String, androidx.profileinstaller.DexProfileData>] */
    public void writeIfNeeded(SkipStrategy skipStrategy) {
        ByteArrayInputStream byteArrayInputStream;
        byte[] bArr = this.mTranscodedProfile;
        if (bArr == null) {
            return;
        }
        assertDeviceAllowsProfileInstallerAotWritesCalled();
        if (skipStrategy.shouldSkip(bArr.length, generateExistingProfileStateFromFileSystem())) {
            return;
        }
        try {
            try {
                try {
                    byteArrayInputStream = new ByteArrayInputStream(bArr);
                } catch (IOException e) {
                    result(7, e);
                }
            } catch (FileNotFoundException e2) {
                result(6, e2);
            }
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(this.mCurProfile);
                Encoding.writeAll(byteArrayInputStream, fileOutputStream);
                result(1, null);
                fileOutputStream.close();
                byteArrayInputStream.close();
            } catch (Throwable th) {
                try {
                    byteArrayInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } finally {
            this.mTranscodedProfile = null;
            this.mProfile = null;
        }
    }

    private static byte[] desiredVersion() {
        switch (Build.VERSION.SDK_INT) {
            case 24:
            case 25:
                return ProfileVersion.V001_N;
            case 26:
            case 27:
                return ProfileVersion.V005_O;
            case 28:
            case 29:
            case 30:
                return ProfileVersion.V010_P;
            default:
                return null;
        }
    }

    private ExistingProfileState generateExistingProfileStateFromFileSystem() {
        return new ExistingProfileState(this.mCurProfile.length(), this.mRefProfile.length(), this.mCurProfile.exists(), this.mRefProfile.exists());
    }

    /* loaded from: classes.dex */
    public static class ExistingProfileState {
        private final boolean mCurExists;
        private final long mCurLength;
        private final boolean mRefExists;
        private final long mRefLength;

        ExistingProfileState(long curLength, long refLength, boolean curExists, boolean refExists) {
            this.mCurLength = curLength;
            this.mRefLength = refLength;
            this.mCurExists = curExists;
            this.mRefExists = refExists;
        }

        public long getCurLength() {
            return this.mCurLength;
        }

        public long getRefLength() {
            return this.mRefLength;
        }

        public boolean hasCurFile() {
            return this.mCurExists;
        }

        public boolean hasRefFile() {
            return this.mRefExists;
        }
    }
}
