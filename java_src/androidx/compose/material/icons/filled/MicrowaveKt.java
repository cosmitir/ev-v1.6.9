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
/* compiled from: Microwave.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"_microwave", "Landroidx/compose/ui/graphics/vector/ImageVector;", "Microwave", "Landroidx/compose/material/icons/Icons$Filled;", "getMicrowave", "(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;", "material-icons-extended-filled_release"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MicrowaveKt {
    private static ImageVector _microwave;

    public static final ImageVector getMicrowave(Icons.Filled filled) {
        ImageVector.Builder m815addPathoIyEayM;
        Intrinsics.checkNotNullParameter(filled, "<this>");
        ImageVector imageVector = _microwave;
        if (imageVector != null) {
            Intrinsics.checkNotNull(imageVector);
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("Filled.Microwave", Dp.m2105constructorimpl(24.0f), Dp.m2105constructorimpl(24.0f), 24.0f, 24.0f, 0L, 0, 96, null);
        int defaultFillType = VectorKt.getDefaultFillType();
        SolidColor solidColor = new SolidColor(Color.Companion.m372getBlack0d7_KjU(), null);
        int m616getButtKaPHkGw = StrokeCap.Companion.m616getButtKaPHkGw();
        int m626getBevelLxFBmk8 = StrokeJoin.Companion.m626getBevelLxFBmk8();
        PathBuilder pathBuilder = new PathBuilder();
        pathBuilder.moveTo(6.8f, 10.61f);
        pathBuilder.lineTo(5.37f, 9.19f);
        pathBuilder.curveTo(5.73f, 8.79f, 6.59f, 8.0f, 7.75f, 8.0f);
        pathBuilder.curveToRelative(0.8f, 0.0f, 1.39f, 0.39f, 1.81f, 0.67f);
        pathBuilder.curveTo(9.87f, 8.88f, 10.07f, 9.0f, 10.25f, 9.0f);
        pathBuilder.curveToRelative(0.37f, 0.0f, 0.8f, -0.41f, 0.95f, -0.61f);
        pathBuilder.lineToRelative(1.42f, 1.42f);
        pathBuilder.curveToRelative(-0.36f, 0.4f, -1.22f, 1.19f, -2.37f, 1.19f);
        pathBuilder.curveToRelative(-0.79f, 0.0f, -1.37f, -0.38f, -1.79f, -0.66f);
        pathBuilder.curveTo(8.13f, 10.12f, 7.94f, 10.0f, 7.75f, 10.0f);
        pathBuilder.curveTo(7.38f, 10.0f, 6.95f, 10.41f, 6.8f, 10.61f);
        pathBuilder.close();
        pathBuilder.moveTo(7.75f, 15.0f);
        pathBuilder.curveToRelative(0.19f, 0.0f, 0.38f, 0.12f, 0.71f, 0.34f);
        pathBuilder.curveToRelative(0.42f, 0.28f, 1.0f, 0.66f, 1.79f, 0.66f);
        pathBuilder.curveToRelative(1.16f, 0.0f, 2.01f, -0.79f, 2.37f, -1.19f);
        pathBuilder.lineToRelative(-1.42f, -1.42f);
        pathBuilder.curveToRelative(-0.15f, 0.2f, -0.59f, 0.61f, -0.95f, 0.61f);
        pathBuilder.curveToRelative(-0.18f, 0.0f, -0.38f, -0.12f, -0.69f, -0.33f);
        pathBuilder.curveTo(9.14f, 13.39f, 8.55f, 13.0f, 7.75f, 13.0f);
        pathBuilder.curveToRelative(-1.16f, 0.0f, -2.02f, 0.79f, -2.38f, 1.19f);
        pathBuilder.lineToRelative(1.42f, 1.42f);
        pathBuilder.curveTo(6.95f, 15.41f, 7.38f, 15.0f, 7.75f, 15.0f);
        pathBuilder.close();
        pathBuilder.moveTo(22.0f, 6.0f);
        pathBuilder.verticalLineToRelative(12.0f);
        pathBuilder.curveToRelative(0.0f, 1.1f, -0.9f, 2.0f, -2.0f, 2.0f);
        pathBuilder.horizontalLineTo(4.0f);
        pathBuilder.curveToRelative(-1.1f, 0.0f, -2.0f, -0.9f, -2.0f, -2.0f);
        pathBuilder.verticalLineTo(6.0f);
        pathBuilder.curveToRelative(0.0f, -1.1f, 0.9f, -2.0f, 2.0f, -2.0f);
        pathBuilder.horizontalLineToRelative(16.0f);
        pathBuilder.curveTo(21.1f, 4.0f, 22.0f, 4.9f, 22.0f, 6.0f);
        pathBuilder.close();
        pathBuilder.moveTo(14.0f, 6.0f);
        pathBuilder.horizontalLineTo(4.0f);
        pathBuilder.verticalLineToRelative(12.0f);
        pathBuilder.horizontalLineToRelative(10.0f);
        pathBuilder.verticalLineTo(6.0f);
        pathBuilder.close();
        pathBuilder.moveTo(19.0f, 16.0f);
        pathBuilder.curveToRelative(0.0f, -0.55f, -0.45f, -1.0f, -1.0f, -1.0f);
        pathBuilder.curveToRelative(-0.55f, 0.0f, -1.0f, 0.45f, -1.0f, 1.0f);
        pathBuilder.curveToRelative(0.0f, 0.55f, 0.45f, 1.0f, 1.0f, 1.0f);
        pathBuilder.curveTo(18.55f, 17.0f, 19.0f, 16.55f, 19.0f, 16.0f);
        pathBuilder.close();
        pathBuilder.moveTo(19.0f, 12.0f);
        pathBuilder.curveToRelative(0.0f, -0.55f, -0.45f, -1.0f, -1.0f, -1.0f);
        pathBuilder.curveToRelative(-0.55f, 0.0f, -1.0f, 0.45f, -1.0f, 1.0f);
        pathBuilder.curveToRelative(0.0f, 0.55f, 0.45f, 1.0f, 1.0f, 1.0f);
        pathBuilder.curveTo(18.55f, 13.0f, 19.0f, 12.55f, 19.0f, 12.0f);
        pathBuilder.close();
        pathBuilder.moveTo(19.0f, 7.0f);
        pathBuilder.horizontalLineToRelative(-2.0f);
        pathBuilder.verticalLineToRelative(2.0f);
        pathBuilder.horizontalLineToRelative(2.0f);
        pathBuilder.verticalLineTo(7.0f);
        pathBuilder.close();
        m815addPathoIyEayM = builder.m815addPathoIyEayM(pathBuilder.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : defaultFillType, (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : solidColor, (r30 & 16) != 0 ? 1.0f : 1.0f, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : 1.0f, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m616getButtKaPHkGw, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m626getBevelLxFBmk8, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        ImageVector build = m815addPathoIyEayM.build();
        _microwave = build;
        Intrinsics.checkNotNull(build);
        return build;
    }
}
