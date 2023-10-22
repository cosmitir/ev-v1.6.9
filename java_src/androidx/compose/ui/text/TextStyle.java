package androidx.compose.ui.text;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TextStyle.kt */
@Metadata(d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b&\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\b\u0007\u0018\u0000 W2\u00020\u0001:\u0001WB\u0017\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006BÖ\u0001\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\b\b\u0002\u0010\u0015\u001a\u00020\n\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0019\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u0012\b\b\u0002\u0010\u001c\u001a\u00020\b\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010 \u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\"\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010$\u0012\b\b\u0002\u0010%\u001a\u00020\n\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010'ø\u0001\u0000¢\u0006\u0002\u0010(Já\u0001\u0010J\u001a\u00020\u00002\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\b\b\u0002\u0010\u0015\u001a\u00020\n2\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00192\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\b2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010 2\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\"2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010$2\b\b\u0002\u0010%\u001a\u00020\n2\n\b\u0002\u0010&\u001a\u0004\u0018\u00010'ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bK\u0010LJ\u0013\u0010M\u001a\u00020N2\b\u0010O\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010P\u001a\u00020QH\u0016J\u0010\u0010R\u001a\u00020\u00002\u0006\u0010O\u001a\u00020\u0005H\u0007J\u0010\u0010R\u001a\u00020\u00002\u0006\u0010O\u001a\u00020\u0003H\u0007J\u0014\u0010R\u001a\u00020\u00002\n\b\u0002\u0010O\u001a\u0004\u0018\u00010\u0000H\u0007J\u0011\u0010S\u001a\u00020\u00002\u0006\u0010O\u001a\u00020\u0005H\u0087\u0002J\u0011\u0010S\u001a\u00020\u00002\u0006\u0010O\u001a\u00020\u0003H\u0087\u0002J\u0011\u0010S\u001a\u00020\u00002\u0006\u0010O\u001a\u00020\u0000H\u0087\u0002J\b\u0010T\u001a\u00020\u0005H\u0007J\b\u0010U\u001a\u00020\u0003H\u0007J\b\u0010V\u001a\u00020\u0014H\u0016R\u001c\u0010\u001c\u001a\u00020\bø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010+\u001a\u0004\b)\u0010*R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\b\n\u0000\u001a\u0004\b,\u0010-R\u001c\u0010\u0007\u001a\u00020\bø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010+\u001a\u0004\b.\u0010*R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012¢\u0006\b\n\u0000\u001a\u0004\b/\u00100R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0014¢\u0006\b\n\u0000\u001a\u0004\b1\u00102R\u001c\u0010\t\u001a\u00020\nø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010+\u001a\u0004\b3\u0010*R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\b\n\u0000\u001a\u0004\b4\u00105R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\b\n\u0000\u001a\u0004\b6\u00107R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\b\n\u0000\u001a\u0004\b8\u00109R\u001c\u0010\u0015\u001a\u00020\nø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010+\u001a\u0004\b:\u0010*R\u001c\u0010%\u001a\u00020\nø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010+\u001a\u0004\b;\u0010*R\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u001b¢\u0006\b\n\u0000\u001a\u0004\b<\u0010=R\u0013\u0010\u001f\u001a\u0004\u0018\u00010 ¢\u0006\b\n\u0000\u001a\u0004\b>\u0010?R\u001c\u0010!\u001a\u0004\u0018\u00010\"ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\b\n\u0000\u001a\u0004\b@\u0010AR\u0013\u0010\u001d\u001a\u0004\u0018\u00010\u001e¢\u0006\b\n\u0000\u001a\u0004\bB\u0010CR\u001c\u0010#\u001a\u0004\u0018\u00010$ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\b\n\u0000\u001a\u0004\bD\u0010ER\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u0019¢\u0006\b\n\u0000\u001a\u0004\bF\u0010GR\u0013\u0010&\u001a\u0004\u0018\u00010'¢\u0006\b\n\u0000\u001a\u0004\bH\u0010I\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006X"}, d2 = {"Landroidx/compose/ui/text/TextStyle;", "", "spanStyle", "Landroidx/compose/ui/text/SpanStyle;", "paragraphStyle", "Landroidx/compose/ui/text/ParagraphStyle;", "(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/ParagraphStyle;)V", TypedValues.Custom.S_COLOR, "Landroidx/compose/ui/graphics/Color;", "fontSize", "Landroidx/compose/ui/unit/TextUnit;", "fontWeight", "Landroidx/compose/ui/text/font/FontWeight;", "fontStyle", "Landroidx/compose/ui/text/font/FontStyle;", "fontSynthesis", "Landroidx/compose/ui/text/font/FontSynthesis;", "fontFamily", "Landroidx/compose/ui/text/font/FontFamily;", "fontFeatureSettings", "", "letterSpacing", "baselineShift", "Landroidx/compose/ui/text/style/BaselineShift;", "textGeometricTransform", "Landroidx/compose/ui/text/style/TextGeometricTransform;", "localeList", "Landroidx/compose/ui/text/intl/LocaleList;", "background", "textDecoration", "Landroidx/compose/ui/text/style/TextDecoration;", "shadow", "Landroidx/compose/ui/graphics/Shadow;", "textAlign", "Landroidx/compose/ui/text/style/TextAlign;", "textDirection", "Landroidx/compose/ui/text/style/TextDirection;", "lineHeight", "textIndent", "Landroidx/compose/ui/text/style/TextIndent;", "(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "getBackground-0d7_KjU", "()J", "J", "getBaselineShift-5SSeXJ0", "()Landroidx/compose/ui/text/style/BaselineShift;", "getColor-0d7_KjU", "getFontFamily", "()Landroidx/compose/ui/text/font/FontFamily;", "getFontFeatureSettings", "()Ljava/lang/String;", "getFontSize-XSAIIZE", "getFontStyle-4Lr2A7w", "()Landroidx/compose/ui/text/font/FontStyle;", "getFontSynthesis-ZQGJjVo", "()Landroidx/compose/ui/text/font/FontSynthesis;", "getFontWeight", "()Landroidx/compose/ui/text/font/FontWeight;", "getLetterSpacing-XSAIIZE", "getLineHeight-XSAIIZE", "getLocaleList", "()Landroidx/compose/ui/text/intl/LocaleList;", "getShadow", "()Landroidx/compose/ui/graphics/Shadow;", "getTextAlign-buA522U", "()Landroidx/compose/ui/text/style/TextAlign;", "getTextDecoration", "()Landroidx/compose/ui/text/style/TextDecoration;", "getTextDirection-mmuk1to", "()Landroidx/compose/ui/text/style/TextDirection;", "getTextGeometricTransform", "()Landroidx/compose/ui/text/style/TextGeometricTransform;", "getTextIndent", "()Landroidx/compose/ui/text/style/TextIndent;", "copy", "copy-HL5avdY", "(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;)Landroidx/compose/ui/text/TextStyle;", "equals", "", "other", "hashCode", "", "merge", "plus", "toParagraphStyle", "toSpanStyle", "toString", "Companion", "ui-text_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class TextStyle {
    public static final Companion Companion = new Companion(null);
    private static final TextStyle Default = new TextStyle(0, 0, null, null, null, null, null, 0, null, null, null, 0, null, null, null, null, 0, null, 262143, null);
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
    private final long lineHeight;
    private final LocaleList localeList;
    private final Shadow shadow;
    private final TextAlign textAlign;
    private final TextDecoration textDecoration;
    private final TextDirection textDirection;
    private final TextGeometricTransform textGeometricTransform;
    private final TextIndent textIndent;

    public /* synthetic */ TextStyle(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j5, TextIndent textIndent, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j3, baselineShift, textGeometricTransform, localeList, j4, textDecoration, shadow, textAlign, textDirection, j5, textIndent);
    }

    private TextStyle(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j5, TextIndent textIndent) {
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
        this.textAlign = textAlign;
        this.textDirection = textDirection;
        this.lineHeight = j5;
        this.textIndent = textIndent;
        if (TextUnitKt.m2264isUnspecifiedR2X_6o(m1881getLineHeightXSAIIZE())) {
            return;
        }
        if (!(TextUnit.m2246getValueimpl(m1881getLineHeightXSAIIZE()) >= 0.0f)) {
            throw new IllegalStateException(("lineHeight can't be negative (" + TextUnit.m2246getValueimpl(m1881getLineHeightXSAIIZE()) + ')').toString());
        }
    }

    public /* synthetic */ TextStyle(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j5, TextIndent textIndent, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Color.Companion.m382getUnspecified0d7_KjU() : j, (i & 2) != 0 ? TextUnit.Companion.m2257getUnspecifiedXSAIIZE() : j2, (i & 4) != 0 ? null : fontWeight, (i & 8) != 0 ? null : fontStyle, (i & 16) != 0 ? null : fontSynthesis, (i & 32) != 0 ? null : fontFamily, (i & 64) != 0 ? null : str, (i & 128) != 0 ? TextUnit.Companion.m2257getUnspecifiedXSAIIZE() : j3, (i & 256) != 0 ? null : baselineShift, (i & 512) != 0 ? null : textGeometricTransform, (i & 1024) != 0 ? null : localeList, (i & 2048) != 0 ? Color.Companion.m382getUnspecified0d7_KjU() : j4, (i & 4096) != 0 ? null : textDecoration, (i & 8192) != 0 ? null : shadow, (i & 16384) != 0 ? null : textAlign, (i & 32768) != 0 ? null : textDirection, (i & 65536) != 0 ? TextUnit.Companion.m2257getUnspecifiedXSAIIZE() : j5, (i & 131072) != 0 ? null : textIndent, null);
    }

    /* renamed from: getColor-0d7_KjU  reason: not valid java name */
    public final long m1876getColor0d7_KjU() {
        return this.color;
    }

    /* renamed from: getFontSize-XSAIIZE  reason: not valid java name */
    public final long m1877getFontSizeXSAIIZE() {
        return this.fontSize;
    }

    public final FontWeight getFontWeight() {
        return this.fontWeight;
    }

    /* renamed from: getFontStyle-4Lr2A7w  reason: not valid java name */
    public final FontStyle m1878getFontStyle4Lr2A7w() {
        return this.fontStyle;
    }

    /* renamed from: getFontSynthesis-ZQGJjVo  reason: not valid java name */
    public final FontSynthesis m1879getFontSynthesisZQGJjVo() {
        return this.fontSynthesis;
    }

    public final FontFamily getFontFamily() {
        return this.fontFamily;
    }

    public final String getFontFeatureSettings() {
        return this.fontFeatureSettings;
    }

    /* renamed from: getLetterSpacing-XSAIIZE  reason: not valid java name */
    public final long m1880getLetterSpacingXSAIIZE() {
        return this.letterSpacing;
    }

    /* renamed from: getBaselineShift-5SSeXJ0  reason: not valid java name */
    public final BaselineShift m1875getBaselineShift5SSeXJ0() {
        return this.baselineShift;
    }

    public final TextGeometricTransform getTextGeometricTransform() {
        return this.textGeometricTransform;
    }

    public final LocaleList getLocaleList() {
        return this.localeList;
    }

    /* renamed from: getBackground-0d7_KjU  reason: not valid java name */
    public final long m1874getBackground0d7_KjU() {
        return this.background;
    }

    public final TextDecoration getTextDecoration() {
        return this.textDecoration;
    }

    public final Shadow getShadow() {
        return this.shadow;
    }

    /* renamed from: getTextAlign-buA522U  reason: not valid java name */
    public final TextAlign m1882getTextAlignbuA522U() {
        return this.textAlign;
    }

    /* renamed from: getTextDirection-mmuk1to  reason: not valid java name */
    public final TextDirection m1883getTextDirectionmmuk1to() {
        return this.textDirection;
    }

    /* renamed from: getLineHeight-XSAIIZE  reason: not valid java name */
    public final long m1881getLineHeightXSAIIZE() {
        return this.lineHeight;
    }

    public final TextIndent getTextIndent() {
        return this.textIndent;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TextStyle(SpanStyle spanStyle, ParagraphStyle paragraphStyle) {
        this(spanStyle.m1835getColor0d7_KjU(), spanStyle.m1836getFontSizeXSAIIZE(), spanStyle.getFontWeight(), spanStyle.m1837getFontStyle4Lr2A7w(), spanStyle.m1838getFontSynthesisZQGJjVo(), spanStyle.getFontFamily(), spanStyle.getFontFeatureSettings(), spanStyle.m1839getLetterSpacingXSAIIZE(), spanStyle.m1834getBaselineShift5SSeXJ0(), spanStyle.getTextGeometricTransform(), spanStyle.getLocaleList(), spanStyle.m1833getBackground0d7_KjU(), spanStyle.getTextDecoration(), spanStyle.getShadow(), paragraphStyle.m1800getTextAlignbuA522U(), paragraphStyle.m1801getTextDirectionmmuk1to(), paragraphStyle.m1799getLineHeightXSAIIZE(), paragraphStyle.getTextIndent(), null);
        Intrinsics.checkNotNullParameter(spanStyle, "spanStyle");
        Intrinsics.checkNotNullParameter(paragraphStyle, "paragraphStyle");
    }

    public final SpanStyle toSpanStyle() {
        return new SpanStyle(m1876getColor0d7_KjU(), m1877getFontSizeXSAIIZE(), this.fontWeight, m1878getFontStyle4Lr2A7w(), m1879getFontSynthesisZQGJjVo(), this.fontFamily, this.fontFeatureSettings, m1880getLetterSpacingXSAIIZE(), m1875getBaselineShift5SSeXJ0(), this.textGeometricTransform, this.localeList, m1874getBackground0d7_KjU(), this.textDecoration, this.shadow, null);
    }

    public final ParagraphStyle toParagraphStyle() {
        return new ParagraphStyle(m1882getTextAlignbuA522U(), m1883getTextDirectionmmuk1to(), m1881getLineHeightXSAIIZE(), this.textIndent, null);
    }

    public static /* synthetic */ TextStyle merge$default(TextStyle textStyle, TextStyle textStyle2, int i, Object obj) {
        if ((i & 1) != 0) {
            textStyle2 = null;
        }
        return textStyle.merge(textStyle2);
    }

    public final TextStyle merge(TextStyle textStyle) {
        return (textStyle == null || Intrinsics.areEqual(textStyle, Default)) ? this : new TextStyle(toSpanStyle().merge(textStyle.toSpanStyle()), toParagraphStyle().merge(textStyle.toParagraphStyle()));
    }

    public final TextStyle merge(SpanStyle other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return new TextStyle(toSpanStyle().merge(other), toParagraphStyle());
    }

    public final TextStyle merge(ParagraphStyle other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return new TextStyle(toSpanStyle(), toParagraphStyle().merge(other));
    }

    public final TextStyle plus(TextStyle other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return merge(other);
    }

    public final TextStyle plus(ParagraphStyle other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return merge(other);
    }

    public final TextStyle plus(SpanStyle other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return merge(other);
    }

    /* renamed from: copy-HL5avdY  reason: not valid java name */
    public final TextStyle m1873copyHL5avdY(long j, long j2, FontWeight fontWeight, FontStyle fontStyle, FontSynthesis fontSynthesis, FontFamily fontFamily, String str, long j3, BaselineShift baselineShift, TextGeometricTransform textGeometricTransform, LocaleList localeList, long j4, TextDecoration textDecoration, Shadow shadow, TextAlign textAlign, TextDirection textDirection, long j5, TextIndent textIndent) {
        return new TextStyle(j, j2, fontWeight, fontStyle, fontSynthesis, fontFamily, str, j3, baselineShift, textGeometricTransform, localeList, j4, textDecoration, shadow, textAlign, textDirection, j5, textIndent, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof TextStyle) {
            TextStyle textStyle = (TextStyle) obj;
            return Color.m347equalsimpl0(m1876getColor0d7_KjU(), textStyle.m1876getColor0d7_KjU()) && TextUnit.m2243equalsimpl0(m1877getFontSizeXSAIIZE(), textStyle.m1877getFontSizeXSAIIZE()) && Intrinsics.areEqual(this.fontWeight, textStyle.fontWeight) && Intrinsics.areEqual(m1878getFontStyle4Lr2A7w(), textStyle.m1878getFontStyle4Lr2A7w()) && Intrinsics.areEqual(m1879getFontSynthesisZQGJjVo(), textStyle.m1879getFontSynthesisZQGJjVo()) && Intrinsics.areEqual(this.fontFamily, textStyle.fontFamily) && Intrinsics.areEqual(this.fontFeatureSettings, textStyle.fontFeatureSettings) && TextUnit.m2243equalsimpl0(m1880getLetterSpacingXSAIIZE(), textStyle.m1880getLetterSpacingXSAIIZE()) && Intrinsics.areEqual(m1875getBaselineShift5SSeXJ0(), textStyle.m1875getBaselineShift5SSeXJ0()) && Intrinsics.areEqual(this.textGeometricTransform, textStyle.textGeometricTransform) && Intrinsics.areEqual(this.localeList, textStyle.localeList) && Color.m347equalsimpl0(m1874getBackground0d7_KjU(), textStyle.m1874getBackground0d7_KjU()) && Intrinsics.areEqual(this.textDecoration, textStyle.textDecoration) && Intrinsics.areEqual(this.shadow, textStyle.shadow) && Intrinsics.areEqual(m1882getTextAlignbuA522U(), textStyle.m1882getTextAlignbuA522U()) && Intrinsics.areEqual(m1883getTextDirectionmmuk1to(), textStyle.m1883getTextDirectionmmuk1to()) && TextUnit.m2243equalsimpl0(m1881getLineHeightXSAIIZE(), textStyle.m1881getLineHeightXSAIIZE()) && Intrinsics.areEqual(this.textIndent, textStyle.textIndent);
        }
        return false;
    }

    public int hashCode() {
        int m353hashCodeimpl = ((Color.m353hashCodeimpl(m1876getColor0d7_KjU()) * 31) + TextUnit.m2247hashCodeimpl(m1877getFontSizeXSAIIZE())) * 31;
        FontWeight fontWeight = this.fontWeight;
        int hashCode = (m353hashCodeimpl + (fontWeight == null ? 0 : fontWeight.hashCode())) * 31;
        FontStyle m1878getFontStyle4Lr2A7w = m1878getFontStyle4Lr2A7w();
        int m1901hashCodeimpl = (hashCode + (m1878getFontStyle4Lr2A7w == null ? 0 : FontStyle.m1901hashCodeimpl(m1878getFontStyle4Lr2A7w.m1903unboximpl()))) * 31;
        FontSynthesis m1879getFontSynthesisZQGJjVo = m1879getFontSynthesisZQGJjVo();
        int m1910hashCodeimpl = (m1901hashCodeimpl + (m1879getFontSynthesisZQGJjVo == null ? 0 : FontSynthesis.m1910hashCodeimpl(m1879getFontSynthesisZQGJjVo.m1914unboximpl()))) * 31;
        FontFamily fontFamily = this.fontFamily;
        int hashCode2 = (m1910hashCodeimpl + (fontFamily == null ? 0 : fontFamily.hashCode())) * 31;
        String str = this.fontFeatureSettings;
        int hashCode3 = (((hashCode2 + (str == null ? 0 : str.hashCode())) * 31) + TextUnit.m2247hashCodeimpl(m1880getLetterSpacingXSAIIZE())) * 31;
        BaselineShift m1875getBaselineShift5SSeXJ0 = m1875getBaselineShift5SSeXJ0();
        int m2014hashCodeimpl = (hashCode3 + (m1875getBaselineShift5SSeXJ0 == null ? 0 : BaselineShift.m2014hashCodeimpl(m1875getBaselineShift5SSeXJ0.m2016unboximpl()))) * 31;
        TextGeometricTransform textGeometricTransform = this.textGeometricTransform;
        int hashCode4 = (m2014hashCodeimpl + (textGeometricTransform == null ? 0 : textGeometricTransform.hashCode())) * 31;
        LocaleList localeList = this.localeList;
        int hashCode5 = (((hashCode4 + (localeList == null ? 0 : localeList.hashCode())) * 31) + Color.m353hashCodeimpl(m1874getBackground0d7_KjU())) * 31;
        TextDecoration textDecoration = this.textDecoration;
        int hashCode6 = (hashCode5 + (textDecoration == null ? 0 : textDecoration.hashCode())) * 31;
        Shadow shadow = this.shadow;
        int hashCode7 = (hashCode6 + (shadow == null ? 0 : shadow.hashCode())) * 31;
        TextAlign m1882getTextAlignbuA522U = m1882getTextAlignbuA522U();
        int m2028hashCodeimpl = (hashCode7 + (m1882getTextAlignbuA522U == null ? 0 : TextAlign.m2028hashCodeimpl(m1882getTextAlignbuA522U.m2030unboximpl()))) * 31;
        TextDirection m1883getTextDirectionmmuk1to = m1883getTextDirectionmmuk1to();
        int m2041hashCodeimpl = (((m2028hashCodeimpl + (m1883getTextDirectionmmuk1to == null ? 0 : TextDirection.m2041hashCodeimpl(m1883getTextDirectionmmuk1to.m2043unboximpl()))) * 31) + TextUnit.m2247hashCodeimpl(m1881getLineHeightXSAIIZE())) * 31;
        TextIndent textIndent = this.textIndent;
        return m2041hashCodeimpl + (textIndent != null ? textIndent.hashCode() : 0);
    }

    public String toString() {
        return "TextStyle(color=" + ((Object) Color.m354toStringimpl(m1876getColor0d7_KjU())) + ", fontSize=" + ((Object) TextUnit.m2253toStringimpl(m1877getFontSizeXSAIIZE())) + ", fontWeight=" + this.fontWeight + ", fontStyle=" + m1878getFontStyle4Lr2A7w() + ", fontSynthesis=" + m1879getFontSynthesisZQGJjVo() + ", fontFamily=" + this.fontFamily + ", fontFeatureSettings=" + ((Object) this.fontFeatureSettings) + ", letterSpacing=" + ((Object) TextUnit.m2253toStringimpl(m1880getLetterSpacingXSAIIZE())) + ", baselineShift=" + m1875getBaselineShift5SSeXJ0() + ", textGeometricTransform=" + this.textGeometricTransform + ", localeList=" + this.localeList + ", background=" + ((Object) Color.m354toStringimpl(m1874getBackground0d7_KjU())) + ", textDecoration=" + this.textDecoration + ", shadow=" + this.shadow + ", textAlign=" + m1882getTextAlignbuA522U() + ", textDirection=" + m1883getTextDirectionmmuk1to() + ", lineHeight=" + ((Object) TextUnit.m2253toStringimpl(m1881getLineHeightXSAIIZE())) + ", textIndent=" + this.textIndent + ')';
    }

    /* compiled from: TextStyle.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/text/TextStyle$Companion;", "", "()V", "Default", "Landroidx/compose/ui/text/TextStyle;", "getDefault$annotations", "getDefault", "()Landroidx/compose/ui/text/TextStyle;", "ui-text_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void getDefault$annotations() {
        }

        private Companion() {
        }

        public final TextStyle getDefault() {
            return TextStyle.Default;
        }
    }
}
