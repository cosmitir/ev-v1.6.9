package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.CompositionKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: VectorPainter.kt */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0007\b\u0000¢\u0006\u0002\u0010\u0002Jd\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00062\u0006\u0010'\u001a\u00020\u00062;\u0010(\u001a7\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b*\u0012\b\b$\u0012\u0004\b\b(&\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b*\u0012\b\b$\u0012\u0004\b\b('\u0012\u0004\u0012\u00020#0)¢\u0006\u0002\b+H\u0001¢\u0006\u0004\b,\u0010-J\u0010\u0010.\u001a\u00020\u00142\u0006\u0010/\u001a\u00020\u0006H\u0014J\u0012\u00100\u001a\u00020\u00142\b\u00101\u001a\u0004\u0018\u00010\bH\u0014JR\u00102\u001a\u00020\u00042\u0006\u00103\u001a\u0002042;\u00105\u001a7\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b*\u0012\b\b$\u0012\u0004\b\b(&\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b*\u0012\b\b$\u0012\u0004\b\b('\u0012\u0004\u0012\u00020#0)¢\u0006\u0002\b+H\u0002¢\u0006\u0002\u00106J\f\u00107\u001a\u00020#*\u000208H\u0014R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R(\u0010\n\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\b8@@@X\u0080\u000e¢\u0006\f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001d\u0010\u000f\u001a\u00020\u00108VX\u0096\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R+\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u00148B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R4\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u00108@@@X\u0080\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\b\u001f\u0010\u001a\u001a\u0004\b\u001c\u0010\u0012\"\u0004\b\u001d\u0010\u001eR\u000e\u0010 \u001a\u00020!X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u00069"}, d2 = {"Landroidx/compose/ui/graphics/vector/VectorPainter;", "Landroidx/compose/ui/graphics/painter/Painter;", "()V", "composition", "Landroidx/compose/runtime/Composition;", "currentAlpha", "", "currentColorFilter", "Landroidx/compose/ui/graphics/ColorFilter;", "value", "intrinsicColorFilter", "getIntrinsicColorFilter$ui_release", "()Landroidx/compose/ui/graphics/ColorFilter;", "setIntrinsicColorFilter$ui_release", "(Landroidx/compose/ui/graphics/ColorFilter;)V", "intrinsicSize", "Landroidx/compose/ui/geometry/Size;", "getIntrinsicSize-NH-jbRc", "()J", "<set-?>", "", "isDirty", "()Z", "setDirty", "(Z)V", "isDirty$delegate", "Landroidx/compose/runtime/MutableState;", "size", "getSize-NH-jbRc$ui_release", "setSize-uvyYCjk$ui_release", "(J)V", "size$delegate", "vector", "Landroidx/compose/ui/graphics/vector/VectorComponent;", "RenderVector", "", "name", "", "viewportWidth", "viewportHeight", FirebaseAnalytics.Param.CONTENT, "Lkotlin/Function2;", "Lkotlin/ParameterName;", "Landroidx/compose/runtime/Composable;", "RenderVector$ui_release", "(Ljava/lang/String;FFLkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;I)V", "applyAlpha", "alpha", "applyColorFilter", "colorFilter", "composeVector", "parent", "Landroidx/compose/runtime/CompositionContext;", "composable", "(Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function4;)Landroidx/compose/runtime/Composition;", "onDraw", "Landroidx/compose/ui/graphics/drawscope/DrawScope;", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class VectorPainter extends Painter {
    public static final int $stable = 8;
    private Composition composition;
    private float currentAlpha;
    private ColorFilter currentColorFilter;
    private final MutableState isDirty$delegate;
    private final MutableState size$delegate;
    private final VectorComponent vector;

    public VectorPainter() {
        MutableState mutableStateOf$default;
        MutableState mutableStateOf$default2;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(Size.m174boximpl(Size.Companion.m195getZeroNHjbRc()), null, 2, null);
        this.size$delegate = mutableStateOf$default;
        VectorComponent vectorComponent = new VectorComponent();
        vectorComponent.setInvalidateCallback$ui_release(new Function0<Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorPainter$vector$1$1
            /* JADX INFO: Access modifiers changed from: package-private */
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
                VectorPainter.this.setDirty(true);
            }
        });
        Unit unit = Unit.INSTANCE;
        this.vector = vectorComponent;
        mutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(true, null, 2, null);
        this.isDirty$delegate = mutableStateOf$default2;
        this.currentAlpha = 1.0f;
    }

    /* renamed from: getSize-NH-jbRc$ui_release  reason: not valid java name */
    public final long m843getSizeNHjbRc$ui_release() {
        return ((Size) this.size$delegate.getValue()).m191unboximpl();
    }

    /* renamed from: setSize-uvyYCjk$ui_release  reason: not valid java name */
    public final void m844setSizeuvyYCjk$ui_release(long j) {
        this.size$delegate.setValue(Size.m174boximpl(j));
    }

    public final ColorFilter getIntrinsicColorFilter$ui_release() {
        return this.vector.getIntrinsicColorFilter$ui_release();
    }

    public final void setIntrinsicColorFilter$ui_release(ColorFilter colorFilter) {
        this.vector.setIntrinsicColorFilter$ui_release(colorFilter);
    }

    private final Composition composeVector(CompositionContext compositionContext, final Function4<? super Float, ? super Float, ? super Composer, ? super Integer, Unit> function4) {
        Composition composition = this.composition;
        if (composition == null || composition.isDisposed()) {
            composition = CompositionKt.Composition(new VectorApplier(this.vector.getRoot()), compositionContext);
        }
        this.composition = composition;
        composition.setContent(ComposableLambdaKt.composableLambdaInstance(-985537011, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorPainter$composeVector$1
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
                VectorComponent vectorComponent;
                VectorComponent vectorComponent2;
                ComposerKt.sourceInformation(composer, "C157@5980L55:VectorPainter.kt#huu6hf");
                if (((i & 11) ^ 2) == 0 && composer.getSkipping()) {
                    composer.skipToGroupEnd();
                    return;
                }
                Function4<Float, Float, Composer, Integer, Unit> function42 = function4;
                vectorComponent = this.vector;
                Float valueOf = Float.valueOf(vectorComponent.getViewportWidth());
                vectorComponent2 = this.vector;
                function42.invoke(valueOf, Float.valueOf(vectorComponent2.getViewportHeight()), composer, 0);
            }
        }));
        return composition;
    }

    private final boolean isDirty() {
        return ((Boolean) this.isDirty$delegate.getValue()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setDirty(boolean z) {
        this.isDirty$delegate.setValue(Boolean.valueOf(z));
    }

    public final void RenderVector$ui_release(final String name, final float f, final float f2, final Function4<? super Float, ? super Float, ? super Composer, ? super Integer, Unit> content, Composer composer, final int i) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(content, "content");
        Composer startRestartGroup = composer.startRestartGroup(625569543);
        ComposerKt.sourceInformation(startRestartGroup, "C(RenderVector)P(1,3,2)177@6554L28,181@6623L117:VectorPainter.kt#huu6hf");
        VectorComponent vectorComponent = this.vector;
        vectorComponent.setName(name);
        vectorComponent.setViewportWidth(f);
        vectorComponent.setViewportHeight(f2);
        final Composition composeVector = composeVector(ComposablesKt.rememberCompositionContext(startRestartGroup, 0), content);
        EffectsKt.DisposableEffect(composeVector, new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.ui.graphics.vector.VectorPainter$RenderVector$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final DisposableEffectResult invoke(DisposableEffectScope DisposableEffect) {
                Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
                final Composition composition = Composition.this;
                return new DisposableEffectResult() { // from class: androidx.compose.ui.graphics.vector.VectorPainter$RenderVector$2$invoke$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public void dispose() {
                        Composition.this.dispose();
                    }
                };
            }
        }, startRestartGroup, 8);
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorPainter$RenderVector$3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer2, int i2) {
                VectorPainter.this.RenderVector$ui_release(name, f, f2, content, composer2, i | 1);
            }
        });
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    /* renamed from: getIntrinsicSize-NH-jbRc */
    public long mo805getIntrinsicSizeNHjbRc() {
        return m843getSizeNHjbRc$ui_release();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.compose.ui.graphics.painter.Painter
    public void onDraw(DrawScope drawScope) {
        Intrinsics.checkNotNullParameter(drawScope, "<this>");
        VectorComponent vectorComponent = this.vector;
        float f = this.currentAlpha;
        ColorFilter colorFilter = this.currentColorFilter;
        if (colorFilter == null) {
            colorFilter = vectorComponent.getIntrinsicColorFilter$ui_release();
        }
        vectorComponent.draw(drawScope, f, colorFilter);
        if (isDirty()) {
            setDirty(false);
        }
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean applyAlpha(float f) {
        this.currentAlpha = f;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean applyColorFilter(ColorFilter colorFilter) {
        this.currentColorFilter = colorFilter;
        return true;
    }
}
