package androidx.compose.ui.input.pointer;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: PointerInputTestUtil.kt */
@Metadata(d1 = {"\u0000D\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\b\u001a.\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u0006H\u0000\u001aG\u0010\b\u001a\u00020\t*\u001e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\t0\nj\u0002`\u000e2\u0006\u0010\u000f\u001a\u00020\u000b2\b\b\u0002\u0010\u0010\u001a\u00020\rH\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0011\u0010\u0012\u001aO\u0010\u0013\u001a\u00020\t*\u001e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\t0\nj\u0002`\u000e2\u0006\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\f2\b\b\u0002\u0010\u0010\u001a\u00020\rH\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0015\u0010\u0016\u001a[\u0010\u0017\u001a\u00020\t*\u001e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\t0\nj\u0002`\u000e2\u0006\u0010\u000f\u001a\u00020\u000b2\u0012\u0010\u0018\u001a\n\u0012\u0006\b\u0001\u0012\u00020\f0\u0019\"\u00020\f2\b\b\u0002\u0010\u0010\u001a\u00020\rH\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001a\u0010\u001b\u001aU\u0010\u0017\u001a\u00020\t*\u001e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\t0\nj\u0002`\u000e2\u0006\u0010\u000f\u001a\u00020\u000b2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\f0\u001c2\b\b\u0002\u0010\u0010\u001a\u00020\rH\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001a\u0010\u001d\u001a(\u0010\u001e\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u001f\u001a\u00020\u00062\b\b\u0002\u0010 \u001a\u00020\u0006H\u0000\u001a(\u0010!\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u0006H\u0000\u001a\u0014\u0010\"\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003H\u0000*<\b\u0000\u0010#\"\u001a\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\t0\n2\u001a\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\t0\n\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006$"}, d2 = {"down", "Landroidx/compose/ui/input/pointer/PointerInputChange;", "id", "", "durationMillis", "x", "", "y", "invokeOverAllPasses", "", "Lkotlin/Function3;", "Landroidx/compose/ui/input/pointer/PointerEvent;", "Landroidx/compose/ui/input/pointer/PointerEventPass;", "Landroidx/compose/ui/unit/IntSize;", "Landroidx/compose/ui/input/pointer/PointerInputHandler;", "pointerEvent", "size", "invokeOverAllPasses-H0pRuoY", "(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/input/pointer/PointerEvent;J)V", "invokeOverPass", "pointerEventPass", "invokeOverPass-hUlJWOE", "(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V", "invokeOverPasses", "pointerEventPasses", "", "invokeOverPasses-hUlJWOE", "(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/input/pointer/PointerEvent;[Landroidx/compose/ui/input/pointer/PointerEventPass;J)V", "", "(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/input/pointer/PointerEvent;Ljava/util/List;J)V", "moveBy", "dx", "dy", "moveTo", "up", "PointerInputHandler", "ui_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class PointerInputTestUtilKt {
    public static /* synthetic */ PointerInputChange down$default(long j, long j2, float f, float f2, int i, Object obj) {
        if ((i & 2) != 0) {
            j2 = 0;
        }
        return down(j, j2, (i & 4) != 0 ? 0.0f : f, (i & 8) != 0 ? 0.0f : f2);
    }

    public static final PointerInputChange down(long j, long j2, float f, float f2) {
        return new PointerInputChange(PointerId.m1514constructorimpl(j), j2, OffsetKt.Offset(f, f2), true, j2, OffsetKt.Offset(f, f2), false, new ConsumedData(false, false, 3, null), 0, 256, null);
    }

    public static /* synthetic */ PointerInputChange moveTo$default(PointerInputChange pointerInputChange, long j, float f, float f2, int i, Object obj) {
        if ((i & 2) != 0) {
            f = 0.0f;
        }
        if ((i & 4) != 0) {
            f2 = 0.0f;
        }
        return moveTo(pointerInputChange, j, f, f2);
    }

    public static final PointerInputChange moveTo(PointerInputChange pointerInputChange, long j, float f, float f2) {
        PointerInputChange m1521copyEzrO64;
        Intrinsics.checkNotNullParameter(pointerInputChange, "<this>");
        long uptimeMillis = pointerInputChange.getUptimeMillis();
        boolean pressed = pointerInputChange.getPressed();
        m1521copyEzrO64 = pointerInputChange.m1521copyEzrO64((r30 & 1) != 0 ? pointerInputChange.m1522getIdJ3iCeTQ() : 0L, (r30 & 2) != 0 ? pointerInputChange.uptimeMillis : j, (r30 & 4) != 0 ? pointerInputChange.m1523getPositionF1C5BW0() : OffsetKt.Offset(f, f2), (r30 & 8) != 0 ? pointerInputChange.pressed : true, (r30 & 16) != 0 ? pointerInputChange.previousUptimeMillis : uptimeMillis, (r30 & 32) != 0 ? pointerInputChange.m1524getPreviousPositionF1C5BW0() : pointerInputChange.m1523getPositionF1C5BW0(), (r30 & 64) != 0 ? pointerInputChange.previousPressed : pressed, (r30 & 128) != 0 ? pointerInputChange.consumed : new ConsumedData(false, false, 3, null), (r30 & 256) != 0 ? pointerInputChange.m1525getTypeT8wyACA() : 0);
        return m1521copyEzrO64;
    }

    public static /* synthetic */ PointerInputChange moveBy$default(PointerInputChange pointerInputChange, long j, float f, float f2, int i, Object obj) {
        if ((i & 2) != 0) {
            f = 0.0f;
        }
        if ((i & 4) != 0) {
            f2 = 0.0f;
        }
        return moveBy(pointerInputChange, j, f, f2);
    }

    public static final PointerInputChange moveBy(PointerInputChange pointerInputChange, long j, float f, float f2) {
        PointerInputChange m1521copyEzrO64;
        Intrinsics.checkNotNullParameter(pointerInputChange, "<this>");
        long uptimeMillis = pointerInputChange.getUptimeMillis();
        boolean pressed = pointerInputChange.getPressed();
        m1521copyEzrO64 = pointerInputChange.m1521copyEzrO64((r30 & 1) != 0 ? pointerInputChange.m1522getIdJ3iCeTQ() : 0L, (r30 & 2) != 0 ? pointerInputChange.uptimeMillis : pointerInputChange.getUptimeMillis() + j, (r30 & 4) != 0 ? pointerInputChange.m1523getPositionF1C5BW0() : OffsetKt.Offset(Offset.m117getXimpl(pointerInputChange.m1523getPositionF1C5BW0()) + f, Offset.m118getYimpl(pointerInputChange.m1523getPositionF1C5BW0()) + f2), (r30 & 8) != 0 ? pointerInputChange.pressed : true, (r30 & 16) != 0 ? pointerInputChange.previousUptimeMillis : uptimeMillis, (r30 & 32) != 0 ? pointerInputChange.m1524getPreviousPositionF1C5BW0() : pointerInputChange.m1523getPositionF1C5BW0(), (r30 & 64) != 0 ? pointerInputChange.previousPressed : pressed, (r30 & 128) != 0 ? pointerInputChange.consumed : new ConsumedData(false, false, 3, null), (r30 & 256) != 0 ? pointerInputChange.m1525getTypeT8wyACA() : 0);
        return m1521copyEzrO64;
    }

    public static final PointerInputChange up(PointerInputChange pointerInputChange, long j) {
        PointerInputChange m1521copyEzrO64;
        Intrinsics.checkNotNullParameter(pointerInputChange, "<this>");
        long uptimeMillis = pointerInputChange.getUptimeMillis();
        boolean pressed = pointerInputChange.getPressed();
        m1521copyEzrO64 = pointerInputChange.m1521copyEzrO64((r30 & 1) != 0 ? pointerInputChange.m1522getIdJ3iCeTQ() : 0L, (r30 & 2) != 0 ? pointerInputChange.uptimeMillis : j, (r30 & 4) != 0 ? pointerInputChange.m1523getPositionF1C5BW0() : pointerInputChange.m1523getPositionF1C5BW0(), (r30 & 8) != 0 ? pointerInputChange.pressed : false, (r30 & 16) != 0 ? pointerInputChange.previousUptimeMillis : uptimeMillis, (r30 & 32) != 0 ? pointerInputChange.m1524getPreviousPositionF1C5BW0() : pointerInputChange.m1523getPositionF1C5BW0(), (r30 & 64) != 0 ? pointerInputChange.previousPressed : pressed, (r30 & 128) != 0 ? pointerInputChange.consumed : new ConsumedData(false, false, 3, null), (r30 & 256) != 0 ? pointerInputChange.m1525getTypeT8wyACA() : 0);
        return m1521copyEzrO64;
    }

    /* renamed from: invokeOverAllPasses-H0pRuoY$default  reason: not valid java name */
    public static /* synthetic */ void m1552invokeOverAllPassesH0pRuoY$default(Function3 function3, PointerEvent pointerEvent, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = IntSizeKt.IntSize(Integer.MAX_VALUE, Integer.MAX_VALUE);
        }
        m1551invokeOverAllPassesH0pRuoY(function3, pointerEvent, j);
    }

    /* renamed from: invokeOverAllPasses-H0pRuoY  reason: not valid java name */
    public static final void m1551invokeOverAllPassesH0pRuoY(Function3<? super PointerEvent, ? super PointerEventPass, ? super IntSize, Unit> invokeOverAllPasses, PointerEvent pointerEvent, long j) {
        Intrinsics.checkNotNullParameter(invokeOverAllPasses, "$this$invokeOverAllPasses");
        Intrinsics.checkNotNullParameter(pointerEvent, "pointerEvent");
        m1555invokeOverPasseshUlJWOE(invokeOverAllPasses, pointerEvent, CollectionsKt.listOf((Object[]) new PointerEventPass[]{PointerEventPass.Initial, PointerEventPass.Main, PointerEventPass.Final}), j);
    }

    /* renamed from: invokeOverPass-hUlJWOE$default  reason: not valid java name */
    public static /* synthetic */ void m1554invokeOverPasshUlJWOE$default(Function3 function3, PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j, int i, Object obj) {
        if ((i & 4) != 0) {
            j = IntSizeKt.IntSize(Integer.MAX_VALUE, Integer.MAX_VALUE);
        }
        m1553invokeOverPasshUlJWOE(function3, pointerEvent, pointerEventPass, j);
    }

    /* renamed from: invokeOverPass-hUlJWOE  reason: not valid java name */
    public static final void m1553invokeOverPasshUlJWOE(Function3<? super PointerEvent, ? super PointerEventPass, ? super IntSize, Unit> invokeOverPass, PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        Intrinsics.checkNotNullParameter(invokeOverPass, "$this$invokeOverPass");
        Intrinsics.checkNotNullParameter(pointerEvent, "pointerEvent");
        Intrinsics.checkNotNullParameter(pointerEventPass, "pointerEventPass");
        m1555invokeOverPasseshUlJWOE(invokeOverPass, pointerEvent, CollectionsKt.listOf(pointerEventPass), j);
    }

    /* renamed from: invokeOverPasses-hUlJWOE$default  reason: not valid java name */
    public static /* synthetic */ void m1558invokeOverPasseshUlJWOE$default(Function3 function3, PointerEvent pointerEvent, PointerEventPass[] pointerEventPassArr, long j, int i, Object obj) {
        if ((i & 4) != 0) {
            j = IntSizeKt.IntSize(Integer.MAX_VALUE, Integer.MAX_VALUE);
        }
        m1556invokeOverPasseshUlJWOE(function3, pointerEvent, pointerEventPassArr, j);
    }

    /* renamed from: invokeOverPasses-hUlJWOE  reason: not valid java name */
    public static final void m1556invokeOverPasseshUlJWOE(Function3<? super PointerEvent, ? super PointerEventPass, ? super IntSize, Unit> invokeOverPasses, PointerEvent pointerEvent, PointerEventPass[] pointerEventPasses, long j) {
        Intrinsics.checkNotNullParameter(invokeOverPasses, "$this$invokeOverPasses");
        Intrinsics.checkNotNullParameter(pointerEvent, "pointerEvent");
        Intrinsics.checkNotNullParameter(pointerEventPasses, "pointerEventPasses");
        m1555invokeOverPasseshUlJWOE(invokeOverPasses, pointerEvent, ArraysKt.toList(pointerEventPasses), j);
    }

    /* renamed from: invokeOverPasses-hUlJWOE$default  reason: not valid java name */
    public static /* synthetic */ void m1557invokeOverPasseshUlJWOE$default(Function3 function3, PointerEvent pointerEvent, List list, long j, int i, Object obj) {
        if ((i & 4) != 0) {
            j = IntSizeKt.IntSize(Integer.MAX_VALUE, Integer.MAX_VALUE);
        }
        m1555invokeOverPasseshUlJWOE(function3, pointerEvent, list, j);
    }

    /* renamed from: invokeOverPasses-hUlJWOE  reason: not valid java name */
    public static final void m1555invokeOverPasseshUlJWOE(Function3<? super PointerEvent, ? super PointerEventPass, ? super IntSize, Unit> invokeOverPasses, PointerEvent pointerEvent, List<? extends PointerEventPass> pointerEventPasses, long j) {
        Intrinsics.checkNotNullParameter(invokeOverPasses, "$this$invokeOverPasses");
        Intrinsics.checkNotNullParameter(pointerEvent, "pointerEvent");
        Intrinsics.checkNotNullParameter(pointerEventPasses, "pointerEventPasses");
        if (!(!pointerEvent.getChanges().isEmpty())) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (!(!pointerEventPasses.isEmpty())) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        int size = pointerEventPasses.size() - 1;
        if (size < 0) {
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i + 1;
            invokeOverPasses.invoke(pointerEvent, pointerEventPasses.get(i), IntSize.m2217boximpl(j));
            if (i2 > size) {
                return;
            }
            i = i2;
        }
    }
}
