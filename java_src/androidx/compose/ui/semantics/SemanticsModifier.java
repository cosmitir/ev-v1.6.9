package androidx.compose.ui.semantics;

import androidx.compose.ui.Modifier;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SemanticsModifier.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/ui/semantics/SemanticsModifier;", "Landroidx/compose/ui/Modifier$Element;", "id", "", "getId", "()I", "semanticsConfiguration", "Landroidx/compose/ui/semantics/SemanticsConfiguration;", "getSemanticsConfiguration", "()Landroidx/compose/ui/semantics/SemanticsConfiguration;", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public interface SemanticsModifier extends Modifier.Element {
    int getId();

    SemanticsConfiguration getSemanticsConfiguration();

    /* compiled from: SemanticsModifier.kt */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        public static boolean all(SemanticsModifier semanticsModifier, Function1<? super Modifier.Element, Boolean> predicate) {
            Intrinsics.checkNotNullParameter(semanticsModifier, "this");
            Intrinsics.checkNotNullParameter(predicate, "predicate");
            return Modifier.Element.DefaultImpls.all(semanticsModifier, predicate);
        }

        public static boolean any(SemanticsModifier semanticsModifier, Function1<? super Modifier.Element, Boolean> predicate) {
            Intrinsics.checkNotNullParameter(semanticsModifier, "this");
            Intrinsics.checkNotNullParameter(predicate, "predicate");
            return Modifier.Element.DefaultImpls.any(semanticsModifier, predicate);
        }

        public static <R> R foldIn(SemanticsModifier semanticsModifier, R r, Function2<? super R, ? super Modifier.Element, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(semanticsModifier, "this");
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) Modifier.Element.DefaultImpls.foldIn(semanticsModifier, r, operation);
        }

        public static <R> R foldOut(SemanticsModifier semanticsModifier, R r, Function2<? super Modifier.Element, ? super R, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(semanticsModifier, "this");
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) Modifier.Element.DefaultImpls.foldOut(semanticsModifier, r, operation);
        }

        public static Modifier then(SemanticsModifier semanticsModifier, Modifier other) {
            Intrinsics.checkNotNullParameter(semanticsModifier, "this");
            Intrinsics.checkNotNullParameter(other, "other");
            return Modifier.Element.DefaultImpls.then(semanticsModifier, other);
        }
    }
}
