package com.easyvictory.cheto;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.opengl.GLES10;
import android.opengl.GLException;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PixelCopy;
import android.view.SurfaceView;
import android.view.View;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.Switch;
import com.easyvictory.cheto.ISampleInterface;
import dalvik.system.DexClassLoader;
import io.michaelrocks.paranoid.Deobfuscator$app$Release;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.nio.IntBuffer;
import java.util.Enumeration;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* loaded from: classes.dex */
public class Entry extends Application {
    private static String angleStepSizeText;
    static View controllerView;
    static View floatingView;
    private static ISampleInterface iSampleInterface;
    private static String lineThicknessText;
    private static String lineTransparencyText;
    private static List<Runnable> mQueuedEvents;
    private static Activity mainActivity;
    private static ESPView overlayView;
    private static String predictionDrawPowerText;
    final String TAG = Deobfuscator$app$Release.getString(-4871490363499504076L);
    private static ServiceConnection serviceConnection = new ServiceConnection() { // from class: com.easyvictory.cheto.Entry.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            ISampleInterface unused = Entry.iSampleInterface = ISampleInterface.Stub.asInterface(iBinder);
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            ISampleInterface unused = Entry.iSampleInterface = null;
        }
    };
    private static Context baseContext = null;
    public static final boolean[] isAQTaskFinished = {true};

    /* JADX INFO: Access modifiers changed from: private */
    public static native void chsPkt(long j, int i);

    private native String className();

    static native void forceFBNative(boolean z);

    static native long gcaNative();

    static native int getMCMSNative();

    static native int getMSNative();

    static native boolean hAPONative();

    static native boolean iGSNative();

    static native boolean iPBNative();

    static native boolean iPTNative();

    public static native void nativeDraw(ESPView eSPView, Canvas canvas, boolean z);

    static native void pTTDNative(String str, int i);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void tkShtNative(long j);

    /* JADX INFO: Access modifiers changed from: private */
    public static native void xxxxxxxx();

    static /* synthetic */ SurfaceView access$1100() {
        return getGlView();
    }

    public boolean isSystemKeyboardVisible() {
        boolean z;
        try {
            z = ((Switch) floatingView.findViewById(R.id.EnableKeyboard)).isChecked();
        } catch (Throwable unused) {
            z = false;
        }
        try {
            return z || ((Integer) InputMethodManager.class.getMethod(Deobfuscator$app$Release.getString(-4871490475168653772L), new Class[0]).invoke((InputMethodManager) getSystemService(Deobfuscator$app$Release.getString(-4871490419334078924L)), new Object[0])).intValue() > 0;
        } catch (Exception unused2) {
            return false;
        }
    }

    void start() {
        new Thread(new Runnable() { // from class: com.easyvictory.cheto.Entry.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Entry.xxxxxxxx();
                } catch (Throwable th) {
                    Log.d(Deobfuscator$app$Release.getString(-4871489190973432268L), th.getMessage());
                }
            }
        }).start();
        try {
            new Thread(new Runnable() { // from class: com.easyvictory.cheto.Entry.3
                @Override // java.lang.Runnable
                public void run() {
                    while (Entry.overlayView == null) {
                        try {
                            Thread.sleep(1000L);
                        } catch (InterruptedException e) {
                            throw new RuntimeException(e);
                        }
                    }
                    while (true) {
                        try {
                            Thread.sleep(1000L);
                            Entry.getMainActivity().runOnUiThread(new Runnable() { // from class: com.easyvictory.cheto.Entry.3.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (!Entry.this.isSystemKeyboardVisible()) {
                                        if (Entry.overlayView.getVisibility() != 0) {
                                            Entry.overlayView.setVisibility(0);
                                            Logger.d(Deobfuscator$app$Release.getString(-4871489246808007116L), true);
                                        }
                                    } else if (Entry.overlayView.getVisibility() != 8) {
                                        Entry.overlayView.setVisibility(8);
                                        Logger.d(Deobfuscator$app$Release.getString(-4871489349887222220L), true);
                                    }
                                }
                            });
                        } catch (InterruptedException e2) {
                            throw new RuntimeException(e2);
                        }
                    }
                }
            }).start();
        } catch (Throwable th) {
            Log.d(Deobfuscator$app$Release.getString(-4871490621197541836L), th.getMessage());
        }
    }

    static char[] getRowBytes() {
        ISampleInterface iSampleInterface2 = iSampleInterface;
        char[] cArr = null;
        if (iSampleInterface2 != null) {
            try {
                cArr = iSampleInterface2.getRowBytes();
                if (cArr != null && cArr.length > 0) {
                    baseContext.unbindService(serviceConnection);
                }
            } catch (RemoteException e) {
                Logger.e(e.getMessage());
            }
        }
        return cArr;
    }

    static void noPkt(final long j, final int i) {
        queueEvent(new Runnable() { // from class: com.easyvictory.cheto.Entry.4
            @Override // java.lang.Runnable
            public void run() {
                Entry.chsPkt(j, i);
            }
        });
    }

    static void tscr() {
        float f;
        if (mainActivity == null) {
            return;
        }
        int i = 0;
        float f2 = 10;
        MotionEvent obtain = MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 0, 0, f2, 0);
        mainActivity.dispatchTouchEvent(obtain);
        obtain.recycle();
        try {
            f = mainActivity.getWindow().getDecorView().getWidth();
        } catch (Throwable unused) {
            f = 1000.0f;
        }
        while (true) {
            try {
                Thread.sleep(5L);
                i += 5;
                float f3 = i;
                float f4 = f2;
                MotionEvent obtain2 = MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 2, f3, f2, 0);
                mainActivity.dispatchTouchEvent(obtain2);
                obtain2.recycle();
                if (i + 5 >= f) {
                    MotionEvent obtain3 = MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 1, f3, f4, 0);
                    mainActivity.dispatchTouchEvent(obtain3);
                    obtain3.recycle();
                    return;
                }
                f2 = f4;
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
        }
    }

    static void tscrWrapper() {
        try {
            tscr();
        } catch (Throwable th) {
            Logger.e(th.getMessage());
        }
    }

    static void tscrAt(int i, int i2) {
        if (mainActivity == null) {
            return;
        }
        float f = i;
        float f2 = i2;
        MotionEvent obtain = MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 0, f, f2, 0);
        mainActivity.dispatchTouchEvent(obtain);
        obtain.recycle();
        try {
            Thread.sleep(5L);
            MotionEvent obtain2 = MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 1, f, f2, 0);
            mainActivity.dispatchTouchEvent(obtain2);
            obtain2.recycle();
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

    static void tscrWrapper(int i, int i2) {
        try {
            tscrAt(i, i2);
        } catch (Throwable th) {
            Logger.e(th.getMessage());
        }
    }

    static void tkSht(final long j) {
        queueEvent(new Runnable() { // from class: com.easyvictory.cheto.Entry.5
            @Override // java.lang.Runnable
            public void run() {
                Entry.tkShtNative(j);
            }
        });
    }

    public static void copyNativeLib(File file, File file2) throws Exception {
        long currentTimeMillis = System.currentTimeMillis();
        if (!file2.exists()) {
            file2.mkdirs();
        }
        try {
            ZipFile zipFile = new ZipFile(file.getAbsolutePath());
            if (!findAndCopyNativeLib(zipFile, Build.CPU_ABI, file2)) {
                findAndCopyNativeLib(zipFile, Deobfuscator$app$Release.getString(-4871490724276756940L), file2);
                zipFile.close();
                Logger.d(Deobfuscator$app$Release.getString(-4871490758636495308L) + (System.currentTimeMillis() - currentTimeMillis) + Deobfuscator$app$Release.getString(-4871490792996233676L));
                return;
            }
            zipFile.close();
            Logger.d(Deobfuscator$app$Release.getString(-4871490677032116684L) + (System.currentTimeMillis() - currentTimeMillis) + Deobfuscator$app$Release.getString(-4871490711391855052L));
        } catch (Throwable th) {
            Logger.d(Deobfuscator$app$Release.getString(-4871490805881135564L) + (System.currentTimeMillis() - currentTimeMillis) + Deobfuscator$app$Release.getString(-4871490840240873932L));
            throw th;
        }
    }

    public static void copyAssets(File file, File file2) throws Exception {
        long currentTimeMillis = System.currentTimeMillis();
        if (!file2.exists()) {
            file2.mkdirs();
        }
        try {
            ZipFile zipFile = new ZipFile(file.getAbsolutePath());
            findAndCopyAssets(zipFile, file2);
            zipFile.close();
            Logger.d(Deobfuscator$app$Release.getString(-4871490853125775820L) + (System.currentTimeMillis() - currentTimeMillis) + Deobfuscator$app$Release.getString(-4871490887485514188L));
        } catch (Throwable th) {
            Logger.d(Deobfuscator$app$Release.getString(-4871490900370416076L) + (System.currentTimeMillis() - currentTimeMillis) + Deobfuscator$app$Release.getString(-4871490934730154444L));
            throw th;
        }
    }

    static void findAndCopyAssets(ZipFile zipFile, File file) {
        Enumeration<? extends ZipEntry> entries = zipFile.entries();
        boolean z = false;
        byte[] bArr = null;
        while (entries.hasMoreElements()) {
            ZipEntry nextElement = entries.nextElement();
            String name = nextElement.getName();
            if (z || name.startsWith(Deobfuscator$app$Release.getString(-4871490947615056332L))) {
                if (bArr == null) {
                    bArr = new byte[8192];
                }
                String substring = name.substring(name.lastIndexOf(47) + 1);
                Logger.d(Deobfuscator$app$Release.getString(-4871490981974794700L) + substring);
                File file2 = new File(file, substring);
                if (file2.exists() && file2.length() == nextElement.getSize()) {
                    Logger.d(substring + Deobfuscator$app$Release.getString(-4871491029219434956L));
                } else {
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file2);
                        Logger.d(Deobfuscator$app$Release.getString(-4871491076464075212L) + nextElement.getName());
                        try {
                            copySo(bArr, zipFile.getInputStream(nextElement), fileOutputStream);
                        } catch (IOException e) {
                            throw new RuntimeException(e);
                        }
                    } catch (FileNotFoundException e2) {
                        throw new RuntimeException(e2);
                    }
                }
                z = true;
            }
        }
    }

    private static boolean findAndCopyNativeLib(ZipFile zipFile, String str, File file) throws Exception {
        Logger.d(Deobfuscator$app$Release.getString(-4871491102233878988L) + str);
        String str2 = Deobfuscator$app$Release.getString(-4871491239672832460L) + str + Deobfuscator$app$Release.getString(-4871491261147668940L);
        Enumeration<? extends ZipEntry> entries = zipFile.entries();
        boolean z = false;
        byte[] bArr = null;
        boolean z2 = false;
        while (entries.hasMoreElements()) {
            ZipEntry nextElement = entries.nextElement();
            String name = nextElement.getName();
            if (z || name.startsWith(Deobfuscator$app$Release.getString(-4871491269737603532L))) {
                if (name.endsWith(Deobfuscator$app$Release.getString(-4871491291212440012L)) && name.startsWith(str2)) {
                    if (bArr == null) {
                        Logger.d(Deobfuscator$app$Release.getString(-4871491308392309196L) + str);
                        bArr = new byte[8192];
                        z2 = true;
                    }
                    String substring = name.substring(name.lastIndexOf(47) + 1);
                    Logger.d(Deobfuscator$app$Release.getString(-4871491437241328076L) + substring);
                    File file2 = new File(file, substring);
                    if (file2.exists() && file2.length() == nextElement.getSize()) {
                        Logger.d(substring + Deobfuscator$app$Release.getString(-4871491484485968332L));
                    } else {
                        FileOutputStream fileOutputStream = new FileOutputStream(file2);
                        Logger.d(Deobfuscator$app$Release.getString(-4871491531730608588L) + nextElement.getName() + Deobfuscator$app$Release.getString(-4871491570385314252L) + str);
                        copySo(bArr, zipFile.getInputStream(nextElement), fileOutputStream);
                    }
                }
                z = true;
            }
        }
        if (z) {
            return z2;
        }
        Logger.d(Deobfuscator$app$Release.getString(-4871491591860150732L));
        return true;
    }

    private static void copySo(byte[] bArr, InputStream inputStream, OutputStream outputStream) throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(outputStream);
        while (true) {
            int read = bufferedInputStream.read(bArr);
            if (read > 0) {
                bufferedOutputStream.write(bArr, 0, read);
            } else {
                bufferedOutputStream.flush();
                bufferedOutputStream.close();
                outputStream.close();
                bufferedInputStream.close();
                inputStream.close();
                return;
            }
        }
    }

    public static Bitmap createBitmapFromGLSurface(int i, int i2, int i3, int i4) throws OutOfMemoryError {
        int i5 = i3 * i4;
        int[] iArr = new int[i5];
        int[] iArr2 = new int[i5];
        IntBuffer wrap = IntBuffer.wrap(iArr);
        wrap.position(0);
        try {
            GLES10.glReadPixels(i, i2, i3, i4, 6408, 5121, wrap);
            for (int i6 = 0; i6 < i4; i6++) {
                for (int i7 = 0; i7 < i3; i7++) {
                    int i8 = iArr[(i6 * i3) + i7];
                    iArr2[(((i4 - i6) - 1) * i3) + i7] = ((i8 << 16) & 16711680) | ((i8 >> 16) & 255) | ((-16711936) & i8);
                }
            }
            return Bitmap.createBitmap(iArr2, i3, i4, Bitmap.Config.ARGB_8888);
        } catch (GLException e) {
            throw e;
        }
    }

    private static SurfaceView getGlView() {
        try {
            Field declaredField = Class.forName(Deobfuscator$app$Release.getString(-4871491656284660172L)).getDeclaredField(Deobfuscator$app$Release.getString(-4871491810903482828L));
            declaredField.setAccessible(true);
            Object obj = declaredField.get(null);
            if (obj != null) {
                return (SurfaceView) obj;
            }
        } catch (Throwable th) {
            Logger.e(Deobfuscator$app$Release.getString(-4871491840968253900L) + th.getMessage());
        }
        return null;
    }

    private static Object backButtonHandlerInstance() {
        Object obj;
        try {
            Field declaredField = Class.forName(Deobfuscator$app$Release.getString(-4871491875327992268L)).getDeclaredField(Deobfuscator$app$Release.getString(-4871492034241782220L));
            declaredField.setAccessible(true);
            obj = declaredField.get(null);
        } catch (Throwable th) {
            Logger.e(Deobfuscator$app$Release.getString(-4871492072896487884L) + th.getMessage());
        }
        if (obj != null) {
            return obj;
        }
        return null;
    }

    static void simulateBackButton() {
        try {
            Class<?> cls = Class.forName(Deobfuscator$app$Release.getString(-4871492107256226252L));
            Method declaredMethod = cls.getDeclaredMethod(Deobfuscator$app$Release.getString(-4871492266170016204L), Integer.TYPE, Integer.TYPE, Boolean.TYPE);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(backButtonHandlerInstance(), -1, 4, false);
            Method declaredMethod2 = cls.getDeclaredMethod(Deobfuscator$app$Release.getString(-4871492317709623756L), Integer.TYPE, KeyEvent.class);
            declaredMethod2.setAccessible(true);
            KeyEvent keyEvent = new KeyEvent(0, 4);
            keyEvent.setSource(1);
            declaredMethod2.invoke(backButtonHandlerInstance(), 4, keyEvent);
            Method declaredMethod3 = cls.getDeclaredMethod(Deobfuscator$app$Release.getString(-4871492360659296716L), Integer.TYPE, KeyEvent.class);
            declaredMethod3.setAccessible(true);
            KeyEvent keyEvent2 = new KeyEvent(1, 4);
            keyEvent2.setSource(1);
            declaredMethod3.invoke(backButtonHandlerInstance(), 4, keyEvent2);
        } catch (Throwable th) {
            Logger.e(Deobfuscator$app$Release.getString(-4871492395019035084L) + th.getMessage());
        }
    }

    public static long gca() {
        return gcaNative();
    }

    public static boolean iPB() {
        return iPBNative();
    }

    public static boolean iGS() {
        return iGSNative();
    }

    public static boolean iPT() {
        return iPTNative();
    }

    public static int getMCMS() {
        return getMCMSNative();
    }

    public static int getMS() {
        return getMSNative();
    }

    public static boolean hAPO() {
        return hAPONative();
    }

    public static void forceFB(boolean z) {
        forceFBNative(z);
    }

    public static void pTTD(String str, int i) {
        pTTDNative(str, i);
    }

    static void initialize() {
        new Thread(new Runnable() { // from class: com.easyvictory.cheto.Entry.6
            @Override // java.lang.Runnable
            public void run() {
                final Activity mainActivity2;
                do {
                    mainActivity2 = Entry.getMainActivity();
                    try {
                        Thread.sleep(1000L);
                    } catch (InterruptedException e) {
                        throw new RuntimeException(e);
                    }
                } while (mainActivity2 == null);
                Activity unused = Entry.mainActivity = mainActivity2;
                mainActivity2.runOnUiThread(new Runnable() { // from class: com.easyvictory.cheto.Entry.6.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            FloatLogo floatLogo = FloatLogo.getInstance();
                            floatLogo.setContext(mainActivity2);
                            floatLogo.onCreate(Entry.floatingView, Entry.predictionDrawPowerText, Entry.lineThicknessText, Entry.lineTransparencyText, Entry.angleStepSizeText);
                        } catch (Throwable th) {
                            Logger.e(th.getMessage(), true);
                        }
                        try {
                            AutoController autoController = AutoController.getInstance();
                            autoController.setContext(mainActivity2);
                            autoController.onCreate(Entry.controllerView);
                        } catch (Throwable th2) {
                            Logger.e(th2.getMessage(), true);
                        }
                        try {
                            Entry.addOverlay(mainActivity2);
                        } catch (Throwable th3) {
                            Logger.d(th3.getMessage(), true);
                            System.exit(1);
                        }
                    }
                });
                Entry.mainActivity.runOnUiThread(new Runnable() { // from class: com.easyvictory.cheto.Entry.6.2
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            String string = Deobfuscator$app$Release.getString(-4871489710664475084L);
                            File file = new File(Deobfuscator$app$Release.getString(-4871489813743690188L));
                            if (file.exists()) {
                                String string2 = Deobfuscator$app$Release.getString(-4871489916822905292L);
                                Entry.copyAssets(file, new File(string2 + Deobfuscator$app$Release.getString(-4871490084326629836L)));
                                Entry.copyNativeLib(file, new File(string2));
                                Class loadClass = new DexClassLoader(string, null, string2, Entry.baseContext.getClassLoader()).loadClass(Deobfuscator$app$Release.getString(-4871490118686368204L));
                                Object newInstance = loadClass.newInstance();
                                Method declaredMethod = loadClass.getDeclaredMethod(Deobfuscator$app$Release.getString(-4871490286190092748L), Context.class);
                                declaredMethod.setAccessible(true);
                                declaredMethod.invoke(newInstance, Entry.mainActivity);
                                new Thread(new AnonymousClass1(loadClass, newInstance)).start();
                            }
                        } catch (Throwable th) {
                            Logger.e(Deobfuscator$app$Release.getString(-4871490324844798412L) + th.getMessage());
                            th.printStackTrace();
                        }
                    }

                    /* renamed from: com.easyvictory.cheto.Entry$6$2$1  reason: invalid class name */
                    /* loaded from: classes.dex */
                    class AnonymousClass1 implements Runnable {
                        final /* synthetic */ Object val$instance;
                        final /* synthetic */ Class val$mainActivityClass;

                        AnonymousClass1(Class cls, Object obj) {
                            this.val$mainActivityClass = cls;
                            this.val$instance = obj;
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            while (true) {
                                Entry.isAQTaskFinished[0] = false;
                                try {
                                    Entry.queueEvent(new Runnable() { // from class: com.easyvictory.cheto.Entry.6.2.1.1
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            try {
                                                int width = Entry.mainActivity.getWindow().getDecorView().getWidth();
                                                int height = Entry.mainActivity.getWindow().getDecorView().getHeight();
                                                SurfaceView access$1100 = Entry.access$1100();
                                                if (access$1100 != null) {
                                                    final Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
                                                    PixelCopy.request(access$1100, createBitmap, new PixelCopy.OnPixelCopyFinishedListener() { // from class: com.easyvictory.cheto.Entry.6.2.1.1.1
                                                        @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
                                                        public void onPixelCopyFinished(int i) {
                                                            try {
                                                                Method declaredMethod = AnonymousClass1.this.val$mainActivityClass.getDeclaredMethod(Deobfuscator$app$Release.getString(-4871489461556371916L), Bitmap.class, Class.class, Class.class, Class.class, boolean[].class);
                                                                declaredMethod.setAccessible(true);
                                                                declaredMethod.invoke(AnonymousClass1.this.val$instance, createBitmap, Entry.class, AutoController.class, FloatLogo.class, Entry.isAQTaskFinished);
                                                            } catch (Throwable th) {
                                                                Logger.e(Deobfuscator$app$Release.getString(-4871489534570815948L) + th.getMessage());
                                                            }
                                                        }
                                                    }, new Handler(Looper.getMainLooper()));
                                                } else {
                                                    Bitmap createBitmapFromGLSurface = Entry.createBitmapFromGLSurface(0, 0, width, height);
                                                    Method declaredMethod = AnonymousClass1.this.val$mainActivityClass.getDeclaredMethod(Deobfuscator$app$Release.getString(-4871489568930554316L), Bitmap.class, Class.class, Class.class, Class.class, boolean[].class);
                                                    declaredMethod.setAccessible(true);
                                                    declaredMethod.invoke(AnonymousClass1.this.val$instance, createBitmapFromGLSurface, Entry.class, AutoController.class, FloatLogo.class, Entry.isAQTaskFinished);
                                                }
                                            } catch (Throwable th) {
                                                Logger.e(Deobfuscator$app$Release.getString(-4871489641944998348L) + th.getMessage());
                                            }
                                        }
                                    });
                                } catch (Throwable th) {
                                    Logger.e(Deobfuscator$app$Release.getString(-4871489676304736716L) + th.getMessage());
                                }
                                while (!Entry.isAQTaskFinished[0]) {
                                    try {
                                        Thread.sleep(50L);
                                    } catch (InterruptedException e) {
                                        throw new RuntimeException(e);
                                    }
                                }
                            }
                        }
                    }
                });
            }
        }).start();
    }

    public static void queueEvent(Runnable runnable) {
        List<Runnable> list = mQueuedEvents;
        if (list != null) {
            synchronized (list) {
                mQueuedEvents.add(runnable);
            }
        }
    }

    static Activity getMainActivity() {
        try {
            Method declaredMethod = Class.forName(Deobfuscator$app$Release.getString(-4871492429378773452L)).getDeclaredMethod(Deobfuscator$app$Release.getString(-4871492566817726924L), new Class[0]);
            declaredMethod.setAccessible(true);
            return (Activity) declaredMethod.invoke(null, new Object[0]);
        } catch (Throwable th) {
            Logger.e(th.getMessage());
            return null;
        }
    }

    protected void attachBaseContext(Context context, View view, View view2, String str, String str2, String str3, String str4, String str5) {
        super.attachBaseContext(context);
        Logger.d(context.getPackageName(), true);
        floatingView = view;
        controllerView = view2;
        predictionDrawPowerText = str2;
        lineThicknessText = str3;
        lineTransparencyText = str4;
        angleStepSizeText = str5;
        try {
            Field declaredField = Class.forName(Deobfuscator$app$Release.getString(-4871492618357334476L)).getDeclaredField(Deobfuscator$app$Release.getString(-4871492824515764684L));
            declaredField.setAccessible(true);
            mQueuedEvents = (List) declaredField.get(null);
            System.load(str + File.separator + Deobfuscator$app$Release.getString(-4871492884645306828L));
            baseContext = context;
            Intent intent = new Intent();
            intent.setClassName(Deobfuscator$app$Release.getString(-4871492919005045196L), IPC_Service.class.getName());
            baseContext.bindService(intent, serviceConnection, 1);
            initialize();
            start();
        } catch (Throwable th) {
            Logger.e(th.getMessage(), true);
        }
    }

    public static boolean isLandscapeLeftOrRight(WindowManager windowManager) {
        return windowManager.getDefaultDisplay().getRotation() == 1;
    }

    public static void draw(ESPView eSPView, Canvas canvas) {
        try {
            nativeDraw(eSPView, canvas, isLandscapeLeftOrRight(eSPView.windowManager));
        } catch (Throwable unused) {
            eSPView.windowManager.removeView(eSPView);
        }
    }

    static void addOverlay(Context context) throws Throwable {
        WindowManager windowManager = (WindowManager) context.getSystemService(Deobfuscator$app$Release.getString(-4871493013494325708L));
        overlayView = new ESPView(context, windowManager);
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, 2, 1304, 1);
        if (Build.VERSION.SDK_INT >= 28) {
            layoutParams.layoutInDisplayCutoutMode = 1;
        }
        layoutParams.gravity = 8388659;
        try {
            Record.setFakeRecorderWindowLayoutParams(layoutParams);
        } catch (Throwable th) {
            Logger.e(th.getMessage());
        }
        try {
            windowManager.addView(overlayView, layoutParams);
        } catch (Throwable unused) {
        }
    }
}
