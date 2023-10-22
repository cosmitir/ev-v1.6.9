package androidx.compose.ui.input.pointer;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.layout.LayoutCoordinates;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: HitPathTracker.kt */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J/\u0010\u0013\u001a\u00020\u00142\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00120\u00162\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0019H\u0002ø\u0001\u0000J\b\u0010\u001a\u001a\u00020\u0014H\u0002J\b\u0010\u001b\u001a\u00020\u0014H\u0016J\b\u0010\u001c\u001a\u00020\u001dH\u0016J\u0017\u0010\u001e\u001a\u00020\u001d2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00140 H\u0082\bJ/\u0010!\u001a\u00020\u001d2\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00120\u00162\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0019H\u0016ø\u0001\u0000J\b\u0010\"\u001a\u00020#H\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nø\u0001\u0000¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001d\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004ø\u0001\u0000¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006$"}, d2 = {"Landroidx/compose/ui/input/pointer/Node;", "Landroidx/compose/ui/input/pointer/NodeParent;", "pointerInputFilter", "Landroidx/compose/ui/input/pointer/PointerInputFilter;", "(Landroidx/compose/ui/input/pointer/PointerInputFilter;)V", "coordinates", "Landroidx/compose/ui/layout/LayoutCoordinates;", "pointerEvent", "Landroidx/compose/ui/input/pointer/PointerEvent;", "pointerIds", "Landroidx/compose/runtime/collection/MutableVector;", "Landroidx/compose/ui/input/pointer/PointerId;", "getPointerIds", "()Landroidx/compose/runtime/collection/MutableVector;", "getPointerInputFilter", "()Landroidx/compose/ui/input/pointer/PointerInputFilter;", "relevantChanges", "", "Landroidx/compose/ui/input/pointer/PointerInputChange;", "buildCache", "", "changes", "", "parentCoordinates", "internalPointerEvent", "Landroidx/compose/ui/input/pointer/InternalPointerEvent;", "clearCache", "dispatchCancel", "dispatchFinalEventPass", "", "dispatchIfNeeded", "block", "Lkotlin/Function0;", "dispatchMainEventPass", "toString", "", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class Node extends NodeParent {
    private LayoutCoordinates coordinates;
    private PointerEvent pointerEvent;
    private final MutableVector<PointerId> pointerIds;
    private final PointerInputFilter pointerInputFilter;
    private final Map<PointerId, PointerInputChange> relevantChanges;

    public Node(PointerInputFilter pointerInputFilter) {
        Intrinsics.checkNotNullParameter(pointerInputFilter, "pointerInputFilter");
        this.pointerInputFilter = pointerInputFilter;
        this.pointerIds = new MutableVector<>(new PointerId[16], 0);
        this.relevantChanges = new LinkedHashMap();
    }

    public final PointerInputFilter getPointerInputFilter() {
        return this.pointerInputFilter;
    }

    public final MutableVector<PointerId> getPointerIds() {
        return this.pointerIds;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0076  */
    @Override // androidx.compose.ui.input.pointer.NodeParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean dispatchMainEventPass(java.util.Map<androidx.compose.ui.input.pointer.PointerId, androidx.compose.ui.input.pointer.PointerInputChange> r9, androidx.compose.ui.layout.LayoutCoordinates r10, androidx.compose.ui.input.pointer.InternalPointerEvent r11) {
        /*
            r8 = this;
            java.lang.String r0 = "changes"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            java.lang.String r0 = "parentCoordinates"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            java.lang.String r0 = "internalPointerEvent"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r0)
            r8.buildCache(r9, r10, r11)
            java.util.Map r9 = access$getRelevantChanges$p(r8)
            boolean r9 = r9.isEmpty()
            r10 = 0
            if (r9 == 0) goto L20
            goto L80
        L20:
            androidx.compose.ui.input.pointer.PointerInputFilter r9 = r8.getPointerInputFilter()
            boolean r9 = r9.isAttached$ui_release()
            if (r9 != 0) goto L2b
            goto L80
        L2b:
            androidx.compose.ui.input.pointer.PointerEvent r9 = r8.pointerEvent
            kotlin.jvm.internal.Intrinsics.checkNotNull(r9)
            androidx.compose.ui.layout.LayoutCoordinates r0 = r8.coordinates
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            long r0 = r0.mo1619getSizeYbymL2g()
            androidx.compose.ui.input.pointer.PointerInputFilter r2 = r8.getPointerInputFilter()
            androidx.compose.ui.input.pointer.PointerEventPass r3 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
            r2.mo1539onPointerEventH0pRuoY(r9, r3, r0)
            androidx.compose.ui.input.pointer.PointerInputFilter r2 = r8.getPointerInputFilter()
            boolean r2 = r2.isAttached$ui_release()
            r3 = 1
            if (r2 == 0) goto L6c
            androidx.compose.runtime.collection.MutableVector r2 = r8.getChildren()
            int r4 = r2.getSize()
            if (r4 <= 0) goto L6c
            java.lang.Object[] r2 = r2.getContent()
        L5b:
            r5 = r2[r10]
            androidx.compose.ui.input.pointer.Node r5 = (androidx.compose.ui.input.pointer.Node) r5
            java.util.Map<androidx.compose.ui.input.pointer.PointerId, androidx.compose.ui.input.pointer.PointerInputChange> r6 = r8.relevantChanges
            androidx.compose.ui.layout.LayoutCoordinates r7 = r8.coordinates
            kotlin.jvm.internal.Intrinsics.checkNotNull(r7)
            r5.dispatchMainEventPass(r6, r7, r11)
            int r10 = r10 + r3
            if (r10 < r4) goto L5b
        L6c:
            androidx.compose.ui.input.pointer.PointerInputFilter r10 = r8.getPointerInputFilter()
            boolean r10 = r10.isAttached$ui_release()
            if (r10 == 0) goto L7f
            androidx.compose.ui.input.pointer.PointerInputFilter r10 = r8.getPointerInputFilter()
            androidx.compose.ui.input.pointer.PointerEventPass r11 = androidx.compose.ui.input.pointer.PointerEventPass.Main
            r10.mo1539onPointerEventH0pRuoY(r9, r11, r0)
        L7f:
            r10 = r3
        L80:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.pointer.Node.dispatchMainEventPass(java.util.Map, androidx.compose.ui.layout.LayoutCoordinates, androidx.compose.ui.input.pointer.InternalPointerEvent):boolean");
    }

    private final void buildCache(Map<PointerId, PointerInputChange> map, LayoutCoordinates layoutCoordinates, InternalPointerEvent internalPointerEvent) {
        PointerInputChange m1521copyEzrO64;
        if (this.pointerInputFilter.isAttached$ui_release()) {
            this.coordinates = this.pointerInputFilter.getLayoutCoordinates$ui_release();
            for (Map.Entry<PointerId, PointerInputChange> entry : map.entrySet()) {
                long m1519unboximpl = entry.getKey().m1519unboximpl();
                PointerInputChange value = entry.getValue();
                if (this.pointerIds.contains(PointerId.m1513boximpl(m1519unboximpl))) {
                    Map<PointerId, PointerInputChange> map2 = this.relevantChanges;
                    PointerId m1513boximpl = PointerId.m1513boximpl(m1519unboximpl);
                    LayoutCoordinates layoutCoordinates2 = this.coordinates;
                    Intrinsics.checkNotNull(layoutCoordinates2);
                    long mo1620localPositionOfR5De75A = layoutCoordinates2.mo1620localPositionOfR5De75A(layoutCoordinates, value.m1524getPreviousPositionF1C5BW0());
                    LayoutCoordinates layoutCoordinates3 = this.coordinates;
                    Intrinsics.checkNotNull(layoutCoordinates3);
                    m1521copyEzrO64 = value.m1521copyEzrO64((r30 & 1) != 0 ? value.m1522getIdJ3iCeTQ() : 0L, (r30 & 2) != 0 ? value.uptimeMillis : 0L, (r30 & 4) != 0 ? value.m1523getPositionF1C5BW0() : layoutCoordinates3.mo1620localPositionOfR5De75A(layoutCoordinates, value.m1523getPositionF1C5BW0()), (r30 & 8) != 0 ? value.pressed : false, (r30 & 16) != 0 ? value.previousUptimeMillis : 0L, (r30 & 32) != 0 ? value.m1524getPreviousPositionF1C5BW0() : mo1620localPositionOfR5De75A, (r30 & 64) != 0 ? value.previousPressed : false, (r30 & 128) != 0 ? value.consumed : null, (r30 & 256) != 0 ? value.m1525getTypeT8wyACA() : 0);
                    map2.put(m1513boximpl, m1521copyEzrO64);
                }
            }
            if (this.relevantChanges.isEmpty()) {
                return;
            }
            this.pointerEvent = new PointerEvent(CollectionsKt.toList(this.relevantChanges.values()), internalPointerEvent);
        }
    }

    private final void clearCache() {
        this.relevantChanges.clear();
        this.coordinates = null;
        this.pointerEvent = null;
    }

    private final boolean dispatchIfNeeded(Function0<Unit> function0) {
        if (!this.relevantChanges.isEmpty() && getPointerInputFilter().isAttached$ui_release()) {
            function0.invoke();
            return true;
        }
        return false;
    }

    @Override // androidx.compose.ui.input.pointer.NodeParent
    public void dispatchCancel() {
        MutableVector<Node> children = getChildren();
        int size = children.getSize();
        if (size <= 0) {
            this.pointerInputFilter.onCancel();
        }
        Node[] content = children.getContent();
        int i = 0;
        do {
            content[i].dispatchCancel();
            i++;
        } while (i < size);
        this.pointerInputFilter.onCancel();
    }

    public String toString() {
        return "Node(pointerInputFilter=" + this.pointerInputFilter + ", children=" + getChildren() + ", pointerIds=" + this.pointerIds + ')';
    }

    @Override // androidx.compose.ui.input.pointer.NodeParent
    public boolean dispatchFinalEventPass() {
        MutableVector<Node> children;
        int size;
        boolean z = false;
        int i = 0;
        z = false;
        if (!this.relevantChanges.isEmpty() && getPointerInputFilter().isAttached$ui_release()) {
            PointerEvent pointerEvent = this.pointerEvent;
            Intrinsics.checkNotNull(pointerEvent);
            LayoutCoordinates layoutCoordinates = this.coordinates;
            Intrinsics.checkNotNull(layoutCoordinates);
            getPointerInputFilter().mo1539onPointerEventH0pRuoY(pointerEvent, PointerEventPass.Final, layoutCoordinates.mo1619getSizeYbymL2g());
            if (!getPointerInputFilter().isAttached$ui_release() || (size = (children = getChildren()).getSize()) <= 0) {
                z = true;
            } else {
                Node[] content = children.getContent();
                do {
                    content[i].dispatchFinalEventPass();
                    i++;
                } while (i < size);
                z = true;
            }
        }
        clearCache();
        return z;
    }
}
