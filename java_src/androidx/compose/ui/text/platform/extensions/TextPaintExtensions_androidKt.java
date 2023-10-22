package androidx.compose.ui.text.platform.extensions;

import android.graphics.Typeface;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.platform.TypefaceAdapter;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TextPaintExtensions.android.kt */
@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u001a$\u0010\u0006\u001a\u00020\u0003*\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tH\u0000\u001a\f\u0010\n\u001a\u00020\u000b*\u00020\u0003H\u0000¨\u0006\f"}, d2 = {"createTypeface", "Landroid/graphics/Typeface;", "style", "Landroidx/compose/ui/text/SpanStyle;", "typefaceAdapter", "Landroidx/compose/ui/text/platform/TypefaceAdapter;", "applySpanStyle", "Landroidx/compose/ui/text/platform/AndroidTextPaint;", "density", "Landroidx/compose/ui/unit/Density;", "hasFontAttributes", "", "ui-text_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class TextPaintExtensions_androidKt {
    /* JADX WARN: Removed duplicated region for block: B:41:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0180  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.compose.ui.text.SpanStyle applySpanStyle(androidx.compose.ui.text.platform.AndroidTextPaint r27, androidx.compose.ui.text.SpanStyle r28, androidx.compose.ui.text.platform.TypefaceAdapter r29, androidx.compose.ui.unit.Density r30) {
        /*
            Method dump skipped, instructions count: 418
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.platform.extensions.TextPaintExtensions_androidKt.applySpanStyle(androidx.compose.ui.text.platform.AndroidTextPaint, androidx.compose.ui.text.SpanStyle, androidx.compose.ui.text.platform.TypefaceAdapter, androidx.compose.ui.unit.Density):androidx.compose.ui.text.SpanStyle");
    }

    public static final boolean hasFontAttributes(SpanStyle spanStyle) {
        Intrinsics.checkNotNullParameter(spanStyle, "<this>");
        return (spanStyle.getFontFamily() == null && spanStyle.m1837getFontStyle4Lr2A7w() == null && spanStyle.getFontWeight() == null) ? false : true;
    }

    private static final Typeface createTypeface(SpanStyle spanStyle, TypefaceAdapter typefaceAdapter) {
        FontFamily fontFamily = spanStyle.getFontFamily();
        FontWeight fontWeight = spanStyle.getFontWeight();
        if (fontWeight == null) {
            fontWeight = FontWeight.Companion.getNormal();
        }
        FontStyle m1837getFontStyle4Lr2A7w = spanStyle.m1837getFontStyle4Lr2A7w();
        int m1905getNormal_LCdwA = m1837getFontStyle4Lr2A7w == null ? FontStyle.Companion.m1905getNormal_LCdwA() : m1837getFontStyle4Lr2A7w.m1903unboximpl();
        FontSynthesis m1838getFontSynthesisZQGJjVo = spanStyle.m1838getFontSynthesisZQGJjVo();
        return typefaceAdapter.m1991createDPcqOEQ(fontFamily, fontWeight, m1905getNormal_LCdwA, m1838getFontSynthesisZQGJjVo == null ? FontSynthesis.Companion.m1915getAllGVVA2EU() : m1838getFontSynthesisZQGJjVo.m1914unboximpl());
    }
}
