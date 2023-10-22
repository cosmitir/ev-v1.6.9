package androidx.compose.ui.text;

import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.ShadowKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.FontWeightKt;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.BaselineShiftKt;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextGeometricTransformKt;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SpanStyle.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u001e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005\u001a+\u0010\u0006\u001a\u0002H\u0007\"\u0004\b\u0000\u0010\u00072\u0006\u0010\b\u001a\u0002H\u00072\u0006\u0010\t\u001a\u0002H\u00072\u0006\u0010\u0004\u001a\u00020\u0005H\u0000¢\u0006\u0002\u0010\n\u001a-\u0010\u000b\u001a\u00020\f2\u0006\u0010\b\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0005H\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000e\u0010\u000f\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006\u0010"}, d2 = {"lerp", "Landroidx/compose/ui/text/SpanStyle;", "start", "stop", "fraction", "", "lerpDiscrete", "T", "a", "b", "(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;", "lerpTextUnitInheritable", "Landroidx/compose/ui/unit/TextUnit;", "t", "lerpTextUnitInheritable-C3pnCVY", "(JJF)J", "ui-text_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class SpanStyleKt {
    public static final <T> T lerpDiscrete(T t, T t2, float f) {
        return ((double) f) < 0.5d ? t : t2;
    }

    /* renamed from: lerpTextUnitInheritable-C3pnCVY  reason: not valid java name */
    public static final long m1840lerpTextUnitInheritableC3pnCVY(long j, long j2, float f) {
        if (TextUnitKt.m2264isUnspecifiedR2X_6o(j) || TextUnitKt.m2264isUnspecifiedR2X_6o(j2)) {
            return ((TextUnit) lerpDiscrete(TextUnit.m2236boximpl(j), TextUnit.m2236boximpl(j2), f)).m2255unboximpl();
        }
        return TextUnitKt.m2266lerpC3pnCVY(j, j2, f);
    }

    public static final SpanStyle lerp(SpanStyle start, SpanStyle stop, float f) {
        Intrinsics.checkNotNullParameter(start, "start");
        Intrinsics.checkNotNullParameter(stop, "stop");
        long m398lerpjxsXWHM = ColorKt.m398lerpjxsXWHM(start.m1835getColor0d7_KjU(), stop.m1835getColor0d7_KjU(), f);
        FontFamily fontFamily = (FontFamily) lerpDiscrete(start.getFontFamily(), stop.getFontFamily(), f);
        long m1840lerpTextUnitInheritableC3pnCVY = m1840lerpTextUnitInheritableC3pnCVY(start.m1836getFontSizeXSAIIZE(), stop.m1836getFontSizeXSAIIZE(), f);
        FontWeight fontWeight = start.getFontWeight();
        if (fontWeight == null) {
            fontWeight = FontWeight.Companion.getNormal();
        }
        FontWeight fontWeight2 = stop.getFontWeight();
        if (fontWeight2 == null) {
            fontWeight2 = FontWeight.Companion.getNormal();
        }
        FontWeight lerp = FontWeightKt.lerp(fontWeight, fontWeight2, f);
        FontStyle fontStyle = (FontStyle) lerpDiscrete(start.m1837getFontStyle4Lr2A7w(), stop.m1837getFontStyle4Lr2A7w(), f);
        FontSynthesis fontSynthesis = (FontSynthesis) lerpDiscrete(start.m1838getFontSynthesisZQGJjVo(), stop.m1838getFontSynthesisZQGJjVo(), f);
        String str = (String) lerpDiscrete(start.getFontFeatureSettings(), stop.getFontFeatureSettings(), f);
        long m1840lerpTextUnitInheritableC3pnCVY2 = m1840lerpTextUnitInheritableC3pnCVY(start.m1839getLetterSpacingXSAIIZE(), stop.m1839getLetterSpacingXSAIIZE(), f);
        BaselineShift m1834getBaselineShift5SSeXJ0 = start.m1834getBaselineShift5SSeXJ0();
        float m2011constructorimpl = m1834getBaselineShift5SSeXJ0 == null ? BaselineShift.m2011constructorimpl(0.0f) : m1834getBaselineShift5SSeXJ0.m2016unboximpl();
        BaselineShift m1834getBaselineShift5SSeXJ02 = stop.m1834getBaselineShift5SSeXJ0();
        float m2023lerpjWV1Mfo = BaselineShiftKt.m2023lerpjWV1Mfo(m2011constructorimpl, m1834getBaselineShift5SSeXJ02 == null ? BaselineShift.m2011constructorimpl(0.0f) : m1834getBaselineShift5SSeXJ02.m2016unboximpl(), f);
        TextGeometricTransform textGeometricTransform = start.getTextGeometricTransform();
        if (textGeometricTransform == null) {
            textGeometricTransform = TextGeometricTransform.Companion.getNone$ui_text_release();
        }
        TextGeometricTransform textGeometricTransform2 = stop.getTextGeometricTransform();
        if (textGeometricTransform2 == null) {
            textGeometricTransform2 = TextGeometricTransform.Companion.getNone$ui_text_release();
        }
        TextGeometricTransform lerp2 = TextGeometricTransformKt.lerp(textGeometricTransform, textGeometricTransform2, f);
        LocaleList localeList = (LocaleList) lerpDiscrete(start.getLocaleList(), stop.getLocaleList(), f);
        long m398lerpjxsXWHM2 = ColorKt.m398lerpjxsXWHM(start.m1833getBackground0d7_KjU(), stop.m1833getBackground0d7_KjU(), f);
        TextDecoration textDecoration = (TextDecoration) lerpDiscrete(start.getTextDecoration(), stop.getTextDecoration(), f);
        Shadow shadow = start.getShadow();
        if (shadow == null) {
            shadow = new Shadow(0L, 0L, 0.0f, 7, null);
        }
        Shadow shadow2 = stop.getShadow();
        if (shadow2 == null) {
            shadow2 = new Shadow(0L, 0L, 0.0f, 7, null);
        }
        return new SpanStyle(m398lerpjxsXWHM, m1840lerpTextUnitInheritableC3pnCVY, lerp, fontStyle, fontSynthesis, fontFamily, str, m1840lerpTextUnitInheritableC3pnCVY2, BaselineShift.m2010boximpl(m2023lerpjWV1Mfo), lerp2, localeList, m398lerpjxsXWHM2, textDecoration, ShadowKt.lerp(shadow, shadow2, f), null);
    }
}
