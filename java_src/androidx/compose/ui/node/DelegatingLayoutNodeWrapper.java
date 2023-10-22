package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.Modifier.Element;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.input.nestedscroll.NestedScrollDelegatingWrapper;
import androidx.compose.ui.input.pointer.PointerInputFilter;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.platform.JvmActuals_jvmKt;
import androidx.compose.ui.semantics.SemanticsWrapper;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DelegatingLayoutNodeWrapper.kt */
@Metadata(d1 = {"\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0000\n\u0002\b\u000b\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0010\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0003B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00028\u0000¢\u0006\u0002\u0010\u0006J\u0010\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0016J\n\u0010%\u001a\u0004\u0018\u00010&H\u0016J\n\u0010'\u001a\u0004\u0018\u00010(H\u0016J\n\u0010)\u001a\u0004\u0018\u00010&H\u0016J\n\u0010*\u001a\u0004\u0018\u00010(H\u0016J\n\u0010+\u001a\u0004\u0018\u00010,H\u0016J\n\u0010-\u001a\u0004\u0018\u00010&H\u0016J\n\u0010.\u001a\u0004\u0018\u00010(H\u0016J\n\u0010/\u001a\u0004\u0018\u00010,H\u0016J+\u00100\u001a\u0002012\u0006\u00102\u001a\u0002032\f\u00104\u001a\b\u0012\u0004\u0012\u00020605H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b7\u00108J+\u00109\u001a\u0002012\u0006\u00102\u001a\u0002032\f\u0010:\u001a\b\u0012\u0004\u0012\u00020;05H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b<\u00108J\u0010\u0010=\u001a\u00020\"2\u0006\u0010>\u001a\u00020\"H\u0016J\u0010\u0010?\u001a\u00020\"2\u0006\u0010@\u001a\u00020\"H\u0016J\u001d\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020DH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bE\u0010FJ\u0010\u0010G\u001a\u00020\"2\u0006\u0010>\u001a\u00020\"H\u0016J\u0010\u0010H\u001a\u00020\"2\u0006\u0010@\u001a\u00020\"H\u0016J\u0010\u0010I\u001a\u0002012\u0006\u0010J\u001a\u00020KH\u0014J@\u0010L\u001a\u0002012\u0006\u0010M\u001a\u00020N2\u0006\u0010O\u001a\u00020P2\u0019\u0010Q\u001a\u0015\u0012\u0004\u0012\u00020S\u0012\u0004\u0012\u000201\u0018\u00010R¢\u0006\u0002\bTH\u0014ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bU\u0010VJ\u000e\u0010W\u001a\u0002012\u0006\u0010\u0005\u001a\u00020\u0002R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\t\"\u0004\b\n\u0010\u000bR\u0014\u0010\f\u001a\u00020\r8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0005\u001a\u00028\u0000X\u0096\u000e¢\u0006\u0010\n\u0002\u0010\u0014\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0015\u001a\u0004\u0018\u00010\u00168VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\t\"\u0004\b\u001b\u0010\u000bR$\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u0003@VX\u0090\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 \u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006X"}, d2 = {"Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;", "T", "Landroidx/compose/ui/Modifier$Element;", "Landroidx/compose/ui/node/LayoutNodeWrapper;", "wrapped", "modifier", "(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/Modifier$Element;)V", "isChained", "", "()Z", "setChained", "(Z)V", "measureScope", "Landroidx/compose/ui/layout/MeasureScope;", "getMeasureScope", "()Landroidx/compose/ui/layout/MeasureScope;", "getModifier", "()Landroidx/compose/ui/Modifier$Element;", "setModifier", "(Landroidx/compose/ui/Modifier$Element;)V", "Landroidx/compose/ui/Modifier$Element;", "parentData", "", "getParentData", "()Ljava/lang/Object;", "toBeReusedForSameModifier", "getToBeReusedForSameModifier", "setToBeReusedForSameModifier", "<set-?>", "getWrapped$ui_release", "()Landroidx/compose/ui/node/LayoutNodeWrapper;", "setWrapped", "(Landroidx/compose/ui/node/LayoutNodeWrapper;)V", "calculateAlignmentLine", "", "alignmentLine", "Landroidx/compose/ui/layout/AlignmentLine;", "findLastFocusWrapper", "Landroidx/compose/ui/node/ModifiedFocusNode;", "findLastKeyInputWrapper", "Landroidx/compose/ui/node/ModifiedKeyInputNode;", "findNextFocusWrapper", "findNextKeyInputWrapper", "findNextNestedScrollWrapper", "Landroidx/compose/ui/input/nestedscroll/NestedScrollDelegatingWrapper;", "findPreviousFocusWrapper", "findPreviousKeyInputWrapper", "findPreviousNestedScrollWrapper", "hitTest", "", "pointerPosition", "Landroidx/compose/ui/geometry/Offset;", "hitPointerInputFilters", "", "Landroidx/compose/ui/input/pointer/PointerInputFilter;", "hitTest-3MmeM6k", "(JLjava/util/List;)V", "hitTestSemantics", "hitSemanticsWrappers", "Landroidx/compose/ui/semantics/SemanticsWrapper;", "hitTestSemantics-3MmeM6k", "maxIntrinsicHeight", "width", "maxIntrinsicWidth", "height", "measure", "Landroidx/compose/ui/layout/Placeable;", "constraints", "Landroidx/compose/ui/unit/Constraints;", "measure-BRTryo0", "(J)Landroidx/compose/ui/layout/Placeable;", "minIntrinsicHeight", "minIntrinsicWidth", "performDraw", "canvas", "Landroidx/compose/ui/graphics/Canvas;", "placeAt", "position", "Landroidx/compose/ui/unit/IntOffset;", "zIndex", "", "layerBlock", "Lkotlin/Function1;", "Landroidx/compose/ui/graphics/GraphicsLayerScope;", "Lkotlin/ExtensionFunctionType;", "placeAt-f8xVGno", "(JFLkotlin/jvm/functions/Function1;)V", "setModifierTo", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public class DelegatingLayoutNodeWrapper<T extends Modifier.Element> extends LayoutNodeWrapper {
    private boolean isChained;
    private T modifier;
    private boolean toBeReusedForSameModifier;
    private LayoutNodeWrapper wrapped;

    @Override // androidx.compose.ui.node.LayoutNodeWrapper
    public LayoutNodeWrapper getWrapped$ui_release() {
        return this.wrapped;
    }

    public void setWrapped(LayoutNodeWrapper layoutNodeWrapper) {
        Intrinsics.checkNotNullParameter(layoutNodeWrapper, "<set-?>");
        this.wrapped = layoutNodeWrapper;
    }

    public T getModifier() {
        return this.modifier;
    }

    public void setModifier(T t) {
        Intrinsics.checkNotNullParameter(t, "<set-?>");
        this.modifier = t;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DelegatingLayoutNodeWrapper(LayoutNodeWrapper wrapped, T modifier) {
        super(wrapped.getLayoutNode$ui_release());
        Intrinsics.checkNotNullParameter(wrapped, "wrapped");
        Intrinsics.checkNotNullParameter(modifier, "modifier");
        this.wrapped = wrapped;
        this.modifier = modifier;
        getWrapped$ui_release().setWrappedBy$ui_release(this);
    }

    @Override // androidx.compose.ui.node.LayoutNodeWrapper
    public MeasureScope getMeasureScope() {
        return getWrapped$ui_release().getMeasureScope();
    }

    public final boolean isChained() {
        return this.isChained;
    }

    public final void setChained(boolean z) {
        this.isChained = z;
    }

    public final boolean getToBeReusedForSameModifier() {
        return this.toBeReusedForSameModifier;
    }

    public final void setToBeReusedForSameModifier(boolean z) {
        this.toBeReusedForSameModifier = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void setModifierTo(Modifier.Element modifier) {
        Intrinsics.checkNotNullParameter(modifier, "modifier");
        if (modifier != getModifier()) {
            if (!Intrinsics.areEqual(JvmActuals_jvmKt.nativeClass(modifier), JvmActuals_jvmKt.nativeClass(getModifier()))) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            setModifier(modifier);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.compose.ui.node.LayoutNodeWrapper
    public void performDraw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        getWrapped$ui_release().draw(canvas);
    }

    @Override // androidx.compose.ui.node.LayoutNodeWrapper
    /* renamed from: hitTest-3MmeM6k  reason: not valid java name */
    public void mo1693hitTest3MmeM6k(long j, List<PointerInputFilter> hitPointerInputFilters) {
        Intrinsics.checkNotNullParameter(hitPointerInputFilters, "hitPointerInputFilters");
        if (m1715withinLayerBoundsk4lQ0M(j)) {
            getWrapped$ui_release().mo1693hitTest3MmeM6k(getWrapped$ui_release().m1710fromParentPositionMKHz9U(j), hitPointerInputFilters);
        }
    }

    @Override // androidx.compose.ui.node.LayoutNodeWrapper
    /* renamed from: hitTestSemantics-3MmeM6k  reason: not valid java name */
    public void mo1694hitTestSemantics3MmeM6k(long j, List<SemanticsWrapper> hitSemanticsWrappers) {
        Intrinsics.checkNotNullParameter(hitSemanticsWrappers, "hitSemanticsWrappers");
        if (m1715withinLayerBoundsk4lQ0M(j)) {
            getWrapped$ui_release().mo1694hitTestSemantics3MmeM6k(getWrapped$ui_release().m1710fromParentPositionMKHz9U(j), hitSemanticsWrappers);
        }
    }

    @Override // androidx.compose.ui.node.LayoutNodeWrapper
    public int calculateAlignmentLine(AlignmentLine alignmentLine) {
        Intrinsics.checkNotNullParameter(alignmentLine, "alignmentLine");
        return getWrapped$ui_release().get(alignmentLine);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.compose.ui.node.LayoutNodeWrapper, androidx.compose.ui.layout.Placeable
    /* renamed from: placeAt-f8xVGno */
    public void mo1608placeAtf8xVGno(long j, float f, Function1<? super GraphicsLayerScope, Unit> function1) {
        super.mo1608placeAtf8xVGno(j, f, function1);
        LayoutNodeWrapper wrappedBy$ui_release = getWrappedBy$ui_release();
        if (Intrinsics.areEqual((Object) (wrappedBy$ui_release == null ? null : Boolean.valueOf(wrappedBy$ui_release.isShallowPlacing())), (Object) true)) {
            return;
        }
        Placeable.PlacementScope.Companion companion = Placeable.PlacementScope.Companion;
        int m2225getWidthimpl = IntSize.m2225getWidthimpl(m1642getMeasuredSizeYbymL2g());
        LayoutDirection layoutDirection = getMeasureScope().getLayoutDirection();
        int parentWidth = Placeable.PlacementScope.Companion.getParentWidth();
        LayoutDirection parentLayoutDirection = Placeable.PlacementScope.Companion.getParentLayoutDirection();
        Placeable.PlacementScope.Companion companion2 = Placeable.PlacementScope.Companion;
        Placeable.PlacementScope.parentWidth = m2225getWidthimpl;
        Placeable.PlacementScope.Companion companion3 = Placeable.PlacementScope.Companion;
        Placeable.PlacementScope.parentLayoutDirection = layoutDirection;
        getMeasureResult().placeChildren();
        Placeable.PlacementScope.Companion companion4 = Placeable.PlacementScope.Companion;
        Placeable.PlacementScope.parentWidth = parentWidth;
        Placeable.PlacementScope.Companion companion5 = Placeable.PlacementScope.Companion;
        Placeable.PlacementScope.parentLayoutDirection = parentLayoutDirection;
    }

    @Override // androidx.compose.ui.layout.Measurable
    /* renamed from: measure-BRTryo0 */
    public Placeable mo1607measureBRTryo0(long j) {
        m1645setMeasurementConstraintsBRTryo0(j);
        final Placeable placeable = getWrapped$ui_release().mo1607measureBRTryo0(j);
        setMeasureResult$ui_release(new MeasureResult(this) { // from class: androidx.compose.ui.node.DelegatingLayoutNodeWrapper$measure$1$1
            private final Map<AlignmentLine, Integer> alignmentLines = MapsKt.emptyMap();
            private final int height;
            final /* synthetic */ DelegatingLayoutNodeWrapper<T> this$0;
            private final int width;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.this$0 = this;
                this.width = this.getWrapped$ui_release().getMeasureResult().getWidth();
                this.height = this.getWrapped$ui_release().getMeasureResult().getHeight();
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public int getWidth() {
                return this.width;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public int getHeight() {
                return this.height;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public Map<AlignmentLine, Integer> getAlignmentLines() {
                return this.alignmentLines;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public void placeChildren() {
                long j2;
                Placeable.PlacementScope.Companion companion = Placeable.PlacementScope.Companion;
                Placeable placeable2 = placeable;
                j2 = this.this$0.m1641getApparentToRealOffsetnOccac();
                Placeable.PlacementScope.m1646place70tqf50$default(companion, placeable2, IntOffsetKt.IntOffset(-IntOffset.m2183getXimpl(j2), -IntOffset.m2184getYimpl(j2)), 0.0f, 2, null);
            }
        });
        return this;
    }

    @Override // androidx.compose.ui.node.LayoutNodeWrapper
    public ModifiedFocusNode findPreviousFocusWrapper() {
        LayoutNodeWrapper wrappedBy$ui_release = getWrappedBy$ui_release();
        if (wrappedBy$ui_release == null) {
            return null;
        }
        return wrappedBy$ui_release.findPreviousFocusWrapper();
    }

    @Override // androidx.compose.ui.node.LayoutNodeWrapper
    public ModifiedFocusNode findNextFocusWrapper() {
        return getWrapped$ui_release().findNextFocusWrapper();
    }

    @Override // androidx.compose.ui.node.LayoutNodeWrapper
    public ModifiedFocusNode findLastFocusWrapper() {
        ModifiedFocusNode modifiedFocusNode = null;
        for (ModifiedFocusNode findNextFocusWrapper = findNextFocusWrapper(); findNextFocusWrapper != null; findNextFocusWrapper = findNextFocusWrapper.getWrapped$ui_release().findNextFocusWrapper()) {
            modifiedFocusNode = findNextFocusWrapper;
        }
        return modifiedFocusNode;
    }

    @Override // androidx.compose.ui.node.LayoutNodeWrapper
    public NestedScrollDelegatingWrapper findPreviousNestedScrollWrapper() {
        LayoutNodeWrapper wrappedBy$ui_release = getWrappedBy$ui_release();
        if (wrappedBy$ui_release == null) {
            return null;
        }
        return wrappedBy$ui_release.findPreviousNestedScrollWrapper();
    }

    @Override // androidx.compose.ui.node.LayoutNodeWrapper
    public NestedScrollDelegatingWrapper findNextNestedScrollWrapper() {
        return getWrapped$ui_release().findNextNestedScrollWrapper();
    }

    @Override // androidx.compose.ui.node.LayoutNodeWrapper
    public ModifiedKeyInputNode findPreviousKeyInputWrapper() {
        LayoutNodeWrapper wrappedBy$ui_release = getWrappedBy$ui_release();
        if (wrappedBy$ui_release == null) {
            return null;
        }
        return wrappedBy$ui_release.findPreviousKeyInputWrapper();
    }

    @Override // androidx.compose.ui.node.LayoutNodeWrapper
    public ModifiedKeyInputNode findNextKeyInputWrapper() {
        return getWrapped$ui_release().findNextKeyInputWrapper();
    }

    @Override // androidx.compose.ui.node.LayoutNodeWrapper
    public ModifiedKeyInputNode findLastKeyInputWrapper() {
        ModifiedKeyInputNode findPreviousKeyInputWrapper = getLayoutNode$ui_release().getInnerLayoutNodeWrapper$ui_release().findPreviousKeyInputWrapper();
        if (findPreviousKeyInputWrapper != this) {
            return findPreviousKeyInputWrapper;
        }
        return null;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int minIntrinsicWidth(int i) {
        return getWrapped$ui_release().minIntrinsicWidth(i);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int maxIntrinsicWidth(int i) {
        return getWrapped$ui_release().maxIntrinsicWidth(i);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int minIntrinsicHeight(int i) {
        return getWrapped$ui_release().minIntrinsicHeight(i);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int maxIntrinsicHeight(int i) {
        return getWrapped$ui_release().maxIntrinsicHeight(i);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public Object getParentData() {
        return getWrapped$ui_release().getParentData();
    }
}
