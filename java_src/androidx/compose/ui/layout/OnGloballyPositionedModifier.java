package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: OnGloballyPositionedModifier.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/layout/OnGloballyPositionedModifier;", "Landroidx/compose/ui/Modifier$Element;", "onGloballyPositioned", "", "coordinates", "Landroidx/compose/ui/layout/LayoutCoordinates;", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public interface OnGloballyPositionedModifier extends Modifier.Element {
    void onGloballyPositioned(LayoutCoordinates layoutCoordinates);

    /* compiled from: OnGloballyPositionedModifier.kt */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        public static boolean all(OnGloballyPositionedModifier onGloballyPositionedModifier, Function1<? super Modifier.Element, Boolean> predicate) {
            Intrinsics.checkNotNullParameter(onGloballyPositionedModifier, "this");
            Intrinsics.checkNotNullParameter(predicate, "predicate");
            return Modifier.Element.DefaultImpls.all(onGloballyPositionedModifier, predicate);
        }

        public static boolean any(OnGloballyPositionedModifier onGloballyPositionedModifier, Function1<? super Modifier.Element, Boolean> predicate) {
            Intrinsics.checkNotNullParameter(onGloballyPositionedModifier, "this");
            Intrinsics.checkNotNullParameter(predicate, "predicate");
            return Modifier.Element.DefaultImpls.any(onGloballyPositionedModifier, predicate);
        }

        public static <R> R foldIn(OnGloballyPositionedModifier onGloballyPositionedModifier, R r, Function2<? super R, ? super Modifier.Element, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(onGloballyPositionedModifier, "this");
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) Modifier.Element.DefaultImpls.foldIn(onGloballyPositionedModifier, r, operation);
        }

        public static <R> R foldOut(OnGloballyPositionedModifier onGloballyPositionedModifier, R r, Function2<? super Modifier.Element, ? super R, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(onGloballyPositionedModifier, "this");
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) Modifier.Element.DefaultImpls.foldOut(onGloballyPositionedModifier, r, operation);
        }

        public static Modifier then(OnGloballyPositionedModifier onGloballyPositionedModifier, Modifier other) {
            Intrinsics.checkNotNullParameter(onGloballyPositionedModifier, "this");
            Intrinsics.checkNotNullParameter(other, "other");
            return Modifier.Element.DefaultImpls.then(onGloballyPositionedModifier, other);
        }
    }
}
