package androidx.compose.ui;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ComposedModifier.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B<\u0012\u0017\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\b\u0007\u0012\u001c\u0010\b\u001a\u0018\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u0004¢\u0006\u0002\b\n¢\u0006\u0002\b\u0007¢\u0006\u0002\u0010\u000bR)\u0010\b\u001a\u0018\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u0004¢\u0006\u0002\b\n¢\u0006\u0002\b\u0007¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Landroidx/compose/ui/ComposedModifier;", "Landroidx/compose/ui/Modifier$Element;", "Landroidx/compose/ui/platform/InspectorValueInfo;", "inspectorInfo", "Lkotlin/Function1;", "Landroidx/compose/ui/platform/InspectorInfo;", "", "Lkotlin/ExtensionFunctionType;", "factory", "Landroidx/compose/ui/Modifier;", "Landroidx/compose/runtime/Composable;", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)V", "getFactory", "()Lkotlin/jvm/functions/Function3;", "Lkotlin/jvm/functions/Function3;", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class ComposedModifier extends InspectorValueInfo implements Modifier.Element {
    private final Function3<Modifier, Composer, Integer, Modifier> factory;

    @Override // androidx.compose.ui.Modifier.Element, androidx.compose.ui.Modifier
    public boolean all(Function1<? super Modifier.Element, Boolean> function1) {
        return Modifier.Element.DefaultImpls.all(this, function1);
    }

    @Override // androidx.compose.ui.Modifier.Element, androidx.compose.ui.Modifier
    public boolean any(Function1<? super Modifier.Element, Boolean> function1) {
        return Modifier.Element.DefaultImpls.any(this, function1);
    }

    @Override // androidx.compose.ui.Modifier.Element, androidx.compose.ui.Modifier
    public <R> R foldIn(R r, Function2<? super R, ? super Modifier.Element, ? extends R> function2) {
        return (R) Modifier.Element.DefaultImpls.foldIn(this, r, function2);
    }

    @Override // androidx.compose.ui.Modifier.Element, androidx.compose.ui.Modifier
    public <R> R foldOut(R r, Function2<? super Modifier.Element, ? super R, ? extends R> function2) {
        return (R) Modifier.Element.DefaultImpls.foldOut(this, r, function2);
    }

    @Override // androidx.compose.ui.Modifier
    public Modifier then(Modifier modifier) {
        return Modifier.Element.DefaultImpls.then(this, modifier);
    }

    public final Function3<Modifier, Composer, Integer, Modifier> getFactory() {
        return this.factory;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ComposedModifier(Function1<? super InspectorInfo, Unit> inspectorInfo, Function3<? super Modifier, ? super Composer, ? super Integer, ? extends Modifier> factory) {
        super(inspectorInfo);
        Intrinsics.checkNotNullParameter(inspectorInfo, "inspectorInfo");
        Intrinsics.checkNotNullParameter(factory, "factory");
        this.factory = factory;
    }
}
