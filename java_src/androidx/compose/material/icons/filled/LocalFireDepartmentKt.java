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
/* compiled from: LocalFireDepartment.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"_localFireDepartment", "Landroidx/compose/ui/graphics/vector/ImageVector;", "LocalFireDepartment", "Landroidx/compose/material/icons/Icons$Filled;", "getLocalFireDepartment", "(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;", "material-icons-extended-filled_release"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LocalFireDepartmentKt {
    private static ImageVector _localFireDepartment;

    public static final ImageVector getLocalFireDepartment(Icons.Filled filled) {
        ImageVector.Builder m815addPathoIyEayM;
        Intrinsics.checkNotNullParameter(filled, "<this>");
        ImageVector imageVector = _localFireDepartment;
        if (imageVector != null) {
            Intrinsics.checkNotNull(imageVector);
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("Filled.LocalFireDepartment", Dp.m2105constructorimpl(24.0f), Dp.m2105constructorimpl(24.0f), 24.0f, 24.0f, 0L, 0, 96, null);
        int defaultFillType = VectorKt.getDefaultFillType();
        SolidColor solidColor = new SolidColor(Color.Companion.m372getBlack0d7_KjU(), null);
        int m616getButtKaPHkGw = StrokeCap.Companion.m616getButtKaPHkGw();
        int m626getBevelLxFBmk8 = StrokeJoin.Companion.m626getBevelLxFBmk8();
        PathBuilder pathBuilder = new PathBuilder();
        pathBuilder.moveTo(19.48f, 12.35f);
        pathBuilder.curveToRelative(-1.57f, -4.08f, -7.16f, -4.3f, -5.81f, -10.23f);
        pathBuilder.curveToRelative(0.1f, -0.44f, -0.37f, -0.78f, -0.75f, -0.55f);
        pathBuilder.curveTo(9.29f, 3.71f, 6.68f, 8.0f, 8.87f, 13.62f);
        pathBuilder.curveToRelative(0.18f, 0.46f, -0.36f, 0.89f, -0.75f, 0.59f);
        pathBuilder.curveToRelative(-1.81f, -1.37f, -2.0f, -3.34f, -1.84f, -4.75f);
        pathBuilder.curveToRelative(0.06f, -0.52f, -0.62f, -0.77f, -0.91f, -0.34f);
        pathBuilder.curveTo(4.69f, 10.16f, 4.0f, 11.84f, 4.0f, 14.37f);
        pathBuilder.curveToRelative(0.38f, 5.6f, 5.11f, 7.32f, 6.81f, 7.54f);
        pathBuilder.curveToRelative(2.43f, 0.31f, 5.06f, -0.14f, 6.95f, -1.87f);
        pathBuilder.curveTo(19.84f, 18.11f, 20.6f, 15.03f, 19.48f, 12.35f);
        pathBuilder.close();
        pathBuilder.moveTo(10.2f, 17.38f);
        pathBuilder.curveToRelative(1.44f, -0.35f, 2.18f, -1.39f, 2.38f, -2.31f);
        pathBuilder.curveToRelative(0.33f, -1.43f, -0.96f, -2.83f, -0.09f, -5.09f);
        pathBuilder.curveToRelative(0.33f, 1.87f, 3.27f, 3.04f, 3.27f, 5.08f);
        pathBuilder.curveTo(15.84f, 17.59f, 13.1f, 19.76f, 10.2f, 17.38f);
        pathBuilder.close();
        m815addPathoIyEayM = builder.m815addPathoIyEayM(pathBuilder.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : defaultFillType, (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : solidColor, (r30 & 16) != 0 ? 1.0f : 1.0f, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : 1.0f, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m616getButtKaPHkGw, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m626getBevelLxFBmk8, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        ImageVector build = m815addPathoIyEayM.build();
        _localFireDepartment = build;
        Intrinsics.checkNotNull(build);
        return build;
    }
}
