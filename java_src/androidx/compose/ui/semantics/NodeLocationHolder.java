package androidx.compose.ui.semantics;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeWrapper;
import androidx.compose.ui.unit.LayoutDirection;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SemanticsSort.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\b\u0000\u0018\u0000 \u00102\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0002\u0010\u0011B\u0017\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\u0011\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0000H\u0096\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000b¨\u0006\u0012"}, d2 = {"Landroidx/compose/ui/semantics/NodeLocationHolder;", "", "subtreeRoot", "Landroidx/compose/ui/node/LayoutNode;", "node", "(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutNode;)V", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", FirebaseAnalytics.Param.LOCATION, "Landroidx/compose/ui/geometry/Rect;", "getNode$ui_release", "()Landroidx/compose/ui/node/LayoutNode;", "getSubtreeRoot$ui_release", "compareTo", "", "other", "Companion", "ComparisonStrategy", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class NodeLocationHolder implements Comparable<NodeLocationHolder> {
    public static final Companion Companion = new Companion(null);
    private static ComparisonStrategy comparisonStrategy = ComparisonStrategy.Stripe;
    private final LayoutDirection layoutDirection;
    private final Rect location;
    private final LayoutNode node;
    private final LayoutNode subtreeRoot;

    public NodeLocationHolder(LayoutNode subtreeRoot, LayoutNode node) {
        Intrinsics.checkNotNullParameter(subtreeRoot, "subtreeRoot");
        Intrinsics.checkNotNullParameter(node, "node");
        this.subtreeRoot = subtreeRoot;
        this.node = node;
        this.layoutDirection = subtreeRoot.getLayoutDirection();
        LayoutNodeWrapper innerLayoutNodeWrapper$ui_release = subtreeRoot.getInnerLayoutNodeWrapper$ui_release();
        LayoutNodeWrapper findWrapperToGetBounds = SemanticsSortKt.findWrapperToGetBounds(node);
        Rect rect = null;
        if (innerLayoutNodeWrapper$ui_release.isAttached() && findWrapperToGetBounds.isAttached()) {
            rect = LayoutCoordinates.DefaultImpls.localBoundingBoxOf$default(innerLayoutNodeWrapper$ui_release, findWrapperToGetBounds, false, 2, null);
        }
        this.location = rect;
    }

    public final LayoutNode getSubtreeRoot$ui_release() {
        return this.subtreeRoot;
    }

    public final LayoutNode getNode$ui_release() {
        return this.node;
    }

    /* compiled from: SemanticsSort.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/semantics/NodeLocationHolder$Companion;", "", "()V", "comparisonStrategy", "Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;", "getComparisonStrategy$ui_release", "()Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;", "setComparisonStrategy$ui_release", "(Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;)V", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ComparisonStrategy getComparisonStrategy$ui_release() {
            return NodeLocationHolder.comparisonStrategy;
        }

        public final void setComparisonStrategy$ui_release(ComparisonStrategy comparisonStrategy) {
            Intrinsics.checkNotNullParameter(comparisonStrategy, "<set-?>");
            NodeLocationHolder.comparisonStrategy = comparisonStrategy;
        }
    }

    /* compiled from: SemanticsSort.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0080\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/semantics/NodeLocationHolder$ComparisonStrategy;", "", "(Ljava/lang/String;I)V", "Stripe", "Location", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public enum ComparisonStrategy {
        Stripe,
        Location;

        /* renamed from: values  reason: to resolve conflict with enum method */
        public static ComparisonStrategy[] valuesCustom() {
            ComparisonStrategy[] valuesCustom = values();
            return (ComparisonStrategy[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(NodeLocationHolder other) {
        Intrinsics.checkNotNullParameter(other, "other");
        if (this.location == null) {
            return 1;
        }
        if (other.location == null) {
            return -1;
        }
        if (comparisonStrategy == ComparisonStrategy.Stripe) {
            if (this.location.getBottom() - other.location.getTop() <= 0.0f) {
                return -1;
            }
            if (this.location.getTop() - other.location.getBottom() >= 0.0f) {
                return 1;
            }
        }
        if (this.layoutDirection == LayoutDirection.Ltr) {
            int i = ((this.location.getLeft() - other.location.getLeft()) > 0.0f ? 1 : ((this.location.getLeft() - other.location.getLeft()) == 0.0f ? 0 : -1));
            if (!(i == 0)) {
                return i < 0 ? -1 : 1;
            }
        } else {
            int i2 = ((this.location.getRight() - other.location.getRight()) > 0.0f ? 1 : ((this.location.getRight() - other.location.getRight()) == 0.0f ? 0 : -1));
            if (!(i2 == 0)) {
                return i2 < 0 ? 1 : -1;
            }
        }
        int i3 = ((this.location.getTop() - other.location.getTop()) > 0.0f ? 1 : ((this.location.getTop() - other.location.getTop()) == 0.0f ? 0 : -1));
        if (!(i3 == 0)) {
            return i3 < 0 ? -1 : 1;
        }
        int i4 = ((this.location.getHeight() - other.location.getHeight()) > 0.0f ? 1 : ((this.location.getHeight() - other.location.getHeight()) == 0.0f ? 0 : -1));
        if (!(i4 == 0)) {
            return i4 < 0 ? 1 : -1;
        }
        int i5 = ((this.location.getWidth() - other.location.getWidth()) > 0.0f ? 1 : ((this.location.getWidth() - other.location.getWidth()) == 0.0f ? 0 : -1));
        if (!(i5 == 0)) {
            return i5 < 0 ? 1 : -1;
        }
        final Rect boundsInRoot = LayoutCoordinatesKt.boundsInRoot(SemanticsSortKt.findWrapperToGetBounds(this.node));
        final Rect boundsInRoot2 = LayoutCoordinatesKt.boundsInRoot(SemanticsSortKt.findWrapperToGetBounds(other.node));
        LayoutNode findNodeByPredicateTraversal = SemanticsSortKt.findNodeByPredicateTraversal(this.node, new Function1<LayoutNode, Boolean>() { // from class: androidx.compose.ui.semantics.NodeLocationHolder$compareTo$child1$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(LayoutNode layoutNode) {
                return Boolean.valueOf(invoke2(layoutNode));
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final boolean invoke2(LayoutNode it) {
                Intrinsics.checkNotNullParameter(it, "it");
                LayoutNodeWrapper findWrapperToGetBounds = SemanticsSortKt.findWrapperToGetBounds(it);
                return findWrapperToGetBounds.isAttached() && !Intrinsics.areEqual(Rect.this, LayoutCoordinatesKt.boundsInRoot(findWrapperToGetBounds));
            }
        });
        LayoutNode findNodeByPredicateTraversal2 = SemanticsSortKt.findNodeByPredicateTraversal(other.node, new Function1<LayoutNode, Boolean>() { // from class: androidx.compose.ui.semantics.NodeLocationHolder$compareTo$child2$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(LayoutNode layoutNode) {
                return Boolean.valueOf(invoke2(layoutNode));
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final boolean invoke2(LayoutNode it) {
                Intrinsics.checkNotNullParameter(it, "it");
                LayoutNodeWrapper findWrapperToGetBounds = SemanticsSortKt.findWrapperToGetBounds(it);
                return findWrapperToGetBounds.isAttached() && !Intrinsics.areEqual(Rect.this, LayoutCoordinatesKt.boundsInRoot(findWrapperToGetBounds));
            }
        });
        if (findNodeByPredicateTraversal == null || findNodeByPredicateTraversal2 == null) {
            return findNodeByPredicateTraversal != null ? 1 : -1;
        }
        return new NodeLocationHolder(this.subtreeRoot, findNodeByPredicateTraversal).compareTo(new NodeLocationHolder(other.subtreeRoot, findNodeByPredicateTraversal2));
    }
}
