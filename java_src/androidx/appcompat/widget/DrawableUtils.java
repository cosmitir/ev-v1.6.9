package androidx.appcompat.widget;

import android.graphics.Insets;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import androidx.core.graphics.drawable.DrawableCompat;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public class DrawableUtils {
    private static final int[] CHECKED_STATE_SET = {16842912};
    private static final int[] EMPTY_STATE_SET = new int[0];
    public static final Rect INSETS_NONE = new Rect();

    public static boolean canSafelyMutateDrawable(Drawable drawable) {
        return true;
    }

    private DrawableUtils() {
    }

    public static Rect getOpticalBounds(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 29) {
            Insets opticalInsets = Api29Impl.getOpticalInsets(drawable);
            return new Rect(opticalInsets.left, opticalInsets.top, opticalInsets.right, opticalInsets.bottom);
        }
        return Api18Impl.getOpticalInsets(DrawableCompat.unwrap(drawable));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void fixDrawable(Drawable drawable) {
        String name = drawable.getClass().getName();
        if (Build.VERSION.SDK_INT < 29 || Build.VERSION.SDK_INT >= 31 || !"android.graphics.drawable.ColorStateListDrawable".equals(name)) {
            return;
        }
        forceDrawableStateChange(drawable);
    }

    private static void forceDrawableStateChange(Drawable drawable) {
        int[] state = drawable.getState();
        if (state == null || state.length == 0) {
            drawable.setState(CHECKED_STATE_SET);
        } else {
            drawable.setState(EMPTY_STATE_SET);
        }
        drawable.setState(state);
    }

    public static PorterDuff.Mode parseTintMode(int i, PorterDuff.Mode mode) {
        if (i != 3) {
            if (i != 5) {
                if (i == 9) {
                    return PorterDuff.Mode.SRC_ATOP;
                }
                switch (i) {
                    case 14:
                        return PorterDuff.Mode.MULTIPLY;
                    case 15:
                        return PorterDuff.Mode.SCREEN;
                    case 16:
                        return PorterDuff.Mode.ADD;
                    default:
                        return mode;
                }
            }
            return PorterDuff.Mode.SRC_IN;
        }
        return PorterDuff.Mode.SRC_OVER;
    }

    /* loaded from: classes.dex */
    static class Api18Impl {
        private static final Field sBottom;
        private static final Method sGetOpticalInsets;
        private static final Field sLeft;
        private static final boolean sReflectionSuccessful;
        private static final Field sRight;
        private static final Field sTop;

        /* JADX WARN: Removed duplicated region for block: B:25:0x004f  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x005c  */
        static {
            /*
                r0 = 1
                r1 = 0
                r2 = 0
                java.lang.String r3 = "android.graphics.Insets"
                java.lang.Class r3 = java.lang.Class.forName(r3)     // Catch: java.lang.NoSuchFieldException -> L3f java.lang.ClassNotFoundException -> L43 java.lang.NoSuchMethodException -> L47
                java.lang.Class<android.graphics.drawable.Drawable> r4 = android.graphics.drawable.Drawable.class
                java.lang.String r5 = "getOpticalInsets"
                java.lang.Class[] r6 = new java.lang.Class[r2]     // Catch: java.lang.NoSuchFieldException -> L3f java.lang.ClassNotFoundException -> L43 java.lang.NoSuchMethodException -> L47
                java.lang.reflect.Method r4 = r4.getMethod(r5, r6)     // Catch: java.lang.NoSuchFieldException -> L3f java.lang.ClassNotFoundException -> L43 java.lang.NoSuchMethodException -> L47
                java.lang.String r5 = "left"
                java.lang.reflect.Field r5 = r3.getField(r5)     // Catch: java.lang.NoSuchFieldException -> L39 java.lang.ClassNotFoundException -> L3b java.lang.NoSuchMethodException -> L3d
                java.lang.String r6 = "top"
                java.lang.reflect.Field r6 = r3.getField(r6)     // Catch: java.lang.NoSuchFieldException -> L33 java.lang.ClassNotFoundException -> L35 java.lang.NoSuchMethodException -> L37
                java.lang.String r7 = "right"
                java.lang.reflect.Field r7 = r3.getField(r7)     // Catch: java.lang.Throwable -> L31
                java.lang.String r8 = "bottom"
                java.lang.reflect.Field r3 = r3.getField(r8)     // Catch: java.lang.Throwable -> L4b
                r8 = r0
                goto L4d
            L31:
                r7 = r1
                goto L4b
            L33:
                r6 = r1
                goto L4a
            L35:
                r6 = r1
                goto L4a
            L37:
                r6 = r1
                goto L4a
            L39:
                r5 = r1
                goto L41
            L3b:
                r5 = r1
                goto L45
            L3d:
                r5 = r1
                goto L49
            L3f:
                r4 = r1
                r5 = r4
            L41:
                r6 = r5
                goto L4a
            L43:
                r4 = r1
                r5 = r4
            L45:
                r6 = r5
                goto L4a
            L47:
                r4 = r1
                r5 = r4
            L49:
                r6 = r5
            L4a:
                r7 = r6
            L4b:
                r3 = r1
                r8 = r2
            L4d:
                if (r8 == 0) goto L5c
                androidx.appcompat.widget.DrawableUtils.Api18Impl.sGetOpticalInsets = r4
                androidx.appcompat.widget.DrawableUtils.Api18Impl.sLeft = r5
                androidx.appcompat.widget.DrawableUtils.Api18Impl.sTop = r6
                androidx.appcompat.widget.DrawableUtils.Api18Impl.sRight = r7
                androidx.appcompat.widget.DrawableUtils.Api18Impl.sBottom = r3
                androidx.appcompat.widget.DrawableUtils.Api18Impl.sReflectionSuccessful = r0
                goto L68
            L5c:
                androidx.appcompat.widget.DrawableUtils.Api18Impl.sGetOpticalInsets = r1
                androidx.appcompat.widget.DrawableUtils.Api18Impl.sLeft = r1
                androidx.appcompat.widget.DrawableUtils.Api18Impl.sTop = r1
                androidx.appcompat.widget.DrawableUtils.Api18Impl.sRight = r1
                androidx.appcompat.widget.DrawableUtils.Api18Impl.sBottom = r1
                androidx.appcompat.widget.DrawableUtils.Api18Impl.sReflectionSuccessful = r2
            L68:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.DrawableUtils.Api18Impl.<clinit>():void");
        }

        private Api18Impl() {
        }

        static Rect getOpticalInsets(Drawable drawable) {
            if (Build.VERSION.SDK_INT < 29 && sReflectionSuccessful) {
                try {
                    Object invoke = sGetOpticalInsets.invoke(drawable, new Object[0]);
                    if (invoke != null) {
                        return new Rect(sLeft.getInt(invoke), sTop.getInt(invoke), sRight.getInt(invoke), sBottom.getInt(invoke));
                    }
                } catch (IllegalAccessException | InvocationTargetException unused) {
                }
            }
            return DrawableUtils.INSETS_NONE;
        }
    }

    /* loaded from: classes.dex */
    static class Api29Impl {
        private Api29Impl() {
        }

        static Insets getOpticalInsets(Drawable drawable) {
            return drawable.getOpticalInsets();
        }
    }
}
