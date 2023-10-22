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
/* compiled from: MediaBluetoothOff.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"_mediaBluetoothOff", "Landroidx/compose/ui/graphics/vector/ImageVector;", "MediaBluetoothOff", "Landroidx/compose/material/icons/Icons$Filled;", "getMediaBluetoothOff", "(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;", "material-icons-extended-filled_release"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MediaBluetoothOffKt {
    private static ImageVector _mediaBluetoothOff;

    public static final ImageVector getMediaBluetoothOff(Icons.Filled filled) {
        ImageVector.Builder m815addPathoIyEayM;
        Intrinsics.checkNotNullParameter(filled, "<this>");
        ImageVector imageVector = _mediaBluetoothOff;
        if (imageVector != null) {
            Intrinsics.checkNotNull(imageVector);
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("Filled.MediaBluetoothOff", Dp.m2105constructorimpl(24.0f), Dp.m2105constructorimpl(24.0f), 24.0f, 24.0f, 0L, 0, 96, null);
        int defaultFillType = VectorKt.getDefaultFillType();
        SolidColor solidColor = new SolidColor(Color.Companion.m372getBlack0d7_KjU(), null);
        int m616getButtKaPHkGw = StrokeCap.Companion.m616getButtKaPHkGw();
        int m626getBevelLxFBmk8 = StrokeJoin.Companion.m626getBevelLxFBmk8();
        PathBuilder pathBuilder = new PathBuilder();
        pathBuilder.moveTo(9.0f, 6.17f);
        pathBuilder.verticalLineTo(3.0f);
        pathBuilder.horizontalLineToRelative(6.0f);
        pathBuilder.verticalLineToRelative(4.0f);
        pathBuilder.horizontalLineToRelative(-4.0f);
        pathBuilder.verticalLineToRelative(1.17f);
        pathBuilder.lineTo(9.0f, 6.17f);
        pathBuilder.close();
        pathBuilder.moveTo(19.42f, 15.0f);
        pathBuilder.lineTo(22.0f, 17.57f);
        pathBuilder.lineToRelative(-0.8f, 0.8f);
        pathBuilder.lineToRelative(-6.78f, -6.78f);
        pathBuilder.lineToRelative(0.8f, -0.8f);
        pathBuilder.lineToRelative(2.75f, 2.75f);
        pathBuilder.verticalLineTo(9.0f);
        pathBuilder.horizontalLineToRelative(0.6f);
        pathBuilder.lineTo(22.0f, 12.43f);
        pathBuilder.lineTo(19.42f, 15.0f);
        pathBuilder.close();
        pathBuilder.moveTo(19.17f, 13.55f);
        pathBuilder.lineToRelative(1.13f, -1.13f);
        pathBuilder.lineToRelative(-1.13f, -1.13f);
        pathBuilder.verticalLineTo(13.55f);
        pathBuilder.close();
        pathBuilder.moveTo(21.19f, 21.19f);
        pathBuilder.lineToRelative(-1.41f, 1.41f);
        pathBuilder.lineToRelative(-3.98f, -3.98f);
        pathBuilder.lineToRelative(-0.58f, 0.58f);
        pathBuilder.lineToRelative(-0.85f, -0.85f);
        pathBuilder.lineToRelative(0.58f, -0.58f);
        pathBuilder.lineTo(11.0f, 13.83f);
        pathBuilder.verticalLineTo(17.0f);
        pathBuilder.curveToRelative(0.0f, 2.21f, -1.78f, 4.0f, -3.99f, 4.0f);
        pathBuilder.reflectiveCurveTo(3.0f, 19.21f, 3.0f, 17.0f);
        pathBuilder.reflectiveCurveToRelative(1.79f, -4.0f, 4.01f, -4.0f);
        pathBuilder.curveToRelative(0.73f, 0.0f, 1.41f, 0.21f, 2.0f, 0.55f);
        pathBuilder.verticalLineToRelative(-1.72f);
        pathBuilder.lineTo(1.39f, 4.22f);
        pathBuilder.lineTo(2.8f, 2.81f);
        pathBuilder.lineTo(21.19f, 21.19f);
        pathBuilder.close();
        m815addPathoIyEayM = builder.m815addPathoIyEayM(pathBuilder.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : defaultFillType, (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : solidColor, (r30 & 16) != 0 ? 1.0f : 1.0f, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : 1.0f, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m616getButtKaPHkGw, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m626getBevelLxFBmk8, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        ImageVector build = m815addPathoIyEayM.build();
        _mediaBluetoothOff = build;
        Intrinsics.checkNotNull(build);
        return build;
    }
}
