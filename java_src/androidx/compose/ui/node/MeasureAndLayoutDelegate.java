package androidx.compose.ui.node;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.Constraints;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: MeasureAndLayoutDelegate.kt */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u000f\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010\u001e\u001a\u00020\bJ%\u0010\u001f\u001a\u00020\b2\u0006\u0010 \u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0018H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b!\u0010\"J\u0006\u0010#\u001a\u00020\bJ\u000e\u0010$\u001a\u00020\u001d2\u0006\u0010%\u001a\u00020\u0003J\u000e\u0010&\u001a\u00020\b2\u0006\u0010 \u001a\u00020\u0003J\u000e\u0010'\u001a\u00020\b2\u0006\u0010 \u001a\u00020\u0003J\u001b\u0010(\u001a\u00020\u001d2\u0006\u0010)\u001a\u00020\u0018ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b*\u0010+R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR \u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\r8F@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00030\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0002\n\u0000R\u0018\u0010\u0019\u001a\u00020\b*\u00020\u00038BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001b\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006,"}, d2 = {"Landroidx/compose/ui/node/MeasureAndLayoutDelegate;", "", "root", "Landroidx/compose/ui/node/LayoutNode;", "(Landroidx/compose/ui/node/LayoutNode;)V", "consistencyChecker", "Landroidx/compose/ui/node/LayoutTreeConsistencyChecker;", "duringMeasureLayout", "", "hasPendingMeasureOrLayout", "getHasPendingMeasureOrLayout", "()Z", "<set-?>", "", "measureIteration", "getMeasureIteration", "()J", "onPositionedDispatcher", "Landroidx/compose/ui/node/OnPositionedDispatcher;", "postponedMeasureRequests", "", "relayoutNodes", "Landroidx/compose/ui/node/DepthSortedSet;", "rootConstraints", "Landroidx/compose/ui/unit/Constraints;", "canAffectParent", "getCanAffectParent", "(Landroidx/compose/ui/node/LayoutNode;)Z", "dispatchOnPositionedCallbacks", "", "forceDispatch", "doRemeasure", "layoutNode", "doRemeasure-0kLqBqw", "(Landroidx/compose/ui/node/LayoutNode;J)Z", "measureAndLayout", "onNodeDetached", "node", "requestRelayout", "requestRemeasure", "updateRootConstraints", "constraints", "updateRootConstraints-BRTryo0", "(J)V", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class MeasureAndLayoutDelegate {
    private final LayoutTreeConsistencyChecker consistencyChecker;
    private boolean duringMeasureLayout;
    private long measureIteration;
    private final OnPositionedDispatcher onPositionedDispatcher;
    private final List<LayoutNode> postponedMeasureRequests;
    private final DepthSortedSet relayoutNodes;
    private final LayoutNode root;
    private Constraints rootConstraints;

    /* compiled from: MeasureAndLayoutDelegate.kt */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LayoutNode.LayoutState.valuesCustom().length];
            iArr[LayoutNode.LayoutState.Measuring.ordinal()] = 1;
            iArr[LayoutNode.LayoutState.NeedsRemeasure.ordinal()] = 2;
            iArr[LayoutNode.LayoutState.LayingOut.ordinal()] = 3;
            iArr[LayoutNode.LayoutState.NeedsRelayout.ordinal()] = 4;
            iArr[LayoutNode.LayoutState.Ready.ordinal()] = 5;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public MeasureAndLayoutDelegate(LayoutNode root) {
        Intrinsics.checkNotNullParameter(root, "root");
        this.root = root;
        DepthSortedSet depthSortedSet = new DepthSortedSet(Owner.Companion.getEnableExtraAssertions());
        this.relayoutNodes = depthSortedSet;
        this.onPositionedDispatcher = new OnPositionedDispatcher();
        this.measureIteration = 1L;
        ArrayList arrayList = new ArrayList();
        this.postponedMeasureRequests = arrayList;
        this.consistencyChecker = Owner.Companion.getEnableExtraAssertions() ? new LayoutTreeConsistencyChecker(root, depthSortedSet, arrayList) : null;
    }

    public final boolean getHasPendingMeasureOrLayout() {
        return !this.relayoutNodes.isEmpty();
    }

    public final long getMeasureIteration() {
        if (!this.duringMeasureLayout) {
            throw new IllegalArgumentException("measureIteration should be only used during the measure/layout pass".toString());
        }
        return this.measureIteration;
    }

    /* renamed from: updateRootConstraints-BRTryo0 */
    public final void m1718updateRootConstraintsBRTryo0(long j) {
        Constraints constraints = this.rootConstraints;
        if (constraints == null ? false : Constraints.m2068equalsimpl0(constraints.m2081unboximpl(), j)) {
            return;
        }
        if (!(!this.duringMeasureLayout)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        this.rootConstraints = Constraints.m2063boximpl(j);
        this.root.setLayoutState$ui_release(LayoutNode.LayoutState.NeedsRemeasure);
        this.relayoutNodes.add(this.root);
    }

    public final boolean requestRemeasure(LayoutNode layoutNode) {
        Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
        int i = WhenMappings.$EnumSwitchMapping$0[layoutNode.getLayoutState$ui_release().ordinal()];
        if (i != 1 && i != 2) {
            if (i == 3) {
                this.postponedMeasureRequests.add(layoutNode);
                LayoutTreeConsistencyChecker layoutTreeConsistencyChecker = this.consistencyChecker;
                if (layoutTreeConsistencyChecker != null) {
                    layoutTreeConsistencyChecker.assertConsistent();
                }
            } else if (i == 4 || i == 5) {
                if (this.duringMeasureLayout && layoutNode.getWasMeasuredDuringThisIteration$ui_release()) {
                    this.postponedMeasureRequests.add(layoutNode);
                } else {
                    layoutNode.setLayoutState$ui_release(LayoutNode.LayoutState.NeedsRemeasure);
                    if (layoutNode.isPlaced() || getCanAffectParent(layoutNode)) {
                        LayoutNode parent$ui_release = layoutNode.getParent$ui_release();
                        if ((parent$ui_release == null ? null : parent$ui_release.getLayoutState$ui_release()) != LayoutNode.LayoutState.NeedsRemeasure) {
                            this.relayoutNodes.add(layoutNode);
                        }
                    }
                }
                if (!this.duringMeasureLayout) {
                    return true;
                }
            } else {
                throw new NoWhenBranchMatchedException();
            }
        }
        return false;
    }

    public final boolean requestRelayout(LayoutNode layoutNode) {
        Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
        int i = WhenMappings.$EnumSwitchMapping$0[layoutNode.getLayoutState$ui_release().ordinal()];
        if (i == 1 || i == 2 || i == 3 || i == 4) {
            LayoutTreeConsistencyChecker layoutTreeConsistencyChecker = this.consistencyChecker;
            if (layoutTreeConsistencyChecker == null) {
                return false;
            }
            layoutTreeConsistencyChecker.assertConsistent();
            return false;
        } else if (i == 5) {
            layoutNode.setLayoutState$ui_release(LayoutNode.LayoutState.NeedsRelayout);
            if (layoutNode.isPlaced()) {
                LayoutNode parent$ui_release = layoutNode.getParent$ui_release();
                LayoutNode.LayoutState layoutState$ui_release = parent$ui_release == null ? null : parent$ui_release.getLayoutState$ui_release();
                if (layoutState$ui_release != LayoutNode.LayoutState.NeedsRemeasure && layoutState$ui_release != LayoutNode.LayoutState.NeedsRelayout) {
                    this.relayoutNodes.add(layoutNode);
                }
            }
            return !this.duringMeasureLayout;
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }

    /* renamed from: doRemeasure-0kLqBqw */
    public final boolean m1717doRemeasure0kLqBqw(LayoutNode layoutNode, long j) {
        boolean m1697remeasure_Sx5XlM$ui_release$default;
        if (layoutNode == this.root) {
            m1697remeasure_Sx5XlM$ui_release$default = layoutNode.m1700remeasure_Sx5XlM$ui_release(Constraints.m2063boximpl(j));
        } else {
            m1697remeasure_Sx5XlM$ui_release$default = LayoutNode.m1697remeasure_Sx5XlM$ui_release$default(layoutNode, null, 1, null);
        }
        LayoutNode parent$ui_release = layoutNode.getParent$ui_release();
        if (m1697remeasure_Sx5XlM$ui_release$default) {
            if (parent$ui_release == null) {
                return true;
            }
            if (layoutNode.getMeasuredByParent$ui_release() == LayoutNode.UsageByParent.InMeasureBlock) {
                requestRemeasure(parent$ui_release);
            } else {
                if (!(layoutNode.getMeasuredByParent$ui_release() == LayoutNode.UsageByParent.InLayoutBlock)) {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                requestRelayout(parent$ui_release);
            }
        }
        return false;
    }

    public final boolean measureAndLayout() {
        if (!this.root.isAttached()) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (!this.root.isPlaced()) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (!(!this.duringMeasureLayout)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        Constraints constraints = this.rootConstraints;
        if (constraints == null) {
            return false;
        }
        long m2081unboximpl = constraints.m2081unboximpl();
        if (!this.relayoutNodes.isEmpty()) {
            this.duringMeasureLayout = true;
            try {
                DepthSortedSet depthSortedSet = this.relayoutNodes;
                boolean z = false;
                while (!depthSortedSet.isEmpty()) {
                    LayoutNode pop = depthSortedSet.pop();
                    if (pop.isPlaced() || getCanAffectParent(pop) || pop.getAlignmentLines$ui_release().getRequired$ui_release()) {
                        if (pop.getLayoutState$ui_release() == LayoutNode.LayoutState.NeedsRemeasure && m1717doRemeasure0kLqBqw(pop, m2081unboximpl)) {
                            z = true;
                        }
                        if (pop.getLayoutState$ui_release() == LayoutNode.LayoutState.NeedsRelayout && pop.isPlaced()) {
                            if (pop == this.root) {
                                pop.place$ui_release(0, 0);
                            } else {
                                pop.replace$ui_release();
                            }
                            this.onPositionedDispatcher.onNodePositioned(pop);
                            LayoutTreeConsistencyChecker layoutTreeConsistencyChecker = this.consistencyChecker;
                            if (layoutTreeConsistencyChecker != null) {
                                layoutTreeConsistencyChecker.assertConsistent();
                            }
                        }
                        this.measureIteration = getMeasureIteration() + 1;
                        if (!this.postponedMeasureRequests.isEmpty()) {
                            List list = this.postponedMeasureRequests;
                            int size = list.size() - 1;
                            if (size >= 0) {
                                int i = 0;
                                while (true) {
                                    int i2 = i + 1;
                                    LayoutNode layoutNode = (LayoutNode) list.get(i);
                                    if (layoutNode.isAttached()) {
                                        requestRemeasure(layoutNode);
                                    }
                                    if (i2 > size) {
                                        break;
                                    }
                                    i = i2;
                                }
                            }
                            this.postponedMeasureRequests.clear();
                        }
                    }
                }
                this.duringMeasureLayout = false;
                LayoutTreeConsistencyChecker layoutTreeConsistencyChecker2 = this.consistencyChecker;
                if (layoutTreeConsistencyChecker2 != null) {
                    layoutTreeConsistencyChecker2.assertConsistent();
                }
                return z;
            } catch (Throwable th) {
                this.duringMeasureLayout = false;
                throw th;
            }
        }
        return false;
    }

    public static /* synthetic */ void dispatchOnPositionedCallbacks$default(MeasureAndLayoutDelegate measureAndLayoutDelegate, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        measureAndLayoutDelegate.dispatchOnPositionedCallbacks(z);
    }

    public final void dispatchOnPositionedCallbacks(boolean z) {
        if (z) {
            this.onPositionedDispatcher.onRootNodePositioned(this.root);
        }
        this.onPositionedDispatcher.dispatch();
    }

    public final void onNodeDetached(LayoutNode node) {
        Intrinsics.checkNotNullParameter(node, "node");
        this.relayoutNodes.remove(node);
    }

    public final boolean getCanAffectParent(LayoutNode layoutNode) {
        return layoutNode.getLayoutState$ui_release() == LayoutNode.LayoutState.NeedsRemeasure && (layoutNode.getMeasuredByParent$ui_release() == LayoutNode.UsageByParent.InMeasureBlock || layoutNode.getAlignmentLines$ui_release().getRequired$ui_release());
    }
}
