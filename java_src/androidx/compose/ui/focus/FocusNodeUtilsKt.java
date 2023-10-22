package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.ModifiedFocusNode;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: FocusNodeUtils.kt */
@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001a\u0010\u0004\u001a\u00020\u0005*\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0000\u001a\u001e\u0010\n\u001a\u0004\u0018\u00010\t*\u00020\u00062\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\fH\u0000\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080D¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003¨\u0006\r"}, d2 = {"FOCUS_TAG", "", "getFOCUS_TAG", "()Ljava/lang/String;", "findFocusableChildren", "", "Landroidx/compose/ui/node/LayoutNode;", "focusableChildren", "", "Landroidx/compose/ui/node/ModifiedFocusNode;", "searchChildrenForFocusNode", "queue", "Landroidx/compose/runtime/collection/MutableVector;", "ui_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class FocusNodeUtilsKt {
    private static final String FOCUS_TAG = "Compose Focus";

    public static final String getFOCUS_TAG() {
        return FOCUS_TAG;
    }

    public static final void findFocusableChildren(LayoutNode layoutNode, List<ModifiedFocusNode> focusableChildren) {
        Intrinsics.checkNotNullParameter(layoutNode, "<this>");
        Intrinsics.checkNotNullParameter(focusableChildren, "focusableChildren");
        ModifiedFocusNode findNextFocusWrapper = layoutNode.getOuterLayoutNodeWrapper$ui_release().findNextFocusWrapper();
        if ((findNextFocusWrapper == null ? null : Boolean.valueOf(focusableChildren.add(findNextFocusWrapper))) != null) {
            return;
        }
        List<LayoutNode> children$ui_release = layoutNode.getChildren$ui_release();
        int size = children$ui_release.size() - 1;
        if (size < 0) {
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i + 1;
            findFocusableChildren(children$ui_release.get(i), focusableChildren);
            if (i2 > size) {
                return;
            }
            i = i2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.compose.ui.node.ModifiedFocusNode searchChildrenForFocusNode(androidx.compose.ui.node.LayoutNode r5, androidx.compose.runtime.collection.MutableVector<androidx.compose.ui.node.LayoutNode> r6) {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "queue"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            androidx.compose.runtime.collection.MutableVector r5 = r5.get_children$ui_release()
            int r0 = r5.getSize()
            r1 = 0
            if (r0 <= 0) goto L31
            java.lang.Object[] r5 = r5.getContent()
            r2 = r1
        L1b:
            r3 = r5[r2]
            androidx.compose.ui.node.LayoutNode r3 = (androidx.compose.ui.node.LayoutNode) r3
            androidx.compose.ui.node.LayoutNodeWrapper r4 = r3.getOuterLayoutNodeWrapper$ui_release()
            androidx.compose.ui.node.ModifiedFocusNode r4 = r4.findNextFocusWrapper()
            if (r4 == 0) goto L2a
            return r4
        L2a:
            r6.add(r3)
            int r2 = r2 + 1
            if (r2 < r0) goto L1b
        L31:
            boolean r5 = r6.isNotEmpty()
            if (r5 == 0) goto L44
            java.lang.Object r5 = r6.removeAt(r1)
            androidx.compose.ui.node.LayoutNode r5 = (androidx.compose.ui.node.LayoutNode) r5
            androidx.compose.ui.node.ModifiedFocusNode r5 = searchChildrenForFocusNode(r5, r6)
            if (r5 == 0) goto L31
            return r5
        L44:
            r5 = 0
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.focus.FocusNodeUtilsKt.searchChildrenForFocusNode(androidx.compose.ui.node.LayoutNode, androidx.compose.runtime.collection.MutableVector):androidx.compose.ui.node.ModifiedFocusNode");
    }

    public static /* synthetic */ ModifiedFocusNode searchChildrenForFocusNode$default(LayoutNode layoutNode, MutableVector mutableVector, int i, Object obj) {
        if ((i & 1) != 0) {
            mutableVector = new MutableVector(new LayoutNode[16], 0);
        }
        return searchChildrenForFocusNode(layoutNode, mutableVector);
    }
}
