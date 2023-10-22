package androidx.compose.ui.platform;

import android.os.Build;
import android.view.View;
import androidx.compose.ui.ExperimentalComposeUiApi;
import androidx.compose.ui.geometry.MutableRect;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.CanvasHolder;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.node.OwnedLayer;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: RenderNodeLayer.android.kt */
@Metadata(d1 = {"\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001:\u0001[B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\t¢\u0006\u0002\u0010\nJ\b\u0010+\u001a\u00020\u0007H\u0016J\u0010\u0010,\u001a\u00020\u00072\u0006\u0010-\u001a\u00020\u0006H\u0016J\b\u0010.\u001a\u00020\u0007H\u0016J\u001d\u0010/\u001a\u00020\u00102\u0006\u00100\u001a\u000201H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b2\u00103J\u0018\u00104\u001a\u00020\u00072\u0006\u00105\u001a\u0002062\u0006\u00107\u001a\u00020\u0010H\u0016J%\u00108\u001a\u0002012\u0006\u00109\u001a\u0002012\u0006\u00107\u001a\u00020\u0010H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b:\u0010;J\u001d\u0010<\u001a\u00020\u00072\u0006\u00100\u001a\u00020=H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b>\u0010?J\u001d\u0010@\u001a\u00020\u00072\u0006\u0010A\u001a\u00020BH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bC\u0010?J\b\u0010D\u001a\u00020\u0007H\u0002J\b\u0010E\u001a\u00020\u0007H\u0016J\u008d\u0001\u0010F\u001a\u00020\u00072\u0006\u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020H2\u0006\u0010J\u001a\u00020H2\u0006\u0010K\u001a\u00020H2\u0006\u0010L\u001a\u00020H2\u0006\u0010M\u001a\u00020H2\u0006\u0010N\u001a\u00020H2\u0006\u0010O\u001a\u00020H2\u0006\u0010P\u001a\u00020H2\u0006\u0010Q\u001a\u00020H2\u0006\u0010(\u001a\u00020)2\u0006\u0010R\u001a\u00020S2\u0006\u0010T\u001a\u00020\u00102\u0006\u0010U\u001a\u00020V2\u0006\u0010W\u001a\u00020XH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bY\u0010ZR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\t¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0010@BX\u0082\u000e¢\u0006\b\n\u0000\"\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\u00020\u00198VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u001a\u0010\"\u001a\u00020\u00198VX\u0097\u0004¢\u0006\f\u0012\u0004\b#\u0010$\u001a\u0004\b%\u0010\u001bR\u000e\u0010&\u001a\u00020'X\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010(\u001a\u00020)X\u0082\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010*\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\\"}, d2 = {"Landroidx/compose/ui/platform/RenderNodeLayer;", "Landroidx/compose/ui/node/OwnedLayer;", "ownerView", "Landroidx/compose/ui/platform/AndroidComposeView;", "drawBlock", "Lkotlin/Function1;", "Landroidx/compose/ui/graphics/Canvas;", "", "invalidateParentLayer", "Lkotlin/Function0;", "(Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V", "canvasHolder", "Landroidx/compose/ui/graphics/CanvasHolder;", "getDrawBlock", "()Lkotlin/jvm/functions/Function1;", "drawnWithZ", "", "getInvalidateParentLayer", "()Lkotlin/jvm/functions/Function0;", "isDestroyed", "value", "isDirty", "setDirty", "(Z)V", "layerId", "", "getLayerId", "()J", "matrixCache", "Landroidx/compose/ui/platform/RenderNodeMatrixCache;", "outlineResolver", "Landroidx/compose/ui/platform/OutlineResolver;", "getOwnerView", "()Landroidx/compose/ui/platform/AndroidComposeView;", "ownerViewId", "getOwnerViewId$annotations", "()V", "getOwnerViewId", "renderNode", "Landroidx/compose/ui/platform/DeviceRenderNode;", "transformOrigin", "Landroidx/compose/ui/graphics/TransformOrigin;", "J", "destroy", "drawLayer", "canvas", "invalidate", "isInLayer", "position", "Landroidx/compose/ui/geometry/Offset;", "isInLayer-k-4lQ0M", "(J)Z", "mapBounds", "rect", "Landroidx/compose/ui/geometry/MutableRect;", "inverse", "mapOffset", "point", "mapOffset-8S9VItk", "(JZ)J", "move", "Landroidx/compose/ui/unit/IntOffset;", "move--gyyYBs", "(J)V", "resize", "size", "Landroidx/compose/ui/unit/IntSize;", "resize-ozmzZPI", "triggerRepaint", "updateDisplayList", "updateLayerProperties", "scaleX", "", "scaleY", "alpha", "translationX", "translationY", "shadowElevation", "rotationX", "rotationY", "rotationZ", "cameraDistance", "shape", "Landroidx/compose/ui/graphics/Shape;", "clip", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "density", "Landroidx/compose/ui/unit/Density;", "updateLayerProperties-dRfWZ4U", "(FFFFFFFFFFJLandroidx/compose/ui/graphics/Shape;ZLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)V", "UniqueDrawingIdApi29", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class RenderNodeLayer implements OwnedLayer {
    private final CanvasHolder canvasHolder;
    private final Function1<Canvas, Unit> drawBlock;
    private boolean drawnWithZ;
    private final Function0<Unit> invalidateParentLayer;
    private boolean isDestroyed;
    private boolean isDirty;
    private final RenderNodeMatrixCache matrixCache;
    private final OutlineResolver outlineResolver;
    private final AndroidComposeView ownerView;
    private final DeviceRenderNode renderNode;
    private long transformOrigin;

    @ExperimentalComposeUiApi
    public static /* synthetic */ void getOwnerViewId$annotations() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public RenderNodeLayer(AndroidComposeView ownerView, Function1<? super Canvas, Unit> drawBlock, Function0<Unit> invalidateParentLayer) {
        RenderNodeApi23 renderNodeApi23;
        Intrinsics.checkNotNullParameter(ownerView, "ownerView");
        Intrinsics.checkNotNullParameter(drawBlock, "drawBlock");
        Intrinsics.checkNotNullParameter(invalidateParentLayer, "invalidateParentLayer");
        this.ownerView = ownerView;
        this.drawBlock = drawBlock;
        this.invalidateParentLayer = invalidateParentLayer;
        this.outlineResolver = new OutlineResolver(ownerView.getDensity());
        this.matrixCache = new RenderNodeMatrixCache();
        this.canvasHolder = new CanvasHolder();
        this.transformOrigin = TransformOrigin.Companion.m652getCenterSzJe1aQ();
        if (Build.VERSION.SDK_INT >= 29) {
            renderNodeApi23 = new RenderNodeApi29(ownerView);
        } else {
            renderNodeApi23 = new RenderNodeApi23(ownerView);
        }
        renderNodeApi23.setHasOverlappingRendering(true);
        Unit unit = Unit.INSTANCE;
        this.renderNode = renderNodeApi23;
    }

    public final AndroidComposeView getOwnerView() {
        return this.ownerView;
    }

    public final Function1<Canvas, Unit> getDrawBlock() {
        return this.drawBlock;
    }

    public final Function0<Unit> getInvalidateParentLayer() {
        return this.invalidateParentLayer;
    }

    private final void setDirty(boolean z) {
        if (z != this.isDirty) {
            this.isDirty = z;
            this.ownerView.notifyLayerIsDirty$ui_release(this, z);
        }
    }

    @Override // androidx.compose.ui.layout.GraphicLayerInfo
    public long getLayerId() {
        return this.renderNode.getUniqueId();
    }

    @Override // androidx.compose.ui.layout.GraphicLayerInfo
    public long getOwnerViewId() {
        if (Build.VERSION.SDK_INT >= 29) {
            return UniqueDrawingIdApi29.Companion.getUniqueDrawingId(this.ownerView);
        }
        return -1L;
    }

    /* compiled from: RenderNodeLayer.android.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/platform/RenderNodeLayer$UniqueDrawingIdApi29;", "", "()V", "Companion", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    private static final class UniqueDrawingIdApi29 {
        public static final Companion Companion = new Companion(null);

        @JvmStatic
        public static final long getUniqueDrawingId(View view) {
            return Companion.getUniqueDrawingId(view);
        }

        /* compiled from: RenderNodeLayer.android.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0087\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/platform/RenderNodeLayer$UniqueDrawingIdApi29$Companion;", "", "()V", "getUniqueDrawingId", "", "view", "Landroid/view/View;", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final long getUniqueDrawingId(View view) {
                Intrinsics.checkNotNullParameter(view, "view");
                return view.getUniqueDrawingId();
            }
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    /* renamed from: updateLayerProperties-dRfWZ4U */
    public void mo1728updateLayerPropertiesdRfWZ4U(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, long j, Shape shape, boolean z, LayoutDirection layoutDirection, Density density) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        Intrinsics.checkNotNullParameter(density, "density");
        this.transformOrigin = j;
        boolean z2 = true;
        boolean z3 = this.renderNode.getClipToOutline() && this.outlineResolver.getClipPath() != null;
        this.renderNode.setScaleX(f);
        this.renderNode.setScaleY(f2);
        this.renderNode.setAlpha(f3);
        this.renderNode.setTranslationX(f4);
        this.renderNode.setTranslationY(f5);
        this.renderNode.setElevation(f6);
        this.renderNode.setRotationZ(f9);
        this.renderNode.setRotationX(f7);
        this.renderNode.setRotationY(f8);
        this.renderNode.setCameraDistance(f10);
        this.renderNode.setPivotX(TransformOrigin.m647getPivotFractionXimpl(j) * this.renderNode.getWidth());
        this.renderNode.setPivotY(TransformOrigin.m648getPivotFractionYimpl(j) * this.renderNode.getHeight());
        this.renderNode.setClipToOutline(z && shape != RectangleShapeKt.getRectangleShape());
        this.renderNode.setClipToBounds(z && shape == RectangleShapeKt.getRectangleShape());
        boolean update = this.outlineResolver.update(shape, this.renderNode.getAlpha(), this.renderNode.getClipToOutline(), this.renderNode.getElevation(), layoutDirection, density);
        this.renderNode.setOutline(this.outlineResolver.getOutline());
        if (!this.renderNode.getClipToOutline() || this.outlineResolver.getClipPath() == null) {
            z2 = false;
        }
        if (z3 != z2 || (z2 && update)) {
            invalidate();
        } else {
            triggerRepaint();
        }
        if (!this.drawnWithZ && this.renderNode.getElevation() > 0.0f) {
            this.invalidateParentLayer.invoke();
        }
        this.matrixCache.invalidate();
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    /* renamed from: isInLayer-k-4lQ0M */
    public boolean mo1724isInLayerk4lQ0M(long j) {
        float m117getXimpl = Offset.m117getXimpl(j);
        float m118getYimpl = Offset.m118getYimpl(j);
        if (this.renderNode.getClipToBounds()) {
            return 0.0f <= m117getXimpl && m117getXimpl < ((float) this.renderNode.getWidth()) && 0.0f <= m118getYimpl && m118getYimpl < ((float) this.renderNode.getHeight());
        } else if (this.renderNode.getClipToOutline()) {
            return this.outlineResolver.m1747isInOutlinek4lQ0M(j);
        } else {
            return true;
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    /* renamed from: resize-ozmzZPI */
    public void mo1727resizeozmzZPI(long j) {
        int m2225getWidthimpl = IntSize.m2225getWidthimpl(j);
        int m2224getHeightimpl = IntSize.m2224getHeightimpl(j);
        float f = m2225getWidthimpl;
        this.renderNode.setPivotX(TransformOrigin.m647getPivotFractionXimpl(this.transformOrigin) * f);
        float f2 = m2224getHeightimpl;
        this.renderNode.setPivotY(TransformOrigin.m648getPivotFractionYimpl(this.transformOrigin) * f2);
        DeviceRenderNode deviceRenderNode = this.renderNode;
        if (deviceRenderNode.setPosition(deviceRenderNode.getLeft(), this.renderNode.getTop(), this.renderNode.getLeft() + m2225getWidthimpl, this.renderNode.getTop() + m2224getHeightimpl)) {
            this.outlineResolver.m1748updateuvyYCjk(SizeKt.Size(f, f2));
            this.renderNode.setOutline(this.outlineResolver.getOutline());
            invalidate();
            this.matrixCache.invalidate();
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    /* renamed from: move--gyyYBs */
    public void mo1726movegyyYBs(long j) {
        int left = this.renderNode.getLeft();
        int top = this.renderNode.getTop();
        int m2183getXimpl = IntOffset.m2183getXimpl(j);
        int m2184getYimpl = IntOffset.m2184getYimpl(j);
        if (left == m2183getXimpl && top == m2184getYimpl) {
            return;
        }
        this.renderNode.offsetLeftAndRight(m2183getXimpl - left);
        this.renderNode.offsetTopAndBottom(m2184getYimpl - top);
        triggerRepaint();
        this.matrixCache.invalidate();
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void invalidate() {
        if (this.isDirty || this.isDestroyed) {
            return;
        }
        this.ownerView.invalidate();
        setDirty(true);
    }

    private final void triggerRepaint() {
        if (Build.VERSION.SDK_INT >= 26) {
            WrapperRenderNodeLayerHelperMethods.INSTANCE.onDescendantInvalidated(this.ownerView);
        } else {
            this.ownerView.invalidate();
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void drawLayer(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        android.graphics.Canvas nativeCanvas = AndroidCanvas_androidKt.getNativeCanvas(canvas);
        if (nativeCanvas.isHardwareAccelerated()) {
            updateDisplayList();
            boolean z = this.renderNode.getElevation() > 0.0f;
            this.drawnWithZ = z;
            if (z) {
                canvas.enableZ();
            }
            this.renderNode.drawInto(nativeCanvas);
            if (this.drawnWithZ) {
                canvas.disableZ();
                return;
            }
            return;
        }
        this.drawBlock.invoke(canvas);
        setDirty(false);
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void updateDisplayList() {
        if (this.isDirty || !this.renderNode.getHasDisplayList()) {
            setDirty(false);
            this.renderNode.record(this.canvasHolder, this.renderNode.getClipToOutline() ? this.outlineResolver.getClipPath() : null, this.drawBlock);
        }
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void destroy() {
        this.isDestroyed = true;
        setDirty(false);
        this.ownerView.requestClearInvalidObservations();
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    /* renamed from: mapOffset-8S9VItk */
    public long mo1725mapOffset8S9VItk(long j, boolean z) {
        if (z) {
            return Matrix.m516mapMKHz9U(this.matrixCache.m1749getInverseMatrixGrdbGEg(this.renderNode), j);
        }
        return Matrix.m516mapMKHz9U(this.matrixCache.m1750getMatrixGrdbGEg(this.renderNode), j);
    }

    @Override // androidx.compose.ui.node.OwnedLayer
    public void mapBounds(MutableRect rect, boolean z) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        if (z) {
            Matrix.m518mapimpl(this.matrixCache.m1749getInverseMatrixGrdbGEg(this.renderNode), rect);
        } else {
            Matrix.m518mapimpl(this.matrixCache.m1750getMatrixGrdbGEg(this.renderNode), rect);
        }
    }
}
