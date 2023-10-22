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
/* compiled from: PanoramaVertical.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"_panoramaVertical", "Landroidx/compose/ui/graphics/vector/ImageVector;", "PanoramaVertical", "Landroidx/compose/material/icons/Icons$Filled;", "getPanoramaVertical", "(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;", "material-icons-extended-filled_release"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PanoramaVerticalKt {
    private static ImageVector _panoramaVertical;

    public static final ImageVector getPanoramaVertical(Icons.Filled filled) {
        ImageVector.Builder m815addPathoIyEayM;
        Intrinsics.checkNotNullParameter(filled, "<this>");
        ImageVector imageVector = _panoramaVertical;
        if (imageVector != null) {
            Intrinsics.checkNotNull(imageVector);
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("Filled.PanoramaVertical", Dp.m2105constructorimpl(24.0f), Dp.m2105constructorimpl(24.0f), 24.0f, 24.0f, 0L, 0, 96, null);
        int defaultFillType = VectorKt.getDefaultFillType();
        SolidColor solidColor = new SolidColor(Color.Companion.m372getBlack0d7_KjU(), null);
        int m616getButtKaPHkGw = StrokeCap.Companion.m616getButtKaPHkGw();
        int m626getBevelLxFBmk8 = StrokeJoin.Companion.m626getBevelLxFBmk8();
        PathBuilder pathBuilder = new PathBuilder();
        pathBuilder.moveTo(19.94f, 21.12f);
        pathBuilder.curveToRelative(-1.1f, -2.94f, -1.64f, -6.03f, -1.64f, -9.12f);
        pathBuilder.curveToRelative(0.0f, -3.09f, 0.55f, -6.18f, 1.64f, -9.12f);
        pathBuilder.curveToRelative(0.04f, -0.11f, 0.06f, -0.22f, 0.06f, -0.31f);
        pathBuilder.curveToRelative(0.0f, -0.34f, -0.23f, -0.57f, -0.63f, -0.57f);
        pathBuilder.horizontalLineTo(4.63f);
        pathBuilder.curveToRelative(-0.4f, 0.0f, -0.63f, 0.23f, -0.63f, 0.57f);
        pathBuilder.curveToRelative(0.0f, 0.1f, 0.02f, 0.2f, 0.06f, 0.31f);
        pathBuilder.curveTo(5.16f, 5.82f, 5.71f, 8.91f, 5.71f, 12.0f);
        pathBuilder.curveToRelative(0.0f, 3.09f, -0.55f, 6.18f, -1.64f, 9.12f);
        pathBuilder.curveToRelative(-0.05f, 0.11f, -0.07f, 0.22f, -0.07f, 0.31f);
        pathBuilder.curveToRelative(0.0f, 0.33f, 0.23f, 0.57f, 0.63f, 0.57f);
        pathBuilder.horizontalLineToRelative(14.75f);
        pathBuilder.curveToRelative(0.39f, 0.0f, 0.63f, -0.24f, 0.63f, -0.57f);
        pathBuilder.curveToRelative(-0.01f, -0.1f, -0.03f, -0.2f, -0.07f, -0.31f);
        pathBuilder.close();
        pathBuilder.moveTo(6.54f, 20.0f);
        pathBuilder.curveToRelative(0.77f, -2.6f, 1.16f, -5.28f, 1.16f, -8.0f);
        pathBuilder.curveToRelative(0.0f, -2.72f, -0.39f, -5.4f, -1.16f, -8.0f);
        pathBuilder.horizontalLineToRelative(10.91f);
        pathBuilder.curveToRelative(-0.77f, 2.6f, -1.16f, 5.28f, -1.16f, 8.0f);
        pathBuilder.curveToRelative(0.0f, 2.72f, 0.39f, 5.4f, 1.16f, 8.0f);
        pathBuilder.horizontalLineTo(6.54f);
        pathBuilder.close();
        m815addPathoIyEayM = builder.m815addPathoIyEayM(pathBuilder.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : defaultFillType, (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : solidColor, (r30 & 16) != 0 ? 1.0f : 1.0f, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : 1.0f, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m616getButtKaPHkGw, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m626getBevelLxFBmk8, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        ImageVector build = m815addPathoIyEayM.build();
        _panoramaVertical = build;
        Intrinsics.checkNotNull(build);
        return build;
    }
}
