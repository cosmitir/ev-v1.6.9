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
/* compiled from: DoNotDisturbAlt.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"_doNotDisturbAlt", "Landroidx/compose/ui/graphics/vector/ImageVector;", "DoNotDisturbAlt", "Landroidx/compose/material/icons/Icons$Sharp;", "getDoNotDisturbAlt", "(Landroidx/compose/material/icons/Icons$Sharp;)Landroidx/compose/ui/graphics/vector/ImageVector;", "material-icons-extended-sharp_release"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DoNotDisturbAltKt {
    private static ImageVector _doNotDisturbAlt;

    public static final ImageVector getDoNotDisturbAlt(Icons.Sharp sharp) {
        ImageVector.Builder m815addPathoIyEayM;
        Intrinsics.checkNotNullParameter(sharp, "<this>");
        ImageVector imageVector = _doNotDisturbAlt;
        if (imageVector != null) {
            Intrinsics.checkNotNull(imageVector);
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("Sharp.DoNotDisturbAlt", Dp.m2105constructorimpl(24.0f), Dp.m2105constructorimpl(24.0f), 24.0f, 24.0f, 0L, 0, 96, null);
        int defaultFillType = VectorKt.getDefaultFillType();
        SolidColor solidColor = new SolidColor(Color.Companion.m372getBlack0d7_KjU(), null);
        int m616getButtKaPHkGw = StrokeCap.Companion.m616getButtKaPHkGw();
        int m626getBevelLxFBmk8 = StrokeJoin.Companion.m626getBevelLxFBmk8();
        PathBuilder pathBuilder = new PathBuilder();
        pathBuilder.moveTo(12.0f, 2.0f);
        pathBuilder.curveTo(6.5f, 2.0f, 2.0f, 6.5f, 2.0f, 12.0f);
        pathBuilder.reflectiveCurveToRelative(4.5f, 10.0f, 10.0f, 10.0f);
        pathBuilder.reflectiveCurveToRelative(10.0f, -4.5f, 10.0f, -10.0f);
        pathBuilder.reflectiveCurveTo(17.5f, 2.0f, 12.0f, 2.0f);
        pathBuilder.close();
        pathBuilder.moveTo(4.0f, 12.0f);
        pathBuilder.curveToRelative(0.0f, -4.4f, 3.6f, -8.0f, 8.0f, -8.0f);
        pathBuilder.curveToRelative(1.8f, 0.0f, 3.5f, 0.6f, 4.9f, 1.7f);
        pathBuilder.lineTo(5.7f, 16.9f);
        pathBuilder.curveTo(4.6f, 15.5f, 4.0f, 13.8f, 4.0f, 12.0f);
        pathBuilder.close();
        pathBuilder.moveTo(12.0f, 20.0f);
        pathBuilder.curveToRelative(-1.8f, 0.0f, -3.5f, -0.6f, -4.9f, -1.7f);
        pathBuilder.lineTo(18.3f, 7.1f);
        pathBuilder.curveTo(19.4f, 8.5f, 20.0f, 10.2f, 20.0f, 12.0f);
        pathBuilder.curveTo(20.0f, 16.4f, 16.4f, 20.0f, 12.0f, 20.0f);
        pathBuilder.close();
        m815addPathoIyEayM = builder.m815addPathoIyEayM(pathBuilder.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : defaultFillType, (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : solidColor, (r30 & 16) != 0 ? 1.0f : 1.0f, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : 1.0f, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m616getButtKaPHkGw, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m626getBevelLxFBmk8, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        ImageVector build = m815addPathoIyEayM.build();
        _doNotDisturbAlt = build;
        Intrinsics.checkNotNull(build);
        return build;
    }
}
