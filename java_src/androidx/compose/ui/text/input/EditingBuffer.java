package androidx.compose.ui.text.input;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: EditingBuffer.kt */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\f\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\u0018\u0000 52\u00020\u0001:\u00015B\u001a\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005ø\u0001\u0000¢\u0006\u0002\u0010\u0006B\u0018\u0012\u0006\u0010\u0002\u001a\u00020\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0005ø\u0001\u0000¢\u0006\u0002\u0010\bJ\r\u0010\u001c\u001a\u00020\u001dH\u0000¢\u0006\u0002\b\u001eJ\r\u0010\u001f\u001a\u00020\u001dH\u0000¢\u0006\u0002\b J\u001d\u0010!\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020\n2\u0006\u0010#\u001a\u00020\nH\u0000¢\u0006\u0002\b$J\u0016\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\nH\u0080\u0002¢\u0006\u0002\b(J\r\u0010)\u001a\u00020*H\u0000¢\u0006\u0002\b+J%\u0010,\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020\n2\u0006\u0010#\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u0007H\u0000¢\u0006\u0002\b-J%\u0010,\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020\n2\u0006\u0010#\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u0003H\u0000¢\u0006\u0002\b-J\u001d\u0010.\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020\n2\u0006\u0010#\u001a\u00020\nH\u0000¢\u0006\u0002\b/J\u001d\u00100\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020\n2\u0006\u0010#\u001a\u00020\nH\u0000¢\u0006\u0002\b1J\r\u00102\u001a\u00020\u0007H\u0000¢\u0006\u0002\b3J\b\u00104\u001a\u00020\u0003H\u0016R\u001e\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n@BX\u0080\u000e¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001e\u0010\u000e\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n@BX\u0080\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\rR$\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\n8@@@X\u0080\u000e¢\u0006\f\u001a\u0004\b\u0011\u0010\r\"\u0004\b\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u00020\n8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\rR\u001e\u0010\u0018\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n@BX\u0080\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\rR\u001e\u0010\u001a\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n@BX\u0080\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u00066"}, d2 = {"Landroidx/compose/ui/text/input/EditingBuffer;", "", "text", "", "selection", "Landroidx/compose/ui/text/TextRange;", "(Ljava/lang/String;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "Landroidx/compose/ui/text/AnnotatedString;", "(Landroidx/compose/ui/text/AnnotatedString;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "<set-?>", "", "compositionEnd", "getCompositionEnd$ui_text_release", "()I", "compositionStart", "getCompositionStart$ui_text_release", "cursor", "getCursor$ui_text_release", "setCursor$ui_text_release", "(I)V", "gapBuffer", "Landroidx/compose/ui/text/input/PartialGapBuffer;", "length", "getLength$ui_text_release", "selectionEnd", "getSelectionEnd$ui_text_release", "selectionStart", "getSelectionStart$ui_text_release", "cancelComposition", "", "cancelComposition$ui_text_release", "commitComposition", "commitComposition$ui_text_release", "delete", "start", "end", "delete$ui_text_release", "get", "", FirebaseAnalytics.Param.INDEX, "get$ui_text_release", "hasComposition", "", "hasComposition$ui_text_release", "replace", "replace$ui_text_release", "setComposition", "setComposition$ui_text_release", "setSelection", "setSelection$ui_text_release", "toAnnotatedString", "toAnnotatedString$ui_text_release", "toString", "Companion", "ui-text_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class EditingBuffer {
    public static final Companion Companion = new Companion(null);
    public static final int NOWHERE = -1;
    private int compositionEnd;
    private int compositionStart;
    private final PartialGapBuffer gapBuffer;
    private int selectionEnd;
    private int selectionStart;

    public /* synthetic */ EditingBuffer(AnnotatedString annotatedString, long j, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, j);
    }

    public /* synthetic */ EditingBuffer(String str, long j, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, j);
    }

    private EditingBuffer(AnnotatedString annotatedString, long j) {
        this.gapBuffer = new PartialGapBuffer(annotatedString.getText());
        this.selectionStart = TextRange.m1862getMinimpl(j);
        this.selectionEnd = TextRange.m1861getMaximpl(j);
        this.compositionStart = -1;
        this.compositionEnd = -1;
        int m1862getMinimpl = TextRange.m1862getMinimpl(j);
        int m1861getMaximpl = TextRange.m1861getMaximpl(j);
        if (m1862getMinimpl < 0 || m1862getMinimpl > annotatedString.length()) {
            throw new IndexOutOfBoundsException("start (" + m1862getMinimpl + ") offset is outside of text region " + annotatedString.length());
        }
        if (m1861getMaximpl < 0 || m1861getMaximpl > annotatedString.length()) {
            throw new IndexOutOfBoundsException("end (" + m1861getMaximpl + ") offset is outside of text region " + annotatedString.length());
        }
        if (m1862getMinimpl > m1861getMaximpl) {
            throw new IllegalArgumentException("Do not set reversed range: " + m1862getMinimpl + " > " + m1861getMaximpl);
        }
    }

    /* compiled from: EditingBuffer.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/text/input/EditingBuffer$Companion;", "", "()V", "NOWHERE", "", "ui-text_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final int getSelectionStart$ui_text_release() {
        return this.selectionStart;
    }

    public final int getSelectionEnd$ui_text_release() {
        return this.selectionEnd;
    }

    public final int getCompositionStart$ui_text_release() {
        return this.compositionStart;
    }

    public final int getCompositionEnd$ui_text_release() {
        return this.compositionEnd;
    }

    public final boolean hasComposition$ui_text_release() {
        return this.compositionStart != -1;
    }

    public final int getCursor$ui_text_release() {
        int i = this.selectionStart;
        int i2 = this.selectionEnd;
        if (i == i2) {
            return i2;
        }
        return -1;
    }

    public final void setCursor$ui_text_release(int i) {
        setSelection$ui_text_release(i, i);
    }

    public final char get$ui_text_release(int i) {
        return this.gapBuffer.get(i);
    }

    public final int getLength$ui_text_release() {
        return this.gapBuffer.getLength();
    }

    private EditingBuffer(String str, long j) {
        this(new AnnotatedString(str, null, null, 6, null), j, (DefaultConstructorMarker) null);
    }

    public final void replace$ui_text_release(int i, int i2, AnnotatedString text) {
        Intrinsics.checkNotNullParameter(text, "text");
        replace$ui_text_release(i, i2, text.getText());
    }

    public final void replace$ui_text_release(int i, int i2, String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        if (i < 0 || i > this.gapBuffer.getLength()) {
            throw new IndexOutOfBoundsException("start (" + i + ") offset is outside of text region " + this.gapBuffer.getLength());
        }
        if (i2 < 0 || i2 > this.gapBuffer.getLength()) {
            throw new IndexOutOfBoundsException("end (" + i2 + ") offset is outside of text region " + this.gapBuffer.getLength());
        }
        if (i > i2) {
            throw new IllegalArgumentException("Do not set reversed range: " + i + " > " + i2);
        }
        this.gapBuffer.replace(i, i2, text);
        this.selectionStart = text.length() + i;
        this.selectionEnd = i + text.length();
        this.compositionStart = -1;
        this.compositionEnd = -1;
    }

    public final void delete$ui_text_release(int i, int i2) {
        long TextRange = TextRangeKt.TextRange(i, i2);
        this.gapBuffer.replace(i, i2, "");
        long m1921updateRangeAfterDeletepWDy79M = EditingBufferKt.m1921updateRangeAfterDeletepWDy79M(TextRangeKt.TextRange(this.selectionStart, this.selectionEnd), TextRange);
        this.selectionStart = TextRange.m1862getMinimpl(m1921updateRangeAfterDeletepWDy79M);
        this.selectionEnd = TextRange.m1861getMaximpl(m1921updateRangeAfterDeletepWDy79M);
        if (hasComposition$ui_text_release()) {
            long m1921updateRangeAfterDeletepWDy79M2 = EditingBufferKt.m1921updateRangeAfterDeletepWDy79M(TextRangeKt.TextRange(this.compositionStart, this.compositionEnd), TextRange);
            if (TextRange.m1858getCollapsedimpl(m1921updateRangeAfterDeletepWDy79M2)) {
                commitComposition$ui_text_release();
                return;
            }
            this.compositionStart = TextRange.m1862getMinimpl(m1921updateRangeAfterDeletepWDy79M2);
            this.compositionEnd = TextRange.m1861getMaximpl(m1921updateRangeAfterDeletepWDy79M2);
        }
    }

    public final void setSelection$ui_text_release(int i, int i2) {
        if (i < 0 || i > this.gapBuffer.getLength()) {
            throw new IndexOutOfBoundsException("start (" + i + ") offset is outside of text region " + this.gapBuffer.getLength());
        }
        if (i2 < 0 || i2 > this.gapBuffer.getLength()) {
            throw new IndexOutOfBoundsException("end (" + i2 + ") offset is outside of text region " + this.gapBuffer.getLength());
        }
        if (i > i2) {
            throw new IllegalArgumentException("Do not set reversed range: " + i + " > " + i2);
        }
        this.selectionStart = i;
        this.selectionEnd = i2;
    }

    public final void setComposition$ui_text_release(int i, int i2) {
        if (i < 0 || i > this.gapBuffer.getLength()) {
            throw new IndexOutOfBoundsException("start (" + i + ") offset is outside of text region " + this.gapBuffer.getLength());
        }
        if (i2 < 0 || i2 > this.gapBuffer.getLength()) {
            throw new IndexOutOfBoundsException("end (" + i2 + ") offset is outside of text region " + this.gapBuffer.getLength());
        }
        if (i >= i2) {
            throw new IllegalArgumentException("Do not set reversed or empty range: " + i + " > " + i2);
        }
        this.compositionStart = i;
        this.compositionEnd = i2;
    }

    public final void cancelComposition$ui_text_release() {
        replace$ui_text_release(this.compositionStart, this.compositionEnd, "");
        this.compositionStart = -1;
        this.compositionEnd = -1;
    }

    public final void commitComposition$ui_text_release() {
        this.compositionStart = -1;
        this.compositionEnd = -1;
    }

    public String toString() {
        return this.gapBuffer.toString();
    }

    public final AnnotatedString toAnnotatedString$ui_text_release() {
        return new AnnotatedString(toString(), null, null, 6, null);
    }
}
