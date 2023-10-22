package androidx.compose.ui.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.SubcomposeLayoutState;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.Wrapper_androidKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.DpRect;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SubcomposeLayout.kt */
@Metadata(d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018\u00002\u00020\u0001:\u0003PQRB\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J*\u0010*\u001a\u00020+2\u001d\u0010,\u001a\u0019\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020 0\u001d¢\u0006\u0002\b!H\u0002ø\u0001\u0000J\u0010\u0010-\u001a\u00020\t2\u0006\u0010.\u001a\u00020\u0004H\u0002J\u0010\u0010/\u001a\u00020\"2\u0006\u0010\u0010\u001a\u00020\u0004H\u0002J\r\u00100\u001a\u00020\"H\u0000¢\u0006\u0002\b1J\u0010\u00102\u001a\u00020\"2\u0006\u00103\u001a\u00020\tH\u0002J\u0017\u00104\u001a\u00020\"2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020\"05H\u0082\bJ\b\u00106\u001a\u00020\"H\u0002J\"\u00107\u001a\u00020\"2\u0006\u00108\u001a\u00020\u00042\u0006\u00109\u001a\u00020\u00042\b\b\u0002\u0010:\u001a\u00020\u0004H\u0002J(\u0010;\u001a\u00020<2\b\u0010=\u001a\u0004\u0018\u00010\u00012\u0011\u0010>\u001a\r\u0012\u0004\u0012\u00020\"05¢\u0006\u0002\b?¢\u0006\u0002\u0010@J\u0018\u0010A\u001a\u00020\"2\u0006\u00103\u001a\u00020\t2\u0006\u0010B\u001a\u00020\u0013H\u0002J2\u0010A\u001a\u00020\"2\u0006\u00103\u001a\u00020\t2\b\u0010=\u001a\u0004\u0018\u00010\u00012\u0011\u0010>\u001a\r\u0012\u0004\u0012\u00020\"05¢\u0006\u0002\b?H\u0002¢\u0006\u0002\u0010CJ2\u0010A\u001a\b\u0012\u0004\u0012\u00020E0D2\b\u0010=\u001a\u0004\u0018\u00010\u00012\u0011\u0010>\u001a\r\u0012\u0004\u0012\u00020\"05¢\u0006\u0002\b?H\u0000¢\u0006\u0004\bF\u0010GJ:\u0010H\u001a\u00020I2\b\u0010J\u001a\u0004\u0018\u00010I2\u0006\u0010K\u001a\u00020\t2\u0006\u0010L\u001a\u00020\u000b2\u0011\u0010M\u001a\r\u0012\u0004\u0012\u00020\"05¢\u0006\u0002\b?H\u0002¢\u0006\u0002\u0010NJ\u0012\u0010O\u001a\u00020\t2\b\u0010=\u001a\u0004\u0018\u00010\u0001H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082D¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00130\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0014\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00020\t0\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u00020\t8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R\u0012\u0010\u001a\u001a\u00060\u001bR\u00020\u0000X\u0082\u0004¢\u0006\u0002\n\u0000RE\u0010\u001c\u001a0\u0012\u0004\u0012\u00020\t\u0012\u001b\u0012\u0019\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020 0\u001d¢\u0006\u0002\b!\u0012\u0004\u0012\u00020\"0\u001d¢\u0006\u0002\b!X\u0080\u0004ø\u0001\u0000¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R%\u0010%\u001a\u0013\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\"0&¢\u0006\u0002\b!X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u001c\u0010)\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0012\u0004\u0012\u00020\t0\u0012X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006S"}, d2 = {"Landroidx/compose/ui/layout/SubcomposeLayoutState;", "", "()V", "maxSlotsToRetainForReuse", "", "(I)V", "NoIntrinsicsMessage", "", "_root", "Landroidx/compose/ui/node/LayoutNode;", "compositionContext", "Landroidx/compose/runtime/CompositionContext;", "getCompositionContext$ui_release", "()Landroidx/compose/runtime/CompositionContext;", "setCompositionContext$ui_release", "(Landroidx/compose/runtime/CompositionContext;)V", "currentIndex", "nodeToNodeState", "", "Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;", "precomposeMap", "precomposedCount", "reusableCount", "root", "getRoot", "()Landroidx/compose/ui/node/LayoutNode;", "scope", "Landroidx/compose/ui/layout/SubcomposeLayoutState$Scope;", "setMeasurePolicy", "Lkotlin/Function2;", "Landroidx/compose/ui/layout/SubcomposeMeasureScope;", "Landroidx/compose/ui/unit/Constraints;", "Landroidx/compose/ui/layout/MeasureResult;", "Lkotlin/ExtensionFunctionType;", "", "getSetMeasurePolicy$ui_release", "()Lkotlin/jvm/functions/Function2;", "setRoot", "Lkotlin/Function1;", "getSetRoot$ui_release", "()Lkotlin/jvm/functions/Function1;", "slotIdToNode", "createMeasurePolicy", "Landroidx/compose/ui/layout/MeasurePolicy;", "block", "createNodeAt", FirebaseAnalytics.Param.INDEX, "disposeAfterIndex", "disposeCurrentNodes", "disposeCurrentNodes$ui_release", "disposeNode", "node", "ignoreRemeasureRequests", "Lkotlin/Function0;", "makeSureStateIsConsistent", "move", TypedValues.TransitionType.S_FROM, TypedValues.TransitionType.S_TO, "count", "precompose", "Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;", "slotId", FirebaseAnalytics.Param.CONTENT, "Landroidx/compose/runtime/Composable;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;", "subcompose", "nodeState", "(Landroidx/compose/ui/node/LayoutNode;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "", "Landroidx/compose/ui/layout/Measurable;", "subcompose$ui_release", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;", "subcomposeInto", "Landroidx/compose/runtime/Composition;", "existing", "container", "parent", "composable", "(Landroidx/compose/runtime/Composition;Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)Landroidx/compose/runtime/Composition;", "takeNodeFromReusables", "NodeState", "PrecomposedSlotHandle", "Scope", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class SubcomposeLayoutState {
    public static final int $stable = 8;
    private final String NoIntrinsicsMessage;
    private LayoutNode _root;
    private CompositionContext compositionContext;
    private int currentIndex;
    private final int maxSlotsToRetainForReuse;
    private final Map<LayoutNode, NodeState> nodeToNodeState;
    private final Map<Object, LayoutNode> precomposeMap;
    private int precomposedCount;
    private int reusableCount;
    private final Scope scope;
    private final Function2<LayoutNode, Function2<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult>, Unit> setMeasurePolicy;
    private final Function1<LayoutNode, Unit> setRoot;
    private final Map<Object, LayoutNode> slotIdToNode;

    /* compiled from: SubcomposeLayout.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;", "", "dispose", "", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public interface PrecomposedSlotHandle {
        void dispose();
    }

    public SubcomposeLayoutState(int i) {
        this.maxSlotsToRetainForReuse = i;
        this.setRoot = new Function1<LayoutNode, Unit>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutState$setRoot$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(LayoutNode layoutNode) {
                invoke2(layoutNode);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(LayoutNode layoutNode) {
                Intrinsics.checkNotNullParameter(layoutNode, "$this$null");
                SubcomposeLayoutState.this._root = layoutNode;
            }
        };
        this.setMeasurePolicy = new Function2<LayoutNode, Function2<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult>, Unit>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutState$setMeasurePolicy$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(LayoutNode layoutNode, Function2<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult> function2) {
                invoke2(layoutNode, function2);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(LayoutNode layoutNode, Function2<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult> it) {
                MeasurePolicy createMeasurePolicy;
                Intrinsics.checkNotNullParameter(layoutNode, "$this$null");
                Intrinsics.checkNotNullParameter(it, "it");
                createMeasurePolicy = SubcomposeLayoutState.this.createMeasurePolicy(it);
                layoutNode.setMeasurePolicy(createMeasurePolicy);
            }
        };
        this.nodeToNodeState = new LinkedHashMap();
        this.slotIdToNode = new LinkedHashMap();
        this.scope = new Scope(this);
        this.precomposeMap = new LinkedHashMap();
        this.NoIntrinsicsMessage = "Asking for intrinsic measurements of SubcomposeLayout layouts is not supported. This includes components that are built on top of SubcomposeLayout, such as lazy lists, BoxWithConstraints, TabRow, etc. To mitigate this:\n- if intrinsic measurements are used to achieve 'match parent' sizing,, consider replacing the parent of the component with a custom layout which controls the order in which children are measured, making intrinsic measurement not needed\n- adding a size modifier to the component, in order to fast return the queried intrinsic measurement.";
    }

    public SubcomposeLayoutState() {
        this(0);
    }

    public final CompositionContext getCompositionContext$ui_release() {
        return this.compositionContext;
    }

    public final void setCompositionContext$ui_release(CompositionContext compositionContext) {
        this.compositionContext = compositionContext;
    }

    public final Function1<LayoutNode, Unit> getSetRoot$ui_release() {
        return this.setRoot;
    }

    public final Function2<LayoutNode, Function2<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult>, Unit> getSetMeasurePolicy$ui_release() {
        return this.setMeasurePolicy;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LayoutNode getRoot() {
        LayoutNode layoutNode = this._root;
        if (layoutNode != null) {
            return layoutNode;
        }
        throw new IllegalArgumentException("Required value was null.".toString());
    }

    public final List<Measurable> subcompose$ui_release(Object obj, Function2<? super Composer, ? super Integer, Unit> content) {
        Intrinsics.checkNotNullParameter(content, "content");
        makeSureStateIsConsistent();
        LayoutNode.LayoutState layoutState$ui_release = getRoot().getLayoutState$ui_release();
        if (!(layoutState$ui_release == LayoutNode.LayoutState.Measuring || layoutState$ui_release == LayoutNode.LayoutState.LayingOut)) {
            throw new IllegalStateException("subcompose can only be used inside the measure or layout blocks".toString());
        }
        Map<Object, LayoutNode> map = this.slotIdToNode;
        LayoutNode layoutNode = map.get(obj);
        if (layoutNode == null) {
            layoutNode = this.precomposeMap.remove(obj);
            if (layoutNode != null) {
                int i = this.precomposedCount;
                if (!(i > 0)) {
                    throw new IllegalStateException("Check failed.".toString());
                }
                this.precomposedCount = i - 1;
            } else if (this.reusableCount > 0) {
                layoutNode = takeNodeFromReusables(obj);
            } else {
                layoutNode = createNodeAt(this.currentIndex);
            }
            map.put(obj, layoutNode);
        }
        LayoutNode layoutNode2 = layoutNode;
        int indexOf = getRoot().getFoldedChildren$ui_release().indexOf(layoutNode2);
        int i2 = this.currentIndex;
        if (indexOf < i2) {
            throw new IllegalArgumentException("Key " + obj + " was already used. If you are using LazyColumn/Row please make sure you provide a unique key for each item.");
        }
        if (i2 != indexOf) {
            move$default(this, indexOf, i2, 0, 4, null);
        }
        this.currentIndex++;
        subcompose(layoutNode2, obj, content);
        return layoutNode2.getChildren$ui_release();
    }

    private final void subcompose(LayoutNode layoutNode, Object obj, Function2<? super Composer, ? super Integer, Unit> function2) {
        Map<LayoutNode, NodeState> map = this.nodeToNodeState;
        NodeState nodeState = map.get(layoutNode);
        if (nodeState == null) {
            nodeState = new NodeState(obj, ComposableSingletons$SubcomposeLayoutKt.INSTANCE.m1597getLambda1$ui_release(), null, 4, null);
            map.put(layoutNode, nodeState);
        }
        NodeState nodeState2 = nodeState;
        Composition composition = nodeState2.getComposition();
        boolean hasInvalidations = composition == null ? true : composition.getHasInvalidations();
        if (nodeState2.getContent() != function2 || hasInvalidations) {
            nodeState2.setContent(function2);
            subcompose(layoutNode, nodeState2);
        }
    }

    private final void subcompose(final LayoutNode layoutNode, final NodeState nodeState) {
        layoutNode.withNoSnapshotReadObservation$ui_release(new Function0<Unit>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutState$subcompose$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                Composition subcomposeInto;
                SubcomposeLayoutState subcomposeLayoutState = SubcomposeLayoutState.this;
                SubcomposeLayoutState.NodeState nodeState2 = nodeState;
                LayoutNode layoutNode2 = layoutNode;
                LayoutNode root = subcomposeLayoutState.getRoot();
                root.ignoreRemeasureRequests = true;
                final Function2<Composer, Integer, Unit> content = nodeState2.getContent();
                Composition composition = nodeState2.getComposition();
                CompositionContext compositionContext$ui_release = subcomposeLayoutState.getCompositionContext$ui_release();
                if (compositionContext$ui_release != null) {
                    subcomposeInto = subcomposeLayoutState.subcomposeInto(composition, layoutNode2, compositionContext$ui_release, ComposableLambdaKt.composableLambdaInstance(-985540201, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutState$subcompose$2$1$1
                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        /* JADX WARN: Multi-variable type inference failed */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
                            invoke(composer, num.intValue());
                            return Unit.INSTANCE;
                        }

                        public final void invoke(Composer composer, int i) {
                            ComposerKt.sourceInformation(composer, "C240@10454L9:SubcomposeLayout.kt#80mrfh");
                            if (((i & 11) ^ 2) == 0 && composer.getSkipping()) {
                                composer.skipToGroupEnd();
                            } else {
                                content.invoke(composer, 0);
                            }
                        }
                    }));
                    nodeState2.setComposition(subcomposeInto);
                    root.ignoreRemeasureRequests = false;
                    return;
                }
                throw new IllegalStateException("parent composition reference not set".toString());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Composition subcomposeInto(Composition composition, LayoutNode layoutNode, CompositionContext compositionContext, Function2<? super Composer, ? super Integer, Unit> function2) {
        if (composition == null || composition.isDisposed()) {
            composition = Wrapper_androidKt.createSubcomposition(layoutNode, compositionContext);
        }
        composition.setContent(function2);
        return composition;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void disposeAfterIndex(int i) {
        int size = getRoot().getFoldedChildren$ui_release().size() - this.precomposedCount;
        int max = Math.max(i, size - this.maxSlotsToRetainForReuse);
        int i2 = size - max;
        this.reusableCount = i2;
        int i3 = i2 + max;
        if (max < i3) {
            int i4 = max;
            while (true) {
                int i5 = i4 + 1;
                NodeState nodeState = this.nodeToNodeState.get(getRoot().getFoldedChildren$ui_release().get(i4));
                Intrinsics.checkNotNull(nodeState);
                this.slotIdToNode.remove(nodeState.getSlotId());
                if (i5 >= i3) {
                    break;
                }
                i4 = i5;
            }
        }
        int i6 = max - i;
        if (i6 > 0) {
            LayoutNode root = getRoot();
            root.ignoreRemeasureRequests = true;
            int i7 = i + i6;
            if (i < i7) {
                int i8 = i;
                while (true) {
                    int i9 = i8 + 1;
                    disposeNode(getRoot().getFoldedChildren$ui_release().get(i8));
                    if (i9 >= i7) {
                        break;
                    }
                    i8 = i9;
                }
            }
            getRoot().removeAt$ui_release(i, i6);
            root.ignoreRemeasureRequests = false;
        }
        makeSureStateIsConsistent();
    }

    private final void makeSureStateIsConsistent() {
        if (!(this.nodeToNodeState.size() == getRoot().getFoldedChildren$ui_release().size())) {
            throw new IllegalArgumentException(("Inconsistency between the count of nodes tracked by the state (" + this.nodeToNodeState.size() + ") and the children count on the SubcomposeLayout (" + getRoot().getFoldedChildren$ui_release().size() + "). Are you trying to use the state of the disposed SubcomposeLayout?").toString());
        }
    }

    private final LayoutNode takeNodeFromReusables(Object obj) {
        if (!(this.reusableCount > 0)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        int size = getRoot().getFoldedChildren$ui_release().size() - this.precomposedCount;
        int i = size - this.reusableCount;
        int i2 = i;
        while (true) {
            NodeState nodeState = (NodeState) MapsKt.getValue(this.nodeToNodeState, getRoot().getFoldedChildren$ui_release().get(i2));
            if (Intrinsics.areEqual(nodeState.getSlotId(), obj)) {
                break;
            } else if (i2 == size - 1) {
                nodeState.setSlotId(obj);
                break;
            } else {
                i2++;
            }
        }
        if (i2 != i) {
            move(i2, i, 1);
        }
        this.reusableCount--;
        return getRoot().getFoldedChildren$ui_release().get(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void disposeNode(LayoutNode layoutNode) {
        NodeState remove = this.nodeToNodeState.remove(layoutNode);
        Intrinsics.checkNotNull(remove);
        Composition composition = remove.getComposition();
        Intrinsics.checkNotNull(composition);
        composition.dispose();
        this.slotIdToNode.remove(remove.getSlotId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final MeasurePolicy createMeasurePolicy(final Function2<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult> function2) {
        final String str = this.NoIntrinsicsMessage;
        return new LayoutNode.NoIntrinsicsMeasurePolicy(str) { // from class: androidx.compose.ui.layout.SubcomposeLayoutState$createMeasurePolicy$1
            @Override // androidx.compose.ui.layout.MeasurePolicy
            /* renamed from: measure-3p2s80s */
            public MeasureResult mo1624measure3p2s80s(MeasureScope receiver, List<? extends Measurable> measurables, long j) {
                SubcomposeLayoutState.Scope scope;
                SubcomposeLayoutState.Scope scope2;
                SubcomposeLayoutState.Scope scope3;
                SubcomposeLayoutState.Scope scope4;
                final int i;
                Intrinsics.checkNotNullParameter(receiver, "$receiver");
                Intrinsics.checkNotNullParameter(measurables, "measurables");
                scope = SubcomposeLayoutState.this.scope;
                scope.setLayoutDirection(receiver.getLayoutDirection());
                scope2 = SubcomposeLayoutState.this.scope;
                scope2.setDensity(receiver.getDensity());
                scope3 = SubcomposeLayoutState.this.scope;
                scope3.setFontScale(receiver.getFontScale());
                SubcomposeLayoutState.this.currentIndex = 0;
                Function2<SubcomposeMeasureScope, Constraints, MeasureResult> function22 = function2;
                scope4 = SubcomposeLayoutState.this.scope;
                final MeasureResult invoke = function22.invoke(scope4, Constraints.m2063boximpl(j));
                i = SubcomposeLayoutState.this.currentIndex;
                final SubcomposeLayoutState subcomposeLayoutState = SubcomposeLayoutState.this;
                return new MeasureResult() { // from class: androidx.compose.ui.layout.SubcomposeLayoutState$createMeasurePolicy$1$measure$1
                    @Override // androidx.compose.ui.layout.MeasureResult
                    public int getWidth() {
                        return MeasureResult.this.getWidth();
                    }

                    @Override // androidx.compose.ui.layout.MeasureResult
                    public int getHeight() {
                        return MeasureResult.this.getHeight();
                    }

                    @Override // androidx.compose.ui.layout.MeasureResult
                    public Map<AlignmentLine, Integer> getAlignmentLines() {
                        return MeasureResult.this.getAlignmentLines();
                    }

                    @Override // androidx.compose.ui.layout.MeasureResult
                    public void placeChildren() {
                        int i2;
                        subcomposeLayoutState.currentIndex = i;
                        MeasureResult.this.placeChildren();
                        SubcomposeLayoutState subcomposeLayoutState2 = subcomposeLayoutState;
                        i2 = subcomposeLayoutState2.currentIndex;
                        subcomposeLayoutState2.disposeAfterIndex(i2);
                    }
                };
            }
        };
    }

    public final void disposeCurrentNodes$ui_release() {
        for (NodeState nodeState : this.nodeToNodeState.values()) {
            Composition composition = nodeState.getComposition();
            Intrinsics.checkNotNull(composition);
            composition.dispose();
        }
        this.nodeToNodeState.clear();
        this.slotIdToNode.clear();
    }

    public final PrecomposedSlotHandle precompose(final Object obj, Function2<? super Composer, ? super Integer, Unit> content) {
        Intrinsics.checkNotNullParameter(content, "content");
        makeSureStateIsConsistent();
        if (!this.slotIdToNode.containsKey(obj)) {
            Map<Object, LayoutNode> map = this.precomposeMap;
            LayoutNode layoutNode = map.get(obj);
            if (layoutNode == null) {
                if (this.reusableCount > 0) {
                    layoutNode = takeNodeFromReusables(obj);
                    move(getRoot().getFoldedChildren$ui_release().indexOf(layoutNode), getRoot().getFoldedChildren$ui_release().size(), 1);
                    this.precomposedCount++;
                } else {
                    layoutNode = createNodeAt(getRoot().getFoldedChildren$ui_release().size());
                    this.precomposedCount++;
                }
                map.put(obj, layoutNode);
            }
            subcompose(layoutNode, obj, content);
        }
        return new PrecomposedSlotHandle() { // from class: androidx.compose.ui.layout.SubcomposeLayoutState$precompose$1
            @Override // androidx.compose.ui.layout.SubcomposeLayoutState.PrecomposedSlotHandle
            public void dispose() {
                Map map2;
                int i;
                int i2;
                int i3;
                int i4;
                int i5;
                int i6;
                int i7;
                map2 = SubcomposeLayoutState.this.precomposeMap;
                LayoutNode layoutNode2 = (LayoutNode) map2.remove(obj);
                if (layoutNode2 != null) {
                    int indexOf = SubcomposeLayoutState.this.getRoot().getFoldedChildren$ui_release().indexOf(layoutNode2);
                    if (indexOf != -1) {
                        i = SubcomposeLayoutState.this.reusableCount;
                        i2 = SubcomposeLayoutState.this.maxSlotsToRetainForReuse;
                        if (i < i2) {
                            int size = SubcomposeLayoutState.this.getRoot().getFoldedChildren$ui_release().size();
                            i5 = SubcomposeLayoutState.this.precomposedCount;
                            int i8 = size - i5;
                            i6 = SubcomposeLayoutState.this.reusableCount;
                            SubcomposeLayoutState.this.move(indexOf, i8 - i6, 1);
                            SubcomposeLayoutState subcomposeLayoutState = SubcomposeLayoutState.this;
                            i7 = subcomposeLayoutState.reusableCount;
                            subcomposeLayoutState.reusableCount = i7 + 1;
                        } else {
                            SubcomposeLayoutState subcomposeLayoutState2 = SubcomposeLayoutState.this;
                            LayoutNode root = subcomposeLayoutState2.getRoot();
                            root.ignoreRemeasureRequests = true;
                            subcomposeLayoutState2.disposeNode(layoutNode2);
                            subcomposeLayoutState2.getRoot().removeAt$ui_release(indexOf, 1);
                            root.ignoreRemeasureRequests = false;
                        }
                        i3 = SubcomposeLayoutState.this.precomposedCount;
                        if (!(i3 > 0)) {
                            throw new IllegalStateException("Check failed.".toString());
                        }
                        SubcomposeLayoutState subcomposeLayoutState3 = SubcomposeLayoutState.this;
                        i4 = subcomposeLayoutState3.precomposedCount;
                        subcomposeLayoutState3.precomposedCount = i4 - 1;
                        return;
                    }
                    throw new IllegalStateException("Check failed.".toString());
                }
            }
        };
    }

    private final LayoutNode createNodeAt(int i) {
        LayoutNode layoutNode = new LayoutNode(true);
        LayoutNode root = getRoot();
        root.ignoreRemeasureRequests = true;
        getRoot().insertAt$ui_release(i, layoutNode);
        root.ignoreRemeasureRequests = false;
        return layoutNode;
    }

    static /* synthetic */ void move$default(SubcomposeLayoutState subcomposeLayoutState, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            i3 = 1;
        }
        subcomposeLayoutState.move(i, i2, i3);
    }

    private final void ignoreRemeasureRequests(Function0<Unit> function0) {
        LayoutNode root = getRoot();
        root.ignoreRemeasureRequests = true;
        function0.invoke();
        root.ignoreRemeasureRequests = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SubcomposeLayout.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0002\u0018\u00002\u00020\u0001B.\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\u0011\u0010\u0003\u001a\r\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0002\b\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR'\u0010\u0003\u001a\r\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0002\b\u0006X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0012\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0001X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Landroidx/compose/ui/layout/SubcomposeLayoutState$NodeState;", "", "slotId", FirebaseAnalytics.Param.CONTENT, "Lkotlin/Function0;", "", "Landroidx/compose/runtime/Composable;", "composition", "Landroidx/compose/runtime/Composition;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composition;)V", "getComposition", "()Landroidx/compose/runtime/Composition;", "setComposition", "(Landroidx/compose/runtime/Composition;)V", "getContent", "()Lkotlin/jvm/functions/Function2;", "setContent", "(Lkotlin/jvm/functions/Function2;)V", "Lkotlin/jvm/functions/Function2;", "getSlotId", "()Ljava/lang/Object;", "setSlotId", "(Ljava/lang/Object;)V", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class NodeState {
        private Composition composition;
        private Function2<? super Composer, ? super Integer, Unit> content;
        private Object slotId;

        public NodeState(Object obj, Function2<? super Composer, ? super Integer, Unit> content, Composition composition) {
            Intrinsics.checkNotNullParameter(content, "content");
            this.slotId = obj;
            this.content = content;
            this.composition = composition;
        }

        public /* synthetic */ NodeState(Object obj, Function2 function2, Composition composition, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(obj, function2, (i & 4) != 0 ? null : composition);
        }

        public final Object getSlotId() {
            return this.slotId;
        }

        public final void setSlotId(Object obj) {
            this.slotId = obj;
        }

        public final Function2<Composer, Integer, Unit> getContent() {
            return this.content;
        }

        public final void setContent(Function2<? super Composer, ? super Integer, Unit> function2) {
            Intrinsics.checkNotNullParameter(function2, "<set-?>");
            this.content = function2;
        }

        public final Composition getComposition() {
            return this.composition;
        }

        public final void setComposition(Composition composition) {
            this.composition = composition;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SubcomposeLayout.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J0\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0011\u0010\u0017\u001a\r\u0012\u0004\u0012\u00020\u00190\u0018¢\u0006\u0002\b\u001aH\u0016¢\u0006\u0002\u0010\u001bR\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\rX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u001c"}, d2 = {"Landroidx/compose/ui/layout/SubcomposeLayoutState$Scope;", "Landroidx/compose/ui/layout/SubcomposeMeasureScope;", "(Landroidx/compose/ui/layout/SubcomposeLayoutState;)V", "density", "", "getDensity", "()F", "setDensity", "(F)V", "fontScale", "getFontScale", "setFontScale", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "getLayoutDirection", "()Landroidx/compose/ui/unit/LayoutDirection;", "setLayoutDirection", "(Landroidx/compose/ui/unit/LayoutDirection;)V", "subcompose", "", "Landroidx/compose/ui/layout/Measurable;", "slotId", "", FirebaseAnalytics.Param.CONTENT, "Lkotlin/Function0;", "", "Landroidx/compose/runtime/Composable;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public final class Scope implements SubcomposeMeasureScope {
        private float density;
        private float fontScale;
        private LayoutDirection layoutDirection;
        final /* synthetic */ SubcomposeLayoutState this$0;

        public Scope(SubcomposeLayoutState this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this.this$0 = this$0;
            this.layoutDirection = LayoutDirection.Rtl;
        }

        @Override // androidx.compose.ui.layout.MeasureScope
        public MeasureResult layout(int i, int i2, Map<AlignmentLine, Integer> map, Function1<? super Placeable.PlacementScope, Unit> function1) {
            return SubcomposeMeasureScope.DefaultImpls.layout(this, i, i2, map, function1);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: roundToPx--R2X_6o */
        public int mo42roundToPxR2X_6o(long j) {
            return SubcomposeMeasureScope.DefaultImpls.m1682roundToPxR2X_6o(this, j);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: roundToPx-0680j_4 */
        public int mo43roundToPx0680j_4(float f) {
            return SubcomposeMeasureScope.DefaultImpls.m1683roundToPx0680j_4(this, f);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDp-GaN1DYA */
        public float mo44toDpGaN1DYA(long j) {
            return SubcomposeMeasureScope.DefaultImpls.m1684toDpGaN1DYA(this, j);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDp-u2uoSUM */
        public float mo45toDpu2uoSUM(float f) {
            return SubcomposeMeasureScope.DefaultImpls.m1685toDpu2uoSUM(this, f);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toDp-u2uoSUM */
        public float mo46toDpu2uoSUM(int i) {
            return SubcomposeMeasureScope.DefaultImpls.m1686toDpu2uoSUM((SubcomposeMeasureScope) this, i);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toPx--R2X_6o */
        public float mo47toPxR2X_6o(long j) {
            return SubcomposeMeasureScope.DefaultImpls.m1687toPxR2X_6o(this, j);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toPx-0680j_4 */
        public float mo48toPx0680j_4(float f) {
            return SubcomposeMeasureScope.DefaultImpls.m1688toPx0680j_4(this, f);
        }

        @Override // androidx.compose.ui.unit.Density
        public Rect toRect(DpRect dpRect) {
            return SubcomposeMeasureScope.DefaultImpls.toRect(this, dpRect);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toSp-0xMU5do */
        public long mo49toSp0xMU5do(float f) {
            return SubcomposeMeasureScope.DefaultImpls.m1689toSp0xMU5do(this, f);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toSp-kPz2Gy4 */
        public long mo50toSpkPz2Gy4(float f) {
            return SubcomposeMeasureScope.DefaultImpls.m1690toSpkPz2Gy4(this, f);
        }

        @Override // androidx.compose.ui.unit.Density
        /* renamed from: toSp-kPz2Gy4 */
        public long mo51toSpkPz2Gy4(int i) {
            return SubcomposeMeasureScope.DefaultImpls.m1691toSpkPz2Gy4((SubcomposeMeasureScope) this, i);
        }

        @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
        public LayoutDirection getLayoutDirection() {
            return this.layoutDirection;
        }

        public void setLayoutDirection(LayoutDirection layoutDirection) {
            Intrinsics.checkNotNullParameter(layoutDirection, "<set-?>");
            this.layoutDirection = layoutDirection;
        }

        @Override // androidx.compose.ui.unit.Density
        public float getDensity() {
            return this.density;
        }

        public void setDensity(float f) {
            this.density = f;
        }

        @Override // androidx.compose.ui.unit.Density
        public float getFontScale() {
            return this.fontScale;
        }

        public void setFontScale(float f) {
            this.fontScale = f;
        }

        @Override // androidx.compose.ui.layout.SubcomposeMeasureScope
        public List<Measurable> subcompose(Object obj, Function2<? super Composer, ? super Integer, Unit> content) {
            Intrinsics.checkNotNullParameter(content, "content");
            return this.this$0.subcompose$ui_release(obj, content);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void move(int i, int i2, int i3) {
        LayoutNode root = getRoot();
        root.ignoreRemeasureRequests = true;
        getRoot().move$ui_release(i, i2, i3);
        root.ignoreRemeasureRequests = false;
    }
}
