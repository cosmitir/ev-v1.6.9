package androidx.compose.material.icons.twotone;

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
/* compiled from: Camera.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"_camera", "Landroidx/compose/ui/graphics/vector/ImageVector;", "Camera", "Landroidx/compose/material/icons/Icons$TwoTone;", "getCamera", "(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;", "material-icons-extended-twotone_release"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CameraKt {
    private static ImageVector _camera;

    public static final ImageVector getCamera(Icons.TwoTone twoTone) {
        ImageVector.Builder m815addPathoIyEayM;
        Intrinsics.checkNotNullParameter(twoTone, "<this>");
        ImageVector imageVector = _camera;
        if (imageVector != null) {
            Intrinsics.checkNotNull(imageVector);
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("TwoTone.Camera", Dp.m2105constructorimpl(24.0f), Dp.m2105constructorimpl(24.0f), 24.0f, 24.0f, 0L, 0, 96, null);
        int defaultFillType = VectorKt.getDefaultFillType();
        SolidColor solidColor = new SolidColor(Color.Companion.m372getBlack0d7_KjU(), null);
        int m616getButtKaPHkGw = StrokeCap.Companion.m616getButtKaPHkGw();
        int m626getBevelLxFBmk8 = StrokeJoin.Companion.m626getBevelLxFBmk8();
        PathBuilder pathBuilder = new PathBuilder();
        pathBuilder.moveTo(10.9f, 19.91f);
        pathBuilder.curveToRelative(0.36f, 0.05f, 0.72f, 0.09f, 1.1f, 0.09f);
        pathBuilder.curveToRelative(2.18f, 0.0f, 4.16f, -0.88f, 5.61f, -2.3f);
        pathBuilder.lineTo(14.89f, 13.0f);
        pathBuilder.lineToRelative(-3.99f, 6.91f);
        pathBuilder.close();
        pathBuilder.moveTo(9.86f, 19.7f);
        pathBuilder.lineToRelative(2.71f, -4.7f);
        pathBuilder.lineTo(4.59f, 15.0f);
        pathBuilder.curveToRelative(0.93f, 2.28f, 2.87f, 4.03f, 5.27f, 4.7f);
        pathBuilder.close();
        pathBuilder.moveTo(8.54f, 12.0f);
        pathBuilder.lineTo(5.7f, 7.09f);
        pathBuilder.curveTo(4.64f, 8.45f, 4.0f, 10.15f, 4.0f, 12.0f);
        pathBuilder.curveToRelative(0.0f, 0.69f, 0.1f, 1.36f, 0.26f, 2.0f);
        pathBuilder.horizontalLineToRelative(5.43f);
        pathBuilder.lineToRelative(-1.15f, -2.0f);
        pathBuilder.close();
        pathBuilder.moveTo(18.3f, 16.91f);
        pathBuilder.curveTo(19.36f, 15.55f, 20.0f, 13.85f, 20.0f, 12.0f);
        pathBuilder.curveToRelative(0.0f, -0.69f, -0.1f, -1.36f, -0.26f, -2.0f);
        pathBuilder.horizontalLineToRelative(-5.43f);
        pathBuilder.lineToRelative(3.99f, 6.91f);
        pathBuilder.close();
        pathBuilder.moveTo(13.73f, 9.0f);
        pathBuilder.horizontalLineToRelative(5.68f);
        pathBuilder.curveToRelative(-0.93f, -2.28f, -2.88f, -4.04f, -5.28f, -4.7f);
        pathBuilder.lineTo(11.42f, 9.0f);
        pathBuilder.horizontalLineToRelative(2.31f);
        pathBuilder.close();
        pathBuilder.moveTo(10.27f, 9.0f);
        pathBuilder.lineToRelative(2.83f, -4.92f);
        pathBuilder.curveTo(12.74f, 4.03f, 12.37f, 4.0f, 12.0f, 4.0f);
        pathBuilder.curveToRelative(-2.18f, 0.0f, -4.16f, 0.88f, -5.6f, 2.3f);
        pathBuilder.lineTo(9.12f, 11.0f);
        pathBuilder.lineToRelative(1.15f, -2.0f);
        pathBuilder.close();
        builder.m815addPathoIyEayM(pathBuilder.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : defaultFillType, (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : solidColor, (r30 & 16) != 0 ? 1.0f : 0.3f, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : 0.3f, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m616getButtKaPHkGw, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m626getBevelLxFBmk8, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        int m616getButtKaPHkGw2 = StrokeCap.Companion.m616getButtKaPHkGw();
        int m626getBevelLxFBmk82 = StrokeJoin.Companion.m626getBevelLxFBmk8();
        PathBuilder pathBuilder2 = new PathBuilder();
        pathBuilder2.moveTo(12.0f, 22.0f);
        pathBuilder2.curveToRelative(5.52f, 0.0f, 10.0f, -4.48f, 10.0f, -10.0f);
        pathBuilder2.curveToRelative(0.0f, -4.75f, -3.31f, -8.72f, -7.75f, -9.74f);
        pathBuilder2.lineToRelative(-0.08f, -0.04f);
        pathBuilder2.lineToRelative(-0.01f, 0.02f);
        pathBuilder2.curveTo(13.46f, 2.09f, 12.74f, 2.0f, 12.0f, 2.0f);
        pathBuilder2.curveTo(6.48f, 2.0f, 2.0f, 6.48f, 2.0f, 12.0f);
        pathBuilder2.reflectiveCurveToRelative(4.48f, 10.0f, 10.0f, 10.0f);
        pathBuilder2.close();
        pathBuilder2.moveTo(12.0f, 20.0f);
        pathBuilder2.curveToRelative(-0.38f, 0.0f, -0.74f, -0.04f, -1.1f, -0.09f);
        pathBuilder2.lineTo(14.89f, 13.0f);
        pathBuilder2.lineToRelative(2.72f, 4.7f);
        pathBuilder2.curveTo(16.16f, 19.12f, 14.18f, 20.0f, 12.0f, 20.0f);
        pathBuilder2.close();
        pathBuilder2.moveTo(20.0f, 12.0f);
        pathBuilder2.curveToRelative(0.0f, 1.85f, -0.64f, 3.55f, -1.7f, 4.91f);
        pathBuilder2.lineToRelative(-4.0f, -6.91f);
        pathBuilder2.horizontalLineToRelative(5.43f);
        pathBuilder2.curveToRelative(0.17f, 0.64f, 0.27f, 1.31f, 0.27f, 2.0f);
        pathBuilder2.close();
        pathBuilder2.moveTo(19.41f, 9.0f);
        pathBuilder2.horizontalLineToRelative(-7.99f);
        pathBuilder2.lineToRelative(2.71f, -4.7f);
        pathBuilder2.curveToRelative(2.4f, 0.66f, 4.35f, 2.42f, 5.28f, 4.7f);
        pathBuilder2.close();
        pathBuilder2.moveTo(12.0f, 4.0f);
        pathBuilder2.curveToRelative(0.37f, 0.0f, 0.74f, 0.03f, 1.1f, 0.08f);
        pathBuilder2.lineTo(10.27f, 9.0f);
        pathBuilder2.lineToRelative(-1.15f, 2.0f);
        pathBuilder2.lineTo(6.4f, 6.3f);
        pathBuilder2.curveTo(7.84f, 4.88f, 9.82f, 4.0f, 12.0f, 4.0f);
        pathBuilder2.close();
        pathBuilder2.moveTo(4.0f, 12.0f);
        pathBuilder2.curveToRelative(0.0f, -1.85f, 0.64f, -3.55f, 1.7f, -4.91f);
        pathBuilder2.lineTo(8.54f, 12.0f);
        pathBuilder2.lineToRelative(1.15f, 2.0f);
        pathBuilder2.lineTo(4.26f, 14.0f);
        pathBuilder2.curveTo(4.1f, 13.36f, 4.0f, 12.69f, 4.0f, 12.0f);
        pathBuilder2.close();
        pathBuilder2.moveTo(10.27f, 15.0f);
        pathBuilder2.horizontalLineToRelative(2.3f);
        pathBuilder2.lineToRelative(-2.71f, 4.7f);
        pathBuilder2.curveToRelative(-2.4f, -0.67f, -4.35f, -2.42f, -5.28f, -4.7f);
        pathBuilder2.horizontalLineToRelative(5.69f);
        pathBuilder2.close();
        m815addPathoIyEayM = builder.m815addPathoIyEayM(pathBuilder2.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : VectorKt.getDefaultFillType(), (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : new SolidColor(Color.Companion.m372getBlack0d7_KjU(), null), (r30 & 16) != 0 ? 1.0f : 1.0f, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : 1.0f, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m616getButtKaPHkGw2, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m626getBevelLxFBmk82, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        ImageVector build = m815addPathoIyEayM.build();
        _camera = build;
        Intrinsics.checkNotNull(build);
        return build;
    }
}