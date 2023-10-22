package androidx.compose.ui.node;

import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntOffset;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: OuterMeasurablePlaceable.kt */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0017\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0011\u00101\u001a\u00020\"2\u0006\u00102\u001a\u000203H\u0096\u0002J\u0010\u00104\u001a\u00020\"2\u0006\u00105\u001a\u00020\"H\u0016J\u0010\u00106\u001a\u00020\"2\u0006\u00107\u001a\u00020\"H\u0016J\u001d\u00108\u001a\u00020\u00022\u0006\u00109\u001a\u00020\u000fH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b:\u0010;J\u0010\u0010<\u001a\u00020\"2\u0006\u00105\u001a\u00020\"H\u0016J\u0010\u0010=\u001a\u00020\"2\u0006\u00107\u001a\u00020\"H\u0016J\b\u0010>\u001a\u00020\u0015H\u0002J@\u0010?\u001a\u00020\u00152\u0006\u0010@\u001a\u00020\u00182\u0006\u0010A\u001a\u00020\u001b2\u0019\u0010B\u001a\u0015\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0013¢\u0006\u0002\b\u0016H\u0014ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bC\u0010DJ\u0006\u0010E\u001a\u00020\u0015J\u001b\u0010F\u001a\u00020\t2\u0006\u00109\u001a\u00020\u000fø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bG\u0010HJ\u0006\u0010I\u001a\u00020\u0015R\u001a\u0010\b\u001a\u00020\tX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000f8Fø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R!\u0010\u0012\u001a\u0015\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0013¢\u0006\u0002\b\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u0019\u0010\u0017\u001a\u00020\u0018X\u0082\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0019R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001c\u001a\u00020\u001d@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0014\u0010!\u001a\u00020\"8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b#\u0010$R\u000e\u0010%\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010&\u001a\u00020\"8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b'\u0010$R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\"\u0010-\u001a\u0004\u0018\u00010,2\b\u0010\u001c\u001a\u0004\u0018\u00010,@RX\u0096\u000e¢\u0006\b\n\u0000\u001a\u0004\b.\u0010/R\u000e\u00100\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006J"}, d2 = {"Landroidx/compose/ui/node/OuterMeasurablePlaceable;", "Landroidx/compose/ui/layout/Measurable;", "Landroidx/compose/ui/layout/Placeable;", "layoutNode", "Landroidx/compose/ui/node/LayoutNode;", "outerWrapper", "Landroidx/compose/ui/node/LayoutNodeWrapper;", "(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutNodeWrapper;)V", "duringAlignmentLinesQuery", "", "getDuringAlignmentLinesQuery$ui_release", "()Z", "setDuringAlignmentLinesQuery$ui_release", "(Z)V", "lastConstraints", "Landroidx/compose/ui/unit/Constraints;", "getLastConstraints-DWUhwKw", "()Landroidx/compose/ui/unit/Constraints;", "lastLayerBlock", "Lkotlin/Function1;", "Landroidx/compose/ui/graphics/GraphicsLayerScope;", "", "Lkotlin/ExtensionFunctionType;", "lastPosition", "Landroidx/compose/ui/unit/IntOffset;", "J", "lastZIndex", "", "<set-?>", "", "measureIteration", "getMeasureIteration", "()J", "measuredHeight", "", "getMeasuredHeight", "()I", "measuredOnce", "measuredWidth", "getMeasuredWidth", "getOuterWrapper", "()Landroidx/compose/ui/node/LayoutNodeWrapper;", "setOuterWrapper", "(Landroidx/compose/ui/node/LayoutNodeWrapper;)V", "", "parentData", "getParentData", "()Ljava/lang/Object;", "placedOnce", "get", "alignmentLine", "Landroidx/compose/ui/layout/AlignmentLine;", "maxIntrinsicHeight", "width", "maxIntrinsicWidth", "height", "measure", "constraints", "measure-BRTryo0", "(J)Landroidx/compose/ui/layout/Placeable;", "minIntrinsicHeight", "minIntrinsicWidth", "onIntrinsicsQueried", "placeAt", "position", "zIndex", "layerBlock", "placeAt-f8xVGno", "(JFLkotlin/jvm/functions/Function1;)V", "recalculateParentData", "remeasure", "remeasure-BRTryo0", "(J)Z", "replace", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class OuterMeasurablePlaceable extends Placeable implements Measurable {
    private boolean duringAlignmentLinesQuery;
    private Function1<? super GraphicsLayerScope, Unit> lastLayerBlock;
    private long lastPosition;
    private float lastZIndex;
    private final LayoutNode layoutNode;
    private long measureIteration;
    private boolean measuredOnce;
    private LayoutNodeWrapper outerWrapper;
    private Object parentData;
    private boolean placedOnce;

    /* compiled from: OuterMeasurablePlaceable.kt */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LayoutNode.LayoutState.valuesCustom().length];
            iArr[LayoutNode.LayoutState.Measuring.ordinal()] = 1;
            iArr[LayoutNode.LayoutState.LayingOut.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public final LayoutNodeWrapper getOuterWrapper() {
        return this.outerWrapper;
    }

    public final void setOuterWrapper(LayoutNodeWrapper layoutNodeWrapper) {
        Intrinsics.checkNotNullParameter(layoutNodeWrapper, "<set-?>");
        this.outerWrapper = layoutNodeWrapper;
    }

    public OuterMeasurablePlaceable(LayoutNode layoutNode, LayoutNodeWrapper outerWrapper) {
        Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
        Intrinsics.checkNotNullParameter(outerWrapper, "outerWrapper");
        this.layoutNode = layoutNode;
        this.outerWrapper = outerWrapper;
        this.lastPosition = IntOffset.Companion.m2193getZeronOccac();
        this.measureIteration = -1L;
    }

    /* renamed from: getLastConstraints-DWUhwKw  reason: not valid java name */
    public final Constraints m1722getLastConstraintsDWUhwKw() {
        if (this.measuredOnce) {
            return Constraints.m2063boximpl(m1643getMeasurementConstraintsmsEJaDk());
        }
        return null;
    }

    public final boolean getDuringAlignmentLinesQuery$ui_release() {
        return this.duringAlignmentLinesQuery;
    }

    public final void setDuringAlignmentLinesQuery$ui_release(boolean z) {
        this.duringAlignmentLinesQuery = z;
    }

    public final long getMeasureIteration() {
        return this.measureIteration;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public Object getParentData() {
        return this.parentData;
    }

    @Override // androidx.compose.ui.layout.Measurable
    /* renamed from: measure-BRTryo0 */
    public Placeable mo1607measureBRTryo0(long j) {
        LayoutNode.UsageByParent usageByParent;
        LayoutNode parent$ui_release = this.layoutNode.getParent$ui_release();
        LayoutNode.LayoutState layoutState$ui_release = parent$ui_release == null ? null : parent$ui_release.getLayoutState$ui_release();
        if (layoutState$ui_release == null) {
            layoutState$ui_release = LayoutNode.LayoutState.LayingOut;
        }
        LayoutNode layoutNode = this.layoutNode;
        int i = WhenMappings.$EnumSwitchMapping$0[layoutState$ui_release.ordinal()];
        if (i == 1) {
            usageByParent = LayoutNode.UsageByParent.InMeasureBlock;
        } else if (i == 2) {
            usageByParent = LayoutNode.UsageByParent.InLayoutBlock;
        } else {
            throw new IllegalStateException(Intrinsics.stringPlus("Measurable could be only measured from the parent's measure or layout block.Parents state is ", layoutState$ui_release));
        }
        layoutNode.setMeasuredByParent$ui_release(usageByParent);
        m1723remeasureBRTryo0(j);
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00ad  */
    /* renamed from: remeasure-BRTryo0  reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m1723remeasureBRTryo0(final long r9) {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.OuterMeasurablePlaceable.m1723remeasureBRTryo0(long):boolean");
    }

    @Override // androidx.compose.ui.layout.Placeable, androidx.compose.ui.layout.Measured
    public int getMeasuredWidth() {
        return this.outerWrapper.getMeasuredWidth();
    }

    @Override // androidx.compose.ui.layout.Placeable, androidx.compose.ui.layout.Measured
    public int getMeasuredHeight() {
        return this.outerWrapper.getMeasuredHeight();
    }

    @Override // androidx.compose.ui.layout.Measured
    public int get(AlignmentLine alignmentLine) {
        Intrinsics.checkNotNullParameter(alignmentLine, "alignmentLine");
        LayoutNode parent$ui_release = this.layoutNode.getParent$ui_release();
        if ((parent$ui_release == null ? null : parent$ui_release.getLayoutState$ui_release()) == LayoutNode.LayoutState.Measuring) {
            this.layoutNode.getAlignmentLines$ui_release().setUsedDuringParentMeasurement$ui_release(true);
        } else {
            LayoutNode parent$ui_release2 = this.layoutNode.getParent$ui_release();
            if ((parent$ui_release2 != null ? parent$ui_release2.getLayoutState$ui_release() : null) == LayoutNode.LayoutState.LayingOut) {
                this.layoutNode.getAlignmentLines$ui_release().setUsedDuringParentLayout$ui_release(true);
            }
        }
        this.duringAlignmentLinesQuery = true;
        int i = this.outerWrapper.get(alignmentLine);
        this.duringAlignmentLinesQuery = false;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.compose.ui.layout.Placeable
    /* renamed from: placeAt-f8xVGno */
    public void mo1608placeAtf8xVGno(long j, float f, Function1<? super GraphicsLayerScope, Unit> function1) {
        this.placedOnce = true;
        this.lastPosition = j;
        this.lastZIndex = f;
        this.lastLayerBlock = function1;
        this.layoutNode.getAlignmentLines$ui_release().setUsedByModifierLayout$ui_release(false);
        Placeable.PlacementScope.Companion companion = Placeable.PlacementScope.Companion;
        if (function1 == null) {
            companion.m1650place70tqf50(getOuterWrapper(), j, this.lastZIndex);
        } else {
            companion.m1655placeWithLayeraW9wM(getOuterWrapper(), j, this.lastZIndex, function1);
        }
    }

    public final void replace() {
        if (!this.placedOnce) {
            throw new IllegalStateException("Check failed.".toString());
        }
        mo1608placeAtf8xVGno(this.lastPosition, this.lastZIndex, this.lastLayerBlock);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int minIntrinsicWidth(int i) {
        onIntrinsicsQueried();
        return this.outerWrapper.minIntrinsicWidth(i);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int maxIntrinsicWidth(int i) {
        onIntrinsicsQueried();
        return this.outerWrapper.maxIntrinsicWidth(i);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int minIntrinsicHeight(int i) {
        onIntrinsicsQueried();
        return this.outerWrapper.minIntrinsicHeight(i);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int maxIntrinsicHeight(int i) {
        onIntrinsicsQueried();
        return this.outerWrapper.maxIntrinsicHeight(i);
    }

    private final void onIntrinsicsQueried() {
        this.layoutNode.requestRemeasure$ui_release();
    }

    public final void recalculateParentData() {
        this.parentData = this.outerWrapper.getParentData();
    }
}
