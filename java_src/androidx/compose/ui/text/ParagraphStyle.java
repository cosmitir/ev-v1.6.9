package androidx.compose.ui.text;

import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ParagraphStyle.kt */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0007\u0018\u00002\u00020\u0001B6\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tø\u0001\u0000¢\u0006\u0002\u0010\nJA\u0010\u0014\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\u0014\u0010\u001c\u001a\u00020\u00002\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0000H\u0007J\u0011\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0000H\u0087\u0002J\b\u0010\u001e\u001a\u00020\u001fH\u0016R\u001c\u0010\u0006\u001a\u00020\u0007ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\fR\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006 "}, d2 = {"Landroidx/compose/ui/text/ParagraphStyle;", "", "textAlign", "Landroidx/compose/ui/text/style/TextAlign;", "textDirection", "Landroidx/compose/ui/text/style/TextDirection;", "lineHeight", "Landroidx/compose/ui/unit/TextUnit;", "textIndent", "Landroidx/compose/ui/text/style/TextIndent;", "(Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "getLineHeight-XSAIIZE", "()J", "J", "getTextAlign-buA522U", "()Landroidx/compose/ui/text/style/TextAlign;", "getTextDirection-mmuk1to", "()Landroidx/compose/ui/text/style/TextDirection;", "getTextIndent", "()Landroidx/compose/ui/text/style/TextIndent;", "copy", "copy-Elsmlbk", "(Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;)Landroidx/compose/ui/text/ParagraphStyle;", "equals", "", "other", "hashCode", "", "merge", "plus", "toString", "", "ui-text_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class ParagraphStyle {
    private final long lineHeight;
    private final TextAlign textAlign;
    private final TextDirection textDirection;
    private final TextIndent textIndent;

    public /* synthetic */ ParagraphStyle(TextAlign textAlign, TextDirection textDirection, long j, TextIndent textIndent, DefaultConstructorMarker defaultConstructorMarker) {
        this(textAlign, textDirection, j, textIndent);
    }

    private ParagraphStyle(TextAlign textAlign, TextDirection textDirection, long j, TextIndent textIndent) {
        this.textAlign = textAlign;
        this.textDirection = textDirection;
        this.lineHeight = j;
        this.textIndent = textIndent;
        if (TextUnit.m2243equalsimpl0(m1799getLineHeightXSAIIZE(), TextUnit.Companion.m2257getUnspecifiedXSAIIZE())) {
            return;
        }
        if (!(TextUnit.m2246getValueimpl(m1799getLineHeightXSAIIZE()) >= 0.0f)) {
            throw new IllegalStateException(("lineHeight can't be negative (" + TextUnit.m2246getValueimpl(m1799getLineHeightXSAIIZE()) + ')').toString());
        }
    }

    /* renamed from: getTextAlign-buA522U  reason: not valid java name */
    public final TextAlign m1800getTextAlignbuA522U() {
        return this.textAlign;
    }

    /* renamed from: getTextDirection-mmuk1to  reason: not valid java name */
    public final TextDirection m1801getTextDirectionmmuk1to() {
        return this.textDirection;
    }

    public /* synthetic */ ParagraphStyle(TextAlign textAlign, TextDirection textDirection, long j, TextIndent textIndent, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : textAlign, (i & 2) != 0 ? null : textDirection, (i & 4) != 0 ? TextUnit.Companion.m2257getUnspecifiedXSAIIZE() : j, (i & 8) != 0 ? null : textIndent, null);
    }

    /* renamed from: getLineHeight-XSAIIZE  reason: not valid java name */
    public final long m1799getLineHeightXSAIIZE() {
        return this.lineHeight;
    }

    public final TextIndent getTextIndent() {
        return this.textIndent;
    }

    public static /* synthetic */ ParagraphStyle merge$default(ParagraphStyle paragraphStyle, ParagraphStyle paragraphStyle2, int i, Object obj) {
        if ((i & 1) != 0) {
            paragraphStyle2 = null;
        }
        return paragraphStyle.merge(paragraphStyle2);
    }

    public final ParagraphStyle merge(ParagraphStyle paragraphStyle) {
        long m1799getLineHeightXSAIIZE;
        if (paragraphStyle == null) {
            return this;
        }
        if (TextUnitKt.m2264isUnspecifiedR2X_6o(paragraphStyle.m1799getLineHeightXSAIIZE())) {
            m1799getLineHeightXSAIIZE = m1799getLineHeightXSAIIZE();
        } else {
            m1799getLineHeightXSAIIZE = paragraphStyle.m1799getLineHeightXSAIIZE();
        }
        long j = m1799getLineHeightXSAIIZE;
        TextIndent textIndent = paragraphStyle.textIndent;
        if (textIndent == null) {
            textIndent = this.textIndent;
        }
        TextIndent textIndent2 = textIndent;
        TextAlign m1800getTextAlignbuA522U = paragraphStyle.m1800getTextAlignbuA522U();
        if (m1800getTextAlignbuA522U == null) {
            m1800getTextAlignbuA522U = m1800getTextAlignbuA522U();
        }
        TextAlign textAlign = m1800getTextAlignbuA522U;
        TextDirection m1801getTextDirectionmmuk1to = paragraphStyle.m1801getTextDirectionmmuk1to();
        if (m1801getTextDirectionmmuk1to == null) {
            m1801getTextDirectionmmuk1to = m1801getTextDirectionmmuk1to();
        }
        return new ParagraphStyle(textAlign, m1801getTextDirectionmmuk1to, j, textIndent2, null);
    }

    public final ParagraphStyle plus(ParagraphStyle other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return merge(other);
    }

    /* renamed from: copy-Elsmlbk$default  reason: not valid java name */
    public static /* synthetic */ ParagraphStyle m1797copyElsmlbk$default(ParagraphStyle paragraphStyle, TextAlign textAlign, TextDirection textDirection, long j, TextIndent textIndent, int i, Object obj) {
        if ((i & 1) != 0) {
            textAlign = paragraphStyle.m1800getTextAlignbuA522U();
        }
        if ((i & 2) != 0) {
            textDirection = paragraphStyle.m1801getTextDirectionmmuk1to();
        }
        TextDirection textDirection2 = textDirection;
        if ((i & 4) != 0) {
            j = paragraphStyle.m1799getLineHeightXSAIIZE();
        }
        long j2 = j;
        if ((i & 8) != 0) {
            textIndent = paragraphStyle.textIndent;
        }
        return paragraphStyle.m1798copyElsmlbk(textAlign, textDirection2, j2, textIndent);
    }

    /* renamed from: copy-Elsmlbk  reason: not valid java name */
    public final ParagraphStyle m1798copyElsmlbk(TextAlign textAlign, TextDirection textDirection, long j, TextIndent textIndent) {
        return new ParagraphStyle(textAlign, textDirection, j, textIndent, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ParagraphStyle) {
            ParagraphStyle paragraphStyle = (ParagraphStyle) obj;
            return Intrinsics.areEqual(m1800getTextAlignbuA522U(), paragraphStyle.m1800getTextAlignbuA522U()) && Intrinsics.areEqual(m1801getTextDirectionmmuk1to(), paragraphStyle.m1801getTextDirectionmmuk1to()) && TextUnit.m2243equalsimpl0(m1799getLineHeightXSAIIZE(), paragraphStyle.m1799getLineHeightXSAIIZE()) && Intrinsics.areEqual(this.textIndent, paragraphStyle.textIndent);
        }
        return false;
    }

    public int hashCode() {
        TextAlign m1800getTextAlignbuA522U = m1800getTextAlignbuA522U();
        int m2028hashCodeimpl = (m1800getTextAlignbuA522U == null ? 0 : TextAlign.m2028hashCodeimpl(m1800getTextAlignbuA522U.m2030unboximpl())) * 31;
        TextDirection m1801getTextDirectionmmuk1to = m1801getTextDirectionmmuk1to();
        int m2041hashCodeimpl = (((m2028hashCodeimpl + (m1801getTextDirectionmmuk1to == null ? 0 : TextDirection.m2041hashCodeimpl(m1801getTextDirectionmmuk1to.m2043unboximpl()))) * 31) + TextUnit.m2247hashCodeimpl(m1799getLineHeightXSAIIZE())) * 31;
        TextIndent textIndent = this.textIndent;
        return m2041hashCodeimpl + (textIndent != null ? textIndent.hashCode() : 0);
    }

    public String toString() {
        return "ParagraphStyle(textAlign=" + m1800getTextAlignbuA522U() + ", textDirection=" + m1801getTextDirectionmmuk1to() + ", lineHeight=" + ((Object) TextUnit.m2253toStringimpl(m1799getLineHeightXSAIIZE())) + ", textIndent=" + this.textIndent + ')';
    }
}
