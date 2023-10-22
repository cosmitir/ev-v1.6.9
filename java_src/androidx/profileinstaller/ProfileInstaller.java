package androidx.profileinstaller;

import android.content.Context;
import android.content.res.AssetManager;
import android.util.Log;
import androidx.profileinstaller.DeviceProfileWriter;
import androidx.profileinstaller.ProfileInstaller;
import java.io.File;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public class ProfileInstaller {
    public static final int DIAGNOSTIC_CURRENT_PROFILE_DOES_NOT_EXIST = 2;
    public static final int DIAGNOSTIC_CURRENT_PROFILE_EXISTS = 1;
    public static final int DIAGNOSTIC_REF_PROFILE_DOES_NOT_EXIST = 4;
    public static final int DIAGNOSTIC_REF_PROFILE_EXISTS = 3;
    private static final DiagnosticsCallback EMPTY_DIAGNOSTICS = new DiagnosticsCallback() { // from class: androidx.profileinstaller.ProfileInstaller.1
        @Override // androidx.profileinstaller.ProfileInstaller.DiagnosticsCallback
        public void onDiagnosticReceived(int code, Object data) {
        }

        @Override // androidx.profileinstaller.ProfileInstaller.DiagnosticsCallback
        public void onResultReceived(int code, Object data) {
        }
    };
    static final DiagnosticsCallback LOG_DIAGNOSTICS = new DiagnosticsCallback() { // from class: androidx.profileinstaller.ProfileInstaller.2
        static final String TAG = "ProfileInstaller";

        @Override // androidx.profileinstaller.ProfileInstaller.DiagnosticsCallback
        public void onDiagnosticReceived(int code, Object data) {
            Log.d(TAG, code != 1 ? code != 2 ? code != 3 ? code != 4 ? "" : "DIAGNOSTIC_REF_PROFILE_DOES_NOT_EXIST" : "DIAGNOSTIC_REF_PROFILE_EXISTS" : "DIAGNOSTIC_CURRENT_PROFILE_DOES_NOT_EXIST" : "DIAGNOSTIC_CURRENT_PROFILE_EXISTS");
        }

        @Override // androidx.profileinstaller.ProfileInstaller.DiagnosticsCallback
        public void onResultReceived(int code, Object data) {
            String str;
            switch (code) {
                case 1:
                    str = "RESULT_INSTALL_SUCCESS";
                    break;
                case 2:
                    str = "RESULT_ALREADY_INSTALLED";
                    break;
                case 3:
                    str = "RESULT_UNSUPPORTED_ART_VERSION";
                    break;
                case 4:
                    str = "RESULT_NOT_WRITABLE";
                    break;
                case 5:
                    str = "RESULT_DESIRED_FORMAT_UNSUPPORTED";
                    break;
                case 6:
                    str = "RESULT_BASELINE_PROFILE_NOT_FOUND";
                    break;
                case 7:
                    str = "RESULT_IO_EXCEPTION";
                    break;
                case 8:
                    str = "RESULT_PARSE_EXCEPTION";
                    break;
                default:
                    str = "";
                    break;
            }
            if (code == 6 || code == 7 || code == 8) {
                Log.e(TAG, str, (Throwable) data);
            } else {
                Log.d(TAG, str);
            }
        }
    };
    private static final int MIN_MEANINGFUL_LENGTH = 10;
    private static final String PROFILE_BASE_DIR = "/data/misc/profiles/cur/0";
    private static final String PROFILE_FILE = "primary.prof";
    private static final String PROFILE_REF_BASE_DIR = "/data/misc/profiles/ref";
    private static final String PROFILE_SOURCE_LOCATION = "dexopt/baseline.prof";
    public static final int RESULT_ALREADY_INSTALLED = 2;
    public static final int RESULT_BASELINE_PROFILE_NOT_FOUND = 6;
    public static final int RESULT_DESIRED_FORMAT_UNSUPPORTED = 5;
    public static final int RESULT_INSTALL_SUCCESS = 1;
    public static final int RESULT_IO_EXCEPTION = 7;
    public static final int RESULT_NOT_WRITABLE = 4;
    public static final int RESULT_PARSE_EXCEPTION = 8;
    public static final int RESULT_UNSUPPORTED_ART_VERSION = 3;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface DiagnosticCode {
    }

    /* loaded from: classes.dex */
    public interface DiagnosticsCallback {
        void onDiagnosticReceived(int code, Object data);

        void onResultReceived(int code, Object data);
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface ResultCode {
    }

    private ProfileInstaller() {
    }

    static void result(Executor executor, final DiagnosticsCallback diagnostics, final int code, final Object data) {
        executor.execute(new Runnable() { // from class: androidx.profileinstaller.ProfileInstaller$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ProfileInstaller.DiagnosticsCallback.this.onResultReceived(code, data);
            }
        });
    }

    static void diagnostic(Executor executor, final DiagnosticsCallback diagnostics, final int code, final Object data) {
        executor.execute(new Runnable() { // from class: androidx.profileinstaller.ProfileInstaller$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                ProfileInstaller.DiagnosticsCallback.this.onDiagnosticReceived(code, data);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean shouldSkipInstall(Executor executor, DiagnosticsCallback diagnostics, long baselineLength, boolean curExists, long curLength, boolean refExists, long refLength) {
        if (curExists && curLength > 10) {
            diagnostic(executor, diagnostics, 1, null);
        } else {
            diagnostic(executor, diagnostics, 2, null);
        }
        if (refExists && refLength > 10) {
            diagnostic(executor, diagnostics, 3, null);
        } else {
            diagnostic(executor, diagnostics, 4, null);
        }
        int i = (baselineLength > 0L ? 1 : (baselineLength == 0L ? 0 : -1));
        if (i > 0 && baselineLength == curLength) {
            result(executor, diagnostics, 2, null);
            return true;
        } else if (i > 0 && baselineLength == refLength) {
            result(executor, diagnostics, 2, null);
            return true;
        } else if (i > 0) {
            if (baselineLength < curLength || baselineLength < refLength) {
                result(executor, diagnostics, 2, null);
                return true;
            }
            return false;
        } else {
            return false;
        }
    }

    private static void transcodeAndWrite(AssetManager assets, String packageName, final Executor executor, final DiagnosticsCallback diagnostics) {
        DeviceProfileWriter deviceProfileWriter = new DeviceProfileWriter(assets, executor, diagnostics, PROFILE_SOURCE_LOCATION, new File(new File(PROFILE_BASE_DIR, packageName), PROFILE_FILE), new File(new File(PROFILE_REF_BASE_DIR, packageName), PROFILE_FILE));
        if (deviceProfileWriter.deviceAllowsProfileInstallerAotWrites()) {
            DeviceProfileWriter.SkipStrategy skipStrategy = new DeviceProfileWriter.SkipStrategy() { // from class: androidx.profileinstaller.ProfileInstaller$$ExternalSyntheticLambda1
                @Override // androidx.profileinstaller.DeviceProfileWriter.SkipStrategy
                public final boolean shouldSkip(long j, DeviceProfileWriter.ExistingProfileState existingProfileState) {
                    boolean shouldSkipInstall;
                    shouldSkipInstall = ProfileInstaller.shouldSkipInstall(executor, diagnostics, j, existingProfileState.hasCurFile(), existingProfileState.getCurLength(), existingProfileState.hasRefFile(), existingProfileState.getRefLength());
                    return shouldSkipInstall;
                }
            };
            deviceProfileWriter.copyProfileOrRead(skipStrategy).transcodeIfNeeded().writeIfNeeded(skipStrategy);
        }
    }

    public static void writeProfile(Context context) {
        writeProfile(context, new ProfileInstallReceiver$$ExternalSyntheticLambda0(), EMPTY_DIAGNOSTICS);
    }

    public static void writeProfile(Context context, Executor executor, DiagnosticsCallback diagnostics) {
        Context applicationContext = context.getApplicationContext();
        transcodeAndWrite(applicationContext.getAssets(), applicationContext.getPackageName(), executor, diagnostics);
    }
}
