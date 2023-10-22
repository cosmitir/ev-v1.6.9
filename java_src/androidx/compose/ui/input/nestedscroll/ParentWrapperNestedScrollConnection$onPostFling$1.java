package androidx.compose.ui.input.nestedscroll;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NestedScrollDelegatingWrapper.kt */
@Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "androidx.compose.ui.input.nestedscroll.ParentWrapperNestedScrollConnection", f = "NestedScrollDelegatingWrapper.kt", i = {0, 0, 0, 1}, l = {184, 185}, m = "onPostFling-RZ2iAVY", n = {"this", "consumed", "available", "selfConsumed"}, s = {"L$0", "J$0", "J$1", "J$0"})
/* loaded from: classes.dex */
public final class ParentWrapperNestedScrollConnection$onPostFling$1 extends ContinuationImpl {
    long J$0;
    long J$1;
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ParentWrapperNestedScrollConnection this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ParentWrapperNestedScrollConnection$onPostFling$1(ParentWrapperNestedScrollConnection parentWrapperNestedScrollConnection, Continuation<? super ParentWrapperNestedScrollConnection$onPostFling$1> continuation) {
        super(continuation);
        this.this$0 = parentWrapperNestedScrollConnection;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.mo1472onPostFlingRZ2iAVY(0L, 0L, this);
    }
}
