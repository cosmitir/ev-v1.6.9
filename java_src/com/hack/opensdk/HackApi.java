package com.hack.opensdk;

import android.app.Application;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import com.hack.Slog;
import com.hack.server.core.TransactCallback;
import com.hack.server.core.TransactRegistry;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class HackApi {
    private static final String TAG = "HackApi";
    private static final TransactRegistry sTransactRegistry = new TransactRegistry();

    /* loaded from: classes2.dex */
    public interface ApplicationCallback {
        void onAttachBaseContext(Application application);

        void onCreate(Application application);

        void onInitAppContext(Object obj, Context context);

        void onInstallProviders(Application application);
    }

    public static void attachBaseContext(Application application, Context context) {
        Cmd.INSTANCE().exec(1, application, context);
    }

    public static void onCreate() {
        Cmd.INSTANCE().exec(2, new Object[0]);
    }

    public static Bundle getPackageSetting(String str, int i, int i2) {
        return (Bundle) Cmd.INSTANCE().exec(26, str, Integer.valueOf(i), Integer.valueOf(i2));
    }

    public static boolean isSupportBpf() {
        try {
            return ((Boolean) Cmd.INSTANCE().exec(500, 1)).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    public static int installPackageFromHost(String str, int i, boolean z) {
        Cmd INSTANCE = Cmd.INSTANCE();
        Object[] objArr = new Object[3];
        objArr[0] = Integer.valueOf(i);
        objArr[1] = str;
        objArr[2] = Integer.valueOf(z ? CmdConstants.MODE_FORCE_INSTALL : 0);
        return ((Integer) INSTANCE.exec(10, objArr)).intValue();
    }

    public static int installApkFiles(String str, int i, boolean z) {
        int i2 = CmdConstants.MODE_INSTALL_ALONE;
        if (z) {
            i2 |= CmdConstants.MODE_FORCE_INSTALL;
        }
        return ((Integer) Cmd.INSTANCE().exec(10, Integer.valueOf(i), str, Integer.valueOf(i2))).intValue();
    }

    public static int uninstallPackage(String str, int i) {
        return ((Integer) Cmd.INSTANCE().exec(11, Integer.valueOf(i), str, 0)).intValue();
    }

    public static int deletePackageData(String str, int i) {
        return ((Integer) Cmd.INSTANCE().exec(13, Integer.valueOf(i), str, 0)).intValue();
    }

    public static int deletePackageCache(String str, int i) {
        return ((Integer) Cmd.INSTANCE().exec(14, Integer.valueOf(i), str, 0)).intValue();
    }

    public static PackageInfo getPackageInfo(String str, int i, int i2) {
        return (PackageInfo) Cmd.INSTANCE().exec(21, Integer.valueOf(i), str, Integer.valueOf(i2));
    }

    public static ResolveInfo resolveIntent(Intent intent, String str, int i, int i2) {
        return (ResolveInfo) Cmd.INSTANCE().exec(22, intent, str, Integer.valueOf(i), Integer.valueOf(i2));
    }

    public static List<ResolveInfo> queryIntentActivities(Intent intent, String str, int i, int i2) {
        return (List) Cmd.INSTANCE().exec(23, intent, str, Integer.valueOf(i), Integer.valueOf(i2));
    }

    public static ActivityInfo getActivityInfo(ComponentName componentName, int i, int i2) {
        return (ActivityInfo) Cmd.INSTANCE().exec(24, componentName, Integer.valueOf(i), Integer.valueOf(i2));
    }

    public static List<String> getInstalledPackages(int i, int i2) {
        return (List) Cmd.INSTANCE().exec(25, Integer.valueOf(i), Integer.valueOf(i2));
    }

    public static Map<String, List<Integer>> getUnavailablePackages(int i) {
        return (Map) Cmd.INSTANCE().exec(28, Integer.valueOf(i), 0);
    }

    public static void registerTransactCallback(int i, TransactCallback transactCallback) {
        sTransactRegistry.registerTransactCallback(i, transactCallback);
    }

    public static void unregisterTransactCallback(int i) {
        sTransactRegistry.unregisterTransactCallback(i);
    }

    @Deprecated
    public static boolean startPackage(String str, int i) {
        return ((Boolean) Cmd.INSTANCE().exec(32, str, Integer.valueOf(i), 0)).booleanValue();
    }

    public static int startActivity(Intent intent, int i) {
        return ((Integer) Cmd.INSTANCE().exec(33, intent, null, Integer.valueOf(i))).intValue();
    }

    public static void killApplication(int i, String str, String str2) {
        Cmd.INSTANCE().exec(15, Integer.valueOf(i), str, str2);
    }

    public static boolean hasAnyRunningActivity(int i, String str) {
        return ((Boolean) Cmd.INSTANCE().exec(16, Integer.valueOf(i), str)).booleanValue();
    }

    public static Object registerDeleteObserver(Object obj) {
        return Integer.valueOf(((Integer) Cmd.INSTANCE().exec(42, obj)).intValue());
    }

    public static void unregisterDeleteObserver(Object obj) {
        Cmd.INSTANCE().exec(43, obj);
    }

    public static Object registerInstallObserver(Object obj) {
        return Integer.valueOf(((Integer) Cmd.INSTANCE().exec(44, obj)).intValue());
    }

    public static void unregisterInstallObserver(Object obj) {
        Cmd.INSTANCE().exec(45, obj);
    }

    public static int[] getAvailableUserSpace() {
        return (int[]) Cmd.INSTANCE().exec(CmdConstants.CMD_GET_ALL_USERID, new Object[0]);
    }

    public static int[] getInstallUsersForPackage(String str) {
        return (int[]) Cmd.INSTANCE().exec(CmdConstants.CMD_PKG_ALL_USERID, str);
    }

    public static int getAvailableUser(String str) {
        boolean z;
        long currentTimeMillis = System.currentTimeMillis();
        int[] installUsersForPackage = getInstallUsersForPackage(str);
        int i = 0;
        if (installUsersForPackage != null) {
            int i2 = 0;
            while (true) {
                if (i2 >= Integer.MAX_VALUE) {
                    break;
                }
                int length = installUsersForPackage.length;
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        z = false;
                        break;
                    } else if (installUsersForPackage[i3] == i2) {
                        z = true;
                        break;
                    } else {
                        i3++;
                    }
                }
                if (!z) {
                    i = i2;
                    break;
                }
                i2++;
            }
        }
        Slog.v(TAG, "getUsers consume: " + ((System.currentTimeMillis() - currentTimeMillis) / 1000));
        return i;
    }

    public static TransactRegistry getTransactRegistry() {
        return sTransactRegistry;
    }

    public static Intent getLaunchIntentForPackage(String str, int i) {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.INFO");
        intent.setPackage(str);
        List<ResolveInfo> queryIntentActivities = queryIntentActivities(intent, null, 0, i);
        if (queryIntentActivities == null || queryIntentActivities.size() <= 0) {
            intent.removeCategory("android.intent.category.INFO");
            intent.addCategory("android.intent.category.LAUNCHER");
            intent.setPackage(str);
            queryIntentActivities = queryIntentActivities(intent, null, 0, i);
        }
        if (queryIntentActivities == null || queryIntentActivities.size() <= 0) {
            return null;
        }
        Intent intent2 = new Intent(intent);
        intent2.setFlags(268435456);
        intent2.setClassName(queryIntentActivities.get(0).activityInfo.packageName, queryIntentActivities.get(0).activityInfo.name);
        return intent2;
    }

    public static Map<String, Object> getRuntimeProperties() {
        return (Map) Cmd.INSTANCE().exec(303, new Object[0]);
    }

    public static <T> T getRuntimeProperty(String str, T t) {
        try {
            T t2 = (T) getRuntimeProperties().get(str);
            return t2 == null ? t : t2;
        } catch (Throwable unused) {
            return t;
        }
    }

    public static void registerApplicationCallback(final ApplicationCallback applicationCallback) {
        Cmd.INSTANCE().exec(403, new InvocationHandler() { // from class: com.hack.opensdk.HackApi.1
            @Override // java.lang.reflect.InvocationHandler
            public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
                int intValue = ((Integer) objArr[0]).intValue();
                if (intValue == 0) {
                    ApplicationCallback.this.onInitAppContext(objArr[1], (Context) objArr[2]);
                    return null;
                } else if (intValue == 1) {
                    ApplicationCallback.this.onAttachBaseContext((Application) objArr[1]);
                    return null;
                } else if (intValue == 2) {
                    ApplicationCallback.this.onInstallProviders((Application) objArr[1]);
                    return null;
                } else if (intValue != 3) {
                    return null;
                } else {
                    ApplicationCallback.this.onCreate((Application) objArr[1]);
                    return null;
                }
            }
        });
    }
}
