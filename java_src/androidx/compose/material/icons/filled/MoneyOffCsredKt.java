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
/* compiled from: MoneyOffCsred.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"_moneyOffCsred", "Landroidx/compose/ui/graphics/vector/ImageVector;", "MoneyOffCsred", "Landroidx/compose/material/icons/Icons$Filled;", "getMoneyOffCsred", "(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;", "material-icons-extended-filled_release"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MoneyOffCsredKt {
    private static ImageVector _moneyOffCsred;

    public static final ImageVector getMoneyOffCsred(Icons.Filled filled) {
        ImageVector.Builder m815addPathoIyEayM;
        Intrinsics.checkNotNullParameter(filled, "<this>");
        ImageVector imageVector = _moneyOffCsred;
        if (imageVector != null) {
            Intrinsics.checkNotNull(imageVector);
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("Filled.MoneyOffCsred", Dp.m2105constructorimpl(24.0f), Dp.m2105constructorimpl(24.0f), 24.0f, 24.0f, 0L, 0, 96, null);
        int defaultFillType = VectorKt.getDefaultFillType();
        SolidColor solidColor = new SolidColor(Color.Companion.m372getBlack0d7_KjU(), null);
        int m616getButtKaPHkGw = StrokeCap.Companion.m616getButtKaPHkGw();
        int m626getBevelLxFBmk8 = StrokeJoin.Companion.m626getBevelLxFBmk8();
        PathBuilder pathBuilder = new PathBuilder();
        pathBuilder.moveTo(10.53f, 7.43f);
        pathBuilder.curveToRelative(0.42f, -0.31f, 0.93f, -0.47f, 1.54f, -0.47f);
        pathBuilder.reflectiveCurveToRelative(1.11f, 0.16f, 1.5f, 0.49f);
        pathBuilder.curveToRelative(0.39f, 0.32f, 0.65f, 0.7f, 0.79f, 1.12f);
        pathBuilder.lineToRelative(1.89f, -0.8f);
        pathBuilder.curveToRelative(-0.24f, -0.71f, -0.71f, -1.35f, -1.4f, -1.92f);
        pathBuilder.curveToRelative(-0.5f, -0.4f, -1.12f, -0.65f, -1.85f, -0.77f);
        pathBuilder.verticalLineTo(3.0f);
        pathBuilder.horizontalLineToRelative(-2.0f);
        pathBuilder.verticalLineToRelative(2.11f);
        pathBuilder.curveToRelative(-0.41f, 0.08f, -0.79f, 0.21f, -1.14f, 0.39f);
        pathBuilder.curveToRelative(-0.35f, 0.18f, -0.64f, 0.39f, -0.9f, 0.63f);
        pathBuilder.lineToRelative(1.43f, 1.43f);
        pathBuilder.curveTo(10.43f, 7.52f, 10.48f, 7.47f, 10.53f, 7.43f);
        pathBuilder.close();
        pathBuilder.moveTo(2.81f, 2.81f);
        pathBuilder.lineTo(1.39f, 4.22f);
        pathBuilder.lineToRelative(12.35f, 12.35f);
        pathBuilder.curveTo(13.31f, 16.85f, 12.79f, 17.0f, 12.19f, 17.0f);
        pathBuilder.curveToRelative(-0.71f, 0.0f, -1.32f, -0.23f, -1.83f, -0.7f);
        pathBuilder.curveToRelative(-0.5f, -0.47f, -0.86f, -1.07f, -1.06f, -1.81f);
        pathBuilder.lineToRelative(-1.98f, 0.8f);
        pathBuilder.curveToRelative(0.34f, 1.17f, 0.95f, 2.08f, 1.83f, 2.73f);
        pathBuilder.curveToRelative(0.57f, 0.42f, 1.19f, 0.68f, 1.85f, 0.83f);
        pathBuilder.verticalLineTo(21.0f);
        pathBuilder.horizontalLineToRelative(2.0f);
        pathBuilder.verticalLineToRelative(-2.08f);
        pathBuilder.curveToRelative(0.44f, -0.07f, 0.87f, -0.17f, 1.29f, -0.35f);
        pathBuilder.curveToRelative(0.34f, -0.14f, 0.64f, -0.32f, 0.92f, -0.53f);
        pathBuilder.lineToRelative(4.57f, 4.57f);
        pathBuilder.lineToRelative(1.41f, -1.41f);
        pathBuilder.lineTo(2.81f, 2.81f);
        pathBuilder.close();
        m815addPathoIyEayM = builder.m815addPathoIyEayM(pathBuilder.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : defaultFillType, (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : solidColor, (r30 & 16) != 0 ? 1.0f : 1.0f, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : 1.0f, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m616getButtKaPHkGw, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m626getBevelLxFBmk8, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        ImageVector build = m815addPathoIyEayM.build();
        _moneyOffCsred = build;
        Intrinsics.checkNotNull(build);
        return build;
    }
}
