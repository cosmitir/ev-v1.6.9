package androidx.compose.material.icons.twotone;

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
/* compiled from: DisabledVisible.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"_disabledVisible", "Landroidx/compose/ui/graphics/vector/ImageVector;", "DisabledVisible", "Landroidx/compose/material/icons/Icons$TwoTone;", "getDisabledVisible", "(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;", "material-icons-extended-twotone_release"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DisabledVisibleKt {
    private static ImageVector _disabledVisible;

    public static final ImageVector getDisabledVisible(Icons.TwoTone twoTone) {
        ImageVector.Builder m815addPathoIyEayM;
        Intrinsics.checkNotNullParameter(twoTone, "<this>");
        ImageVector imageVector = _disabledVisible;
        if (imageVector != null) {
            Intrinsics.checkNotNull(imageVector);
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("TwoTone.DisabledVisible", Dp.m2105constructorimpl(24.0f), Dp.m2105constructorimpl(24.0f), 24.0f, 24.0f, 0L, 0, 96, null);
        int defaultFillType = VectorKt.getDefaultFillType();
        SolidColor solidColor = new SolidColor(Color.Companion.m372getBlack0d7_KjU(), null);
        int m616getButtKaPHkGw = StrokeCap.Companion.m616getButtKaPHkGw();
        int m626getBevelLxFBmk8 = StrokeJoin.Companion.m626getBevelLxFBmk8();
        PathBuilder pathBuilder = new PathBuilder();
        pathBuilder.moveTo(17.0f, 15.0f);
        pathBuilder.curveToRelative(-1.95f, 0.0f, -3.76f, 0.98f, -4.75f, 2.5f);
        pathBuilder.curveTo(13.24f, 19.02f, 15.05f, 20.0f, 17.0f, 20.0f);
        pathBuilder.reflectiveCurveToRelative(3.76f, -0.98f, 4.75f, -2.5f);
        pathBuilder.curveTo(20.76f, 15.98f, 18.95f, 15.0f, 17.0f, 15.0f);
        pathBuilder.close();
        pathBuilder.moveTo(17.0f, 19.0f);
        pathBuilder.curveToRelative(-0.83f, 0.0f, -1.5f, -0.67f, -1.5f, -1.5f);
        pathBuilder.curveToRelative(0.0f, -0.83f, 0.67f, -1.5f, 1.5f, -1.5f);
        pathBuilder.reflectiveCurveToRelative(1.5f, 0.67f, 1.5f, 1.5f);
        pathBuilder.curveTo(18.5f, 18.33f, 17.83f, 19.0f, 17.0f, 19.0f);
        pathBuilder.close();
        builder.m815addPathoIyEayM(pathBuilder.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : defaultFillType, (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : solidColor, (r30 & 16) != 0 ? 1.0f : 0.3f, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : 0.3f, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m616getButtKaPHkGw, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m626getBevelLxFBmk8, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        int defaultFillType2 = VectorKt.getDefaultFillType();
        SolidColor solidColor2 = new SolidColor(Color.Companion.m372getBlack0d7_KjU(), null);
        int m616getButtKaPHkGw2 = StrokeCap.Companion.m616getButtKaPHkGw();
        int m626getBevelLxFBmk82 = StrokeJoin.Companion.m626getBevelLxFBmk8();
        PathBuilder pathBuilder2 = new PathBuilder();
        pathBuilder2.moveTo(17.0f, 15.0f);
        pathBuilder2.curveToRelative(1.95f, 0.0f, 3.76f, 0.98f, 4.75f, 2.5f);
        pathBuilder2.curveTo(20.76f, 19.02f, 18.95f, 20.0f, 17.0f, 20.0f);
        pathBuilder2.reflectiveCurveToRelative(-3.76f, -0.98f, -4.75f, -2.5f);
        pathBuilder2.curveTo(13.24f, 15.98f, 15.05f, 15.0f, 17.0f, 15.0f);
        pathBuilder2.close();
        pathBuilder2.moveTo(17.0f, 13.0f);
        pathBuilder2.curveToRelative(-3.18f, 0.0f, -5.9f, 1.87f, -7.0f, 4.5f);
        pathBuilder2.curveToRelative(1.1f, 2.63f, 3.82f, 4.5f, 7.0f, 4.5f);
        pathBuilder2.reflectiveCurveToRelative(5.9f, -1.87f, 7.0f, -4.5f);
        pathBuilder2.curveTo(22.9f, 14.87f, 20.18f, 13.0f, 17.0f, 13.0f);
        pathBuilder2.close();
        pathBuilder2.moveTo(17.0f, 19.0f);
        pathBuilder2.curveToRelative(-0.83f, 0.0f, -1.5f, -0.67f, -1.5f, -1.5f);
        pathBuilder2.reflectiveCurveTo(16.17f, 16.0f, 17.0f, 16.0f);
        pathBuilder2.reflectiveCurveToRelative(1.5f, 0.67f, 1.5f, 1.5f);
        pathBuilder2.reflectiveCurveTo(17.83f, 19.0f, 17.0f, 19.0f);
        pathBuilder2.close();
        pathBuilder2.moveTo(21.99f, 12.34f);
        pathBuilder2.curveTo(22.0f, 12.23f, 22.0f, 12.11f, 22.0f, 12.0f);
        pathBuilder2.curveToRelative(0.0f, -5.52f, -4.48f, -10.0f, -10.0f, -10.0f);
        pathBuilder2.reflectiveCurveTo(2.0f, 6.48f, 2.0f, 12.0f);
        pathBuilder2.curveToRelative(0.0f, 5.17f, 3.93f, 9.43f, 8.96f, 9.95f);
        pathBuilder2.curveToRelative(-0.93f, -0.73f, -1.72f, -1.64f, -2.32f, -2.68f);
        pathBuilder2.curveTo(5.9f, 18.0f, 4.0f, 15.22f, 4.0f, 12.0f);
        pathBuilder2.curveToRelative(0.0f, -1.85f, 0.63f, -3.55f, 1.69f, -4.9f);
        pathBuilder2.lineToRelative(5.66f, 5.66f);
        pathBuilder2.curveToRelative(0.56f, -0.4f, 1.17f, -0.73f, 1.82f, -1.0f);
        pathBuilder2.lineTo(7.1f, 5.69f);
        pathBuilder2.curveTo(8.45f, 4.63f, 10.15f, 4.0f, 12.0f, 4.0f);
        pathBuilder2.curveToRelative(4.24f, 0.0f, 7.7f, 3.29f, 7.98f, 7.45f);
        pathBuilder2.curveTo(20.69f, 11.67f, 21.37f, 11.97f, 21.99f, 12.34f);
        pathBuilder2.close();
        m815addPathoIyEayM = builder.m815addPathoIyEayM(pathBuilder2.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : defaultFillType2, (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : solidColor2, (r30 & 16) != 0 ? 1.0f : 1.0f, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : 1.0f, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m616getButtKaPHkGw2, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m626getBevelLxFBmk82, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        ImageVector build = m815addPathoIyEayM.build();
        _disabledVisible = build;
        Intrinsics.checkNotNull(build);
        return build;
    }
}
