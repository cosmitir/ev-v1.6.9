package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ComposeUiNode.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\ba\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aR\u0018\u0010\u0002\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007R\u0018\u0010\b\u001a\u00020\tX¦\u000e¢\u0006\f\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0018\u0010\u000e\u001a\u00020\u000fX¦\u000e¢\u0006\f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0018\u0010\u0014\u001a\u00020\u0015X¦\u000e¢\u0006\f\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006\u001b"}, d2 = {"Landroidx/compose/ui/node/ComposeUiNode;", "", "density", "Landroidx/compose/ui/unit/Density;", "getDensity", "()Landroidx/compose/ui/unit/Density;", "setDensity", "(Landroidx/compose/ui/unit/Density;)V", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "getLayoutDirection", "()Landroidx/compose/ui/unit/LayoutDirection;", "setLayoutDirection", "(Landroidx/compose/ui/unit/LayoutDirection;)V", "measurePolicy", "Landroidx/compose/ui/layout/MeasurePolicy;", "getMeasurePolicy", "()Landroidx/compose/ui/layout/MeasurePolicy;", "setMeasurePolicy", "(Landroidx/compose/ui/layout/MeasurePolicy;)V", "modifier", "Landroidx/compose/ui/Modifier;", "getModifier", "()Landroidx/compose/ui/Modifier;", "setModifier", "(Landroidx/compose/ui/Modifier;)V", "Companion", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public interface ComposeUiNode {
    public static final Companion Companion = Companion.$$INSTANCE;

    Density getDensity();

    LayoutDirection getLayoutDirection();

    MeasurePolicy getMeasurePolicy();

    Modifier getModifier();

    void setDensity(Density density);

    void setLayoutDirection(LayoutDirection layoutDirection);

    void setMeasurePolicy(MeasurePolicy measurePolicy);

    void setModifier(Modifier modifier);

    /* compiled from: ComposeUiNode.kt */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R(\u0010\b\u001a\u0019\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t¢\u0006\u0002\b\f¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR(\u0010\u000f\u001a\u0019\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u000b0\t¢\u0006\u0002\b\f¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR(\u0010\u0012\u001a\u0019\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u000b0\t¢\u0006\u0002\b\f¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u000eR(\u0010\u0015\u001a\u0019\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u000b0\t¢\u0006\u0002\b\f¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u000e¨\u0006\u0018"}, d2 = {"Landroidx/compose/ui/node/ComposeUiNode$Companion;", "", "()V", "Constructor", "Lkotlin/Function0;", "Landroidx/compose/ui/node/ComposeUiNode;", "getConstructor", "()Lkotlin/jvm/functions/Function0;", "SetDensity", "Lkotlin/Function2;", "Landroidx/compose/ui/unit/Density;", "", "Lkotlin/ExtensionFunctionType;", "getSetDensity", "()Lkotlin/jvm/functions/Function2;", "SetLayoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "getSetLayoutDirection", "SetMeasurePolicy", "Landroidx/compose/ui/layout/MeasurePolicy;", "getSetMeasurePolicy", "SetModifier", "Landroidx/compose/ui/Modifier;", "getSetModifier", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final Function0<ComposeUiNode> Constructor = LayoutNode.Companion.getConstructor$ui_release();
        private static final Function2<ComposeUiNode, Modifier, Unit> SetModifier = new Function2<ComposeUiNode, Modifier, Unit>() { // from class: androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(ComposeUiNode composeUiNode, Modifier modifier) {
                invoke2(composeUiNode, modifier);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(ComposeUiNode composeUiNode, Modifier it) {
                Intrinsics.checkNotNullParameter(composeUiNode, "$this$null");
                Intrinsics.checkNotNullParameter(it, "it");
                composeUiNode.setModifier(it);
            }
        };
        private static final Function2<ComposeUiNode, Density, Unit> SetDensity = new Function2<ComposeUiNode, Density, Unit>() { // from class: androidx.compose.ui.node.ComposeUiNode$Companion$SetDensity$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(ComposeUiNode composeUiNode, Density density) {
                invoke2(composeUiNode, density);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(ComposeUiNode composeUiNode, Density it) {
                Intrinsics.checkNotNullParameter(composeUiNode, "$this$null");
                Intrinsics.checkNotNullParameter(it, "it");
                composeUiNode.setDensity(it);
            }
        };
        private static final Function2<ComposeUiNode, MeasurePolicy, Unit> SetMeasurePolicy = new Function2<ComposeUiNode, MeasurePolicy, Unit>() { // from class: androidx.compose.ui.node.ComposeUiNode$Companion$SetMeasurePolicy$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(ComposeUiNode composeUiNode, MeasurePolicy measurePolicy) {
                invoke2(composeUiNode, measurePolicy);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(ComposeUiNode composeUiNode, MeasurePolicy it) {
                Intrinsics.checkNotNullParameter(composeUiNode, "$this$null");
                Intrinsics.checkNotNullParameter(it, "it");
                composeUiNode.setMeasurePolicy(it);
            }
        };
        private static final Function2<ComposeUiNode, LayoutDirection, Unit> SetLayoutDirection = new Function2<ComposeUiNode, LayoutDirection, Unit>() { // from class: androidx.compose.ui.node.ComposeUiNode$Companion$SetLayoutDirection$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(ComposeUiNode composeUiNode, LayoutDirection layoutDirection) {
                invoke2(composeUiNode, layoutDirection);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(ComposeUiNode composeUiNode, LayoutDirection it) {
                Intrinsics.checkNotNullParameter(composeUiNode, "$this$null");
                Intrinsics.checkNotNullParameter(it, "it");
                composeUiNode.setLayoutDirection(it);
            }
        };

        private Companion() {
        }

        public final Function0<ComposeUiNode> getConstructor() {
            return Constructor;
        }

        public final Function2<ComposeUiNode, Modifier, Unit> getSetModifier() {
            return SetModifier;
        }

        public final Function2<ComposeUiNode, Density, Unit> getSetDensity() {
            return SetDensity;
        }

        public final Function2<ComposeUiNode, MeasurePolicy, Unit> getSetMeasurePolicy() {
            return SetMeasurePolicy;
        }

        public final Function2<ComposeUiNode, LayoutDirection, Unit> getSetLayoutDirection() {
            return SetLayoutDirection;
        }
    }
}
