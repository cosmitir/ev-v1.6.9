package androidx.compose.ui.text.input;

import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Metadata;
/* compiled from: EditingBuffer.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a%\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006\u0006"}, d2 = {"updateRangeAfterDelete", "Landroidx/compose/ui/text/TextRange;", TypedValues.AttributesType.S_TARGET, "deleted", "updateRangeAfterDelete-pWDy79M", "(JJ)J", "ui-text_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class EditingBufferKt {
    /* renamed from: updateRangeAfterDelete-pWDy79M  reason: not valid java name */
    public static final long m1921updateRangeAfterDeletepWDy79M(long j, long j2) {
        int m1860getLengthimpl;
        int m1862getMinimpl = TextRange.m1862getMinimpl(j);
        int m1861getMaximpl = TextRange.m1861getMaximpl(j);
        if (TextRange.m1866intersects5zctL8(j2, j)) {
            if (TextRange.m1854contains5zctL8(j2, j)) {
                m1862getMinimpl = TextRange.m1862getMinimpl(j2);
                m1861getMaximpl = m1862getMinimpl;
            } else {
                if (TextRange.m1854contains5zctL8(j, j2)) {
                    m1860getLengthimpl = TextRange.m1860getLengthimpl(j2);
                } else if (TextRange.m1855containsimpl(j2, m1862getMinimpl)) {
                    m1862getMinimpl = TextRange.m1862getMinimpl(j2);
                    m1860getLengthimpl = TextRange.m1860getLengthimpl(j2);
                } else {
                    m1861getMaximpl = TextRange.m1862getMinimpl(j2);
                }
                m1861getMaximpl -= m1860getLengthimpl;
            }
        } else if (m1861getMaximpl > TextRange.m1862getMinimpl(j2)) {
            m1862getMinimpl -= TextRange.m1860getLengthimpl(j2);
            m1860getLengthimpl = TextRange.m1860getLengthimpl(j2);
            m1861getMaximpl -= m1860getLengthimpl;
        }
        return TextRangeKt.TextRange(m1862getMinimpl, m1861getMaximpl);
    }
}
