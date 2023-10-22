package com.easyvictory.cheto;

import android.content.Context;
import android.graphics.Point;
import android.view.WindowManager;
import io.michaelrocks.paranoid.Deobfuscator$app$Release;
/* loaded from: classes.dex */
public class Utils {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getScreenWidth(Context context) {
        return getScreenSize(context).x;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getScreenHeight(Context context) {
        return getScreenSize(context).y;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Point getScreenSize(Context context) {
        Point point = new Point();
        ((WindowManager) context.getSystemService(Deobfuscator$app$Release.getString(-4871513771071267276L))).getDefaultDisplay().getRealSize(point);
        return point;
    }
}
