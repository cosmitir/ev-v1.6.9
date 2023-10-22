package com.easyvictory.cheto;

import android.os.Build;
import android.text.TextUtils;
import android.view.WindowManager;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public class Record {
    private static final String KEY_VERSION_BLACKSHARK = "ro.blackshark.rom";
    private static final String KEY_VERSION_EMUI = "ro.build.version.emui";
    private static final String KEY_VERSION_MIUI = "ro.miui.ui.version.name";
    private static final String KEY_VERSION_NUBIA = "ro.build.nubia.rom.name";
    private static final String KEY_VERSION_ONEPLIS = "ro.build.ota.versionname";
    private static final String KEY_VERSION_OPPO = "ro.build.version.opporom";
    private static final String KEY_VERSION_ROG = "ro.build.fota.version";
    private static final String KEY_VERSION_SAMSUNG = "ro.channel.officehubrow";
    private static final String KEY_VERSION_SMARTISAN = "ro.smartisan.version";
    private static final String KEY_VERSION_VIVO = "ro.vivo.os.version";
    public static final String ROM_BLACKSHARK = "JOYUI";
    public static final String ROM_EMUI = "EMUI";
    public static final String ROM_FLYME = "FLYME";
    public static final String ROM_MIUI = "MIUI";
    public static final String ROM_NUBIAUI = "NUBIAUI";
    public static final String ROM_ONEPLUS = "HYDROGEN";
    public static final String ROM_OPPO = "OPPO";
    public static final String ROM_QIKU = "QIKU";
    public static final String ROM_ROG = "REPLIBLIC";
    public static final String ROM_SAMSUNG = "ONEUI";
    public static final String ROM_SMARTISAN = "SMARTISAN";
    public static final String ROM_VIVO = "VIVO";
    private static String sName;

    public static boolean isActivice() {
        return false;
    }

    public static boolean isEmui() {
        return check(ROM_EMUI);
    }

    public static boolean isMiui() {
        return check(ROM_MIUI);
    }

    public static boolean isVivo() {
        return check(ROM_VIVO);
    }

    public static boolean isOppo() {
        return check(ROM_OPPO);
    }

    public static boolean isFlyme() {
        return check(ROM_FLYME);
    }

    public static boolean isNubia() {
        return check(ROM_NUBIAUI);
    }

    public static boolean isOnePlus() {
        return check(ROM_ONEPLUS);
    }

    public static boolean isSanSung() {
        return check(ROM_SAMSUNG);
    }

    public static boolean isBLACKSHARK() {
        return check(ROM_BLACKSHARK);
    }

    public static boolean isRog() {
        return check(ROM_ROG);
    }

    public static void setFakeRecorderWindowLayoutParams(WindowManager.LayoutParams layoutParams) {
        try {
            layoutParams.setTitle(getFakeRecordWindowTitle());
            if (check(ROM_FLYME)) {
                if (setMeizuParams(layoutParams, 8192) || !isActivice()) {
                    return;
                }
                setMeizuParams_new(layoutParams, 1024);
                return;
            }
            if (!check(ROM_MIUI) && !check(ROM_BLACKSHARK)) {
                if (check(ROM_ONEPLUS) && (isActivice() || Build.VERSION.SDK_INT == 30)) {
                    Field declaredField = layoutParams.getClass().getDeclaredField("PRIVATE_FLAG_IS_ROUNDED_CORNERS_OVERLAY");
                    declaredField.setAccessible(true);
                    setOnePulsParams(layoutParams, ((Integer) declaredField.get(layoutParams.getClass())).intValue());
                    return;
                } else if (isSanSung()) {
                    setSamsungFlags(layoutParams);
                    return;
                } else if (check(ROM_ROG)) {
                    layoutParams.memoryType |= 268435456;
                    return;
                } else {
                    return;
                }
            }
            setXiaomiParams(layoutParams, 6666);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static boolean setXiaomiParams(WindowManager.LayoutParams layoutParams, int i) {
        try {
            layoutParams.flags |= 4096;
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private static boolean setMeizuParams(WindowManager.LayoutParams layoutParams, int i) {
        try {
            Class<?> cls = Class.forName("android.view.MeizuLayoutParams");
            Field declaredField = cls.getDeclaredField("flags");
            declaredField.setAccessible(true);
            Object newInstance = cls.newInstance();
            declaredField.setInt(newInstance, i);
            layoutParams.getClass().getField("meizuParams").set(layoutParams, newInstance);
            return true;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchFieldException unused) {
            return false;
        }
    }

    private static boolean setMeizuParams_new(WindowManager.LayoutParams layoutParams, int i) {
        try {
            Field declaredField = layoutParams.getClass().getDeclaredField("meizuFlags");
            declaredField.setAccessible(true);
            declaredField.setInt(layoutParams, i);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private static void setOnePulsParams(WindowManager.LayoutParams layoutParams, int i) {
        try {
            Field declaredField = layoutParams.getClass().getDeclaredField("privateFlags");
            declaredField.setAccessible(true);
            declaredField.set(layoutParams, Integer.valueOf(i));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static void setSamsungFlags(WindowManager.LayoutParams layoutParams) {
        try {
            Method method = layoutParams.getClass().getMethod("semAddExtensionFlags", Integer.TYPE);
            Method method2 = layoutParams.getClass().getMethod("semAddPrivateFlags", Integer.TYPE);
            method.invoke(layoutParams, -2147352576);
            method2.invoke(layoutParams, Integer.valueOf(layoutParams.flags));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static String getFakeRecordWindowTitle() {
        if (sName == null) {
            check("");
        }
        String str = sName;
        if (str == null) {
            return "";
        }
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1956424546:
                if (str.equals(ROM_ROG)) {
                    c = 0;
                    break;
                }
                break;
            case -1292486777:
                if (str.equals(ROM_NUBIAUI)) {
                    c = 1;
                    break;
                }
                break;
            case 2132284:
                if (str.equals(ROM_EMUI)) {
                    c = 2;
                    break;
                }
                break;
            case 2366768:
                if (str.equals(ROM_MIUI)) {
                    c = 3;
                    break;
                }
                break;
            case 2432928:
                if (str.equals(ROM_OPPO)) {
                    c = 4;
                    break;
                }
                break;
            case 2634924:
                if (str.equals(ROM_VIVO)) {
                    c = 5;
                    break;
                }
                break;
            case 66998571:
                if (str.equals(ROM_FLYME)) {
                    c = 6;
                    break;
                }
                break;
            case 70782280:
                if (str.equals(ROM_BLACKSHARK)) {
                    c = 7;
                    break;
                }
                break;
            case 336676448:
                if (str.equals(ROM_ONEPLUS)) {
                    c = '\b';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return "com.asus.force.layer.transparent.SR.floatingpanel";
            case 1:
                return "NubiaScreenDecorOverlay";
            case 2:
                return "ScreenRecoderTimer";
            case 3:
                return "com.miui.screenrecorder";
            case 4:
                return "com.coloros.screenrecorder.FloatView";
            case 5:
                return "screen_record_menu";
            case 6:
                return "SysScreenRecorder";
            case 7:
                return "com.blackshark.screenrecorder";
            case '\b':
                return "op_screenrecord";
            default:
                return "";
        }
    }

    private static boolean check(String str) {
        String str2 = sName;
        if (str2 != null) {
            return str2.equals(str);
        }
        if (!TextUtils.isEmpty(getProp(KEY_VERSION_MIUI))) {
            sName = ROM_MIUI;
        } else if (!TextUtils.isEmpty(getProp(KEY_VERSION_BLACKSHARK))) {
            sName = ROM_BLACKSHARK;
        } else if (!TextUtils.isEmpty(getProp(KEY_VERSION_EMUI))) {
            sName = ROM_EMUI;
        } else if (!TextUtils.isEmpty(getProp(KEY_VERSION_OPPO))) {
            sName = ROM_OPPO;
        } else if (!TextUtils.isEmpty(getProp(KEY_VERSION_VIVO))) {
            sName = ROM_VIVO;
        } else if (!TextUtils.isEmpty(getProp(KEY_VERSION_SMARTISAN))) {
            sName = ROM_SMARTISAN;
        } else if (!TextUtils.isEmpty(getProp(KEY_VERSION_NUBIA))) {
            sName = ROM_NUBIAUI;
        } else if (!TextUtils.isEmpty(getProp(KEY_VERSION_ONEPLIS)) && getProp(KEY_VERSION_ONEPLIS).toLowerCase().contains("hydrogen")) {
            sName = ROM_ONEPLUS;
        } else if (!TextUtils.isEmpty(getProp(KEY_VERSION_ROG)) && getProp(KEY_VERSION_ROG).toLowerCase().contains("CN_Phone")) {
            sName = ROM_ROG;
        } else if (!TextUtils.isEmpty(getProp(KEY_VERSION_SAMSUNG))) {
            sName = ROM_SAMSUNG;
        } else if (Build.DISPLAY.toUpperCase().contains(ROM_FLYME)) {
            sName = ROM_FLYME;
        } else {
            sName = Build.MANUFACTURER.toUpperCase();
        }
        return sName.equals(str);
    }

    private static String getProp(String str) {
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2 = null;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop " + str).getInputStream()), 1024);
            try {
                String readLine = bufferedReader.readLine();
                bufferedReader.close();
                try {
                    bufferedReader.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
                return readLine;
            } catch (IOException unused) {
                if (bufferedReader != null) {
                    try {
                        bufferedReader.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                }
                return null;
            } catch (Throwable th) {
                th = th;
                bufferedReader2 = bufferedReader;
                if (bufferedReader2 != null) {
                    try {
                        bufferedReader2.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (IOException unused2) {
            bufferedReader = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
