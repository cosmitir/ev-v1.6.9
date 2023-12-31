package androidx.vectordrawable.graphics.drawable;

import android.content.Context;
import android.content.res.Resources;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
/* loaded from: classes.dex */
public class AnimationUtilsCompat {
    public static Interpolator loadInterpolator(Context context, int i) throws Resources.NotFoundException {
        return AnimationUtils.loadInterpolator(context, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x00cb, code lost:
        return r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.view.animation.Interpolator createInterpolatorFromXml(android.content.Context r2, android.content.res.Resources r3, android.content.res.Resources.Theme r4, org.xmlpull.v1.XmlPullParser r5) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            int r3 = r5.getDepth()
            r4 = 0
        L5:
            int r0 = r5.next()
            r1 = 3
            if (r0 != r1) goto L12
            int r1 = r5.getDepth()
            if (r1 <= r3) goto Lcb
        L12:
            r1 = 1
            if (r0 == r1) goto Lcb
            r1 = 2
            if (r0 == r1) goto L19
            goto L5
        L19:
            android.util.AttributeSet r4 = android.util.Xml.asAttributeSet(r5)
            java.lang.String r0 = r5.getName()
            java.lang.String r1 = "linearInterpolator"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L30
            android.view.animation.LinearInterpolator r4 = new android.view.animation.LinearInterpolator
            r4.<init>()
            goto L5
        L30:
            java.lang.String r1 = "accelerateInterpolator"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L3f
            android.view.animation.AccelerateInterpolator r0 = new android.view.animation.AccelerateInterpolator
            r0.<init>(r2, r4)
        L3d:
            r4 = r0
            goto L5
        L3f:
            java.lang.String r1 = "decelerateInterpolator"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L4d
            android.view.animation.DecelerateInterpolator r0 = new android.view.animation.DecelerateInterpolator
            r0.<init>(r2, r4)
            goto L3d
        L4d:
            java.lang.String r1 = "accelerateDecelerateInterpolator"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L5b
            android.view.animation.AccelerateDecelerateInterpolator r4 = new android.view.animation.AccelerateDecelerateInterpolator
            r4.<init>()
            goto L5
        L5b:
            java.lang.String r1 = "cycleInterpolator"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L69
            android.view.animation.CycleInterpolator r0 = new android.view.animation.CycleInterpolator
            r0.<init>(r2, r4)
            goto L3d
        L69:
            java.lang.String r1 = "anticipateInterpolator"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L77
            android.view.animation.AnticipateInterpolator r0 = new android.view.animation.AnticipateInterpolator
            r0.<init>(r2, r4)
            goto L3d
        L77:
            java.lang.String r1 = "overshootInterpolator"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L86
            android.view.animation.OvershootInterpolator r0 = new android.view.animation.OvershootInterpolator
            r0.<init>(r2, r4)
            goto L3d
        L86:
            java.lang.String r1 = "anticipateOvershootInterpolator"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto L94
            android.view.animation.AnticipateOvershootInterpolator r0 = new android.view.animation.AnticipateOvershootInterpolator
            r0.<init>(r2, r4)
            goto L3d
        L94:
            java.lang.String r1 = "bounceInterpolator"
            boolean r1 = r0.equals(r1)
            if (r1 == 0) goto La3
            android.view.animation.BounceInterpolator r4 = new android.view.animation.BounceInterpolator
            r4.<init>()
            goto L5
        La3:
            java.lang.String r1 = "pathInterpolator"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto Lb2
            androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat r0 = new androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat
            r0.<init>(r2, r4, r5)
            goto L3d
        Lb2:
            java.lang.RuntimeException r2 = new java.lang.RuntimeException
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "Unknown interpolator name: "
            r3.<init>(r4)
            java.lang.String r4 = r5.getName()
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r3 = r3.toString()
            r2.<init>(r3)
            throw r2
        Lcb:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.vectordrawable.graphics.drawable.AnimationUtilsCompat.createInterpolatorFromXml(android.content.Context, android.content.res.Resources, android.content.res.Resources$Theme, org.xmlpull.v1.XmlPullParser):android.view.animation.Interpolator");
    }

    private AnimationUtilsCompat() {
    }
}
