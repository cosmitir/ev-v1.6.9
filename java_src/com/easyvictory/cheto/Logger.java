package com.easyvictory.cheto;

import android.util.Log;
import io.michaelrocks.paranoid.Deobfuscator$app$Release;
/* loaded from: classes.dex */
public class Logger {
    private static boolean enabled = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e(String str) {
        e(str, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e(String str, boolean z) {
        if (str == null) {
            return;
        }
        if (z || isEnabled()) {
            Log.e(Deobfuscator$app$Release.getString(-4871503141027209676L), str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d(String str) {
        d(str, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d(String str, boolean z) {
        if (str == null) {
            return;
        }
        if (z || isEnabled()) {
            Log.d(Deobfuscator$app$Release.getString(-4871503192566817228L), str);
        }
    }

    static boolean isEnabled() {
        return enabled;
    }
}
