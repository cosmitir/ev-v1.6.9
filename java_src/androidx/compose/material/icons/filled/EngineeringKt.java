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
/* compiled from: Engineering.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"_engineering", "Landroidx/compose/ui/graphics/vector/ImageVector;", "Engineering", "Landroidx/compose/material/icons/Icons$Filled;", "getEngineering", "(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;", "material-icons-extended-filled_release"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class EngineeringKt {
    private static ImageVector _engineering;

    public static final ImageVector getEngineering(Icons.Filled filled) {
        ImageVector.Builder m815addPathoIyEayM;
        Intrinsics.checkNotNullParameter(filled, "<this>");
        ImageVector imageVector = _engineering;
        if (imageVector != null) {
            Intrinsics.checkNotNull(imageVector);
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("Filled.Engineering", Dp.m2105constructorimpl(24.0f), Dp.m2105constructorimpl(24.0f), 24.0f, 24.0f, 0L, 0, 96, null);
        int defaultFillType = VectorKt.getDefaultFillType();
        SolidColor solidColor = new SolidColor(Color.Companion.m372getBlack0d7_KjU(), null);
        int m616getButtKaPHkGw = StrokeCap.Companion.m616getButtKaPHkGw();
        int m626getBevelLxFBmk8 = StrokeJoin.Companion.m626getBevelLxFBmk8();
        PathBuilder pathBuilder = new PathBuilder();
        pathBuilder.moveTo(9.0f, 15.0f);
        pathBuilder.curveToRelative(-2.67f, 0.0f, -8.0f, 1.34f, -8.0f, 4.0f);
        pathBuilder.verticalLineToRelative(2.0f);
        pathBuilder.horizontalLineToRelative(16.0f);
        pathBuilder.verticalLineToRelative(-2.0f);
        pathBuilder.curveTo(17.0f, 16.34f, 11.67f, 15.0f, 9.0f, 15.0f);
        pathBuilder.close();
        builder.m815addPathoIyEayM(pathBuilder.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : defaultFillType, (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : solidColor, (r30 & 16) != 0 ? 1.0f : 1.0f, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : 1.0f, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m616getButtKaPHkGw, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m626getBevelLxFBmk8, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        int defaultFillType2 = VectorKt.getDefaultFillType();
        SolidColor solidColor2 = new SolidColor(Color.Companion.m372getBlack0d7_KjU(), null);
        int m616getButtKaPHkGw2 = StrokeCap.Companion.m616getButtKaPHkGw();
        int m626getBevelLxFBmk82 = StrokeJoin.Companion.m626getBevelLxFBmk8();
        PathBuilder pathBuilder2 = new PathBuilder();
        pathBuilder2.moveTo(22.1f, 6.84f);
        pathBuilder2.curveToRelative(0.01f, -0.11f, 0.02f, -0.22f, 0.02f, -0.34f);
        pathBuilder2.curveToRelative(0.0f, -0.12f, -0.01f, -0.23f, -0.03f, -0.34f);
        pathBuilder2.lineToRelative(0.74f, -0.58f);
        pathBuilder2.curveToRelative(0.07f, -0.05f, 0.08f, -0.15f, 0.04f, -0.22f);
        pathBuilder2.lineToRelative(-0.7f, -1.21f);
        pathBuilder2.curveToRelative(-0.04f, -0.08f, -0.14f, -0.1f, -0.21f, -0.08f);
        pathBuilder2.lineTo(21.1f, 4.42f);
        pathBuilder2.curveToRelative(-0.18f, -0.14f, -0.38f, -0.25f, -0.59f, -0.34f);
        pathBuilder2.lineToRelative(-0.13f, -0.93f);
        pathBuilder2.curveTo(20.36f, 3.06f, 20.29f, 3.0f, 20.2f, 3.0f);
        pathBuilder2.horizontalLineToRelative(-1.4f);
        pathBuilder2.curveToRelative(-0.09f, 0.0f, -0.16f, 0.06f, -0.17f, 0.15f);
        pathBuilder2.lineTo(18.5f, 4.08f);
        pathBuilder2.curveToRelative(-0.21f, 0.09f, -0.41f, 0.21f, -0.59f, 0.34f);
        pathBuilder2.lineToRelative(-0.87f, -0.35f);
        pathBuilder2.curveToRelative(-0.08f, -0.03f, -0.17f, 0.0f, -0.21f, 0.08f);
        pathBuilder2.lineToRelative(-0.7f, 1.21f);
        pathBuilder2.curveToRelative(-0.04f, 0.08f, -0.03f, 0.17f, 0.04f, 0.22f);
        pathBuilder2.lineToRelative(0.74f, 0.58f);
        pathBuilder2.curveToRelative(-0.02f, 0.11f, -0.03f, 0.23f, -0.03f, 0.34f);
        pathBuilder2.curveToRelative(0.0f, 0.11f, 0.01f, 0.23f, 0.03f, 0.34f);
        pathBuilder2.lineToRelative(-0.74f, 0.58f);
        pathBuilder2.curveToRelative(-0.07f, 0.05f, -0.08f, 0.15f, -0.04f, 0.22f);
        pathBuilder2.lineToRelative(0.7f, 1.21f);
        pathBuilder2.curveToRelative(0.04f, 0.08f, 0.14f, 0.1f, 0.21f, 0.08f);
        pathBuilder2.lineToRelative(0.87f, -0.35f);
        pathBuilder2.curveToRelative(0.18f, 0.14f, 0.38f, 0.25f, 0.59f, 0.34f);
        pathBuilder2.lineToRelative(0.13f, 0.93f);
        pathBuilder2.curveTo(18.64f, 9.94f, 18.71f, 10.0f, 18.8f, 10.0f);
        pathBuilder2.horizontalLineToRelative(1.4f);
        pathBuilder2.curveToRelative(0.09f, 0.0f, 0.16f, -0.06f, 0.17f, -0.15f);
        pathBuilder2.lineToRelative(0.13f, -0.93f);
        pathBuilder2.curveToRelative(0.21f, -0.09f, 0.41f, -0.21f, 0.59f, -0.34f);
        pathBuilder2.lineToRelative(0.87f, 0.35f);
        pathBuilder2.curveToRelative(0.08f, 0.03f, 0.17f, 0.0f, 0.21f, -0.08f);
        pathBuilder2.lineToRelative(0.7f, -1.21f);
        pathBuilder2.curveToRelative(0.04f, -0.08f, 0.03f, -0.17f, -0.04f, -0.22f);
        pathBuilder2.lineTo(22.1f, 6.84f);
        pathBuilder2.close();
        pathBuilder2.moveTo(19.5f, 7.75f);
        pathBuilder2.curveToRelative(-0.69f, 0.0f, -1.25f, -0.56f, -1.25f, -1.25f);
        pathBuilder2.reflectiveCurveToRelative(0.56f, -1.25f, 1.25f, -1.25f);
        pathBuilder2.reflectiveCurveToRelative(1.25f, 0.56f, 1.25f, 1.25f);
        pathBuilder2.reflectiveCurveTo(20.19f, 7.75f, 19.5f, 7.75f);
        pathBuilder2.close();
        builder.m815addPathoIyEayM(pathBuilder2.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : defaultFillType2, (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : solidColor2, (r30 & 16) != 0 ? 1.0f : 1.0f, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : 1.0f, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m616getButtKaPHkGw2, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m626getBevelLxFBmk82, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        int defaultFillType3 = VectorKt.getDefaultFillType();
        SolidColor solidColor3 = new SolidColor(Color.Companion.m372getBlack0d7_KjU(), null);
        int m616getButtKaPHkGw3 = StrokeCap.Companion.m616getButtKaPHkGw();
        int m626getBevelLxFBmk83 = StrokeJoin.Companion.m626getBevelLxFBmk8();
        PathBuilder pathBuilder3 = new PathBuilder();
        pathBuilder3.moveTo(19.92f, 11.68f);
        pathBuilder3.lineToRelative(-0.5f, -0.87f);
        pathBuilder3.curveToRelative(-0.03f, -0.06f, -0.1f, -0.08f, -0.15f, -0.06f);
        pathBuilder3.lineToRelative(-0.62f, 0.25f);
        pathBuilder3.curveToRelative(-0.13f, -0.1f, -0.27f, -0.18f, -0.42f, -0.24f);
        pathBuilder3.lineToRelative(-0.09f, -0.66f);
        pathBuilder3.curveTo(18.12f, 10.04f, 18.06f, 10.0f, 18.0f, 10.0f);
        pathBuilder3.horizontalLineToRelative(-1.0f);
        pathBuilder3.curveToRelative(-0.06f, 0.0f, -0.11f, 0.04f, -0.12f, 0.11f);
        pathBuilder3.lineToRelative(-0.09f, 0.66f);
        pathBuilder3.curveToRelative(-0.15f, 0.06f, -0.29f, 0.15f, -0.42f, 0.24f);
        pathBuilder3.lineToRelative(-0.62f, -0.25f);
        pathBuilder3.curveToRelative(-0.06f, -0.02f, -0.12f, 0.0f, -0.15f, 0.06f);
        pathBuilder3.lineToRelative(-0.5f, 0.87f);
        pathBuilder3.curveToRelative(-0.03f, 0.06f, -0.02f, 0.12f, 0.03f, 0.16f);
        pathBuilder3.lineToRelative(0.53f, 0.41f);
        pathBuilder3.curveToRelative(-0.01f, 0.08f, -0.02f, 0.16f, -0.02f, 0.24f);
        pathBuilder3.curveToRelative(0.0f, 0.08f, 0.01f, 0.17f, 0.02f, 0.24f);
        pathBuilder3.lineToRelative(-0.53f, 0.41f);
        pathBuilder3.curveToRelative(-0.05f, 0.04f, -0.06f, 0.11f, -0.03f, 0.16f);
        pathBuilder3.lineToRelative(0.5f, 0.87f);
        pathBuilder3.curveToRelative(0.03f, 0.06f, 0.1f, 0.08f, 0.15f, 0.06f);
        pathBuilder3.lineToRelative(0.62f, -0.25f);
        pathBuilder3.curveToRelative(0.13f, 0.1f, 0.27f, 0.18f, 0.42f, 0.24f);
        pathBuilder3.lineToRelative(0.09f, 0.66f);
        pathBuilder3.curveTo(16.89f, 14.96f, 16.94f, 15.0f, 17.0f, 15.0f);
        pathBuilder3.horizontalLineToRelative(1.0f);
        pathBuilder3.curveToRelative(0.06f, 0.0f, 0.12f, -0.04f, 0.12f, -0.11f);
        pathBuilder3.lineToRelative(0.09f, -0.66f);
        pathBuilder3.curveToRelative(0.15f, -0.06f, 0.29f, -0.15f, 0.42f, -0.24f);
        pathBuilder3.lineToRelative(0.62f, 0.25f);
        pathBuilder3.curveToRelative(0.06f, 0.02f, 0.12f, 0.0f, 0.15f, -0.06f);
        pathBuilder3.lineToRelative(0.5f, -0.87f);
        pathBuilder3.curveToRelative(0.03f, -0.06f, 0.02f, -0.12f, -0.03f, -0.16f);
        pathBuilder3.lineToRelative(-0.52f, -0.41f);
        pathBuilder3.curveToRelative(0.01f, -0.08f, 0.02f, -0.16f, 0.02f, -0.24f);
        pathBuilder3.curveToRelative(0.0f, -0.08f, -0.01f, -0.17f, -0.02f, -0.24f);
        pathBuilder3.lineToRelative(0.53f, -0.41f);
        pathBuilder3.curveTo(19.93f, 11.81f, 19.94f, 11.74f, 19.92f, 11.68f);
        pathBuilder3.close();
        pathBuilder3.moveTo(17.5f, 13.33f);
        pathBuilder3.curveToRelative(-0.46f, 0.0f, -0.83f, -0.38f, -0.83f, -0.83f);
        pathBuilder3.curveToRelative(0.0f, -0.46f, 0.38f, -0.83f, 0.83f, -0.83f);
        pathBuilder3.reflectiveCurveToRelative(0.83f, 0.38f, 0.83f, 0.83f);
        pathBuilder3.curveTo(18.33f, 12.96f, 17.96f, 13.33f, 17.5f, 13.33f);
        pathBuilder3.close();
        builder.m815addPathoIyEayM(pathBuilder3.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : defaultFillType3, (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : solidColor3, (r30 & 16) != 0 ? 1.0f : 1.0f, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : 1.0f, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m616getButtKaPHkGw3, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m626getBevelLxFBmk83, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        int defaultFillType4 = VectorKt.getDefaultFillType();
        SolidColor solidColor4 = new SolidColor(Color.Companion.m372getBlack0d7_KjU(), null);
        int m616getButtKaPHkGw4 = StrokeCap.Companion.m616getButtKaPHkGw();
        int m626getBevelLxFBmk84 = StrokeJoin.Companion.m626getBevelLxFBmk8();
        PathBuilder pathBuilder4 = new PathBuilder();
        pathBuilder4.moveTo(4.74f, 9.0f);
        pathBuilder4.horizontalLineToRelative(8.53f);
        pathBuilder4.curveToRelative(0.27f, 0.0f, 0.49f, -0.22f, 0.49f, -0.49f);
        pathBuilder4.verticalLineTo(8.49f);
        pathBuilder4.curveToRelative(0.0f, -0.27f, -0.22f, -0.49f, -0.49f, -0.49f);
        pathBuilder4.horizontalLineTo(13.0f);
        pathBuilder4.curveToRelative(0.0f, -1.48f, -0.81f, -2.75f, -2.0f, -3.45f);
        pathBuilder4.verticalLineTo(5.5f);
        pathBuilder4.curveTo(11.0f, 5.78f, 10.78f, 6.0f, 10.5f, 6.0f);
        pathBuilder4.reflectiveCurveTo(10.0f, 5.78f, 10.0f, 5.5f);
        pathBuilder4.verticalLineTo(4.14f);
        pathBuilder4.curveTo(9.68f, 4.06f, 9.35f, 4.0f, 9.0f, 4.0f);
        pathBuilder4.reflectiveCurveTo(8.32f, 4.06f, 8.0f, 4.14f);
        pathBuilder4.verticalLineTo(5.5f);
        pathBuilder4.curveTo(8.0f, 5.78f, 7.78f, 6.0f, 7.5f, 6.0f);
        pathBuilder4.reflectiveCurveTo(7.0f, 5.78f, 7.0f, 5.5f);
        pathBuilder4.verticalLineTo(4.55f);
        pathBuilder4.curveTo(5.81f, 5.25f, 5.0f, 6.52f, 5.0f, 8.0f);
        pathBuilder4.horizontalLineTo(4.74f);
        pathBuilder4.curveTo(4.47f, 8.0f, 4.25f, 8.22f, 4.25f, 8.49f);
        pathBuilder4.verticalLineToRelative(0.03f);
        pathBuilder4.curveTo(4.25f, 8.78f, 4.47f, 9.0f, 4.74f, 9.0f);
        pathBuilder4.close();
        builder.m815addPathoIyEayM(pathBuilder4.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : defaultFillType4, (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : solidColor4, (r30 & 16) != 0 ? 1.0f : 1.0f, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : 1.0f, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m616getButtKaPHkGw4, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m626getBevelLxFBmk84, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        int defaultFillType5 = VectorKt.getDefaultFillType();
        SolidColor solidColor5 = new SolidColor(Color.Companion.m372getBlack0d7_KjU(), null);
        int m616getButtKaPHkGw5 = StrokeCap.Companion.m616getButtKaPHkGw();
        int m626getBevelLxFBmk85 = StrokeJoin.Companion.m626getBevelLxFBmk8();
        PathBuilder pathBuilder5 = new PathBuilder();
        pathBuilder5.moveTo(9.0f, 13.0f);
        pathBuilder5.curveToRelative(1.86f, 0.0f, 3.41f, -1.28f, 3.86f, -3.0f);
        pathBuilder5.horizontalLineTo(5.14f);
        pathBuilder5.curveTo(5.59f, 11.72f, 7.14f, 13.0f, 9.0f, 13.0f);
        pathBuilder5.close();
        m815addPathoIyEayM = builder.m815addPathoIyEayM(pathBuilder5.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : defaultFillType5, (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : solidColor5, (r30 & 16) != 0 ? 1.0f : 1.0f, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : 1.0f, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m616getButtKaPHkGw5, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m626getBevelLxFBmk85, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        ImageVector build = m815addPathoIyEayM.build();
        _engineering = build;
        Intrinsics.checkNotNull(build);
        return build;
    }
}
