package androidx.compose.ui.text.platform;

import android.os.Build;
import android.text.SpannableString;
import android.text.style.ScaleXSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.InternalTextApi;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TtsAnnotation;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.GenericFontFamily;
import androidx.compose.ui.text.platform.extensions.SpannableExtensions_androidKt;
import androidx.compose.ui.text.platform.extensions.TtsAnnotationExtensions_androidKt;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Density;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AndroidAccessibilitySpannableString.android.kt */
@Metadata(d1 = {"\u00002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a4\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0002\u001a\u001c\u0010\f\u001a\u00020\u0002*\u00020\r2\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007¨\u0006\u0010"}, d2 = {"setSpanStyle", "", "Landroid/text/SpannableString;", "spanStyle", "Landroidx/compose/ui/text/SpanStyle;", "start", "", "end", "density", "Landroidx/compose/ui/unit/Density;", "typefaceAdapter", "Landroidx/compose/ui/text/platform/TypefaceAdapter;", "toAccessibilitySpannableString", "Landroidx/compose/ui/text/AnnotatedString;", "resourceLoader", "Landroidx/compose/ui/text/font/Font$ResourceLoader;", "ui-text_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidAccessibilitySpannableString_androidKt {
    @InternalTextApi
    public static final SpannableString toAccessibilitySpannableString(AnnotatedString annotatedString, Density density, Font.ResourceLoader resourceLoader) {
        Intrinsics.checkNotNullParameter(annotatedString, "<this>");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(resourceLoader, "resourceLoader");
        SpannableString spannableString = new SpannableString(annotatedString.getText());
        TypefaceAdapter typefaceAdapter = new TypefaceAdapter(null, resourceLoader, 1, null);
        List<AnnotatedString.Range<SpanStyle>> spanStyles = annotatedString.getSpanStyles();
        int size = spanStyles.size() - 1;
        int i = 0;
        if (size >= 0) {
            int i2 = 0;
            while (true) {
                int i3 = i2 + 1;
                AnnotatedString.Range<SpanStyle> range = spanStyles.get(i2);
                setSpanStyle(spannableString, range.component1(), range.component2(), range.component3(), density, typefaceAdapter);
                if (i3 > size) {
                    break;
                }
                i2 = i3;
            }
        }
        List<AnnotatedString.Range<TtsAnnotation>> ttsAnnotations = annotatedString.getTtsAnnotations(0, annotatedString.length());
        int size2 = ttsAnnotations.size() - 1;
        if (size2 >= 0) {
            while (true) {
                int i4 = i + 1;
                AnnotatedString.Range<TtsAnnotation> range2 = ttsAnnotations.get(i);
                spannableString.setSpan(TtsAnnotationExtensions_androidKt.toSpan(range2.component1()), range2.component2(), range2.component3(), 33);
                if (i4 > size2) {
                    break;
                }
                i = i4;
            }
        }
        return spannableString;
    }

    private static final void setSpanStyle(SpannableString spannableString, SpanStyle spanStyle, int i, int i2, Density density, TypefaceAdapter typefaceAdapter) {
        SpannableString spannableString2 = spannableString;
        SpannableExtensions_androidKt.m2007setColorRPmYEkk(spannableString2, spanStyle.m1835getColor0d7_KjU(), i, i2);
        SpannableExtensions_androidKt.m2008setFontSizeKmRG4DE(spannableString2, spanStyle.m1836getFontSizeXSAIIZE(), density, i, i2);
        if (spanStyle.getFontWeight() != null || spanStyle.m1837getFontStyle4Lr2A7w() != null) {
            FontWeight fontWeight = spanStyle.getFontWeight();
            if (fontWeight == null) {
                fontWeight = FontWeight.Companion.getNormal();
            }
            FontStyle m1837getFontStyle4Lr2A7w = spanStyle.m1837getFontStyle4Lr2A7w();
            spannableString.setSpan(new StyleSpan(TypefaceAdapter.Companion.m1998getTypefaceStyleFO1MlWM(fontWeight, m1837getFontStyle4Lr2A7w == null ? FontStyle.Companion.m1905getNormal_LCdwA() : m1837getFontStyle4Lr2A7w.m1903unboximpl())), i, i2, 33);
        }
        if (spanStyle.getFontFamily() != null) {
            if (spanStyle.getFontFamily() instanceof GenericFontFamily) {
                spannableString.setSpan(new TypefaceSpan(((GenericFontFamily) spanStyle.getFontFamily()).getName()), i, i2, 33);
            } else if (Build.VERSION.SDK_INT >= 28) {
                FontFamily fontFamily = spanStyle.getFontFamily();
                FontSynthesis m1838getFontSynthesisZQGJjVo = spanStyle.m1838getFontSynthesisZQGJjVo();
                spannableString.setSpan(Api28Impl.INSTANCE.createTypefaceSpan(TypefaceAdapter.m1986createDPcqOEQ$default(typefaceAdapter, fontFamily, null, 0, m1838getFontSynthesisZQGJjVo == null ? FontSynthesis.Companion.m1915getAllGVVA2EU() : m1838getFontSynthesisZQGJjVo.m1914unboximpl(), 6, null)), i, i2, 33);
            }
        }
        if (spanStyle.getTextDecoration() != null) {
            if (spanStyle.getTextDecoration().contains(TextDecoration.Companion.getUnderline())) {
                spannableString.setSpan(new UnderlineSpan(), i, i2, 33);
            }
            if (spanStyle.getTextDecoration().contains(TextDecoration.Companion.getLineThrough())) {
                spannableString.setSpan(new StrikethroughSpan(), i, i2, 33);
            }
        }
        if (spanStyle.getTextGeometricTransform() != null) {
            spannableString.setSpan(new ScaleXSpan(spanStyle.getTextGeometricTransform().getScaleX()), i, i2, 33);
        }
        SpannableExtensions_androidKt.setLocaleList(spannableString2, spanStyle.getLocaleList(), i, i2);
        SpannableExtensions_androidKt.m2005setBackgroundRPmYEkk(spannableString2, spanStyle.m1833getBackground0d7_KjU(), i, i2);
    }
}
