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
/* compiled from: NearbyOff.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"_nearbyOff", "Landroidx/compose/ui/graphics/vector/ImageVector;", "NearbyOff", "Landroidx/compose/material/icons/Icons$Sharp;", "getNearbyOff", "(Landroidx/compose/material/icons/Icons$Sharp;)Landroidx/compose/ui/graphics/vector/ImageVector;", "material-icons-extended-sharp_release"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class NearbyOffKt {
    private static ImageVector _nearbyOff;

    public static final ImageVector getNearbyOff(Icons.Sharp sharp) {
        ImageVector.Builder m815addPathoIyEayM;
        Intrinsics.checkNotNullParameter(sharp, "<this>");
        ImageVector imageVector = _nearbyOff;
        if (imageVector != null) {
            Intrinsics.checkNotNull(imageVector);
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("Sharp.NearbyOff", Dp.m2105constructorimpl(24.0f), Dp.m2105constructorimpl(24.0f), 24.0f, 24.0f, 0L, 0, 96, null);
        int defaultFillType = VectorKt.getDefaultFillType();
        SolidColor solidColor = new SolidColor(Color.Companion.m372getBlack0d7_KjU(), null);
        int m616getButtKaPHkGw = StrokeCap.Companion.m616getButtKaPHkGw();
        int m626getBevelLxFBmk8 = StrokeJoin.Companion.m626getBevelLxFBmk8();
        PathBuilder pathBuilder = new PathBuilder();
        pathBuilder.moveTo(22.82f, 12.01f);
        pathBuilder.lineTo(18.83f, 16.0f);
        pathBuilder.lineToRelative(-1.81f, -1.81f);
        pathBuilder.lineTo(19.2f, 12.0f);
        pathBuilder.lineTo(12.0f, 4.8f);
        pathBuilder.lineTo(9.81f, 6.99f);
        pathBuilder.lineTo(8.0f, 5.17f);
        pathBuilder.lineToRelative(3.99f, -3.99f);
        pathBuilder.lineTo(22.82f, 12.01f);
        pathBuilder.close();
        pathBuilder.moveTo(21.19f, 21.19f);
        pathBuilder.lineToRelative(-1.41f, 1.41f);
        pathBuilder.lineTo(16.0f, 18.83f);
        pathBuilder.lineToRelative(-3.99f, 3.99f);
        pathBuilder.lineTo(1.18f, 11.99f);
        pathBuilder.lineTo(5.17f, 8.0f);
        pathBuilder.lineTo(1.39f, 4.22f);
        pathBuilder.lineTo(2.8f, 2.81f);
        pathBuilder.lineTo(21.19f, 21.19f);
        pathBuilder.close();
        pathBuilder.moveTo(14.19f, 17.02f);
        pathBuilder.lineToRelative(-1.39f, -1.39f);
        pathBuilder.lineToRelative(-0.8f, 0.8f);
        pathBuilder.lineTo(7.58f, 12.0f);
        pathBuilder.lineToRelative(0.8f, -0.8f);
        pathBuilder.lineToRelative(-1.4f, -1.39f);
        pathBuilder.lineTo(4.8f, 12.0f);
        pathBuilder.lineToRelative(7.2f, 7.2f);
        pathBuilder.lineTo(14.19f, 17.02f);
        pathBuilder.close();
        pathBuilder.moveTo(16.42f, 12.0f);
        pathBuilder.lineTo(12.0f, 7.58f);
        pathBuilder.lineToRelative(-0.8f, 0.8f);
        pathBuilder.lineToRelative(4.42f, 4.42f);
        pathBuilder.lineTo(16.42f, 12.0f);
        pathBuilder.close();
        m815addPathoIyEayM = builder.m815addPathoIyEayM(pathBuilder.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : defaultFillType, (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : solidColor, (r30 & 16) != 0 ? 1.0f : 1.0f, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : 1.0f, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m616getButtKaPHkGw, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m626getBevelLxFBmk8, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        ImageVector build = m815addPathoIyEayM.build();
        _nearbyOff = build;
        Intrinsics.checkNotNull(build);
        return build;
    }
}
