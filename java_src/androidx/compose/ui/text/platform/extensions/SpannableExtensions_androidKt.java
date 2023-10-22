package androidx.compose.ui.text.platform.extensions;

import android.text.Spannable;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.LeadingMarginSpan;
import android.text.style.MetricAffectingSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.ScaleXSpan;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.AnnotatedStringKt;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.android.style.BaselineShiftSpan;
import androidx.compose.ui.text.android.style.FontFeatureSpan;
import androidx.compose.ui.text.android.style.LetterSpacingSpanEm;
import androidx.compose.ui.text.android.style.LetterSpacingSpanPx;
import androidx.compose.ui.text.android.style.LineHeightSpan;
import androidx.compose.ui.text.android.style.ShadowSpan;
import androidx.compose.ui.text.android.style.SkewXSpan;
import androidx.compose.ui.text.android.style.TextDecorationSpan;
import androidx.compose.ui.text.android.style.TypefaceSpan;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.platform.TypefaceAdapter;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.compose.ui.unit.TextUnitType;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
/* compiled from: SpannableExtensions.android.kt */
@Metadata(d1 = {"\u0000®\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a'\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0006\u0010\u0007\u001aF\u0010\b\u001a\u00020\t2\b\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0012\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u000e0\r2\u001e\u0010\u000f\u001a\u001a\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\t0\u0010H\u0000\u001a\f\u0010\u0012\u001a\u00020\u0013*\u00020\u0014H\u0002\u001a\u0016\u0010\u0015\u001a\u00020\u000b*\u0004\u0018\u00010\u000b2\u0006\u0010\u0016\u001a\u00020\u000bH\u0002\u001a1\u0010\u0017\u001a\u00020\t*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0011H\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001d\u0010\u001e\u001a1\u0010\u001f\u001a\u00020\t*\u00020\u00182\b\u0010 \u001a\u0004\u0018\u00010!2\u0006\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0011H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0002\b\"\u001a1\u0010#\u001a\u00020\t*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0011H\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b$\u0010\u001e\u001a0\u0010%\u001a\u00020\t*\u00020\u00182\u0006\u0010&\u001a\u00020\u00142\u0012\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u000e0\r2\u0006\u0010'\u001a\u00020(H\u0002\u001a&\u0010)\u001a\u00020\t*\u00020\u00182\b\u0010*\u001a\u0004\u0018\u00010+2\u0006\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0011H\u0002\u001a9\u0010,\u001a\u00020\t*\u00020\u00182\u0006\u0010-\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0011H\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b.\u0010/\u001a&\u00100\u001a\u00020\t*\u00020\u00182\b\u00101\u001a\u0004\u0018\u0001022\u0006\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0011H\u0002\u001a1\u00103\u001a\u00020\t*\u00020\u00182\u0006\u00104\u001a\u00020\u00032\u0006\u00105\u001a\u0002062\u0006\u0010\u0004\u001a\u00020\u0005H\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b7\u00108\u001a&\u00109\u001a\u00020\t*\u00020\u00182\b\u0010:\u001a\u0004\u0018\u00010;2\u0006\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0011H\u0000\u001a&\u0010<\u001a\u00020\t*\u00020\u00182\b\u0010=\u001a\u0004\u0018\u00010>2\u0006\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0011H\u0002\u001a$\u0010?\u001a\u00020\t*\u00020\u00182\u0006\u0010@\u001a\u00020A2\u0006\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0011H\u0000\u001a:\u0010B\u001a\u00020\t*\u00020\u00182\f\u0010C\u001a\b\u0012\u0004\u0012\u00020\u000b0\u000e2\u0006\u0010\u0004\u001a\u00020\u00052\u0016\u0010D\u001a\u0012\u0012\u0004\u0012\u00020F0Ej\b\u0012\u0004\u0012\u00020F`GH\u0002\u001a8\u0010H\u001a\u00020\t*\u00020\u00182\u0006\u0010&\u001a\u00020\u00142\u0012\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u000e0\r2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010'\u001a\u00020(H\u0000\u001a&\u0010I\u001a\u00020\t*\u00020\u00182\b\u0010J\u001a\u0004\u0018\u00010K2\u0006\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0011H\u0000\u001a&\u0010L\u001a\u00020\t*\u00020\u00182\b\u0010M\u001a\u0004\u0018\u00010N2\u0006\u00105\u001a\u0002062\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006O"}, d2 = {"createLetterSpacingSpan", "Landroid/text/style/MetricAffectingSpan;", "letterSpacing", "Landroidx/compose/ui/unit/TextUnit;", "density", "Landroidx/compose/ui/unit/Density;", "createLetterSpacingSpan-eAf_CNQ", "(JLandroidx/compose/ui/unit/Density;)Landroid/text/style/MetricAffectingSpan;", "flattenFontStylesAndApply", "", "contextFontSpanStyle", "Landroidx/compose/ui/text/SpanStyle;", "spanStyles", "", "Landroidx/compose/ui/text/AnnotatedString$Range;", "block", "Lkotlin/Function3;", "", "hasFontAttributes", "", "Landroidx/compose/ui/text/TextStyle;", "merge", "spanStyle", "setBackground", "Landroid/text/Spannable;", TypedValues.Custom.S_COLOR, "Landroidx/compose/ui/graphics/Color;", "start", "end", "setBackground-RPmYEkk", "(Landroid/text/Spannable;JII)V", "setBaselineShift", "baselineShift", "Landroidx/compose/ui/text/style/BaselineShift;", "setBaselineShift-0ocSgnM", "setColor", "setColor-RPmYEkk", "setFontAttributes", "contextTextStyle", "typefaceAdapter", "Landroidx/compose/ui/text/platform/TypefaceAdapter;", "setFontFeatureSettings", "fontFeatureSettings", "", "setFontSize", "fontSize", "setFontSize-KmRG4DE", "(Landroid/text/Spannable;JLandroidx/compose/ui/unit/Density;II)V", "setGeometricTransform", "textGeometricTransform", "Landroidx/compose/ui/text/style/TextGeometricTransform;", "setLineHeight", "lineHeight", "contextFontSize", "", "setLineHeight-r9BaKPg", "(Landroid/text/Spannable;JFLandroidx/compose/ui/unit/Density;)V", "setLocaleList", "localeList", "Landroidx/compose/ui/text/intl/LocaleList;", "setShadow", "shadow", "Landroidx/compose/ui/graphics/Shadow;", "setSpan", "span", "", "setSpanStyle", "spanStyleRange", "lowPrioritySpans", "Ljava/util/ArrayList;", "Landroidx/compose/ui/text/platform/extensions/SpanRange;", "Lkotlin/collections/ArrayList;", "setSpanStyles", "setTextDecoration", "textDecoration", "Landroidx/compose/ui/text/style/TextDecoration;", "setTextIndent", "textIndent", "Landroidx/compose/ui/text/style/TextIndent;", "ui-text_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class SpannableExtensions_androidKt {
    public static final void setSpan(Spannable spannable, Object span, int i, int i2) {
        Intrinsics.checkNotNullParameter(spannable, "<this>");
        Intrinsics.checkNotNullParameter(span, "span");
        spannable.setSpan(span, i, i2, 33);
    }

    public static final void setTextIndent(Spannable spannable, TextIndent textIndent, float f, Density density) {
        float m2246getValueimpl;
        Intrinsics.checkNotNullParameter(spannable, "<this>");
        Intrinsics.checkNotNullParameter(density, "density");
        if (textIndent == null) {
            return;
        }
        if ((TextUnit.m2243equalsimpl0(textIndent.m2051getFirstLineXSAIIZE(), TextUnitKt.getSp(0)) && TextUnit.m2243equalsimpl0(textIndent.m2052getRestLineXSAIIZE(), TextUnitKt.getSp(0))) || TextUnitKt.m2264isUnspecifiedR2X_6o(textIndent.m2051getFirstLineXSAIIZE()) || TextUnitKt.m2264isUnspecifiedR2X_6o(textIndent.m2052getRestLineXSAIIZE())) {
            return;
        }
        long m2245getTypeUIouoOA = TextUnit.m2245getTypeUIouoOA(textIndent.m2051getFirstLineXSAIIZE());
        float f2 = 0.0f;
        if (TextUnitType.m2274equalsimpl0(m2245getTypeUIouoOA, TextUnitType.Companion.m2279getSpUIouoOA())) {
            m2246getValueimpl = density.mo47toPxR2X_6o(textIndent.m2051getFirstLineXSAIIZE());
        } else {
            m2246getValueimpl = TextUnitType.m2274equalsimpl0(m2245getTypeUIouoOA, TextUnitType.Companion.m2278getEmUIouoOA()) ? TextUnit.m2246getValueimpl(textIndent.m2051getFirstLineXSAIIZE()) * f : 0.0f;
        }
        long m2245getTypeUIouoOA2 = TextUnit.m2245getTypeUIouoOA(textIndent.m2052getRestLineXSAIIZE());
        if (TextUnitType.m2274equalsimpl0(m2245getTypeUIouoOA2, TextUnitType.Companion.m2279getSpUIouoOA())) {
            f2 = density.mo47toPxR2X_6o(textIndent.m2052getRestLineXSAIIZE());
        } else if (TextUnitType.m2274equalsimpl0(m2245getTypeUIouoOA2, TextUnitType.Companion.m2278getEmUIouoOA())) {
            f2 = TextUnit.m2246getValueimpl(textIndent.m2052getRestLineXSAIIZE()) * f;
        }
        setSpan(spannable, new LeadingMarginSpan.Standard((int) Math.ceil(m2246getValueimpl), (int) Math.ceil(f2)), 0, spannable.length());
    }

    /* renamed from: setLineHeight-r9BaKPg  reason: not valid java name */
    public static final void m2009setLineHeightr9BaKPg(Spannable setLineHeight, long j, float f, Density density) {
        Intrinsics.checkNotNullParameter(setLineHeight, "$this$setLineHeight");
        Intrinsics.checkNotNullParameter(density, "density");
        long m2245getTypeUIouoOA = TextUnit.m2245getTypeUIouoOA(j);
        if (TextUnitType.m2274equalsimpl0(m2245getTypeUIouoOA, TextUnitType.Companion.m2279getSpUIouoOA())) {
            setSpan(setLineHeight, new LineHeightSpan((int) Math.ceil(density.mo47toPxR2X_6o(j))), 0, setLineHeight.length());
        } else if (TextUnitType.m2274equalsimpl0(m2245getTypeUIouoOA, TextUnitType.Companion.m2278getEmUIouoOA())) {
            setSpan(setLineHeight, new LineHeightSpan((int) Math.ceil(TextUnit.m2246getValueimpl(j) * f)), 0, setLineHeight.length());
        }
    }

    public static final void setSpanStyles(Spannable spannable, TextStyle contextTextStyle, List<AnnotatedString.Range<SpanStyle>> spanStyles, Density density, TypefaceAdapter typefaceAdapter) {
        Intrinsics.checkNotNullParameter(spannable, "<this>");
        Intrinsics.checkNotNullParameter(contextTextStyle, "contextTextStyle");
        Intrinsics.checkNotNullParameter(spanStyles, "spanStyles");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(typefaceAdapter, "typefaceAdapter");
        setFontAttributes(spannable, contextTextStyle, spanStyles, typefaceAdapter);
        ArrayList arrayList = new ArrayList();
        int size = spanStyles.size() - 1;
        int i = 0;
        if (size >= 0) {
            int i2 = 0;
            while (true) {
                int i3 = i2 + 1;
                AnnotatedString.Range<SpanStyle> range = spanStyles.get(i2);
                int start = range.getStart();
                int end = range.getEnd();
                if (start >= 0 && start < spannable.length() && end > start && end <= spannable.length()) {
                    setSpanStyle(spannable, range, density, arrayList);
                }
                if (i3 > size) {
                    break;
                }
                i2 = i3;
            }
        }
        ArrayList arrayList2 = arrayList;
        int size2 = arrayList2.size() - 1;
        if (size2 < 0) {
            return;
        }
        while (true) {
            int i4 = i + 1;
            SpanRange spanRange = (SpanRange) arrayList2.get(i);
            setSpan(spannable, spanRange.component1(), spanRange.component2(), spanRange.component3());
            if (i4 > size2) {
                return;
            }
            i = i4;
        }
    }

    private static final void setSpanStyle(Spannable spannable, AnnotatedString.Range<SpanStyle> range, Density density, ArrayList<SpanRange> arrayList) {
        int start = range.getStart();
        int end = range.getEnd();
        SpanStyle item = range.getItem();
        m2006setBaselineShift0ocSgnM(spannable, item.m1834getBaselineShift5SSeXJ0(), start, end);
        m2007setColorRPmYEkk(spannable, item.m1835getColor0d7_KjU(), start, end);
        setTextDecoration(spannable, item.getTextDecoration(), start, end);
        m2008setFontSizeKmRG4DE(spannable, item.m1836getFontSizeXSAIIZE(), density, start, end);
        setFontFeatureSettings(spannable, item.getFontFeatureSettings(), start, end);
        setGeometricTransform(spannable, item.getTextGeometricTransform(), start, end);
        setLocaleList(spannable, item.getLocaleList(), start, end);
        m2005setBackgroundRPmYEkk(spannable, item.m1833getBackground0d7_KjU(), start, end);
        setShadow(spannable, item.getShadow(), start, end);
        MetricAffectingSpan m2004createLetterSpacingSpaneAf_CNQ = m2004createLetterSpacingSpaneAf_CNQ(item.m1839getLetterSpacingXSAIIZE(), density);
        if (m2004createLetterSpacingSpaneAf_CNQ == null) {
            return;
        }
        arrayList.add(new SpanRange(m2004createLetterSpacingSpaneAf_CNQ, start, end));
    }

    public static final void flattenFontStylesAndApply(SpanStyle spanStyle, List<AnnotatedString.Range<SpanStyle>> spanStyles, Function3<? super SpanStyle, ? super Integer, ? super Integer, Unit> block) {
        Intrinsics.checkNotNullParameter(spanStyles, "spanStyles");
        Intrinsics.checkNotNullParameter(block, "block");
        if (spanStyles.size() <= 1) {
            if (!spanStyles.isEmpty()) {
                block.invoke(merge(spanStyle, spanStyles.get(0).getItem()), Integer.valueOf(spanStyles.get(0).getStart()), Integer.valueOf(spanStyles.get(0).getEnd()));
                return;
            }
            return;
        }
        int size = spanStyles.size();
        int i = size * 2;
        Integer[] numArr = new Integer[i];
        for (int i2 = 0; i2 < i; i2++) {
            numArr[i2] = 0;
        }
        int size2 = spanStyles.size() - 1;
        if (size2 >= 0) {
            int i3 = 0;
            while (true) {
                int i4 = i3 + 1;
                AnnotatedString.Range<SpanStyle> range = spanStyles.get(i3);
                numArr[i3] = Integer.valueOf(range.getStart());
                numArr[i3 + size] = Integer.valueOf(range.getEnd());
                if (i4 > size2) {
                    break;
                }
                i3 = i4;
            }
        }
        ArraysKt.sort((Object[]) numArr);
        int intValue = ((Number) ArraysKt.first(numArr)).intValue();
        int i5 = 0;
        while (i5 < i) {
            int intValue2 = numArr[i5].intValue();
            i5++;
            if (intValue2 != intValue) {
                int size3 = spanStyles.size() - 1;
                SpanStyle spanStyle2 = spanStyle;
                if (size3 >= 0) {
                    int i6 = 0;
                    while (true) {
                        int i7 = i6 + 1;
                        AnnotatedString.Range<SpanStyle> range2 = spanStyles.get(i6);
                        if (AnnotatedStringKt.intersect(intValue, intValue2, range2.getStart(), range2.getEnd())) {
                            spanStyle2 = merge(spanStyle2, range2.getItem());
                        }
                        if (i7 > size3) {
                            break;
                        }
                        i6 = i7;
                    }
                }
                if (spanStyle2 != null) {
                    block.invoke(spanStyle2, Integer.valueOf(intValue), Integer.valueOf(intValue2));
                }
                intValue = intValue2;
            }
        }
    }

    /* renamed from: createLetterSpacingSpan-eAf_CNQ  reason: not valid java name */
    private static final MetricAffectingSpan m2004createLetterSpacingSpaneAf_CNQ(long j, Density density) {
        long m2245getTypeUIouoOA = TextUnit.m2245getTypeUIouoOA(j);
        if (TextUnitType.m2274equalsimpl0(m2245getTypeUIouoOA, TextUnitType.Companion.m2279getSpUIouoOA())) {
            return new LetterSpacingSpanPx(density.mo47toPxR2X_6o(j));
        }
        if (TextUnitType.m2274equalsimpl0(m2245getTypeUIouoOA, TextUnitType.Companion.m2278getEmUIouoOA())) {
            return new LetterSpacingSpanEm(TextUnit.m2246getValueimpl(j));
        }
        return null;
    }

    private static final void setShadow(Spannable spannable, Shadow shadow, int i, int i2) {
        if (shadow == null) {
            return;
        }
        setSpan(spannable, new ShadowSpan(ColorKt.m401toArgb8_81llA(shadow.m596getColor0d7_KjU()), Offset.m117getXimpl(shadow.m597getOffsetF1C5BW0()), Offset.m118getYimpl(shadow.m597getOffsetF1C5BW0()), shadow.getBlurRadius()), i, i2);
    }

    public static final void setLocaleList(Spannable spannable, LocaleList localeList, int i, int i2) {
        Intrinsics.checkNotNullParameter(spannable, "<this>");
        if (localeList == null) {
            return;
        }
        setSpan(spannable, LocaleListHelperMethods.INSTANCE.localeSpan(localeList), i, i2);
    }

    private static final void setGeometricTransform(Spannable spannable, TextGeometricTransform textGeometricTransform, int i, int i2) {
        if (textGeometricTransform == null) {
            return;
        }
        setSpan(spannable, new ScaleXSpan(textGeometricTransform.getScaleX()), i, i2);
        setSpan(spannable, new SkewXSpan(textGeometricTransform.getSkewX()), i, i2);
    }

    private static final void setFontFeatureSettings(Spannable spannable, String str, int i, int i2) {
        if (str == null) {
            return;
        }
        setSpan(spannable, new FontFeatureSpan(str), i, i2);
    }

    /* renamed from: setFontSize-KmRG4DE  reason: not valid java name */
    public static final void m2008setFontSizeKmRG4DE(Spannable setFontSize, long j, Density density, int i, int i2) {
        Intrinsics.checkNotNullParameter(setFontSize, "$this$setFontSize");
        Intrinsics.checkNotNullParameter(density, "density");
        long m2245getTypeUIouoOA = TextUnit.m2245getTypeUIouoOA(j);
        if (TextUnitType.m2274equalsimpl0(m2245getTypeUIouoOA, TextUnitType.Companion.m2279getSpUIouoOA())) {
            setSpan(setFontSize, new AbsoluteSizeSpan(MathKt.roundToInt(density.mo47toPxR2X_6o(j)), false), i, i2);
        } else if (TextUnitType.m2274equalsimpl0(m2245getTypeUIouoOA, TextUnitType.Companion.m2278getEmUIouoOA())) {
            setSpan(setFontSize, new RelativeSizeSpan(TextUnit.m2246getValueimpl(j)), i, i2);
        }
    }

    public static final void setTextDecoration(Spannable spannable, TextDecoration textDecoration, int i, int i2) {
        Intrinsics.checkNotNullParameter(spannable, "<this>");
        if (textDecoration == null) {
            return;
        }
        setSpan(spannable, new TextDecorationSpan(textDecoration.contains(TextDecoration.Companion.getUnderline()), textDecoration.contains(TextDecoration.Companion.getLineThrough())), i, i2);
    }

    /* renamed from: setBaselineShift-0ocSgnM  reason: not valid java name */
    private static final void m2006setBaselineShift0ocSgnM(Spannable spannable, BaselineShift baselineShift, int i, int i2) {
        if (baselineShift == null) {
            return;
        }
        setSpan(spannable, new BaselineShiftSpan(baselineShift.m2016unboximpl()), i, i2);
    }

    private static final boolean hasFontAttributes(TextStyle textStyle) {
        return TextPaintExtensions_androidKt.hasFontAttributes(textStyle.toSpanStyle()) || textStyle.m1879getFontSynthesisZQGJjVo() != null;
    }

    private static final SpanStyle merge(SpanStyle spanStyle, SpanStyle spanStyle2) {
        return spanStyle == null ? spanStyle2 : spanStyle.merge(spanStyle2);
    }

    private static final void setFontAttributes(final Spannable spannable, TextStyle textStyle, List<AnnotatedString.Range<SpanStyle>> list, final TypefaceAdapter typefaceAdapter) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size() - 1;
        if (size >= 0) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                AnnotatedString.Range<SpanStyle> range = list.get(i);
                AnnotatedString.Range<SpanStyle> range2 = range;
                if (TextPaintExtensions_androidKt.hasFontAttributes(range2.getItem()) || range2.getItem().m1838getFontSynthesisZQGJjVo() != null) {
                    arrayList.add(range);
                }
                if (i2 > size) {
                    break;
                }
                i = i2;
            }
        }
        flattenFontStylesAndApply(hasFontAttributes(textStyle) ? new SpanStyle(0L, 0L, textStyle.getFontWeight(), textStyle.m1878getFontStyle4Lr2A7w(), textStyle.m1879getFontSynthesisZQGJjVo(), textStyle.getFontFamily(), null, 0L, null, null, null, 0L, null, null, 16323, null) : null, arrayList, new Function3<SpanStyle, Integer, Integer, Unit>() { // from class: androidx.compose.ui.text.platform.extensions.SpannableExtensions_androidKt$setFontAttributes$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(SpanStyle spanStyle, Integer num, Integer num2) {
                invoke(spanStyle, num.intValue(), num2.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(SpanStyle spanStyle, int i3, int i4) {
                Intrinsics.checkNotNullParameter(spanStyle, "spanStyle");
                Spannable spannable2 = spannable;
                TypefaceAdapter typefaceAdapter2 = typefaceAdapter;
                FontFamily fontFamily = spanStyle.getFontFamily();
                FontWeight fontWeight = spanStyle.getFontWeight();
                if (fontWeight == null) {
                    fontWeight = FontWeight.Companion.getNormal();
                }
                FontStyle m1837getFontStyle4Lr2A7w = spanStyle.m1837getFontStyle4Lr2A7w();
                int m1905getNormal_LCdwA = m1837getFontStyle4Lr2A7w == null ? FontStyle.Companion.m1905getNormal_LCdwA() : m1837getFontStyle4Lr2A7w.m1903unboximpl();
                FontSynthesis m1838getFontSynthesisZQGJjVo = spanStyle.m1838getFontSynthesisZQGJjVo();
                spannable2.setSpan(new TypefaceSpan(typefaceAdapter2.m1991createDPcqOEQ(fontFamily, fontWeight, m1905getNormal_LCdwA, m1838getFontSynthesisZQGJjVo == null ? FontSynthesis.Companion.m1915getAllGVVA2EU() : m1838getFontSynthesisZQGJjVo.m1914unboximpl())), i3, i4, 33);
            }
        });
    }

    /* renamed from: setBackground-RPmYEkk  reason: not valid java name */
    public static final void m2005setBackgroundRPmYEkk(Spannable setBackground, long j, int i, int i2) {
        Intrinsics.checkNotNullParameter(setBackground, "$this$setBackground");
        if (j != Color.Companion.m382getUnspecified0d7_KjU()) {
            setSpan(setBackground, new BackgroundColorSpan(ColorKt.m401toArgb8_81llA(j)), i, i2);
        }
    }

    /* renamed from: setColor-RPmYEkk  reason: not valid java name */
    public static final void m2007setColorRPmYEkk(Spannable setColor, long j, int i, int i2) {
        Intrinsics.checkNotNullParameter(setColor, "$this$setColor");
        if (j != Color.Companion.m382getUnspecified0d7_KjU()) {
            setSpan(setColor, new ForegroundColorSpan(ColorKt.m401toArgb8_81llA(j)), i, i2);
        }
    }
}
