package androidx.compose.material.icons.filled;

import androidx.compose.material.icons.Icons;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.PathBuilder;
import androidx.compose.ui.graphics.vector.VectorKt;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Animation.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"_animation", "Landroidx/compose/ui/graphics/vector/ImageVector;", "Animation", "Landroidx/compose/material/icons/Icons$Filled;", "getAnimation", "(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;", "material-icons-extended-filled_release"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AnimationKt {
    private static ImageVector _animation;

    public static final ImageVector getAnimation(Icons.Filled filled) {
        ImageVector.Builder m815addPathoIyEayM;
        Intrinsics.checkNotNullParameter(filled, "<this>");
        ImageVector imageVector = _animation;
        if (imageVector != null) {
            Intrinsics.checkNotNull(imageVector);
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("Filled.Animation", Dp.m2105constructorimpl(24.0f), Dp.m2105constructorimpl(24.0f), 24.0f, 24.0f, 0L, 0, 96, null);
        int defaultFillType = VectorKt.getDefaultFillType();
        SolidColor solidColor = new SolidColor(Color.Companion.m372getBlack0d7_KjU(), null);
        int m616getButtKaPHkGw = StrokeCap.Companion.m616getButtKaPHkGw();
        int m626getBevelLxFBmk8 = StrokeJoin.Companion.m626getBevelLxFBmk8();
        PathBuilder pathBuilder = new PathBuilder();
        pathBuilder.moveTo(15.0f, 2.0f);
        pathBuilder.curveToRelative(-2.71f, 0.0f, -5.05f, 1.54f, -6.22f, 3.78f);
        pathBuilder.curveToRelative(-1.28f, 0.67f, -2.34f, 1.72f, -3.0f, 3.0f);
        pathBuilder.curveTo(3.54f, 9.95f, 2.0f, 12.29f, 2.0f, 15.0f);
        pathBuilder.curveToRelative(0.0f, 3.87f, 3.13f, 7.0f, 7.0f, 7.0f);
        pathBuilder.curveToRelative(2.71f, 0.0f, 5.05f, -1.54f, 6.22f, -3.78f);
        pathBuilder.curveToRelative(1.28f, -0.67f, 2.34f, -1.72f, 3.0f, -3.0f);
        pathBuilder.curveTo(20.46f, 14.05f, 22.0f, 11.71f, 22.0f, 9.0f);
        pathBuilder.curveToRelative(0.0f, -3.87f, -3.13f, -7.0f, -7.0f, -7.0f);
        pathBuilder.close();
        pathBuilder.moveTo(9.0f, 20.0f);
        pathBuilder.curveToRelative(-2.76f, 0.0f, -5.0f, -2.24f, -5.0f, -5.0f);
        pathBuilder.curveToRelative(0.0f, -1.12f, 0.37f, -2.16f, 1.0f, -3.0f);
        pathBuilder.curveToRelative(0.0f, 3.87f, 3.13f, 7.0f, 7.0f, 7.0f);
        pathBuilder.curveToRelative(-0.84f, 0.63f, -1.88f, 1.0f, -3.0f, 1.0f);
        pathBuilder.close();
        pathBuilder.moveTo(12.0f, 17.0f);
        pathBuilder.curveToRelative(-2.76f, 0.0f, -5.0f, -2.24f, -5.0f, -5.0f);
        pathBuilder.curveToRelative(0.0f, -1.12f, 0.37f, -2.16f, 1.0f, -3.0f);
        pathBuilder.curveToRelative(0.0f, 3.86f, 3.13f, 6.99f, 7.0f, 7.0f);
        pathBuilder.curveToRelative(-0.84f, 0.63f, -1.88f, 1.0f, -3.0f, 1.0f);
        pathBuilder.close();
        pathBuilder.moveTo(16.7f, 13.7f);
        pathBuilder.curveToRelative(-0.53f, 0.19f, -1.1f, 0.3f, -1.7f, 0.3f);
        pathBuilder.curveToRelative(-2.76f, 0.0f, -5.0f, -2.24f, -5.0f, -5.0f);
        pathBuilder.curveToRelative(0.0f, -0.6f, 0.11f, -1.17f, 0.3f, -1.7f);
        pathBuilder.curveToRelative(0.53f, -0.19f, 1.1f, -0.3f, 1.7f, -0.3f);
        pathBuilder.curveToRelative(2.76f, 0.0f, 5.0f, 2.24f, 5.0f, 5.0f);
        pathBuilder.curveToRelative(0.0f, 0.6f, -0.11f, 1.17f, -0.3f, 1.7f);
        pathBuilder.close();
        pathBuilder.moveTo(19.0f, 12.0f);
        pathBuilder.curveToRelative(0.0f, -3.86f, -3.13f, -6.99f, -7.0f, -7.0f);
        pathBuilder.curveToRelative(0.84f, -0.63f, 1.87f, -1.0f, 3.0f, -1.0f);
        pathBuilder.curveToRelative(2.76f, 0.0f, 5.0f, 2.24f, 5.0f, 5.0f);
        pathBuilder.curveToRelative(0.0f, 1.12f, -0.37f, 2.16f, -1.0f, 3.0f);
        pathBuilder.close();
        m815addPathoIyEayM = builder.m815addPathoIyEayM(pathBuilder.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : defaultFillType, (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : solidColor, (r30 & 16) != 0 ? 1.0f : 1.0f, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : 1.0f, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m616getButtKaPHkGw, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m626getBevelLxFBmk8, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        ImageVector build = m815addPathoIyEayM.build();
        _animation = build;
        Intrinsics.checkNotNull(build);
        return build;
    }
}
