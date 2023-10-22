package androidx.compose.ui.text;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.IntSize;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TextPainter.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/text/TextPainter;", "", "()V", "paint", "", "canvas", "Landroidx/compose/ui/graphics/Canvas;", "textLayoutResult", "Landroidx/compose/ui/text/TextLayoutResult;", "ui-text_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class TextPainter {
    public static final TextPainter INSTANCE = new TextPainter();

    private TextPainter() {
    }

    public final void paint(Canvas canvas, TextLayoutResult textLayoutResult) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(textLayoutResult, "textLayoutResult");
        boolean z = textLayoutResult.getHasVisualOverflow() && TextOverflow.m2056equalsimpl0(textLayoutResult.getLayoutInput().m1844getOverflowgIe3tQ8(), TextOverflow.Companion.m2060getClipgIe3tQ8());
        if (z) {
            Rect m157Recttz77jQw = RectKt.m157Recttz77jQw(Offset.Companion.m133getZeroF1C5BW0(), SizeKt.Size(IntSize.m2225getWidthimpl(textLayoutResult.m1848getSizeYbymL2g()), IntSize.m2224getHeightimpl(textLayoutResult.m1848getSizeYbymL2g())));
            canvas.save();
            Canvas.DefaultImpls.m325clipRectmtrdDE$default(canvas, m157Recttz77jQw, 0, 2, null);
        }
        try {
            textLayoutResult.getMultiParagraph().m1790paintRPmYEkk(canvas, textLayoutResult.getLayoutInput().getStyle().m1876getColor0d7_KjU(), textLayoutResult.getLayoutInput().getStyle().getShadow(), textLayoutResult.getLayoutInput().getStyle().getTextDecoration());
        } finally {
            if (z) {
                canvas.restore();
            }
        }
    }
}
