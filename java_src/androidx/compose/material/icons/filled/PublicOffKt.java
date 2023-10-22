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
/* compiled from: PublicOff.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"_publicOff", "Landroidx/compose/ui/graphics/vector/ImageVector;", "PublicOff", "Landroidx/compose/material/icons/Icons$Filled;", "getPublicOff", "(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;", "material-icons-extended-filled_release"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PublicOffKt {
    private static ImageVector _publicOff;

    public static final ImageVector getPublicOff(Icons.Filled filled) {
        ImageVector.Builder m815addPathoIyEayM;
        Intrinsics.checkNotNullParameter(filled, "<this>");
        ImageVector imageVector = _publicOff;
        if (imageVector != null) {
            Intrinsics.checkNotNull(imageVector);
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("Filled.PublicOff", Dp.m2105constructorimpl(24.0f), Dp.m2105constructorimpl(24.0f), 24.0f, 24.0f, 0L, 0, 96, null);
        int defaultFillType = VectorKt.getDefaultFillType();
        SolidColor solidColor = new SolidColor(Color.Companion.m372getBlack0d7_KjU(), null);
        int m616getButtKaPHkGw = StrokeCap.Companion.m616getButtKaPHkGw();
        int m626getBevelLxFBmk8 = StrokeJoin.Companion.m626getBevelLxFBmk8();
        PathBuilder pathBuilder = new PathBuilder();
        pathBuilder.moveTo(11.0f, 8.17f);
        pathBuilder.lineTo(6.49f, 3.66f);
        pathBuilder.curveTo(8.07f, 2.61f, 9.96f, 2.0f, 12.0f, 2.0f);
        pathBuilder.curveToRelative(5.52f, 0.0f, 10.0f, 4.48f, 10.0f, 10.0f);
        pathBuilder.curveToRelative(0.0f, 2.04f, -0.61f, 3.93f, -1.66f, 5.51f);
        pathBuilder.lineToRelative(-1.46f, -1.46f);
        pathBuilder.curveTo(19.59f, 14.87f, 20.0f, 13.48f, 20.0f, 12.0f);
        pathBuilder.curveToRelative(0.0f, -3.35f, -2.07f, -6.22f, -5.0f, -7.41f);
        pathBuilder.verticalLineTo(5.0f);
        pathBuilder.curveToRelative(0.0f, 1.1f, -0.9f, 2.0f, -2.0f, 2.0f);
        pathBuilder.horizontalLineToRelative(-2.0f);
        pathBuilder.verticalLineTo(8.17f);
        pathBuilder.close();
        pathBuilder.moveTo(21.19f, 21.19f);
        pathBuilder.lineToRelative(-1.41f, 1.41f);
        pathBuilder.lineToRelative(-2.27f, -2.27f);
        pathBuilder.curveTo(15.93f, 21.39f, 14.04f, 22.0f, 12.0f, 22.0f);
        pathBuilder.curveTo(6.48f, 22.0f, 2.0f, 17.52f, 2.0f, 12.0f);
        pathBuilder.curveToRelative(0.0f, -2.04f, 0.61f, -3.93f, 1.66f, -5.51f);
        pathBuilder.lineTo(1.39f, 4.22f);
        pathBuilder.lineToRelative(1.41f, -1.41f);
        pathBuilder.lineTo(21.19f, 21.19f);
        pathBuilder.close();
        pathBuilder.moveTo(11.0f, 18.0f);
        pathBuilder.curveToRelative(-1.1f, 0.0f, -2.0f, -0.9f, -2.0f, -2.0f);
        pathBuilder.verticalLineToRelative(-1.0f);
        pathBuilder.lineToRelative(-4.79f, -4.79f);
        pathBuilder.curveTo(4.08f, 10.79f, 4.0f, 11.38f, 4.0f, 12.0f);
        pathBuilder.curveToRelative(0.0f, 4.08f, 3.05f, 7.44f, 7.0f, 7.93f);
        pathBuilder.verticalLineTo(18.0f);
        pathBuilder.close();
        m815addPathoIyEayM = builder.m815addPathoIyEayM(pathBuilder.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : defaultFillType, (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : solidColor, (r30 & 16) != 0 ? 1.0f : 1.0f, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : 1.0f, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m616getButtKaPHkGw, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m626getBevelLxFBmk8, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        ImageVector build = m815addPathoIyEayM.build();
        _publicOff = build;
        Intrinsics.checkNotNull(build);
        return build;
    }
}
