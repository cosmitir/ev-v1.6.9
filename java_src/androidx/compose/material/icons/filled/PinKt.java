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
/* compiled from: Pin.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"_pin", "Landroidx/compose/ui/graphics/vector/ImageVector;", "Pin", "Landroidx/compose/material/icons/Icons$Filled;", "getPin", "(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;", "material-icons-extended-filled_release"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PinKt {
    private static ImageVector _pin;

    public static final ImageVector getPin(Icons.Filled filled) {
        ImageVector.Builder m815addPathoIyEayM;
        Intrinsics.checkNotNullParameter(filled, "<this>");
        ImageVector imageVector = _pin;
        if (imageVector != null) {
            Intrinsics.checkNotNull(imageVector);
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("Filled.Pin", Dp.m2105constructorimpl(24.0f), Dp.m2105constructorimpl(24.0f), 24.0f, 24.0f, 0L, 0, 96, null);
        int defaultFillType = VectorKt.getDefaultFillType();
        SolidColor solidColor = new SolidColor(Color.Companion.m372getBlack0d7_KjU(), null);
        int m616getButtKaPHkGw = StrokeCap.Companion.m616getButtKaPHkGw();
        int m626getBevelLxFBmk8 = StrokeJoin.Companion.m626getBevelLxFBmk8();
        PathBuilder pathBuilder = new PathBuilder();
        pathBuilder.moveTo(20.0f, 4.0f);
        pathBuilder.horizontalLineTo(4.0f);
        pathBuilder.curveTo(2.9f, 4.0f, 2.0f, 4.9f, 2.0f, 6.0f);
        pathBuilder.verticalLineToRelative(12.0f);
        pathBuilder.curveToRelative(0.0f, 1.1f, 0.9f, 2.0f, 2.0f, 2.0f);
        pathBuilder.horizontalLineToRelative(16.0f);
        pathBuilder.curveToRelative(1.1f, 0.0f, 2.0f, -0.9f, 2.0f, -2.0f);
        pathBuilder.verticalLineTo(6.0f);
        pathBuilder.curveTo(22.0f, 4.9f, 21.1f, 4.0f, 20.0f, 4.0f);
        pathBuilder.close();
        pathBuilder.moveTo(7.64f, 15.0f);
        pathBuilder.horizontalLineTo(6.49f);
        pathBuilder.verticalLineToRelative(-4.5f);
        pathBuilder.lineToRelative(-0.9f, 0.66f);
        pathBuilder.lineToRelative(-0.58f, -0.89f);
        pathBuilder.lineTo(6.77f, 9.0f);
        pathBuilder.horizontalLineToRelative(0.87f);
        pathBuilder.verticalLineTo(15.0f);
        pathBuilder.close();
        pathBuilder.moveTo(13.5f, 15.0f);
        pathBuilder.horizontalLineTo(9.61f);
        pathBuilder.verticalLineToRelative(-1.02f);
        pathBuilder.curveToRelative(1.07f, -1.07f, 1.77f, -1.77f, 2.13f, -2.15f);
        pathBuilder.curveToRelative(0.4f, -0.42f, 0.54f, -0.69f, 0.54f, -1.06f);
        pathBuilder.curveToRelative(0.0f, -0.4f, -0.31f, -0.72f, -0.81f, -0.72f);
        pathBuilder.curveToRelative(-0.52f, 0.0f, -0.8f, 0.39f, -0.9f, 0.72f);
        pathBuilder.lineToRelative(-1.01f, -0.42f);
        pathBuilder.curveToRelative(0.01f, -0.02f, 0.18f, -0.76f, 1.0f, -1.15f);
        pathBuilder.curveToRelative(0.69f, -0.33f, 1.48f, -0.2f, 1.95f, 0.03f);
        pathBuilder.curveToRelative(0.86f, 0.44f, 0.91f, 1.24f, 0.91f, 1.48f);
        pathBuilder.curveToRelative(0.0f, 0.64f, -0.31f, 1.26f, -0.92f, 1.86f);
        pathBuilder.curveToRelative(-0.25f, 0.25f, -0.72f, 0.71f, -1.4f, 1.39f);
        pathBuilder.lineToRelative(0.03f, 0.05f);
        pathBuilder.horizontalLineToRelative(2.37f);
        pathBuilder.verticalLineTo(15.0f);
        pathBuilder.close();
        pathBuilder.moveTo(18.75f, 14.15f);
        pathBuilder.curveTo(18.67f, 14.28f, 18.19f, 15.0f, 16.99f, 15.0f);
        pathBuilder.curveToRelative(-0.04f, 0.0f, -1.6f, 0.08f, -2.05f, -1.51f);
        pathBuilder.lineToRelative(1.03f, -0.41f);
        pathBuilder.curveToRelative(0.03f, 0.1f, 0.19f, 0.86f, 1.02f, 0.86f);
        pathBuilder.curveToRelative(0.41f, 0.0f, 0.89f, -0.28f, 0.89f, -0.77f);
        pathBuilder.curveToRelative(0.0f, -0.55f, -0.48f, -0.79f, -1.04f, -0.79f);
        pathBuilder.horizontalLineToRelative(-0.5f);
        pathBuilder.verticalLineToRelative(-1.0f);
        pathBuilder.horizontalLineToRelative(0.46f);
        pathBuilder.curveToRelative(0.33f, 0.0f, 0.88f, -0.14f, 0.88f, -0.72f);
        pathBuilder.curveToRelative(0.0f, -0.39f, -0.31f, -0.65f, -0.75f, -0.65f);
        pathBuilder.curveToRelative(-0.5f, 0.0f, -0.74f, 0.32f, -0.85f, 0.64f);
        pathBuilder.lineToRelative(-0.99f, -0.41f);
        pathBuilder.curveTo(15.2f, 9.9f, 15.68f, 9.0f, 16.94f, 9.0f);
        pathBuilder.curveToRelative(1.09f, 0.0f, 1.54f, 0.64f, 1.62f, 0.75f);
        pathBuilder.curveToRelative(0.33f, 0.5f, 0.28f, 1.16f, 0.02f, 1.57f);
        pathBuilder.curveToRelative(-0.15f, 0.22f, -0.32f, 0.38f, -0.52f, 0.48f);
        pathBuilder.verticalLineToRelative(0.07f);
        pathBuilder.curveToRelative(0.28f, 0.11f, 0.51f, 0.28f, 0.68f, 0.52f);
        pathBuilder.curveTo(19.11f, 12.91f, 19.07f, 13.66f, 18.75f, 14.15f);
        pathBuilder.close();
        m815addPathoIyEayM = builder.m815addPathoIyEayM(pathBuilder.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : defaultFillType, (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : solidColor, (r30 & 16) != 0 ? 1.0f : 1.0f, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : 1.0f, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m616getButtKaPHkGw, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m626getBevelLxFBmk8, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        ImageVector build = m815addPathoIyEayM.build();
        _pin = build;
        Intrinsics.checkNotNull(build);
        return build;
    }
}
