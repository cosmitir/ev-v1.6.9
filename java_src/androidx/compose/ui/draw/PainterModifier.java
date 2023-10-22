package androidx.compose.ui.draw;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.ScaleFactorKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSizeKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
/* compiled from: PainterModifier.kt */
@Metadata(d1 = {"\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003BX\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\u0017\u0010\u0010\u001a\u0013\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\u0011¢\u0006\u0002\b\u0014¢\u0006\u0002\u0010\u0015J\u001d\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020%H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b'\u0010(J\u0013\u0010)\u001a\u00020\u00072\b\u0010*\u001a\u0004\u0018\u00010+H\u0096\u0002J\b\u0010,\u001a\u00020-H\u0016J\u001d\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020/H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b1\u0010(J\b\u00102\u001a\u000203H\u0016J\f\u00104\u001a\u00020\u0013*\u000205H\u0016J\u0019\u00106\u001a\u00020\u0007*\u00020%H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b7\u00108J\u0019\u00109\u001a\u00020\u0007*\u00020%H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b:\u00108J\u001c\u0010;\u001a\u00020-*\u00020<2\u0006\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020-H\u0016J\u001c\u0010@\u001a\u00020-*\u00020<2\u0006\u0010=\u001a\u00020>2\u0006\u0010A\u001a\u00020-H\u0016J)\u0010B\u001a\u00020C*\u00020D2\u0006\u0010=\u001a\u00020E2\u0006\u00100\u001a\u00020/H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bF\u0010GJ\u001c\u0010H\u001a\u00020-*\u00020<2\u0006\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020-H\u0016J\u001c\u0010I\u001a\u00020-*\u00020<2\u0006\u0010=\u001a\u00020>2\u0006\u0010A\u001a\u00020-H\u0016R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u0014\u0010\"\u001a\u00020\u00078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b#\u0010!\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006J"}, d2 = {"Landroidx/compose/ui/draw/PainterModifier;", "Landroidx/compose/ui/layout/LayoutModifier;", "Landroidx/compose/ui/draw/DrawModifier;", "Landroidx/compose/ui/platform/InspectorValueInfo;", "painter", "Landroidx/compose/ui/graphics/painter/Painter;", "sizeToIntrinsics", "", "alignment", "Landroidx/compose/ui/Alignment;", "contentScale", "Landroidx/compose/ui/layout/ContentScale;", "alpha", "", "colorFilter", "Landroidx/compose/ui/graphics/ColorFilter;", "inspectorInfo", "Lkotlin/Function1;", "Landroidx/compose/ui/platform/InspectorInfo;", "", "Lkotlin/ExtensionFunctionType;", "(Landroidx/compose/ui/graphics/painter/Painter;ZLandroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Lkotlin/jvm/functions/Function1;)V", "getAlignment", "()Landroidx/compose/ui/Alignment;", "getAlpha", "()F", "getColorFilter", "()Landroidx/compose/ui/graphics/ColorFilter;", "getContentScale", "()Landroidx/compose/ui/layout/ContentScale;", "getPainter", "()Landroidx/compose/ui/graphics/painter/Painter;", "getSizeToIntrinsics", "()Z", "useIntrinsicSize", "getUseIntrinsicSize", "calculateScaledSize", "Landroidx/compose/ui/geometry/Size;", "dstSize", "calculateScaledSize-E7KxVPU", "(J)J", "equals", "other", "", "hashCode", "", "modifyConstraints", "Landroidx/compose/ui/unit/Constraints;", "constraints", "modifyConstraints-ZezNO4M", "toString", "", "draw", "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;", "hasSpecifiedAndFiniteHeight", "hasSpecifiedAndFiniteHeight-uvyYCjk", "(J)Z", "hasSpecifiedAndFiniteWidth", "hasSpecifiedAndFiniteWidth-uvyYCjk", "maxIntrinsicHeight", "Landroidx/compose/ui/layout/IntrinsicMeasureScope;", "measurable", "Landroidx/compose/ui/layout/IntrinsicMeasurable;", "width", "maxIntrinsicWidth", "height", "measure", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/ui/layout/MeasureScope;", "Landroidx/compose/ui/layout/Measurable;", "measure-3p2s80s", "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;", "minIntrinsicHeight", "minIntrinsicWidth", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
final class PainterModifier extends InspectorValueInfo implements LayoutModifier, DrawModifier {
    private final Alignment alignment;
    private final float alpha;
    private final ColorFilter colorFilter;
    private final ContentScale contentScale;
    private final Painter painter;
    private final boolean sizeToIntrinsics;

    @Override // androidx.compose.ui.Modifier.Element, androidx.compose.ui.Modifier
    public boolean all(Function1<? super Modifier.Element, Boolean> function1) {
        return LayoutModifier.DefaultImpls.all(this, function1);
    }

    @Override // androidx.compose.ui.Modifier.Element, androidx.compose.ui.Modifier
    public boolean any(Function1<? super Modifier.Element, Boolean> function1) {
        return LayoutModifier.DefaultImpls.any(this, function1);
    }

    @Override // androidx.compose.ui.Modifier.Element, androidx.compose.ui.Modifier
    public <R> R foldIn(R r, Function2<? super R, ? super Modifier.Element, ? extends R> function2) {
        return (R) LayoutModifier.DefaultImpls.foldIn(this, r, function2);
    }

    @Override // androidx.compose.ui.Modifier.Element, androidx.compose.ui.Modifier
    public <R> R foldOut(R r, Function2<? super Modifier.Element, ? super R, ? extends R> function2) {
        return (R) LayoutModifier.DefaultImpls.foldOut(this, r, function2);
    }

    @Override // androidx.compose.ui.Modifier
    public Modifier then(Modifier modifier) {
        return LayoutModifier.DefaultImpls.then(this, modifier);
    }

    public final Painter getPainter() {
        return this.painter;
    }

    public final boolean getSizeToIntrinsics() {
        return this.sizeToIntrinsics;
    }

    public /* synthetic */ PainterModifier(Painter painter, boolean z, Alignment alignment, ContentScale contentScale, float f, ColorFilter colorFilter, Function1 function1, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(painter, z, (i & 4) != 0 ? Alignment.Companion.getCenter() : alignment, (i & 8) != 0 ? ContentScale.Companion.getInside() : contentScale, (i & 16) != 0 ? 1.0f : f, (i & 32) != 0 ? null : colorFilter, function1);
    }

    public final Alignment getAlignment() {
        return this.alignment;
    }

    public final ContentScale getContentScale() {
        return this.contentScale;
    }

    public final float getAlpha() {
        return this.alpha;
    }

    public final ColorFilter getColorFilter() {
        return this.colorFilter;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PainterModifier(Painter painter, boolean z, Alignment alignment, ContentScale contentScale, float f, ColorFilter colorFilter, Function1<? super InspectorInfo, Unit> inspectorInfo) {
        super(inspectorInfo);
        Intrinsics.checkNotNullParameter(painter, "painter");
        Intrinsics.checkNotNullParameter(alignment, "alignment");
        Intrinsics.checkNotNullParameter(contentScale, "contentScale");
        Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
        this.painter = painter;
        this.sizeToIntrinsics = z;
        this.alignment = alignment;
        this.contentScale = contentScale;
        this.alpha = f;
        this.colorFilter = colorFilter;
    }

    private final boolean getUseIntrinsicSize() {
        if (this.sizeToIntrinsics) {
            return (this.painter.mo805getIntrinsicSizeNHjbRc() > Size.Companion.m194getUnspecifiedNHjbRc() ? 1 : (this.painter.mo805getIntrinsicSizeNHjbRc() == Size.Companion.m194getUnspecifiedNHjbRc() ? 0 : -1)) != 0;
        }
        return false;
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    /* renamed from: measure-3p2s80s */
    public MeasureResult mo39measure3p2s80s(MeasureScope receiver, Measurable measurable, long j) {
        Intrinsics.checkNotNullParameter(receiver, "$receiver");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        final Placeable mo1607measureBRTryo0 = measurable.mo1607measureBRTryo0(m55modifyConstraintsZezNO4M(j));
        return MeasureScope.DefaultImpls.layout$default(receiver, mo1607measureBRTryo0.getWidth(), mo1607measureBRTryo0.getHeight(), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.draw.PainterModifier$measure$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                invoke2(placementScope);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Placeable.PlacementScope layout) {
                Intrinsics.checkNotNullParameter(layout, "$this$layout");
                Placeable.PlacementScope.placeRelative$default(layout, Placeable.this, 0, 0, 0.0f, 4, null);
            }
        }, 4, null);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable measurable, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        if (getUseIntrinsicSize()) {
            int minIntrinsicWidth = measurable.minIntrinsicWidth(Constraints.m2074getMaxHeightimpl(m55modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, 0, 0, i, 7, null))));
            return Math.max(MathKt.roundToInt(Size.m186getWidthimpl(m52calculateScaledSizeE7KxVPU(SizeKt.Size(minIntrinsicWidth, i)))), minIntrinsicWidth);
        }
        return measurable.minIntrinsicWidth(i);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable measurable, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        if (getUseIntrinsicSize()) {
            int maxIntrinsicWidth = measurable.maxIntrinsicWidth(Constraints.m2074getMaxHeightimpl(m55modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, 0, 0, i, 7, null))));
            return Math.max(MathKt.roundToInt(Size.m186getWidthimpl(m52calculateScaledSizeE7KxVPU(SizeKt.Size(maxIntrinsicWidth, i)))), maxIntrinsicWidth);
        }
        return measurable.maxIntrinsicWidth(i);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable measurable, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        if (getUseIntrinsicSize()) {
            int minIntrinsicHeight = measurable.minIntrinsicHeight(Constraints.m2075getMaxWidthimpl(m55modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, i, 0, 0, 13, null))));
            return Math.max(MathKt.roundToInt(Size.m183getHeightimpl(m52calculateScaledSizeE7KxVPU(SizeKt.Size(i, minIntrinsicHeight)))), minIntrinsicHeight);
        }
        return measurable.minIntrinsicHeight(i);
    }

    @Override // androidx.compose.ui.layout.LayoutModifier
    public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable measurable, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurable, "measurable");
        if (getUseIntrinsicSize()) {
            int maxIntrinsicHeight = measurable.maxIntrinsicHeight(Constraints.m2075getMaxWidthimpl(m55modifyConstraintsZezNO4M(ConstraintsKt.Constraints$default(0, i, 0, 0, 13, null))));
            return Math.max(MathKt.roundToInt(Size.m183getHeightimpl(m52calculateScaledSizeE7KxVPU(SizeKt.Size(i, maxIntrinsicHeight)))), maxIntrinsicHeight);
        }
        return measurable.maxIntrinsicHeight(i);
    }

    /* renamed from: calculateScaledSize-E7KxVPU  reason: not valid java name */
    private final long m52calculateScaledSizeE7KxVPU(long j) {
        float m186getWidthimpl;
        float m183getHeightimpl;
        if (getUseIntrinsicSize()) {
            if (!m54hasSpecifiedAndFiniteWidthuvyYCjk(this.painter.mo805getIntrinsicSizeNHjbRc())) {
                m186getWidthimpl = Size.m186getWidthimpl(j);
            } else {
                m186getWidthimpl = Size.m186getWidthimpl(this.painter.mo805getIntrinsicSizeNHjbRc());
            }
            if (!m53hasSpecifiedAndFiniteHeightuvyYCjk(this.painter.mo805getIntrinsicSizeNHjbRc())) {
                m183getHeightimpl = Size.m183getHeightimpl(j);
            } else {
                m183getHeightimpl = Size.m183getHeightimpl(this.painter.mo805getIntrinsicSizeNHjbRc());
            }
            long Size = SizeKt.Size(m186getWidthimpl, m183getHeightimpl);
            if (!(Size.m186getWidthimpl(j) == 0.0f)) {
                if (!(Size.m183getHeightimpl(j) == 0.0f)) {
                    return ScaleFactorKt.m1680timesUQTWf7w(Size, this.contentScale.mo1598computeScaleFactorH7hwNQA(Size, j));
                }
            }
            return Size.Companion.m195getZeroNHjbRc();
        }
        return j;
    }

    /* renamed from: modifyConstraints-ZezNO4M  reason: not valid java name */
    private final long m55modifyConstraintsZezNO4M(long j) {
        int m2077getMinWidthimpl;
        int m2076getMinHeightimpl;
        boolean z = true;
        boolean z2 = Constraints.m2071getHasBoundedWidthimpl(j) && Constraints.m2070getHasBoundedHeightimpl(j);
        if (!Constraints.m2073getHasFixedWidthimpl(j) || !Constraints.m2072getHasFixedHeightimpl(j)) {
            z = false;
        }
        if ((!getUseIntrinsicSize() && z2) || z) {
            return Constraints.m2066copyZbe2FdA$default(j, Constraints.m2075getMaxWidthimpl(j), 0, Constraints.m2074getMaxHeightimpl(j), 0, 10, null);
        }
        long mo805getIntrinsicSizeNHjbRc = this.painter.mo805getIntrinsicSizeNHjbRc();
        if (m54hasSpecifiedAndFiniteWidthuvyYCjk(mo805getIntrinsicSizeNHjbRc)) {
            m2077getMinWidthimpl = MathKt.roundToInt(Size.m186getWidthimpl(mo805getIntrinsicSizeNHjbRc));
        } else {
            m2077getMinWidthimpl = Constraints.m2077getMinWidthimpl(j);
        }
        if (m53hasSpecifiedAndFiniteHeightuvyYCjk(mo805getIntrinsicSizeNHjbRc)) {
            m2076getMinHeightimpl = MathKt.roundToInt(Size.m183getHeightimpl(mo805getIntrinsicSizeNHjbRc));
        } else {
            m2076getMinHeightimpl = Constraints.m2076getMinHeightimpl(j);
        }
        long m52calculateScaledSizeE7KxVPU = m52calculateScaledSizeE7KxVPU(SizeKt.Size(ConstraintsKt.m2089constrainWidthK40F9xA(j, m2077getMinWidthimpl), ConstraintsKt.m2088constrainHeightK40F9xA(j, m2076getMinHeightimpl)));
        return Constraints.m2066copyZbe2FdA$default(j, ConstraintsKt.m2089constrainWidthK40F9xA(j, MathKt.roundToInt(Size.m186getWidthimpl(m52calculateScaledSizeE7KxVPU))), 0, ConstraintsKt.m2088constrainHeightK40F9xA(j, MathKt.roundToInt(Size.m183getHeightimpl(m52calculateScaledSizeE7KxVPU))), 0, 10, null);
    }

    @Override // androidx.compose.ui.draw.DrawModifier
    public void draw(ContentDrawScope contentDrawScope) {
        float m186getWidthimpl;
        float m183getHeightimpl;
        long m195getZeroNHjbRc;
        Intrinsics.checkNotNullParameter(contentDrawScope, "<this>");
        long mo805getIntrinsicSizeNHjbRc = this.painter.mo805getIntrinsicSizeNHjbRc();
        if (m54hasSpecifiedAndFiniteWidthuvyYCjk(mo805getIntrinsicSizeNHjbRc)) {
            m186getWidthimpl = Size.m186getWidthimpl(mo805getIntrinsicSizeNHjbRc);
        } else {
            m186getWidthimpl = Size.m186getWidthimpl(contentDrawScope.mo720getSizeNHjbRc());
        }
        if (m53hasSpecifiedAndFiniteHeightuvyYCjk(mo805getIntrinsicSizeNHjbRc)) {
            m183getHeightimpl = Size.m183getHeightimpl(mo805getIntrinsicSizeNHjbRc);
        } else {
            m183getHeightimpl = Size.m183getHeightimpl(contentDrawScope.mo720getSizeNHjbRc());
        }
        long Size = SizeKt.Size(m186getWidthimpl, m183getHeightimpl);
        if (!(Size.m186getWidthimpl(contentDrawScope.mo720getSizeNHjbRc()) == 0.0f)) {
            if (!(Size.m183getHeightimpl(contentDrawScope.mo720getSizeNHjbRc()) == 0.0f)) {
                m195getZeroNHjbRc = ScaleFactorKt.m1680timesUQTWf7w(Size, this.contentScale.mo1598computeScaleFactorH7hwNQA(Size, contentDrawScope.mo720getSizeNHjbRc()));
                long j = m195getZeroNHjbRc;
                long mo38alignKFBX0sM = this.alignment.mo38alignKFBX0sM(IntSizeKt.IntSize(MathKt.roundToInt(Size.m186getWidthimpl(j)), MathKt.roundToInt(Size.m183getHeightimpl(j))), IntSizeKt.IntSize(MathKt.roundToInt(Size.m186getWidthimpl(contentDrawScope.mo720getSizeNHjbRc())), MathKt.roundToInt(Size.m183getHeightimpl(contentDrawScope.mo720getSizeNHjbRc()))), contentDrawScope.getLayoutDirection());
                float m2183getXimpl = IntOffset.m2183getXimpl(mo38alignKFBX0sM);
                float m2184getYimpl = IntOffset.m2184getYimpl(mo38alignKFBX0sM);
                ContentDrawScope contentDrawScope2 = contentDrawScope;
                contentDrawScope2.getDrawContext().getTransform().translate(m2183getXimpl, m2184getYimpl);
                getPainter().m808drawx_KDEd0(contentDrawScope2, j, getAlpha(), getColorFilter());
                contentDrawScope2.getDrawContext().getTransform().translate(-m2183getXimpl, -m2184getYimpl);
            }
        }
        m195getZeroNHjbRc = Size.Companion.m195getZeroNHjbRc();
        long j2 = m195getZeroNHjbRc;
        long mo38alignKFBX0sM2 = this.alignment.mo38alignKFBX0sM(IntSizeKt.IntSize(MathKt.roundToInt(Size.m186getWidthimpl(j2)), MathKt.roundToInt(Size.m183getHeightimpl(j2))), IntSizeKt.IntSize(MathKt.roundToInt(Size.m186getWidthimpl(contentDrawScope.mo720getSizeNHjbRc())), MathKt.roundToInt(Size.m183getHeightimpl(contentDrawScope.mo720getSizeNHjbRc()))), contentDrawScope.getLayoutDirection());
        float m2183getXimpl2 = IntOffset.m2183getXimpl(mo38alignKFBX0sM2);
        float m2184getYimpl2 = IntOffset.m2184getYimpl(mo38alignKFBX0sM2);
        ContentDrawScope contentDrawScope22 = contentDrawScope;
        contentDrawScope22.getDrawContext().getTransform().translate(m2183getXimpl2, m2184getYimpl2);
        getPainter().m808drawx_KDEd0(contentDrawScope22, j2, getAlpha(), getColorFilter());
        contentDrawScope22.getDrawContext().getTransform().translate(-m2183getXimpl2, -m2184getYimpl2);
    }

    /* renamed from: hasSpecifiedAndFiniteWidth-uvyYCjk  reason: not valid java name */
    private final boolean m54hasSpecifiedAndFiniteWidthuvyYCjk(long j) {
        if (Size.m182equalsimpl0(j, Size.Companion.m194getUnspecifiedNHjbRc())) {
            return false;
        }
        float m186getWidthimpl = Size.m186getWidthimpl(j);
        return !Float.isInfinite(m186getWidthimpl) && !Float.isNaN(m186getWidthimpl);
    }

    /* renamed from: hasSpecifiedAndFiniteHeight-uvyYCjk  reason: not valid java name */
    private final boolean m53hasSpecifiedAndFiniteHeightuvyYCjk(long j) {
        if (Size.m182equalsimpl0(j, Size.Companion.m194getUnspecifiedNHjbRc())) {
            return false;
        }
        float m183getHeightimpl = Size.m183getHeightimpl(j);
        return !Float.isInfinite(m183getHeightimpl) && !Float.isNaN(m183getHeightimpl);
    }

    public int hashCode() {
        int hashCode = ((((((((this.painter.hashCode() * 31) + Boolean.hashCode(this.sizeToIntrinsics)) * 31) + this.alignment.hashCode()) * 31) + this.contentScale.hashCode()) * 31) + Float.hashCode(this.alpha)) * 31;
        ColorFilter colorFilter = this.colorFilter;
        return hashCode + (colorFilter == null ? 0 : colorFilter.hashCode());
    }

    public boolean equals(Object obj) {
        PainterModifier painterModifier = obj instanceof PainterModifier ? (PainterModifier) obj : null;
        if (painterModifier != null && Intrinsics.areEqual(this.painter, painterModifier.painter) && this.sizeToIntrinsics == painterModifier.sizeToIntrinsics && Intrinsics.areEqual(this.alignment, painterModifier.alignment) && Intrinsics.areEqual(this.contentScale, painterModifier.contentScale)) {
            return ((this.alpha > painterModifier.alpha ? 1 : (this.alpha == painterModifier.alpha ? 0 : -1)) == 0) && Intrinsics.areEqual(this.colorFilter, painterModifier.colorFilter);
        }
        return false;
    }

    public String toString() {
        return "PainterModifier(painter=" + this.painter + ", sizeToIntrinsics=" + this.sizeToIntrinsics + ", alignment=" + this.alignment + ", alpha=" + this.alpha + ", colorFilter=" + this.colorFilter + ')';
    }
}
