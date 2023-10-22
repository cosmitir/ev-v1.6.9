package androidx.compose.ui.text;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SpanStyle.kt */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B¨\u0001\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001bø\u0001\u0000¢\u0006\u0002\u0010\u001cJ³\u0001\u00107\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00052\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u00032\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b8\u00109J\u0013\u0010:\u001a\u00020;2\b\u0010<\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010=\u001a\u00020>H\u0016J\u0014\u0010?\u001a\u00020\u00002\n\b\u0002\u0010<\u001a\u0004\u0018\u00010\u0000H\u0007J\u0011\u0010@\u001a\u00020\u00002\u0006\u0010<\u001a\u00020\u0000H\u0087\u0002J\b\u0010A\u001a\u00020\u000fH\u0016R\u001c\u0010\u0017\u001a\u00020\u0003ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u001f\u001a\u0004\b\u001d\u0010\u001eR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u001c\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u001f\u001a\u0004\b\"\u0010\u001eR\u0013\u0010\f\u001a\u0004\u0018\u00010\r¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u001c\u0010\u0004\u001a\u00020\u0005ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u001f\u001a\u0004\b'\u0010\u001eR\u001c\u0010\b\u001a\u0004\u0018\u00010\tø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\b\n\u0000\u001a\u0004\b(\u0010)R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\b\n\u0000\u001a\u0004\b*\u0010+R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b,\u0010-R\u001c\u0010\u0010\u001a\u00020\u0005ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u001f\u001a\u0004\b.\u0010\u001eR\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0016¢\u0006\b\n\u0000\u001a\u0004\b/\u00100R\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u001b¢\u0006\b\n\u0000\u001a\u0004\b1\u00102R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u0019¢\u0006\b\n\u0000\u001a\u0004\b3\u00104R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0014¢\u0006\b\n\u0000\u001a\u0004\b5\u00106\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006B"}, d2 = {"Landroidx/compose/ui/text/SpanStyle;", "", TypedValues.Custom.S_COLOR, "Landroidx/compose/ui/graphics/Color;", "fontSize", "Landroidx/compose/ui/unit/TextUnit;", "fontWeight", "Landroidx/compose/ui/text/font/FontWeight;", "fontStyle", "Landroidx/compose/ui/text/font/FontStyle;", "fontSynthesis", "Landroidx/compose/ui/text/font/FontSynthesis;", "fontFamily", "Landroidx/compose/ui/text/font/FontFamily;", "fontFeatureSettings", "", "letterSpacing", "baselineShift", "Landroidx/compose/ui/text/style/BaselineShift;", "textGeometricTransform", "Landroidx/compose/ui/text/style/TextGeometricTransform;", "localeList", "Landroidx/compose/ui/text/intl/LocaleList;", "background", "textDecoration", "Landroidx/compose/ui/text/style/TextDecoration;", "shadow", "Landroidx/compose/ui/graphics/Shadow;", "(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "getBackground-0d7_KjU", "()J", "J", "getBaselineShift-5SSeXJ0", "()Landroidx/compose/ui/text/style/BaselineShift;", "getColor-0d7_KjU", "getFontFamily", "()Landroidx/compose/ui/text/font/FontFamily;", "getFontFeatureSettings", "()Ljava/lang/String;", "getFontSize-XSAIIZE", "getFontStyle-4Lr2A7w", "()Landroidx/compose/ui/text/font/FontStyle;", "getFontSynthesis-ZQGJjVo", "()Landroidx/compose/ui/text/font/FontSynthesis;", "getFontWeight", "()Landroidx/compose/ui/text/font/FontWeight;", "getLetterSpacing-XSAIIZE", "getLocaleList", "()Landroidx/compose/ui/text/intl/LocaleList;", "getShadow", "()Landroidx/compose/ui/graphics/Shadow;", "getTextDecoration", "()Landroidx/compose/ui/text/style/TextDecoration;", "getTextGeometricTransform", "()Landroidx/compose/ui/text/style/TextGeometricTransform;", "copy", "copy-IuqyXdg", "(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;)Landroidx/compose/ui/text/SpanStyle;", "equals", "", "other", "hashCode", "", "merge", "plus", "toString", "ui-text_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class SpanStyle {
    private final long background;
    private final BaselineShift baselineShift;
    private final long color;
    private final FontFamily fontFamily;
    private final String fontFeatureSettings;
    private final long fontSize;
    private final FontStyle fontStyle;
    private final FontSynthesis fontSynthesis;
    private final FontWeight fontWeight;
    private final long letterSpacing;
    private final LocaleList localeList;
    private final Shadow shadow;
    private final TextDecoration textDecoration;
    private final TextGeometricTransform textGeometricTransform;

    public /* synthetic */ SpanStyle(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j3, baselineShift, textGeometricTransform, localeList, j4, textDecoration, shadow);
    }

    private SpanStyle(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow) {
        this.color = j;
        this.fontSize = j2;
        this.fontWeight = fontWeight;
        this.fontStyle = fontStyle;
        this.fontSynthesis = fontSynthesis;
        this.fontFamily = fontFamily;
        this.fontFeatureSettings = str;
        this.letterSpacing = j3;
        this.baselineShift = baselineShift;
        this.textGeometricTransform = textGeometricTransform;
        this.localeList = localeList;
        this.background = j4;
        this.textDecoration = textDecoration;
        this.shadow = shadow;
    }

    public /* synthetic */ SpanStyle(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Color.Companion.m382getUnspecified0d7_KjU() : j, (i & 2) != 0 ? TextUnit.Companion.m2257getUnspecifiedXSAIIZE() : j2, (i & 4) != 0 ? null : fontWeight, (i & 8) != 0 ? null : fontStyle, (i & 16) != 0 ? null : fontSynthesis, (i & 32) != 0 ? null : fontFamily, (i & 64) != 0 ? null : str, (i & 128) != 0 ? TextUnit.Companion.m2257getUnspecifiedXSAIIZE() : j3, (i & 256) != 0 ? null : baselineShift, (i & 512) != 0 ? null : textGeometricTransform, (i & 1024) != 0 ? null : localeList, (i & 2048) != 0 ? Color.Companion.m382getUnspecified0d7_KjU() : j4, (i & 4096) != 0 ? null : textDecoration, (i & 8192) != 0 ? null : shadow, null);
    }

    /* renamed from: getColor-0d7_KjU  reason: not valid java name */
    public final long m1835getColor0d7_KjU() {
        return this.color;
    }

    /* renamed from: getFontSize-XSAIIZE  reason: not valid java name */
    public final long m1836getFontSizeXSAIIZE() {
        return this.fontSize;
    }

    public final FontWeight getFontWeight() {
        return this.fontWeight;
    }

    /* renamed from: getFontStyle-4Lr2A7w  reason: not valid java name */
    public final FontStyle m1837getFontStyle4Lr2A7w() {
        return this.fontStyle;
    }

    /* renamed from: getFontSynthesis-ZQGJjVo  reason: not valid java name */
    public final FontSynthesis m1838getFontSynthesisZQGJjVo() {
        return this.fontSynthesis;
    }

    public final FontFamily getFontFamily() {
        return this.fontFamily;
    }

    public final String getFontFeatureSettings() {
        return this.fontFeatureSettings;
    }

    /* renamed from: getLetterSpacing-XSAIIZE  reason: not valid java name */
    public final long m1839getLetterSpacingXSAIIZE() {
        return this.letterSpacing;
    }

    /* renamed from: getBaselineShift-5SSeXJ0  reason: not valid java name */
    public final BaselineShift m1834getBaselineShift5SSeXJ0() {
        return this.baselineShift;
    }

    public final TextGeometricTransform getTextGeometricTransform() {
        return this.textGeometricTransform;
    }

    public final LocaleList getLocaleList() {
        return this.localeList;
    }

    /* renamed from: getBackground-0d7_KjU  reason: not valid java name */
    public final long m1833getBackground0d7_KjU() {
        return this.background;
    }

    public final TextDecoration getTextDecoration() {
        return this.textDecoration;
    }

    public final Shadow getShadow() {
        return this.shadow;
    }

    public static /* synthetic */ SpanStyle merge$default(SpanStyle spanStyle, SpanStyle spanStyle2, int i, Object obj) {
        if ((i & 1) != 0) {
            spanStyle2 = null;
        }
        return spanStyle.merge(spanStyle2);
    }

    public final SpanStyle merge(SpanStyle spanStyle) {
        long m1839getLetterSpacingXSAIIZE;
        if (spanStyle == null) {
            return this;
        }
        long m1835getColor0d7_KjU = spanStyle.m1835getColor0d7_KjU();
        if (!(m1835getColor0d7_KjU != Color.Companion.m382getUnspecified0d7_KjU())) {
            m1835getColor0d7_KjU = m1835getColor0d7_KjU();
        }
        long j = m1835getColor0d7_KjU;
        FontFamily fontFamily = spanStyle.fontFamily;
        if (fontFamily == null) {
            fontFamily = this.fontFamily;
        }
        FontFamily fontFamily2 = fontFamily;
        long m1836getFontSizeXSAIIZE = !TextUnitKt.m2264isUnspecifiedR2X_6o(spanStyle.m1836getFontSizeXSAIIZE()) ? spanStyle.m1836getFontSizeXSAIIZE() : m1836getFontSizeXSAIIZE();
        FontWeight fontWeight = spanStyle.fontWeight;
        if (fontWeight == null) {
            fontWeight = this.fontWeight;
        }
        FontWeight fontWeight2 = fontWeight;
        FontStyle m1837getFontStyle4Lr2A7w = spanStyle.m1837getFontStyle4Lr2A7w();
        if (m1837getFontStyle4Lr2A7w == null) {
            m1837getFontStyle4Lr2A7w = m1837getFontStyle4Lr2A7w();
        }
        FontStyle fontStyle = m1837getFontStyle4Lr2A7w;
        FontSynthesis m1838getFontSynthesisZQGJjVo = spanStyle.m1838getFontSynthesisZQGJjVo();
        if (m1838getFontSynthesisZQGJjVo == null) {
            m1838getFontSynthesisZQGJjVo = m1838getFontSynthesisZQGJjVo();
        }
        FontSynthesis fontSynthesis = m1838getFontSynthesisZQGJjVo;
        String str = spanStyle.fontFeatureSettings;
        if (str == null) {
            str = this.fontFeatureSettings;
        }
        String str2 = str;
        if (!TextUnitKt.m2264isUnspecifiedR2X_6o(spanStyle.m1839getLetterSpacingXSAIIZE())) {
            m1839getLetterSpacingXSAIIZE = spanStyle.m1839getLetterSpacingXSAIIZE();
        } else {
            m1839getLetterSpacingXSAIIZE = m1839getLetterSpacingXSAIIZE();
        }
        long j2 = m1839getLetterSpacingXSAIIZE;
        BaselineShift m1834getBaselineShift5SSeXJ0 = spanStyle.m1834getBaselineShift5SSeXJ0();
        if (m1834getBaselineShift5SSeXJ0 == null) {
            m1834getBaselineShift5SSeXJ0 = m1834getBaselineShift5SSeXJ0();
        }
        BaselineShift baselineShift = m1834getBaselineShift5SSeXJ0;
        TextGeometricTransform textGeometricTransform = spanStyle.textGeometricTransform;
        if (textGeometricTransform == null) {
            textGeometricTransform = this.textGeometricTransform;
        }
        TextGeometricTransform textGeometricTransform2 = textGeometricTransform;
        LocaleList localeList = spanStyle.localeList;
        if (localeList == null) {
            localeList = this.localeList;
        }
        LocaleList localeList2 = localeList;
        long m1833getBackground0d7_KjU = spanStyle.m1833getBackground0d7_KjU();
        if (!(m1833getBackground0d7_KjU != Color.Companion.m382getUnspecified0d7_KjU())) {
            m1833getBackground0d7_KjU = m1833getBackground0d7_KjU();
        }
        long j3 = m1833getBackground0d7_KjU;
        TextDecoration textDecoration = spanStyle.textDecoration;
        if (textDecoration == null) {
            textDecoration = this.textDecoration;
        }
        TextDecoration textDecoration2 = textDecoration;
        Shadow shadow = spanStyle.shadow;
        if (shadow == null) {
            shadow = this.shadow;
        }
        return new SpanStyle(j, m1836getFontSizeXSAIIZE, fontWeight2, fontStyle, fontSynthesis, fontFamily2, str2, j2, baselineShift, textGeometricTransform2, localeList2, j3, textDecoration2, shadow, null);
    }

    public final SpanStyle plus(SpanStyle other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return merge(other);
    }

    /* renamed from: copy-IuqyXdg  reason: not valid java name */
    public final SpanStyle m1832copyIuqyXdg(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow) {
        return new SpanStyle(j, j2, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j3, baselineShift, textGeometricTransform, localeList, j4, textDecoration, shadow, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SpanStyle) {
            SpanStyle spanStyle = (SpanStyle) obj;
            return Color.m347equalsimpl0(m1835getColor0d7_KjU(), spanStyle.m1835getColor0d7_KjU()) && TextUnit.m2243equalsimpl0(m1836getFontSizeXSAIIZE(), spanStyle.m1836getFontSizeXSAIIZE()) && Intrinsics.areEqual(this.fontWeight, spanStyle.fontWeight) && Intrinsics.areEqual(m1837getFontStyle4Lr2A7w(), spanStyle.m1837getFontStyle4Lr2A7w()) && Intrinsics.areEqual(m1838getFontSynthesisZQGJjVo(), spanStyle.m1838getFontSynthesisZQGJjVo()) && Intrinsics.areEqual(this.fontFamily, spanStyle.fontFamily) && Intrinsics.areEqual(this.fontFeatureSettings, spanStyle.fontFeatureSettings) && TextUnit.m2243equalsimpl0(m1839getLetterSpacingXSAIIZE(), spanStyle.m1839getLetterSpacingXSAIIZE()) && Intrinsics.areEqual(m1834getBaselineShift5SSeXJ0(), spanStyle.m1834getBaselineShift5SSeXJ0()) && Intrinsics.areEqual(this.textGeometricTransform, spanStyle.textGeometricTransform) && Intrinsics.areEqual(this.localeList, spanStyle.localeList) && Color.m347equalsimpl0(m1833getBackground0d7_KjU(), spanStyle.m1833getBackground0d7_KjU()) && Intrinsics.areEqual(this.textDecoration, spanStyle.textDecoration) && Intrinsics.areEqual(this.shadow, spanStyle.shadow);
        }
        return false;
    }

    public int hashCode() {
        int m353hashCodeimpl = ((Color.m353hashCodeimpl(m1835getColor0d7_KjU()) * 31) + TextUnit.m2247hashCodeimpl(m1836getFontSizeXSAIIZE())) * 31;
        FontWeight fontWeight = this.fontWeight;
        int hashCode = (m353hashCodeimpl + (fontWeight == null ? 0 : fontWeight.hashCode())) * 31;
        FontStyle m1837getFontStyle4Lr2A7w = m1837getFontStyle4Lr2A7w();
        int m1901hashCodeimpl = (hashCode + (m1837getFontStyle4Lr2A7w == null ? 0 : FontStyle.m1901hashCodeimpl(m1837getFontStyle4Lr2A7w.m1903unboximpl()))) * 31;
        FontSynthesis m1838getFontSynthesisZQGJjVo = m1838getFontSynthesisZQGJjVo();
        int m1910hashCodeimpl = (m1901hashCodeimpl + (m1838getFontSynthesisZQGJjVo == null ? 0 : FontSynthesis.m1910hashCodeimpl(m1838getFontSynthesisZQGJjVo.m1914unboximpl()))) * 31;
        FontFamily fontFamily = this.fontFamily;
        int hashCode2 = (m1910hashCodeimpl + (fontFamily == null ? 0 : fontFamily.hashCode())) * 31;
        String str = this.fontFeatureSettings;
        int hashCode3 = (((hashCode2 + (str == null ? 0 : str.hashCode())) * 31) + TextUnit.m2247hashCodeimpl(m1839getLetterSpacingXSAIIZE())) * 31;
        BaselineShift m1834getBaselineShift5SSeXJ0 = m1834getBaselineShift5SSeXJ0();
        int m2014hashCodeimpl = (hashCode3 + (m1834getBaselineShift5SSeXJ0 == null ? 0 : BaselineShift.m2014hashCodeimpl(m1834getBaselineShift5SSeXJ0.m2016unboximpl()))) * 31;
        TextGeometricTransform textGeometricTransform = this.textGeometricTransform;
        int hashCode4 = (m2014hashCodeimpl + (textGeometricTransform == null ? 0 : textGeometricTransform.hashCode())) * 31;
        LocaleList localeList = this.localeList;
        int hashCode5 = (((hashCode4 + (localeList == null ? 0 : localeList.hashCode())) * 31) + Color.m353hashCodeimpl(m1833getBackground0d7_KjU())) * 31;
        TextDecoration textDecoration = this.textDecoration;
        int hashCode6 = (hashCode5 + (textDecoration == null ? 0 : textDecoration.hashCode())) * 31;
        Shadow shadow = this.shadow;
        return hashCode6 + (shadow != null ? shadow.hashCode() : 0);
    }

    public String toString() {
        return "SpanStyle(color=" + ((Object) Color.m354toStringimpl(m1835getColor0d7_KjU())) + ", fontSize=" + ((Object) TextUnit.m2253toStringimpl(m1836getFontSizeXSAIIZE())) + ", fontWeight=" + this.fontWeight + ", fontStyle=" + m1837getFontStyle4Lr2A7w() + ", fontSynthesis=" + m1838getFontSynthesisZQGJjVo() + ", fontFamily=" + this.fontFamily + ", fontFeatureSettings=" + ((Object) this.fontFeatureSettings) + ", letterSpacing=" + ((Object) TextUnit.m2253toStringimpl(m1839getLetterSpacingXSAIIZE())) + ", baselineShift=" + m1834getBaselineShift5SSeXJ0() + ", textGeometricTransform=" + this.textGeometricTransform + ", localeList=" + this.localeList + ", background=" + ((Object) Color.m354toStringimpl(m1833getBackground0d7_KjU())) + ", textDecoration=" + this.textDecoration + ", shadow=" + this.shadow + ')';
    }
}
