package androidx.compose.ui.focus;

import androidx.compose.ui.node.LayoutNodeWrapper;
import androidx.compose.ui.node.ModifiedFocusNode;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: FocusTraversal.kt */
@Metadata(d1 = {"\u0000(\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\u001a)\u0010\u0002\u001a\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\t\u0010\n\u001a\u000e\u0010\u000b\u001a\u0004\u0018\u00010\u0004*\u00020\u0004H\u0000\u001a!\u0010\f\u001a\u00020\r*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000e\u0010\u000f\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006\u0010"}, d2 = {"invalidFocusDirection", "", "customFocusSearch", "Landroidx/compose/ui/focus/FocusRequester;", "Landroidx/compose/ui/node/ModifiedFocusNode;", "focusDirection", "Landroidx/compose/ui/focus/FocusDirection;", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "customFocusSearch--OM-vw8", "(Landroidx/compose/ui/node/ModifiedFocusNode;ILandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/focus/FocusRequester;", "findActiveFocusNode", "moveFocus", "", "moveFocus-Mxy_nc0", "(Landroidx/compose/ui/node/ModifiedFocusNode;I)Z", "ui_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class FocusTraversalKt {
    private static final String invalidFocusDirection = "Invalid FocusDirection";

    /* compiled from: FocusTraversal.kt */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[LayoutDirection.valuesCustom().length];
            iArr[LayoutDirection.Rtl.ordinal()] = 1;
            iArr[LayoutDirection.Ltr.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[FocusStateImpl.valuesCustom().length];
            iArr2[FocusStateImpl.Active.ordinal()] = 1;
            iArr2[FocusStateImpl.Captured.ordinal()] = 2;
            iArr2[FocusStateImpl.ActiveParent.ordinal()] = 3;
            iArr2[FocusStateImpl.Inactive.ordinal()] = 4;
            iArr2[FocusStateImpl.Disabled.ordinal()] = 5;
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* renamed from: moveFocus-Mxy_nc0  reason: not valid java name */
    public static final boolean m77moveFocusMxy_nc0(ModifiedFocusNode moveFocus, int i) {
        ModifiedFocusNode findParentFocusNode$ui_release;
        int m69getLeftdhqQ8s;
        Intrinsics.checkNotNullParameter(moveFocus, "$this$moveFocus");
        LayoutDirection layoutDirection = LayoutDirection.Ltr;
        ModifiedFocusNode findActiveFocusNode = findActiveFocusNode(moveFocus);
        if (findActiveFocusNode == null) {
            return false;
        }
        FocusRequester m76customFocusSearchOMvw8 = m76customFocusSearchOMvw8(findActiveFocusNode, i, layoutDirection);
        if (!Intrinsics.areEqual(m76customFocusSearchOMvw8, FocusRequester.Companion.getDefault())) {
            m76customFocusSearchOMvw8.requestFocus();
            return true;
        }
        if (FocusDirection.m61equalsimpl0(i, FocusDirection.Companion.m70getNextdhqQ8s()) ? true : FocusDirection.m61equalsimpl0(i, FocusDirection.Companion.m72getPreviousdhqQ8s())) {
            findParentFocusNode$ui_release = null;
        } else {
            if (FocusDirection.m61equalsimpl0(i, FocusDirection.Companion.m69getLeftdhqQ8s()) ? true : FocusDirection.m61equalsimpl0(i, FocusDirection.Companion.m73getRightdhqQ8s()) ? true : FocusDirection.m61equalsimpl0(i, FocusDirection.Companion.m74getUpdhqQ8s()) ? true : FocusDirection.m61equalsimpl0(i, FocusDirection.Companion.m67getDowndhqQ8s())) {
                findParentFocusNode$ui_release = TwoDimensionalFocusSearchKt.m82twoDimensionalFocusSearchMxy_nc0(moveFocus, i);
            } else if (FocusDirection.m61equalsimpl0(i, FocusDirection.Companion.m68getIndhqQ8s())) {
                int i2 = WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
                if (i2 == 1) {
                    m69getLeftdhqQ8s = FocusDirection.Companion.m69getLeftdhqQ8s();
                } else if (i2 != 2) {
                    throw new NoWhenBranchMatchedException();
                } else {
                    m69getLeftdhqQ8s = FocusDirection.Companion.m73getRightdhqQ8s();
                }
                findParentFocusNode$ui_release = TwoDimensionalFocusSearchKt.m82twoDimensionalFocusSearchMxy_nc0(findActiveFocusNode, m69getLeftdhqQ8s);
            } else if (FocusDirection.m61equalsimpl0(i, FocusDirection.Companion.m71getOutdhqQ8s())) {
                findParentFocusNode$ui_release = findActiveFocusNode.findParentFocusNode$ui_release();
            } else {
                throw new IllegalStateException(invalidFocusDirection.toString());
            }
        }
        if (findParentFocusNode$ui_release == null) {
            return false;
        }
        FocusTransactionsKt.requestFocus(findParentFocusNode$ui_release, false);
        return true;
    }

    public static final ModifiedFocusNode findActiveFocusNode(ModifiedFocusNode modifiedFocusNode) {
        Intrinsics.checkNotNullParameter(modifiedFocusNode, "<this>");
        int i = WhenMappings.$EnumSwitchMapping$1[modifiedFocusNode.getFocusState().ordinal()];
        if (i == 1 || i == 2) {
            return modifiedFocusNode;
        }
        if (i == 3) {
            ModifiedFocusNode focusedChild = modifiedFocusNode.getFocusedChild();
            if (focusedChild != null) {
                return findActiveFocusNode(focusedChild);
            }
        } else if (i != 4 && i != 5) {
            throw new NoWhenBranchMatchedException();
        }
        return null;
    }

    /* renamed from: customFocusSearch--OM-vw8  reason: not valid java name */
    private static final FocusRequester m76customFocusSearchOMvw8(ModifiedFocusNode modifiedFocusNode, int i, LayoutDirection layoutDirection) {
        FocusRequester start;
        FocusRequester end;
        FocusOrder focusOrder = new FocusOrder();
        LayoutNodeWrapper wrappedBy$ui_release = modifiedFocusNode.getWrappedBy$ui_release();
        if (wrappedBy$ui_release != null) {
            wrappedBy$ui_release.populateFocusOrder(focusOrder);
        }
        if (FocusDirection.m61equalsimpl0(i, FocusDirection.Companion.m70getNextdhqQ8s())) {
            return focusOrder.getNext();
        }
        if (FocusDirection.m61equalsimpl0(i, FocusDirection.Companion.m72getPreviousdhqQ8s())) {
            return focusOrder.getPrevious();
        }
        if (FocusDirection.m61equalsimpl0(i, FocusDirection.Companion.m74getUpdhqQ8s())) {
            return focusOrder.getUp();
        }
        if (FocusDirection.m61equalsimpl0(i, FocusDirection.Companion.m67getDowndhqQ8s())) {
            return focusOrder.getDown();
        }
        if (FocusDirection.m61equalsimpl0(i, FocusDirection.Companion.m69getLeftdhqQ8s())) {
            int i2 = WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
            if (i2 == 1) {
                end = focusOrder.getEnd();
            } else if (i2 == 2) {
                end = focusOrder.getStart();
            } else {
                throw new NoWhenBranchMatchedException();
            }
            if (Intrinsics.areEqual(end, FocusRequester.Companion.getDefault())) {
                end = null;
            }
            return end == null ? focusOrder.getLeft() : end;
        } else if (FocusDirection.m61equalsimpl0(i, FocusDirection.Companion.m73getRightdhqQ8s())) {
            int i3 = WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
            if (i3 == 1) {
                start = focusOrder.getStart();
            } else if (i3 == 2) {
                start = focusOrder.getEnd();
            } else {
                throw new NoWhenBranchMatchedException();
            }
            if (Intrinsics.areEqual(start, FocusRequester.Companion.getDefault())) {
                start = null;
            }
            return start == null ? focusOrder.getRight() : start;
        } else if (FocusDirection.m61equalsimpl0(i, FocusDirection.Companion.m68getIndhqQ8s())) {
            return FocusRequester.Companion.getDefault();
        } else {
            if (FocusDirection.m61equalsimpl0(i, FocusDirection.Companion.m71getOutdhqQ8s())) {
                return FocusRequester.Companion.getDefault();
            }
            throw new IllegalStateException(invalidFocusDirection.toString());
        }
    }
}
