package androidx.compose.ui.text;

import java.util.Arrays;
import kotlin.Metadata;
/* compiled from: Savers.kt */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0082\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/text/AnnotationType;", "", "(Ljava/lang/String;I)V", "Paragraph", "Span", "VerbatimTts", "String", "ui-text_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
enum AnnotationType {
    Paragraph,
    Span,
    VerbatimTts,
    String;

    /* renamed from: values  reason: to resolve conflict with enum method */
    public static AnnotationType[] valuesCustom() {
        AnnotationType[] valuesCustom = values();
        return (AnnotationType[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
    }
}
