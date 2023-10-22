package com.hack.utils;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
/* loaded from: classes2.dex */
public class ProcessUtils {
    private static String sCurProcessName;
    private static ProcessType sProcessType = ProcessType.TYPE_UNKNOWN;

    /* loaded from: classes2.dex */
    public enum ProcessType {
        TYPE_UNKNOWN,
        TYPE_CLIENT,
        TYPE_APP,
        TYPE_ASSIST,
        TYPE_SERVICE
    }

    public static ProcessType tryGetProcessType(Context context) {
        if (sProcessType == ProcessType.TYPE_UNKNOWN) {
            String packageName = context.getPackageName();
            String curProcessName = getCurProcessName(context);
            if (TextUtils.equals(curProcessName, packageName) || TextUtils.equals(curProcessName, packageName + ":client")) {
                sProcessType = ProcessType.TYPE_CLIENT;
            } else if (TextUtils.equals(curProcessName, packageName + ":core")) {
                sProcessType = ProcessType.TYPE_SERVICE;
            } else if (TextUtils.equals(curProcessName, packageName + ":assist")) {
                sProcessType = ProcessType.TYPE_ASSIST;
            } else {
                sProcessType = ProcessType.TYPE_APP;
            }
        }
        return sProcessType;
    }

    public static boolean isService() {
        return sProcessType == ProcessType.TYPE_SERVICE;
    }

    public static boolean isClient() {
        return sProcessType == ProcessType.TYPE_CLIENT;
    }

    public static boolean isAssist() {
        return sProcessType == ProcessType.TYPE_ASSIST;
    }

    public static boolean isApp() {
        return sProcessType == ProcessType.TYPE_APP;
    }

    public static String getCurProcessName(Context context) {
        String str = sCurProcessName;
        if (TextUtils.isEmpty(str)) {
            try {
                int myPid = Process.myPid();
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses()) {
                    if (runningAppProcessInfo.pid == myPid) {
                        String str2 = runningAppProcessInfo.processName;
                        sCurProcessName = str2;
                        return str2;
                    }
                }
            } catch (Exception unused) {
            }
            String processNameFromProc = getProcessNameFromProc(-1);
            sCurProcessName = processNameFromProc;
            return processNameFromProc;
        }
        return str;
    }

    public static String getProcessNameFromProc(int i) {
        BufferedReader bufferedReader;
        if (i == -1) {
            i = Process.myPid();
        }
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream("/proc/" + i + "/cmdline"), "iso-8859-1"));
        } catch (Throwable unused) {
            bufferedReader = null;
        }
        try {
            StringBuilder sb = new StringBuilder();
            while (true) {
                int read = bufferedReader.read();
                if (read <= 0) {
                    break;
                }
                sb.append((char) read);
            }
            String sb2 = sb.toString();
            try {
                bufferedReader.close();
            } catch (Exception unused2) {
            }
            return sb2;
        } catch (Throwable unused3) {
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (Exception unused4) {
                }
            }
            return null;
        }
    }

    /* renamed from: com.hack.utils.ProcessUtils$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$hack$utils$ProcessUtils$ProcessType;

        static {
            int[] iArr = new int[ProcessType.values().length];
            $SwitchMap$com$hack$utils$ProcessUtils$ProcessType = iArr;
            try {
                iArr[ProcessType.TYPE_APP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$hack$utils$ProcessUtils$ProcessType[ProcessType.TYPE_CLIENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$hack$utils$ProcessUtils$ProcessType[ProcessType.TYPE_SERVICE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$hack$utils$ProcessUtils$ProcessType[ProcessType.TYPE_ASSIST.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static String typeToString(ProcessType processType) {
        int i = AnonymousClass1.$SwitchMap$com$hack$utils$ProcessUtils$ProcessType[processType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        return null;
                    }
                    return processType + "#TYPE_ASSIST";
                }
                return processType + "#TYPE_SERVICE";
            }
            return processType + "#TYPE_CLIENT";
        }
        return processType + "#TYPE_APP";
    }
}
