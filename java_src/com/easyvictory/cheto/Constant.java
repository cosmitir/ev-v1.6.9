package com.easyvictory.cheto;

import android.content.Context;
import android.content.SharedPreferences;
import io.michaelrocks.paranoid.Deobfuscator$app$Release;
/* loaded from: classes.dex */
public class Constant {
    static final String tag = Deobfuscator$app$Release.getString(-4871489139433824716L);

    public static String getGamePackageName() {
        return Deobfuscator$app$Release.getString(-4871489023469707724L);
    }

    static void setValue(Context context, String str, int i) {
        SharedPreferences.Editor edit = context.getSharedPreferences(Constant.class.getCanonicalName(), 0).edit();
        edit.putInt(str, i);
        edit.apply();
    }

    static int getValue(Context context, String str, int i) {
        return context.getSharedPreferences(Constant.class.getCanonicalName(), 0).getInt(str, i);
    }
}
