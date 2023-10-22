package androidx.compose.ui.node;

import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ViewInterop.android.kt */
@Metadata(d1 = {"\u0000.\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0010\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u001a1\u0010\u0005\u001a\u0002H\u0006\"\b\b\u0000\u0010\u0006*\u00020\u0007*\u00020\b2\u0006\u0010\t\u001a\u00020\u00012\f\u0010\n\u001a\b\u0012\u0004\u0012\u0002H\u00060\u000bH\u0007¢\u0006\u0002\u0010\f\u001a\f\u0010\r\u001a\u00020\u000e*\u00020\bH\u0000\u001a\u000e\u0010\u000f\u001a\u0004\u0018\u00010\u000e*\u00020\bH\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"viewAdaptersKey", "", "tagKey", "key", "", "getOrAddAdapter", "T", "Landroidx/compose/ui/node/ViewAdapter;", "Landroid/view/View;", "id", "factory", "Lkotlin/Function0;", "(Landroid/view/View;ILkotlin/jvm/functions/Function0;)Landroidx/compose/ui/node/ViewAdapter;", "getViewAdapter", "Landroidx/compose/ui/node/MergedViewAdapter;", "getViewAdapterIfExists", "ui_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class ViewInterop_androidKt {
    private static final int viewAdaptersKey = tagKey("ViewAdapter");

    /* JADX WARN: Removed duplicated region for block: B:17:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final <T extends androidx.compose.ui.node.ViewAdapter> T getOrAddAdapter(android.view.View r7, int r8, kotlin.jvm.functions.Function0<? extends T> r9) {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            java.lang.String r0 = "factory"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            androidx.compose.ui.node.MergedViewAdapter r7 = getViewAdapter(r7)
            java.util.List r0 = r7.getAdapters()
            int r1 = r0.size()
            int r1 = r1 + (-1)
            r2 = 0
            if (r1 < 0) goto L37
            r3 = 0
            r4 = r3
        L1d:
            int r5 = r4 + 1
            java.lang.Object r4 = r0.get(r4)
            r6 = r4
            androidx.compose.ui.node.ViewAdapter r6 = (androidx.compose.ui.node.ViewAdapter) r6
            int r6 = r6.getId()
            if (r6 != r8) goto L2e
            r6 = 1
            goto L2f
        L2e:
            r6 = r3
        L2f:
            if (r6 == 0) goto L32
            goto L38
        L32:
            if (r5 <= r1) goto L35
            goto L37
        L35:
            r4 = r5
            goto L1d
        L37:
            r4 = r2
        L38:
            boolean r8 = r4 instanceof androidx.compose.ui.node.ViewAdapter
            if (r8 == 0) goto L3f
            r2 = r4
            androidx.compose.ui.node.ViewAdapter r2 = (androidx.compose.ui.node.ViewAdapter) r2
        L3f:
            if (r2 == 0) goto L42
            goto L50
        L42:
            java.lang.Object r8 = r9.invoke()
            r2 = r8
            androidx.compose.ui.node.ViewAdapter r2 = (androidx.compose.ui.node.ViewAdapter) r2
            java.util.List r7 = r7.getAdapters()
            r7.add(r2)
        L50:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.ViewInterop_androidKt.getOrAddAdapter(android.view.View, int, kotlin.jvm.functions.Function0):androidx.compose.ui.node.ViewAdapter");
    }

    public static final int tagKey(String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return key.hashCode() | 50331648;
    }

    public static final MergedViewAdapter getViewAdapterIfExists(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Object tag = view.getTag(viewAdaptersKey);
        if (tag instanceof MergedViewAdapter) {
            return (MergedViewAdapter) tag;
        }
        return null;
    }

    public static final MergedViewAdapter getViewAdapter(View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        int i = viewAdaptersKey;
        Object tag = view.getTag(i);
        MergedViewAdapter mergedViewAdapter = tag instanceof MergedViewAdapter ? (MergedViewAdapter) tag : null;
        if (mergedViewAdapter == null) {
            MergedViewAdapter mergedViewAdapter2 = new MergedViewAdapter();
            view.setTag(i, mergedViewAdapter2);
            return mergedViewAdapter2;
        }
        return mergedViewAdapter;
    }
}
