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
/* compiled from: EmojiNature.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"_emojiNature", "Landroidx/compose/ui/graphics/vector/ImageVector;", "EmojiNature", "Landroidx/compose/material/icons/Icons$TwoTone;", "getEmojiNature", "(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;", "material-icons-extended-twotone_release"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class EmojiNatureKt {
    private static ImageVector _emojiNature;

    public static final ImageVector getEmojiNature(Icons.TwoTone twoTone) {
        ImageVector.Builder m815addPathoIyEayM;
        Intrinsics.checkNotNullParameter(twoTone, "<this>");
        ImageVector imageVector = _emojiNature;
        if (imageVector != null) {
            Intrinsics.checkNotNull(imageVector);
            return imageVector;
        }
        ImageVector.Builder builder = new ImageVector.Builder("TwoTone.EmojiNature", Dp.m2105constructorimpl(24.0f), Dp.m2105constructorimpl(24.0f), 24.0f, 24.0f, 0L, 0, 96, null);
        int defaultFillType = VectorKt.getDefaultFillType();
        SolidColor solidColor = new SolidColor(Color.Companion.m372getBlack0d7_KjU(), null);
        int m616getButtKaPHkGw = StrokeCap.Companion.m616getButtKaPHkGw();
        int m626getBevelLxFBmk8 = StrokeJoin.Companion.m626getBevelLxFBmk8();
        PathBuilder pathBuilder = new PathBuilder();
        pathBuilder.moveTo(18.0f, 6.0f);
        pathBuilder.moveToRelative(-1.0f, 0.0f);
        pathBuilder.arcToRelative(1.0f, 1.0f, 0.0f, true, true, 2.0f, 0.0f);
        pathBuilder.arcToRelative(1.0f, 1.0f, 0.0f, true, true, -2.0f, 0.0f);
        builder.m815addPathoIyEayM(pathBuilder.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : defaultFillType, (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : solidColor, (r30 & 16) != 0 ? 1.0f : 0.3f, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : 0.3f, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m616getButtKaPHkGw, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m626getBevelLxFBmk8, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        int defaultFillType2 = VectorKt.getDefaultFillType();
        SolidColor solidColor2 = new SolidColor(Color.Companion.m372getBlack0d7_KjU(), null);
        int m616getButtKaPHkGw2 = StrokeCap.Companion.m616getButtKaPHkGw();
        int m626getBevelLxFBmk82 = StrokeJoin.Companion.m626getBevelLxFBmk8();
        PathBuilder pathBuilder2 = new PathBuilder();
        pathBuilder2.moveTo(21.94f, 4.88f);
        pathBuilder2.curveTo(21.75f, 4.33f, 21.19f, 3.96f, 20.58f, 4.0f);
        pathBuilder2.horizontalLineTo(19.6f);
        pathBuilder2.lineToRelative(-0.31f, -0.97f);
        pathBuilder2.curveTo(19.15f, 2.43f, 18.61f, 2.0f, 18.0f, 2.0f);
        pathBuilder2.horizontalLineToRelative(0.0f);
        pathBuilder2.curveToRelative(-0.61f, 0.0f, -1.15f, 0.43f, -1.29f, 1.04f);
        pathBuilder2.lineTo(16.4f, 4.0f);
        pathBuilder2.horizontalLineToRelative(-0.98f);
        pathBuilder2.curveToRelative(-0.61f, -0.04f, -1.16f, 0.32f, -1.35f, 0.88f);
        pathBuilder2.curveToRelative(-0.19f, 0.56f, 0.04f, 1.17f, 0.56f, 1.48f);
        pathBuilder2.lineToRelative(0.87f, 0.52f);
        pathBuilder2.lineTo(15.1f, 8.12f);
        pathBuilder2.curveToRelative(-0.23f, 0.58f, -0.04f, 1.25f, 0.45f, 1.62f);
        pathBuilder2.curveToRelative(0.5f, 0.37f, 1.17f, 0.35f, 1.64f, -0.06f);
        pathBuilder2.lineTo(18.0f, 8.98f);
        pathBuilder2.lineToRelative(0.81f, 0.7f);
        pathBuilder2.curveToRelative(0.47f, 0.4f, 1.15f, 0.43f, 1.64f, 0.06f);
        pathBuilder2.curveToRelative(0.5f, -0.37f, 0.68f, -1.04f, 0.45f, -1.62f);
        pathBuilder2.lineToRelative(-0.39f, -1.24f);
        pathBuilder2.lineToRelative(0.87f, -0.52f);
        pathBuilder2.curveTo(21.89f, 6.05f, 22.12f, 5.44f, 21.94f, 4.88f);
        pathBuilder2.close();
        pathBuilder2.moveTo(18.0f, 7.0f);
        pathBuilder2.curveToRelative(-0.55f, 0.0f, -1.0f, -0.45f, -1.0f, -1.0f);
        pathBuilder2.curveToRelative(0.0f, -0.55f, 0.45f, -1.0f, 1.0f, -1.0f);
        pathBuilder2.reflectiveCurveToRelative(1.0f, 0.45f, 1.0f, 1.0f);
        pathBuilder2.curveTo(19.0f, 6.55f, 18.55f, 7.0f, 18.0f, 7.0f);
        pathBuilder2.close();
        builder.m815addPathoIyEayM(pathBuilder2.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : defaultFillType2, (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : solidColor2, (r30 & 16) != 0 ? 1.0f : 1.0f, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : 1.0f, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m616getButtKaPHkGw2, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m626getBevelLxFBmk82, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        int defaultFillType3 = VectorKt.getDefaultFillType();
        SolidColor solidColor3 = new SolidColor(Color.Companion.m372getBlack0d7_KjU(), null);
        int m616getButtKaPHkGw3 = StrokeCap.Companion.m616getButtKaPHkGw();
        int m626getBevelLxFBmk83 = StrokeJoin.Companion.m626getBevelLxFBmk8();
        PathBuilder pathBuilder3 = new PathBuilder();
        pathBuilder3.moveTo(6.1f, 17.9f);
        pathBuilder3.curveToRelative(0.53f, 0.53f, 1.27f, 0.69f, 1.94f, 0.5f);
        pathBuilder3.curveToRelative(-0.03f, -1.19f, 0.35f, -2.37f, 0.92f, -3.36f);
        pathBuilder3.curveToRelative(-1.0f, 0.57f, -2.17f, 0.95f, -3.36f, 0.92f);
        pathBuilder3.curveTo(5.41f, 16.63f, 5.58f, 17.37f, 6.1f, 17.9f);
        pathBuilder3.close();
        builder.m815addPathoIyEayM(pathBuilder3.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : defaultFillType3, (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : solidColor3, (r30 & 16) != 0 ? 1.0f : 0.3f, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : 0.3f, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m616getButtKaPHkGw3, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m626getBevelLxFBmk83, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        int defaultFillType4 = VectorKt.getDefaultFillType();
        SolidColor solidColor4 = new SolidColor(Color.Companion.m372getBlack0d7_KjU(), null);
        int m616getButtKaPHkGw4 = StrokeCap.Companion.m616getButtKaPHkGw();
        int m626getBevelLxFBmk84 = StrokeJoin.Companion.m626getBevelLxFBmk8();
        PathBuilder pathBuilder4 = new PathBuilder();
        pathBuilder4.moveTo(9.65f, 11.55f);
        pathBuilder4.lineToRelative(1.61f, 0.66f);
        pathBuilder4.curveToRelative(0.25f, 0.1f, 0.44f, 0.3f, 0.54f, 0.54f);
        pathBuilder4.lineToRelative(0.66f, 1.61f);
        pathBuilder4.curveToRelative(0.75f, -0.78f, 0.74f, -2.01f, -0.03f, -2.78f);
        pathBuilder4.curveTo(11.66f, 10.8f, 10.43f, 10.8f, 9.65f, 11.55f);
        pathBuilder4.close();
        builder.m815addPathoIyEayM(pathBuilder4.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : defaultFillType4, (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : solidColor4, (r30 & 16) != 0 ? 1.0f : 0.3f, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : 0.3f, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m616getButtKaPHkGw4, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m626getBevelLxFBmk84, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        int defaultFillType5 = VectorKt.getDefaultFillType();
        SolidColor solidColor5 = new SolidColor(Color.Companion.m372getBlack0d7_KjU(), null);
        int m616getButtKaPHkGw5 = StrokeCap.Companion.m616getButtKaPHkGw();
        int m626getBevelLxFBmk85 = StrokeJoin.Companion.m626getBevelLxFBmk8();
        PathBuilder pathBuilder5 = new PathBuilder();
        pathBuilder5.moveTo(14.86f, 12.0f);
        pathBuilder5.curveToRelative(-0.17f, -0.67f, -0.5f, -1.31f, -1.03f, -1.84f);
        pathBuilder5.curveTo(13.31f, 9.64f, 12.67f, 9.31f, 12.0f, 9.14f);
        pathBuilder5.verticalLineTo(7.0f);
        pathBuilder5.horizontalLineToRelative(-1.0f);
        pathBuilder5.verticalLineToRelative(2.0f);
        pathBuilder5.curveToRelative(-1.01f, 0.01f, -2.02f, 0.39f, -2.79f, 1.16f);
        pathBuilder5.curveToRelative(-0.13f, 0.13f, -0.33f, 0.33f, -0.56f, 0.56f);
        pathBuilder5.lineToRelative(-1.53f, -0.63f);
        pathBuilder5.curveToRelative(-1.52f, -0.63f, -3.27f, 0.1f, -3.89f, 1.62f);
        pathBuilder5.curveToRelative(-0.6f, 1.46f, 0.05f, 3.11f, 1.44f, 3.8f);
        pathBuilder5.curveToRelative(-0.33f, 1.31f, 0.0f, 2.76f, 1.03f, 3.79f);
        pathBuilder5.curveToRelative(1.03f, 1.03f, 2.48f, 1.36f, 3.79f, 1.03f);
        pathBuilder5.curveToRelative(0.69f, 1.39f, 2.34f, 2.04f, 3.8f, 1.44f);
        pathBuilder5.curveToRelative(1.52f, -0.63f, 2.25f, -2.37f, 1.62f, -3.89f);
        pathBuilder5.lineToRelative(-0.63f, -1.53f);
        pathBuilder5.curveToRelative(0.23f, -0.23f, 0.43f, -0.43f, 0.56f, -0.56f);
        pathBuilder5.curveToRelative(0.77f, -0.77f, 1.16f, -1.78f, 1.16f, -2.79f);
        pathBuilder5.horizontalLineToRelative(2.0f);
        pathBuilder5.verticalLineToRelative(-1.0f);
        pathBuilder5.horizontalLineTo(14.86f);
        pathBuilder5.close();
        pathBuilder5.moveTo(4.58f, 13.8f);
        pathBuilder5.curveToRelative(-0.51f, -0.21f, -0.75f, -0.79f, -0.54f, -1.3f);
        pathBuilder5.curveToRelative(0.21f, -0.51f, 0.79f, -0.75f, 1.3f, -0.54f);
        pathBuilder5.lineToRelative(2.92f, 1.2f);
        pathBuilder5.curveTo(7.22f, 13.84f, 5.83f, 14.31f, 4.58f, 13.8f);
        pathBuilder5.close();
        pathBuilder5.moveTo(8.04f, 18.4f);
        pathBuilder5.curveToRelative(-0.67f, 0.19f, -1.41f, 0.02f, -1.94f, -0.5f);
        pathBuilder5.curveToRelative(-0.53f, -0.53f, -0.69f, -1.27f, -0.5f, -1.94f);
        pathBuilder5.curveToRelative(1.19f, 0.03f, 2.37f, -0.35f, 3.36f, -0.92f);
        pathBuilder5.curveTo(8.39f, 16.03f, 8.01f, 17.21f, 8.04f, 18.4f);
        pathBuilder5.close();
        pathBuilder5.moveTo(11.5f, 19.96f);
        pathBuilder5.curveToRelative(-0.51f, 0.21f, -1.09f, -0.03f, -1.3f, -0.54f);
        pathBuilder5.curveToRelative(-0.51f, -1.25f, -0.04f, -2.64f, 0.64f, -3.67f);
        pathBuilder5.lineToRelative(1.2f, 2.92f);
        pathBuilder5.curveTo(12.25f, 19.17f, 12.01f, 19.76f, 11.5f, 19.96f);
        pathBuilder5.close();
        pathBuilder5.moveTo(12.45f, 14.35f);
        pathBuilder5.lineToRelative(-0.66f, -1.61f);
        pathBuilder5.curveToRelative(-0.1f, -0.25f, -0.3f, -0.44f, -0.54f, -0.54f);
        pathBuilder5.lineToRelative(-1.61f, -0.66f);
        pathBuilder5.curveToRelative(0.78f, -0.75f, 2.01f, -0.74f, 2.78f, 0.03f);
        pathBuilder5.curveTo(13.2f, 12.34f, 13.2f, 13.57f, 12.45f, 14.35f);
        pathBuilder5.close();
        m815addPathoIyEayM = builder.m815addPathoIyEayM(pathBuilder5.getNodes(), (r30 & 2) != 0 ? VectorKt.getDefaultFillType() : defaultFillType5, (r30 & 4) != 0 ? "" : "", (r30 & 8) != 0 ? null : solidColor5, (r30 & 16) != 0 ? 1.0f : 1.0f, (r30 & 32) == 0 ? null : null, (r30 & 64) != 0 ? 1.0f : 1.0f, (r30 & 128) != 0 ? 0.0f : 1.0f, (r30 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : m616getButtKaPHkGw5, (r30 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : m626getBevelLxFBmk85, (r30 & 1024) != 0 ? 4.0f : 1.0f, (r30 & 2048) != 0 ? 0.0f : 0.0f, (r30 & 4096) == 0 ? 0.0f : 1.0f, (r30 & 8192) == 0 ? 0.0f : 0.0f);
        ImageVector build = m815addPathoIyEayM.build();
        _emojiNature = build;
        Intrinsics.checkNotNull(build);
        return build;
    }
}
