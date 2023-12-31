package androidx.compose.ui.input.nestedscroll;

import androidx.compose.ui.Modifier;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NestedScrollModifier.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b`\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/ui/input/nestedscroll/NestedScrollModifier;", "Landroidx/compose/ui/Modifier$Element;", "connection", "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;", "getConnection", "()Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;", "dispatcher", "Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;", "getDispatcher", "()Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public interface NestedScrollModifier extends Modifier.Element {
    NestedScrollConnection getConnection();

    NestedScrollDispatcher getDispatcher();

    /* compiled from: NestedScrollModifier.kt */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        public static boolean all(NestedScrollModifier nestedScrollModifier, Function1<? super Modifier.Element, Boolean> predicate) {
            Intrinsics.checkNotNullParameter(nestedScrollModifier, "this");
            Intrinsics.checkNotNullParameter(predicate, "predicate");
            return Modifier.Element.DefaultImpls.all(nestedScrollModifier, predicate);
        }

        public static boolean any(NestedScrollModifier nestedScrollModifier, Function1<? super Modifier.Element, Boolean> predicate) {
            Intrinsics.checkNotNullParameter(nestedScrollModifier, "this");
            Intrinsics.checkNotNullParameter(predicate, "predicate");
            return Modifier.Element.DefaultImpls.any(nestedScrollModifier, predicate);
        }

        public static <R> R foldIn(NestedScrollModifier nestedScrollModifier, R r, Function2<? super R, ? super Modifier.Element, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(nestedScrollModifier, "this");
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) Modifier.Element.DefaultImpls.foldIn(nestedScrollModifier, r, operation);
        }

        public static <R> R foldOut(NestedScrollModifier nestedScrollModifier, R r, Function2<? super Modifier.Element, ? super R, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(nestedScrollModifier, "this");
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) Modifier.Element.DefaultImpls.foldOut(nestedScrollModifier, r, operation);
        }

        public static Modifier then(NestedScrollModifier nestedScrollModifier, Modifier other) {
            Intrinsics.checkNotNullParameter(nestedScrollModifier, "this");
            Intrinsics.checkNotNullParameter(other, "other");
            return Modifier.Element.DefaultImpls.then(nestedScrollModifier, other);
        }
    }
}
