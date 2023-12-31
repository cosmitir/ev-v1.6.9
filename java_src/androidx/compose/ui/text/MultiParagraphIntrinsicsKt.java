package androidx.compose.ui.text;

import androidx.compose.ui.text.AnnotatedString;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
/* compiled from: MultiParagraphIntrinsics.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u001a4\u0010\u0000\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¨\u0006\u0007"}, d2 = {"getLocalPlaceholders", "", "Landroidx/compose/ui/text/AnnotatedString$Range;", "Landroidx/compose/ui/text/Placeholder;", "start", "", "end", "ui-text_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class MultiParagraphIntrinsicsKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final List<AnnotatedString.Range<Placeholder>> getLocalPlaceholders(List<AnnotatedString.Range<Placeholder>> list, int i, int i2) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size() - 1;
        if (size >= 0) {
            int i3 = 0;
            while (true) {
                int i4 = i3 + 1;
                AnnotatedString.Range<Placeholder> range = list.get(i3);
                AnnotatedString.Range<Placeholder> range2 = range;
                if (AnnotatedStringKt.intersect(i, i2, range2.getStart(), range2.getEnd())) {
                    arrayList.add(range);
                }
                if (i4 > size) {
                    break;
                }
                i3 = i4;
            }
        }
        ArrayList arrayList2 = arrayList;
        ArrayList arrayList3 = new ArrayList(arrayList2.size());
        int size2 = arrayList2.size() - 1;
        if (size2 >= 0) {
            int i5 = 0;
            while (true) {
                int i6 = i5 + 1;
                ArrayList arrayList4 = arrayList3;
                AnnotatedString.Range range3 = (AnnotatedString.Range) arrayList2.get(i5);
                if (!(i <= range3.getStart() && range3.getEnd() <= i2)) {
                    throw new IllegalArgumentException("placeholder can not overlap with paragraph.".toString());
                }
                arrayList4.add(new AnnotatedString.Range(range3.getItem(), range3.getStart() - i, range3.getEnd() - i));
                if (i6 > size2) {
                    break;
                }
                i5 = i6;
            }
        }
        return arrayList3;
    }
}
