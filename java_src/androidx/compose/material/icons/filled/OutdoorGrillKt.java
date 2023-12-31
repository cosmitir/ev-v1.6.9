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
/* compiled from: OutdoorGrill.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"_outdoorGrill", "Landroidx/compose/ui/graphics/vector/ImageVector;", "OutdoorGrill", "Landroidx/compose/material/icons/Icons$Filled;", "getOutdoorGrill", "(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;", "material-icons-extended-filled_release"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class OutdoorGrillKt {
    private static ImageVector _outdoorGrill;

    public static final ImageVector getOutdoorGrill(Icons.Filled filled) {
        ImageVector.Builder m815addPathoIyEayM;
        Intrinsics.checkNotNullParameter(filled, "<this>");
        ImageVector imageVector = _outdoorGrill;
        if (imageVector != null) {
            Intrinsics.checkNotNull(imageVector);
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("Filled.OutdoorGrill", Dp.m2105constructorimpl(24.0f), Dp.m2105constructorimpl(24.0f), 24.0f, 24.0f, 0L, 0, 96, null);
        int defaultFillType = VectorKt.getDefaultFillType();
        SolidColor solidColor = new SolidColor(Color.Companion.m372getBlack0d7_KjU(), null);
        int m616getButtKaPHkGw = StrokeCap.Companion.m616getButtKaPHkGw();
        int m626getBevelLxFBmk8 = StrokeJoin.Companion.m626getBevelLxFBmk8();
        PathBuilder pathBuilder = new PathBuilder();
        pathBuilder.moveTo(17.0f, 22.0f);
        pathBuilder.curveToRelative(1.66f, 0.0f, 3.0f, -1.34f, 3.0f, -3.0f);
        pathBuilder.reflectiveCurveToRelative(-1.34f, -3.0f, -3.0f, -3.0f);
        pathBuilder.curveToRelative(-1.3f, 0.0f, -2.4f, 0.84f, -2.82f, 2.0f);
        pathBuilder.horizontalLineTo(9.14f);
        pathBuilder.lineToRelative(1.99f, -3.06f);
        pathBuilder.curveTo(11.42f, 14.98f, 11.71f, 15.0f, 12.0f, 15.0f);
        pathBuilder.reflectiveCurveToRelative(0.58f, -0.02f, 0.87f, -0.06f);
        pathBuilder.lineToRelative(1.02f, 1.57f);
        pathBuilder.curveToRelative(0.42f, -0.53f, 0.96f, -0.95f, 1.6f, -1.21f);
        pathBuilder.lineToRelative(-0.6f, -0.93f);
        pathBuilder.curveTo(17.31f, 13.27f, 19.0f, 10.84f, 19.0f, 8.0f);
        pathBuilder.horizontalLineTo(5.0f);
        pathBuilder.curveToRelative(0.0f, 2.84f, 1.69f, 5.27f, 4.12f, 6.37f);
        pathBuilder.lineToRelative(-3.95f, 6.08f);
        pathBuilder.curveToRelative(-0.3f, 0.46f, -0.17f, 1.08f, 0.29f, 1.38f);
        pathBuilder.horizontalLineToRelative(0.0f);
        pathBuilder.curveToRelative(0.46f, 0.3f, 1.08f, 0.17f, 1.38f, -0.29f);
        pathBuilder.lineToRelative(1.0f, -1.55f);
        pathBuilder.horizontalLineToRelative(6.34f);
        pathBuilder.curveTo(14.6f, 21.16f, 15.7f, 22.0f, 17.0f, 22.0f);
        pathBuilder.close();
        pathBuilder.moveTo(17.0f, 18.0f);
        pathBuilder.curveToRelative(0.55f, 0.0f, 1.0f, 0.45f, 1.0f, 1.0f);
        pathBuilder.curveToRelative(0.0f, 0.55f, -0.45f, 1.0f, -1.0f, 1.0f);
        pathBuilder.reflectiveCurveToRelative(-1.0f, -0.45f, -1.0f, -1.0f);
        pathBuilder.curveTo(16.0f, 18.45f, 16.45f, 18.0f, 17.0f, 18.0f);
        pathBuilder.close();
        builder.m815addPathoIyEayM(pathBuilder.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : defaultFillType, (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : solidColor, (r30 & 16) != 0 ? 1.0f : 1.0f, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : 1.0f, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m616getButtKaPHkGw, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m626getBevelLxFBmk8, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        int defaultFillType2 = VectorKt.getDefaultFillType();
        SolidColor solidColor2 = new SolidColor(Color.Companion.m372getBlack0d7_KjU(), null);
        int m616getButtKaPHkGw2 = StrokeCap.Companion.m616getButtKaPHkGw();
        int m626getBevelLxFBmk82 = StrokeJoin.Companion.m626getBevelLxFBmk8();
        PathBuilder pathBuilder2 = new PathBuilder();
        pathBuilder2.moveTo(9.41f, 7.0f);
        pathBuilder2.horizontalLineToRelative(1.0f);
        pathBuilder2.curveToRelative(0.15f, -1.15f, 0.23f, -1.64f, -0.89f, -2.96f);
        pathBuilder2.curveTo(9.1f, 3.54f, 8.84f, 3.27f, 9.06f, 2.0f);
        pathBuilder2.horizontalLineTo(8.07f);
        pathBuilder2.curveTo(7.86f, 3.11f, 8.1f, 4.05f, 8.96f, 4.96f);
        pathBuilder2.curveTo(9.18f, 5.2f, 9.75f, 5.63f, 9.41f, 7.0f);
        pathBuilder2.close();
        builder.m815addPathoIyEayM(pathBuilder2.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : defaultFillType2, (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : solidColor2, (r30 & 16) != 0 ? 1.0f : 1.0f, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : 1.0f, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m616getButtKaPHkGw2, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m626getBevelLxFBmk82, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        int defaultFillType3 = VectorKt.getDefaultFillType();
        SolidColor solidColor3 = new SolidColor(Color.Companion.m372getBlack0d7_KjU(), null);
        int m616getButtKaPHkGw3 = StrokeCap.Companion.m616getButtKaPHkGw();
        int m626getBevelLxFBmk83 = StrokeJoin.Companion.m626getBevelLxFBmk8();
        PathBuilder pathBuilder3 = new PathBuilder();
        pathBuilder3.moveTo(11.89f, 7.0f);
        pathBuilder3.horizontalLineToRelative(1.0f);
        pathBuilder3.curveToRelative(0.15f, -1.15f, 0.23f, -1.64f, -0.89f, -2.96f);
        pathBuilder3.curveToRelative(-0.42f, -0.5f, -0.68f, -0.78f, -0.46f, -2.04f);
        pathBuilder3.horizontalLineToRelative(-0.99f);
        pathBuilder3.curveToRelative(-0.21f, 1.11f, 0.03f, 2.05f, 0.89f, 2.96f);
        pathBuilder3.curveTo(11.67f, 5.2f, 12.24f, 5.63f, 11.89f, 7.0f);
        pathBuilder3.close();
        builder.m815addPathoIyEayM(pathBuilder3.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : defaultFillType3, (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : solidColor3, (r30 & 16) != 0 ? 1.0f : 1.0f, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : 1.0f, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m616getButtKaPHkGw3, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m626getBevelLxFBmk83, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        int defaultFillType4 = VectorKt.getDefaultFillType();
        SolidColor solidColor4 = new SolidColor(Color.Companion.m372getBlack0d7_KjU(), null);
        int m616getButtKaPHkGw4 = StrokeCap.Companion.m616getButtKaPHkGw();
        int m626getBevelLxFBmk84 = StrokeJoin.Companion.m626getBevelLxFBmk8();
        PathBuilder pathBuilder4 = new PathBuilder();
        pathBuilder4.moveTo(14.41f, 7.0f);
        pathBuilder4.horizontalLineToRelative(1.0f);
        pathBuilder4.curveToRelative(0.15f, -1.15f, 0.23f, -1.64f, -0.89f, -2.96f);
        pathBuilder4.curveTo(14.1f, 3.54f, 13.84f, 3.27f, 14.06f, 2.0f);
        pathBuilder4.horizontalLineToRelative(-0.99f);
        pathBuilder4.curveToRelative(-0.21f, 1.11f, 0.03f, 2.05f, 0.89f, 2.96f);
        pathBuilder4.curveTo(14.18f, 5.2f, 14.75f, 5.63f, 14.41f, 7.0f);
        pathBuilder4.close();
        m815addPathoIyEayM = builder.m815addPathoIyEayM(pathBuilder4.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : defaultFillType4, (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : solidColor4, (r30 & 16) != 0 ? 1.0f : 1.0f, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : 1.0f, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m616getButtKaPHkGw4, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m626getBevelLxFBmk84, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        ImageVector build = m815addPathoIyEayM.build();
        _outdoorGrill = build;
        Intrinsics.checkNotNull(build);
        return build;
    }
}
