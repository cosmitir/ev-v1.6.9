package androidx.compose.ui.graphics;

import androidx.compose.ui.graphics.colorspace.ColorModel;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.colorspace.ColorSpaceKt;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.colorspace.Rgb;
import androidx.compose.ui.util.MathHelpersKt;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Color.kt */
@Metadata(d1 = {"\u0000>\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0014\n\u0002\u0010\u0014\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a<\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\f2\b\b\u0002\u0010\u000f\u001a\u00020\f2\b\b\u0002\u0010\u0010\u001a\u00020\u0011H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0012\u001a\u0018\u0010\n\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0014H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0015\u001a2\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u00142\b\b\u0002\u0010\u000f\u001a\u00020\u0014H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0016\u001a\u0018\u0010\n\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0017H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0018\u001a1\u0010\u0019\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\f2\u0006\u0010\u001b\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\f2\u0006\u0010\u001d\u001a\u00020\f2\u0006\u0010\u001e\u001a\u00020\fH\u0082\b\u001a-\u0010\u001f\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u00022\u0006\u0010!\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020\fH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b#\u0010$\u001a\u0010\u0010%\u001a\u00020\f2\u0006\u0010&\u001a\u00020\fH\u0002\u001a!\u0010'\u001a\u00020\u0002*\u00020\u00022\u0006\u0010(\u001a\u00020\u0002H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b)\u0010*\u001a\u0019\u0010+\u001a\u00020,*\u00020\u0002H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b-\u0010.\u001a\u0019\u0010/\u001a\u00020\f*\u00020\u0002H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b0\u00101\u001a+\u00102\u001a\u00020\u0002*\u00020\u00022\f\u00103\u001a\b\u0012\u0004\u0012\u00020\u000204H\u0086\bø\u0001\u0000ø\u0001\u0002ø\u0001\u0001¢\u0006\u0004\b5\u00106\u001a\u0019\u00107\u001a\u00020\u0014*\u00020\u0002H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b8\u00109\"\"\u0010\u0000\u001a\u00020\u0001*\u00020\u00028Æ\u0002X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\"\u0010\u0007\u001a\u00020\u0001*\u00020\u00028Æ\u0002X\u0087\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b\b\u0010\u0004\u001a\u0004\b\t\u0010\u0006\u0082\u0002\u0012\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0005\b\u009920\u0001¨\u0006:"}, d2 = {"isSpecified", "", "Landroidx/compose/ui/graphics/Color;", "isSpecified-8_81llA$annotations", "(J)V", "isSpecified-8_81llA", "(J)Z", "isUnspecified", "isUnspecified-8_81llA$annotations", "isUnspecified-8_81llA", "Color", "red", "", "green", "blue", "alpha", "colorSpace", "Landroidx/compose/ui/graphics/colorspace/ColorSpace;", "(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J", TypedValues.Custom.S_COLOR, "", "(I)J", "(IIII)J", "", "(J)J", "compositeComponent", "fgC", "bgC", "fgA", "bgA", "a", "lerp", "start", "stop", "fraction", "lerp-jxsXWHM", "(JJF)J", "saturate", "v", "compositeOver", "background", "compositeOver--OWjLjI", "(JJ)J", "getComponents", "", "getComponents-8_81llA", "(J)[F", "luminance", "luminance-8_81llA", "(J)F", "takeOrElse", "block", "Lkotlin/Function0;", "takeOrElse-DxMtmZc", "(JLkotlin/jvm/functions/Function0;)J", "toArgb", "toArgb-8_81llA", "(J)I", "ui-graphics_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class ColorKt {
    /* renamed from: access$getComponents-8_81llA */
    public static final /* synthetic */ float[] m391access$getComponents8_81llA(long j) {
        return m393getComponents8_81llA(j);
    }

    private static final float compositeComponent(float f, float f2, float f3, float f4, float f5) {
        if (f5 == 0.0f) {
            return 0.0f;
        }
        return ((f * f3) + ((f2 * f4) * (1.0f - f3))) / f5;
    }

    /* renamed from: isSpecified-8_81llA$annotations */
    public static /* synthetic */ void m395isSpecified8_81llA$annotations(long j) {
    }

    /* renamed from: isUnspecified-8_81llA$annotations */
    public static /* synthetic */ void m397isUnspecified8_81llA$annotations(long j) {
    }

    private static final float saturate(float f) {
        float f2 = 0.0f;
        if (f > 0.0f) {
            f2 = 1.0f;
            if (f < 1.0f) {
                return f;
            }
        }
        return f2;
    }

    public static /* synthetic */ long Color$default(float f, float f2, float f3, float f4, ColorSpace colorSpace, int i, Object obj) {
        if ((i & 8) != 0) {
            f4 = 1.0f;
        }
        if ((i & 16) != 0) {
            colorSpace = ColorSpaces.INSTANCE.getSrgb();
        }
        return Color(f, f2, f3, f4, colorSpace);
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x005c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final long Color(float r9, float r10, float r11, float r12, androidx.compose.ui.graphics.colorspace.ColorSpace r13) {
        /*
            Method dump skipped, instructions count: 400
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.ColorKt.Color(float, float, float, float, androidx.compose.ui.graphics.colorspace.ColorSpace):long");
    }

    public static final long Color(int i) {
        return Color.m342constructorimpl(ULong.m2637constructorimpl(ULong.m2637constructorimpl(i) << 32));
    }

    public static final long Color(long j) {
        return Color.m342constructorimpl(ULong.m2637constructorimpl(ULong.m2637constructorimpl(ULong.m2637constructorimpl(j) & 4294967295L) << 32));
    }

    public static /* synthetic */ long Color$default(int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 8) != 0) {
            i4 = 255;
        }
        return Color(i, i2, i3, i4);
    }

    public static final long Color(int i, int i2, int i3, int i4) {
        return Color(((i & 255) << 16) | ((i4 & 255) << 24) | ((i2 & 255) << 8) | (i3 & 255));
    }

    /* renamed from: lerp-jxsXWHM */
    public static final long m398lerpjxsXWHM(long j, long j2, float f) {
        ColorSpace oklab$ui_graphics_release = ColorSpaces.INSTANCE.getOklab$ui_graphics_release();
        long m343convertvNxB06k = Color.m343convertvNxB06k(j, oklab$ui_graphics_release);
        long m343convertvNxB06k2 = Color.m343convertvNxB06k(j2, oklab$ui_graphics_release);
        float m348getAlphaimpl = Color.m348getAlphaimpl(m343convertvNxB06k);
        float m352getRedimpl = Color.m352getRedimpl(m343convertvNxB06k);
        float m351getGreenimpl = Color.m351getGreenimpl(m343convertvNxB06k);
        float m349getBlueimpl = Color.m349getBlueimpl(m343convertvNxB06k);
        float m348getAlphaimpl2 = Color.m348getAlphaimpl(m343convertvNxB06k2);
        float m352getRedimpl2 = Color.m352getRedimpl(m343convertvNxB06k2);
        float m351getGreenimpl2 = Color.m351getGreenimpl(m343convertvNxB06k2);
        float m349getBlueimpl2 = Color.m349getBlueimpl(m343convertvNxB06k2);
        return Color.m343convertvNxB06k(Color(MathHelpersKt.lerp(m352getRedimpl, m352getRedimpl2, f), MathHelpersKt.lerp(m351getGreenimpl, m351getGreenimpl2, f), MathHelpersKt.lerp(m349getBlueimpl, m349getBlueimpl2, f), MathHelpersKt.lerp(m348getAlphaimpl, m348getAlphaimpl2, f), oklab$ui_graphics_release), Color.m350getColorSpaceimpl(j2));
    }

    /* renamed from: compositeOver--OWjLjI */
    public static final long m392compositeOverOWjLjI(long j, long j2) {
        long m343convertvNxB06k = Color.m343convertvNxB06k(j, Color.m350getColorSpaceimpl(j2));
        float m348getAlphaimpl = Color.m348getAlphaimpl(j2);
        float m348getAlphaimpl2 = Color.m348getAlphaimpl(m343convertvNxB06k);
        float f = 1.0f - m348getAlphaimpl2;
        float f2 = (m348getAlphaimpl * f) + m348getAlphaimpl2;
        int i = (f2 > 0.0f ? 1 : (f2 == 0.0f ? 0 : -1));
        return Color(i == 0 ? 0.0f : ((Color.m352getRedimpl(m343convertvNxB06k) * m348getAlphaimpl2) + ((Color.m352getRedimpl(j2) * m348getAlphaimpl) * f)) / f2, i == 0 ? 0.0f : ((Color.m351getGreenimpl(m343convertvNxB06k) * m348getAlphaimpl2) + ((Color.m351getGreenimpl(j2) * m348getAlphaimpl) * f)) / f2, i == 0 ? 0.0f : ((Color.m349getBlueimpl(m343convertvNxB06k) * m348getAlphaimpl2) + ((Color.m349getBlueimpl(j2) * m348getAlphaimpl) * f)) / f2, f2, Color.m350getColorSpaceimpl(j2));
    }

    /* renamed from: getComponents-8_81llA */
    public static final float[] m393getComponents8_81llA(long j) {
        return new float[]{Color.m352getRedimpl(j), Color.m351getGreenimpl(j), Color.m349getBlueimpl(j), Color.m348getAlphaimpl(j)};
    }

    /* renamed from: luminance-8_81llA */
    public static final float m399luminance8_81llA(long j) {
        ColorSpace m350getColorSpaceimpl = Color.m350getColorSpaceimpl(j);
        if (!ColorModel.m668equalsimpl0(m350getColorSpaceimpl.m677getModelxdoWZVw(), ColorModel.Companion.m675getRgbxdoWZVw())) {
            throw new IllegalArgumentException(Intrinsics.stringPlus("The specified color must be encoded in an RGB color space. The supplied color space is ", ColorModel.m671toStringimpl(m350getColorSpaceimpl.m677getModelxdoWZVw())).toString());
        }
        Function1<Double, Double> eotf = ((Rgb) m350getColorSpaceimpl).getEotf();
        return saturate((float) ((eotf.invoke(Double.valueOf(Color.m352getRedimpl(j))).doubleValue() * 0.2126d) + (eotf.invoke(Double.valueOf(Color.m351getGreenimpl(j))).doubleValue() * 0.7152d) + (eotf.invoke(Double.valueOf(Color.m349getBlueimpl(j))).doubleValue() * 0.0722d)));
    }

    /* renamed from: toArgb-8_81llA */
    public static final int m401toArgb8_81llA(long j) {
        ColorSpace m350getColorSpaceimpl = Color.m350getColorSpaceimpl(j);
        if (m350getColorSpaceimpl.isSrgb()) {
            return (int) ULong.m2637constructorimpl(j >>> 32);
        }
        float[] m393getComponents8_81llA = m393getComponents8_81llA(j);
        ColorSpaceKt.m679connectYBCOT_4$default(m350getColorSpaceimpl, null, 0, 3, null).transform(m393getComponents8_81llA);
        return ((int) ((m393getComponents8_81llA[2] * 255.0f) + 0.5f)) | (((int) ((m393getComponents8_81llA[3] * 255.0f) + 0.5f)) << 24) | (((int) ((m393getComponents8_81llA[0] * 255.0f) + 0.5f)) << 16) | (((int) ((m393getComponents8_81llA[1] * 255.0f) + 0.5f)) << 8);
    }

    /* renamed from: isSpecified-8_81llA */
    public static final boolean m394isSpecified8_81llA(long j) {
        return j != Color.Companion.m382getUnspecified0d7_KjU();
    }

    /* renamed from: isUnspecified-8_81llA */
    public static final boolean m396isUnspecified8_81llA(long j) {
        return j == Color.Companion.m382getUnspecified0d7_KjU();
    }

    /* renamed from: takeOrElse-DxMtmZc */
    public static final long m400takeOrElseDxMtmZc(long j, Function0<Color> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        return (j > Color.Companion.m382getUnspecified0d7_KjU() ? 1 : (j == Color.Companion.m382getUnspecified0d7_KjU() ? 0 : -1)) != 0 ? j : block.invoke().m356unboximpl();
    }
}
