package androidx.compose.ui.text.input;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TextInputServiceAndroid.android.kt */
@Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
@DebugMetadata(c = "androidx.compose.ui.text.input.TextInputServiceAndroid", f = "TextInputServiceAndroid.android.kt", i = {0}, l = {182}, m = "keyboardVisibilityEventLoop", n = {"this"}, s = {"L$0"})
/* loaded from: classes.dex */
public final class TextInputServiceAndroid$keyboardVisibilityEventLoop$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ TextInputServiceAndroid this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextInputServiceAndroid$keyboardVisibilityEventLoop$1(TextInputServiceAndroid textInputServiceAndroid, Continuation<? super TextInputServiceAndroid$keyboardVisibilityEventLoop$1> continuation) {
        super(continuation);
        this.this$0 = textInputServiceAndroid;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.keyboardVisibilityEventLoop(this);
    }
}
