package androidx.compose.ui.unit;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.util.MathHelpersKt;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Metadata;
import kotlin.math.MathKt;
/* compiled from: IntOffset.kt */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0005\u001a-\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\nH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000b\u0010\f\u001a\"\u0010\r\u001a\u00020\u000e*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0001H\u0087\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0010\u0010\u0011\u001a\"\u0010\r\u001a\u00020\u000e*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u000eH\u0087\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0012\u0010\u0011\u001a\"\u0010\u0013\u001a\u00020\u000e*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0001H\u0087\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0014\u0010\u0011\u001a\"\u0010\u0013\u001a\u00020\u000e*\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u000eH\u0087\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0015\u0010\u0011\u001a\u001a\u0010\u0016\u001a\u00020\u0001*\u00020\u000eH\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0017\u0010\u0018\u001a\u001a\u0010\u0019\u001a\u00020\u000e*\u00020\u0001H\u0087\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001a\u0010\u0018\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006\u001b"}, d2 = {"IntOffset", "Landroidx/compose/ui/unit/IntOffset;", "x", "", "y", "(II)J", "lerp", "start", "stop", "fraction", "", "lerp-81ZRxRo", "(JJF)J", "minus", "Landroidx/compose/ui/geometry/Offset;", TypedValues.CycleType.S_WAVE_OFFSET, "minus-Nv-tHpc", "(JJ)J", "minus-oCl6YwE", "plus", "plus-Nv-tHpc", "plus-oCl6YwE", "round", "round-k-4lQ0M", "(J)J", "toOffset", "toOffset--gyyYBs", "ui-unit_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class IntOffsetKt {
    public static final long IntOffset(int i, int i2) {
        return IntOffset.m2177constructorimpl((i2 & 4294967295L) | (i << 32));
    }

    /* renamed from: lerp-81ZRxRo  reason: not valid java name */
    public static final long m2194lerp81ZRxRo(long j, long j2, float f) {
        return IntOffset(MathHelpersKt.lerp(IntOffset.m2183getXimpl(j), IntOffset.m2183getXimpl(j2), f), MathHelpersKt.lerp(IntOffset.m2184getYimpl(j), IntOffset.m2184getYimpl(j2), f));
    }

    /* renamed from: toOffset--gyyYBs  reason: not valid java name */
    public static final long m2200toOffsetgyyYBs(long j) {
        return OffsetKt.Offset(IntOffset.m2183getXimpl(j), IntOffset.m2184getYimpl(j));
    }

    /* renamed from: plus-Nv-tHpc  reason: not valid java name */
    public static final long m2197plusNvtHpc(long j, long j2) {
        return OffsetKt.Offset(Offset.m117getXimpl(j) + IntOffset.m2183getXimpl(j2), Offset.m118getYimpl(j) + IntOffset.m2184getYimpl(j2));
    }

    /* renamed from: minus-Nv-tHpc  reason: not valid java name */
    public static final long m2195minusNvtHpc(long j, long j2) {
        return OffsetKt.Offset(Offset.m117getXimpl(j) - IntOffset.m2183getXimpl(j2), Offset.m118getYimpl(j) - IntOffset.m2184getYimpl(j2));
    }

    /* renamed from: plus-oCl6YwE  reason: not valid java name */
    public static final long m2198plusoCl6YwE(long j, long j2) {
        return OffsetKt.Offset(IntOffset.m2183getXimpl(j) + Offset.m117getXimpl(j2), IntOffset.m2184getYimpl(j) + Offset.m118getYimpl(j2));
    }

    /* renamed from: minus-oCl6YwE  reason: not valid java name */
    public static final long m2196minusoCl6YwE(long j, long j2) {
        return OffsetKt.Offset(IntOffset.m2183getXimpl(j) - Offset.m117getXimpl(j2), IntOffset.m2184getYimpl(j) - Offset.m118getYimpl(j2));
    }

    /* renamed from: round-k-4lQ0M  reason: not valid java name */
    public static final long m2199roundk4lQ0M(long j) {
        return IntOffset(MathKt.roundToInt(Offset.m117getXimpl(j)), MathKt.roundToInt(Offset.m118getYimpl(j)));
    }
}
