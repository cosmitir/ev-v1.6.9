package androidx.compose.ui.text;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.SystemFontFamily;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TextStyle.kt */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u001e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\r\u001a\u0016\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u0011\u001a'\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00112\b\u0010\u0015\u001a\u0004\u0018\u00010\u0013H\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0016\u0010\u0017\"\u0013\u0010\u0000\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\u0003\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\u0004\u001a\u00020\u0005X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\u0006\u001a\u00020\u0005X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\u0007\u001a\u00020\u0005X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006\u0018"}, d2 = {"DefaultBackgroundColor", "Landroidx/compose/ui/graphics/Color;", "J", "DefaultColor", "DefaultFontSize", "Landroidx/compose/ui/unit/TextUnit;", "DefaultLetterSpacing", "DefaultLineHeight", "lerp", "Landroidx/compose/ui/text/TextStyle;", "start", "stop", "fraction", "", "resolveDefaults", "style", "direction", "Landroidx/compose/ui/unit/LayoutDirection;", "resolveTextDirection", "Landroidx/compose/ui/text/style/TextDirection;", "layoutDirection", "textDirection", "resolveTextDirection-Yj3eThk", "(Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/text/style/TextDirection;)I", "ui-text_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class TextStyleKt {
    private static final long DefaultFontSize = TextUnitKt.getSp(14);
    private static final long DefaultLetterSpacing = TextUnitKt.getSp(0);
    private static final long DefaultBackgroundColor = Color.Companion.m381getTransparent0d7_KjU();
    private static final long DefaultLineHeight = TextUnit.Companion.m2257getUnspecifiedXSAIIZE();
    private static final long DefaultColor = Color.Companion.m372getBlack0d7_KjU();

    /* compiled from: TextStyle.kt */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LayoutDirection.valuesCustom().length];
            iArr[LayoutDirection.Ltr.ordinal()] = 1;
            iArr[LayoutDirection.Rtl.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final TextStyle lerp(TextStyle start, TextStyle stop, float f) {
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(stop, "stop");
        return new TextStyle(SpanStyleKt.lerp(start.toSpanStyle(), stop.toSpanStyle(), f), ParagraphStyleKt.lerp(start.toParagraphStyle(), stop.toParagraphStyle(), f));
    }

    public static final TextStyle resolveDefaults(TextStyle style, LayoutDirection direction) {
        long m1880getLetterSpacingXSAIIZE;
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(direction, "direction");
        long m1876getColor0d7_KjU = style.m1876getColor0d7_KjU();
        if (!(m1876getColor0d7_KjU != Color.Companion.m382getUnspecified0d7_KjU())) {
            m1876getColor0d7_KjU = DefaultColor;
        }
        long j = m1876getColor0d7_KjU;
        long m1877getFontSizeXSAIIZE = TextUnitKt.m2264isUnspecifiedR2X_6o(style.m1877getFontSizeXSAIIZE()) ? DefaultFontSize : style.m1877getFontSizeXSAIIZE();
        FontWeight fontWeight = style.getFontWeight();
        if (fontWeight == null) {
            fontWeight = FontWeight.Companion.getNormal();
        }
        FontWeight fontWeight2 = fontWeight;
        FontStyle m1878getFontStyle4Lr2A7w = style.m1878getFontStyle4Lr2A7w();
        FontStyle m1897boximpl = FontStyle.m1897boximpl(m1878getFontStyle4Lr2A7w == null ? FontStyle.Companion.m1905getNormal_LCdwA() : m1878getFontStyle4Lr2A7w.m1903unboximpl());
        FontSynthesis m1879getFontSynthesisZQGJjVo = style.m1879getFontSynthesisZQGJjVo();
        FontSynthesis m1906boximpl = FontSynthesis.m1906boximpl(m1879getFontSynthesisZQGJjVo == null ? FontSynthesis.Companion.m1915getAllGVVA2EU() : m1879getFontSynthesisZQGJjVo.m1914unboximpl());
        SystemFontFamily fontFamily = style.getFontFamily();
        if (fontFamily == null) {
            fontFamily = FontFamily.Companion.getDefault();
        }
        FontFamily fontFamily2 = fontFamily;
        String fontFeatureSettings = style.getFontFeatureSettings();
        if (fontFeatureSettings == null) {
            fontFeatureSettings = "";
        }
        String str = fontFeatureSettings;
        if (TextUnitKt.m2264isUnspecifiedR2X_6o(style.m1880getLetterSpacingXSAIIZE())) {
            m1880getLetterSpacingXSAIIZE = DefaultLetterSpacing;
        } else {
            m1880getLetterSpacingXSAIIZE = style.m1880getLetterSpacingXSAIIZE();
        }
        long j2 = m1880getLetterSpacingXSAIIZE;
        BaselineShift m1875getBaselineShift5SSeXJ0 = style.m1875getBaselineShift5SSeXJ0();
        BaselineShift m2010boximpl = BaselineShift.m2010boximpl(m1875getBaselineShift5SSeXJ0 == null ? BaselineShift.Companion.m2020getNoney9eOQZs() : m1875getBaselineShift5SSeXJ0.m2016unboximpl());
        TextGeometricTransform textGeometricTransform = style.getTextGeometricTransform();
        if (textGeometricTransform == null) {
            textGeometricTransform = TextGeometricTransform.Companion.getNone$ui_text_release();
        }
        TextGeometricTransform textGeometricTransform2 = textGeometricTransform;
        LocaleList localeList = style.getLocaleList();
        if (localeList == null) {
            localeList = LocaleList.Companion.getCurrent();
        }
        LocaleList localeList2 = localeList;
        long m1874getBackground0d7_KjU = style.m1874getBackground0d7_KjU();
        if (!(m1874getBackground0d7_KjU != Color.Companion.m382getUnspecified0d7_KjU())) {
            m1874getBackground0d7_KjU = DefaultBackgroundColor;
        }
        long j3 = m1874getBackground0d7_KjU;
        TextDecoration textDecoration = style.getTextDecoration();
        if (textDecoration == null) {
            textDecoration = TextDecoration.Companion.getNone();
        }
        TextDecoration textDecoration2 = textDecoration;
        Shadow shadow = style.getShadow();
        if (shadow == null) {
            shadow = Shadow.Companion.getNone();
        }
        Shadow shadow2 = shadow;
        TextAlign m1882getTextAlignbuA522U = style.m1882getTextAlignbuA522U();
        TextAlign m2024boximpl = TextAlign.m2024boximpl(m1882getTextAlignbuA522U == null ? TextAlign.Companion.m2036getStarte0LSkKk() : m1882getTextAlignbuA522U.m2030unboximpl());
        TextDirection m2037boximpl = TextDirection.m2037boximpl(m1884resolveTextDirectionYj3eThk(direction, style.m1883getTextDirectionmmuk1to()));
        long m1881getLineHeightXSAIIZE = TextUnitKt.m2264isUnspecifiedR2X_6o(style.m1881getLineHeightXSAIIZE()) ? DefaultLineHeight : style.m1881getLineHeightXSAIIZE();
        TextIndent textIndent = style.getTextIndent();
        if (textIndent == null) {
            textIndent = TextIndent.Companion.getNone();
        }
        return new TextStyle(j, m1877getFontSizeXSAIIZE, fontWeight2, m1897boximpl, m1906boximpl, fontFamily2, str, j2, m2010boximpl, textGeometricTransform2, localeList2, j3, textDecoration2, shadow2, m2024boximpl, m2037boximpl, m1881getLineHeightXSAIIZE, textIndent, null);
    }

    /* renamed from: resolveTextDirection-Yj3eThk  reason: not valid java name */
    public static final int m1884resolveTextDirectionYj3eThk(LayoutDirection layoutDirection, TextDirection textDirection) {
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        if (textDirection == null ? false : TextDirection.m2040equalsimpl0(textDirection.m2043unboximpl(), TextDirection.Companion.m2044getContents_7Xco())) {
            int i = WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return TextDirection.Companion.m2046getContentOrRtls_7Xco();
                }
                throw new NoWhenBranchMatchedException();
            }
            return TextDirection.Companion.m2045getContentOrLtrs_7Xco();
        } else if (textDirection == null) {
            int i2 = WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
            if (i2 != 1) {
                if (i2 == 2) {
                    return TextDirection.Companion.m2048getRtls_7Xco();
                }
                throw new NoWhenBranchMatchedException();
            }
            return TextDirection.Companion.m2047getLtrs_7Xco();
        } else {
            return textDirection.m2043unboximpl();
        }
    }
}
