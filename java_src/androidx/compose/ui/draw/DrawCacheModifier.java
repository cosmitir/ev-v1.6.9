package androidx.compose.ui.draw;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifier;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DrawModifier.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/draw/DrawCacheModifier;", "Landroidx/compose/ui/draw/DrawModifier;", "onBuildCache", "", "params", "Landroidx/compose/ui/draw/BuildDrawCacheParams;", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public interface DrawCacheModifier extends DrawModifier {
    void onBuildCache(BuildDrawCacheParams buildDrawCacheParams);

    /* compiled from: DrawModifier.kt */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        public static boolean all(DrawCacheModifier drawCacheModifier, Function1<? super Modifier.Element, Boolean> predicate) {
            Intrinsics.checkNotNullParameter(drawCacheModifier, "this");
            Intrinsics.checkNotNullParameter(predicate, "predicate");
            return DrawModifier.DefaultImpls.all(drawCacheModifier, predicate);
        }

        public static boolean any(DrawCacheModifier drawCacheModifier, Function1<? super Modifier.Element, Boolean> predicate) {
            Intrinsics.checkNotNullParameter(drawCacheModifier, "this");
            Intrinsics.checkNotNullParameter(predicate, "predicate");
            return DrawModifier.DefaultImpls.any(drawCacheModifier, predicate);
        }

        public static <R> R foldIn(DrawCacheModifier drawCacheModifier, R r, Function2<? super R, ? super Modifier.Element, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(drawCacheModifier, "this");
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) DrawModifier.DefaultImpls.foldIn(drawCacheModifier, r, operation);
        }

        public static <R> R foldOut(DrawCacheModifier drawCacheModifier, R r, Function2<? super Modifier.Element, ? super R, ? extends R> operation) {
            Intrinsics.checkNotNullParameter(drawCacheModifier, "this");
            Intrinsics.checkNotNullParameter(operation, "operation");
            return (R) DrawModifier.DefaultImpls.foldOut(drawCacheModifier, r, operation);
        }

        public static Modifier then(DrawCacheModifier drawCacheModifier, Modifier other) {
            Intrinsics.checkNotNullParameter(drawCacheModifier, "this");
            Intrinsics.checkNotNullParameter(other, "other");
            return DrawModifier.DefaultImpls.then(drawCacheModifier, other);
        }
    }
}
