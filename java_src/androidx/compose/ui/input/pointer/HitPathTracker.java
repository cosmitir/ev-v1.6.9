package androidx.compose.ui.input.pointer;

import androidx.compose.ui.layout.LayoutCoordinates;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: HitPathTracker.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J)\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\nJ\u0006\u0010\u0017\u001a\u00020\nJ\u001b\u0010\u0018\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0019\u0010\u001aR\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006\u001b"}, d2 = {"Landroidx/compose/ui/input/pointer/HitPathTracker;", "", "rootCoordinates", "Landroidx/compose/ui/layout/LayoutCoordinates;", "(Landroidx/compose/ui/layout/LayoutCoordinates;)V", "root", "Landroidx/compose/ui/input/pointer/NodeParent;", "getRoot$ui_release", "()Landroidx/compose/ui/input/pointer/NodeParent;", "addHitPath", "", "pointerId", "Landroidx/compose/ui/input/pointer/PointerId;", "pointerInputFilters", "", "Landroidx/compose/ui/input/pointer/PointerInputFilter;", "addHitPath-KNwqfcY", "(JLjava/util/List;)V", "dispatchChanges", "", "internalPointerEvent", "Landroidx/compose/ui/input/pointer/InternalPointerEvent;", "processCancel", "removeDetachedPointerInputFilters", "removeHitPath", "removeHitPath-0FcD4WY", "(J)V", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class HitPathTracker {
    private final NodeParent root;
    private final LayoutCoordinates rootCoordinates;

    public HitPathTracker(LayoutCoordinates rootCoordinates) {
        Intrinsics.checkNotNullParameter(rootCoordinates, "rootCoordinates");
        this.rootCoordinates = rootCoordinates;
        this.root = new NodeParent();
    }

    public final NodeParent getRoot$ui_release() {
        return this.root;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0080 A[LOOP:0: B:5:0x0013->B:26:0x0080, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0082 A[SYNTHETIC] */
    /* renamed from: addHitPath-KNwqfcY  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1506addHitPathKNwqfcY(long r12, java.util.List<? extends androidx.compose.ui.input.pointer.PointerInputFilter> r14) {
        /*
            r11 = this;
            java.lang.String r0 = "pointerInputFilters"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r14, r0)
            androidx.compose.ui.input.pointer.NodeParent r0 = r11.root
            int r1 = r14.size()
            int r1 = r1 + (-1)
            if (r1 < 0) goto L82
            r2 = 1
            r3 = 0
            r4 = r3
        L13:
            int r5 = r4 + 1
            java.lang.Object r4 = r14.get(r4)
            androidx.compose.ui.input.pointer.PointerInputFilter r4 = (androidx.compose.ui.input.pointer.PointerInputFilter) r4
            if (r2 == 0) goto L63
            androidx.compose.runtime.collection.MutableVector r6 = r0.getChildren()
            int r7 = r6.getSize()
            if (r7 <= 0) goto L40
            java.lang.Object[] r6 = r6.getContent()
            r8 = r3
        L2c:
            r9 = r6[r8]
            r10 = r9
            androidx.compose.ui.input.pointer.Node r10 = (androidx.compose.ui.input.pointer.Node) r10
            androidx.compose.ui.input.pointer.PointerInputFilter r10 = r10.getPointerInputFilter()
            boolean r10 = kotlin.jvm.internal.Intrinsics.areEqual(r10, r4)
            if (r10 == 0) goto L3c
            goto L41
        L3c:
            int r8 = r8 + 1
            if (r8 < r7) goto L2c
        L40:
            r9 = 0
        L41:
            androidx.compose.ui.input.pointer.Node r9 = (androidx.compose.ui.input.pointer.Node) r9
            if (r9 == 0) goto L62
            androidx.compose.runtime.collection.MutableVector r0 = r9.getPointerIds()
            androidx.compose.ui.input.pointer.PointerId r4 = androidx.compose.ui.input.pointer.PointerId.m1513boximpl(r12)
            boolean r0 = r0.contains(r4)
            if (r0 != 0) goto L5e
            androidx.compose.runtime.collection.MutableVector r0 = r9.getPointerIds()
            androidx.compose.ui.input.pointer.PointerId r4 = androidx.compose.ui.input.pointer.PointerId.m1513boximpl(r12)
            r0.add(r4)
        L5e:
            androidx.compose.ui.input.pointer.NodeParent r9 = (androidx.compose.ui.input.pointer.NodeParent) r9
            r0 = r9
            goto L7d
        L62:
            r2 = r3
        L63:
            androidx.compose.ui.input.pointer.Node r6 = new androidx.compose.ui.input.pointer.Node
            r6.<init>(r4)
            androidx.compose.runtime.collection.MutableVector r4 = r6.getPointerIds()
            androidx.compose.ui.input.pointer.PointerId r7 = androidx.compose.ui.input.pointer.PointerId.m1513boximpl(r12)
            r4.add(r7)
            androidx.compose.runtime.collection.MutableVector r0 = r0.getChildren()
            r0.add(r6)
            androidx.compose.ui.input.pointer.NodeParent r6 = (androidx.compose.ui.input.pointer.NodeParent) r6
            r0 = r6
        L7d:
            if (r5 <= r1) goto L80
            goto L82
        L80:
            r4 = r5
            goto L13
        L82:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.input.pointer.HitPathTracker.m1506addHitPathKNwqfcY(long, java.util.List):void");
    }

    /* renamed from: removeHitPath-0FcD4WY  reason: not valid java name */
    public final void m1507removeHitPath0FcD4WY(long j) {
        this.root.m1511recursivelyRemovePointerId0FcD4WY(j);
    }

    public final boolean dispatchChanges(InternalPointerEvent internalPointerEvent) {
        Intrinsics.checkNotNullParameter(internalPointerEvent, "internalPointerEvent");
        return this.root.dispatchFinalEventPass() || this.root.dispatchMainEventPass(internalPointerEvent.getChanges(), this.rootCoordinates, internalPointerEvent);
    }

    public final void processCancel() {
        this.root.dispatchCancel();
        this.root.clear();
    }

    public final void removeDetachedPointerInputFilters() {
        this.root.removeDetachedPointerInputFilters();
    }
}
