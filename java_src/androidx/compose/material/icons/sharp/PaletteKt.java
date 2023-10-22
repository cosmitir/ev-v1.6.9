package androidx.compose.material.icons.sharp;

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
/* compiled from: Palette.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"_palette", "Landroidx/compose/ui/graphics/vector/ImageVector;", "Palette", "Landroidx/compose/material/icons/Icons$Sharp;", "getPalette", "(Landroidx/compose/material/icons/Icons$Sharp;)Landroidx/compose/ui/graphics/vector/ImageVector;", "material-icons-extended-sharp_release"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PaletteKt {
    private static ImageVector _palette;

    public static final ImageVector getPalette(Icons.Sharp sharp) {
        ImageVector.Builder m815addPathoIyEayM;
        Intrinsics.checkNotNullParameter(sharp, "<this>");
        ImageVector imageVector = _palette;
        if (imageVector != null) {
            Intrinsics.checkNotNull(imageVector);
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("Sharp.Palette", Dp.m2105constructorimpl(24.0f), Dp.m2105constructorimpl(24.0f), 24.0f, 24.0f, 0L, 0, 96, null);
        int defaultFillType = VectorKt.getDefaultFillType();
        SolidColor solidColor = new SolidColor(Color.Companion.m372getBlack0d7_KjU(), null);
        int m616getButtKaPHkGw = StrokeCap.Companion.m616getButtKaPHkGw();
        int m626getBevelLxFBmk8 = StrokeJoin.Companion.m626getBevelLxFBmk8();
        PathBuilder pathBuilder = new PathBuilder();
        pathBuilder.moveTo(12.0f, 2.0f);
        pathBuilder.curveTo(6.49f, 2.0f, 2.0f, 6.49f, 2.0f, 12.0f);
        pathBuilder.reflectiveCurveToRelative(4.49f, 10.0f, 10.0f, 10.0f);
        pathBuilder.curveToRelative(1.38f, 0.0f, 2.5f, -1.12f, 2.5f, -2.5f);
        pathBuilder.curveToRelative(0.0f, -0.61f, -0.23f, -1.2f, -0.64f, -1.67f);
        pathBuilder.curveToRelative(-0.08f, -0.1f, -0.13f, -0.21f, -0.13f, -0.33f);
        pathBuilder.curveToRelative(0.0f, -0.28f, 0.22f, -0.5f, 0.5f, -0.5f);
        pathBuilder.horizontalLineTo(16.0f);
        pathBuilder.curveToRelative(3.31f, 0.0f, 6.0f, -2.69f, 6.0f, -6.0f);
        pathBuilder.curveTo(22.0f, 6.04f, 17.51f, 2.0f, 12.0f, 2.0f);
        pathBuilder.close();
        pathBuilder.moveTo(17.5f, 13.0f);
        pathBuilder.curveToRelative(-0.83f, 0.0f, -1.5f, -0.67f, -1.5f, -1.5f);
        pathBuilder.curveToRelative(0.0f, -0.83f, 0.67f, -1.5f, 1.5f, -1.5f);
        pathBuilder.reflectiveCurveToRelative(1.5f, 0.67f, 1.5f, 1.5f);
        pathBuilder.curveTo(19.0f, 12.33f, 18.33f, 13.0f, 17.5f, 13.0f);
        pathBuilder.close();
        pathBuilder.moveTo(14.5f, 9.0f);
        pathBuilder.curveTo(13.67f, 9.0f, 13.0f, 8.33f, 13.0f, 7.5f);
        pathBuilder.curveTo(13.0f, 6.67f, 13.67f, 6.0f, 14.5f, 6.0f);
        pathBuilder.reflectiveCurveTo(16.0f, 6.67f, 16.0f, 7.5f);
        pathBuilder.curveTo(16.0f, 8.33f, 15.33f, 9.0f, 14.5f, 9.0f);
        pathBuilder.close();
        pathBuilder.moveTo(5.0f, 11.5f);
        pathBuilder.curveTo(5.0f, 10.67f, 5.67f, 10.0f, 6.5f, 10.0f);
        pathBuilder.reflectiveCurveTo(8.0f, 10.67f, 8.0f, 11.5f);
        pathBuilder.curveTo(8.0f, 12.33f, 7.33f, 13.0f, 6.5f, 13.0f);
        pathBuilder.reflectiveCurveTo(5.0f, 12.33f, 5.0f, 11.5f);
        pathBuilder.close();
        pathBuilder.moveTo(11.0f, 7.5f);
        pathBuilder.curveTo(11.0f, 8.33f, 10.33f, 9.0f, 9.5f, 9.0f);
        pathBuilder.reflectiveCurveTo(8.0f, 8.33f, 8.0f, 7.5f);
        pathBuilder.curveTo(8.0f, 6.67f, 8.67f, 6.0f, 9.5f, 6.0f);
        pathBuilder.reflectiveCurveTo(11.0f, 6.67f, 11.0f, 7.5f);
        pathBuilder.close();
        m815addPathoIyEayM = builder.m815addPathoIyEayM(pathBuilder.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : defaultFillType, (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : solidColor, (r30 & 16) != 0 ? 1.0f : 1.0f, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : 1.0f, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m616getButtKaPHkGw, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m626getBevelLxFBmk8, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        ImageVector build = m815addPathoIyEayM.build();
        _palette = build;
        Intrinsics.checkNotNull(build);
        return build;
    }
}
