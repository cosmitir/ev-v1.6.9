package androidx.compose.runtime;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Recomposer.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "parentFrameClock", "Landroidx/compose/runtime/MonotonicFrameClock;"}, k = 3, mv = {1, 6, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.runtime.Recomposer$runRecomposeAndApplyChanges$2", f = "Recomposer.kt", i = {0, 0, 0, 1, 1, 1}, l = {407, TypedValues.CycleType.TYPE_WAVE_PHASE}, m = "invokeSuspend", n = {"parentFrameClock", "toRecompose", "toApply", "parentFrameClock", "toRecompose", "toApply"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2"})
/* loaded from: classes.dex */
public final class Recomposer$runRecomposeAndApplyChanges$2 extends SuspendLambda implements Function3<CoroutineScope, MonotonicFrameClock, Continuation<? super Unit>, Object> {
    /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ Recomposer this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Recomposer$runRecomposeAndApplyChanges$2(Recomposer recomposer, Continuation<? super Recomposer$runRecomposeAndApplyChanges$2> continuation) {
        super(3, continuation);
        this.this$0 = recomposer;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(CoroutineScope coroutineScope, MonotonicFrameClock monotonicFrameClock, Continuation<? super Unit> continuation) {
        Recomposer$runRecomposeAndApplyChanges$2 recomposer$runRecomposeAndApplyChanges$2 = new Recomposer$runRecomposeAndApplyChanges$2(this.this$0, continuation);
        recomposer$runRecomposeAndApplyChanges$2.L$0 = monotonicFrameClock;
        return recomposer$runRecomposeAndApplyChanges$2.invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x007b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v8, types: [java.util.List] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x008d -> B:11:0x0056). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x00a8 -> B:11:0x0056). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r11.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L40
            if (r1 == r3) goto L2b
            if (r1 != r2) goto L23
            java.lang.Object r1 = r11.L$2
            java.util.List r1 = (java.util.List) r1
            java.lang.Object r4 = r11.L$1
            java.util.List r4 = (java.util.List) r4
            java.lang.Object r5 = r11.L$0
            androidx.compose.runtime.MonotonicFrameClock r5 = (androidx.compose.runtime.MonotonicFrameClock) r5
            kotlin.ResultKt.throwOnFailure(r12)
            r12 = r5
            r5 = r11
            r10 = r4
            r4 = r1
            r1 = r10
            goto L56
        L23:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L2b:
            java.lang.Object r1 = r11.L$2
            java.util.List r1 = (java.util.List) r1
            java.lang.Object r4 = r11.L$1
            java.util.List r4 = (java.util.List) r4
            java.lang.Object r5 = r11.L$0
            androidx.compose.runtime.MonotonicFrameClock r5 = (androidx.compose.runtime.MonotonicFrameClock) r5
            kotlin.ResultKt.throwOnFailure(r12)
            r12 = r5
            r5 = r11
            r10 = r4
            r4 = r1
            r1 = r10
            goto L72
        L40:
            kotlin.ResultKt.throwOnFailure(r12)
            java.lang.Object r12 = r11.L$0
            androidx.compose.runtime.MonotonicFrameClock r12 = (androidx.compose.runtime.MonotonicFrameClock) r12
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.util.List r1 = (java.util.List) r1
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            java.util.List r4 = (java.util.List) r4
            r5 = r11
        L56:
            androidx.compose.runtime.Recomposer r6 = r5.this$0
            boolean r6 = androidx.compose.runtime.Recomposer.access$getShouldKeepRecomposing(r6)
            if (r6 == 0) goto Lae
            androidx.compose.runtime.Recomposer r6 = r5.this$0
            r7 = r5
            kotlin.coroutines.Continuation r7 = (kotlin.coroutines.Continuation) r7
            r5.L$0 = r12
            r5.L$1 = r1
            r5.L$2 = r4
            r5.label = r3
            java.lang.Object r6 = androidx.compose.runtime.Recomposer.access$awaitWorkAvailable(r6, r7)
            if (r6 != r0) goto L72
            return r0
        L72:
            androidx.compose.runtime.Recomposer r6 = r5.this$0
            java.lang.Object r6 = androidx.compose.runtime.Recomposer.access$getStateLock$p(r6)
            androidx.compose.runtime.Recomposer r7 = r5.this$0
            monitor-enter(r6)
            boolean r8 = androidx.compose.runtime.Recomposer.access$getHasFrameWorkLocked(r7)     // Catch: java.lang.Throwable -> Lab
            r9 = 0
            if (r8 != 0) goto L8c
            androidx.compose.runtime.Recomposer.access$recordComposerModificationsLocked(r7)     // Catch: java.lang.Throwable -> Lab
            boolean r7 = androidx.compose.runtime.Recomposer.access$getHasFrameWorkLocked(r7)     // Catch: java.lang.Throwable -> Lab
            if (r7 != 0) goto L8c
            r9 = r3
        L8c:
            monitor-exit(r6)
            if (r9 == 0) goto L90
            goto L56
        L90:
            androidx.compose.runtime.Recomposer$runRecomposeAndApplyChanges$2$2 r6 = new androidx.compose.runtime.Recomposer$runRecomposeAndApplyChanges$2$2
            androidx.compose.runtime.Recomposer r7 = r5.this$0
            r6.<init>()
            kotlin.jvm.functions.Function1 r6 = (kotlin.jvm.functions.Function1) r6
            r7 = r5
            kotlin.coroutines.Continuation r7 = (kotlin.coroutines.Continuation) r7
            r5.L$0 = r12
            r5.L$1 = r1
            r5.L$2 = r4
            r5.label = r2
            java.lang.Object r6 = r12.withFrameNanos(r6, r7)
            if (r6 != r0) goto L56
            return r0
        Lab:
            r12 = move-exception
            monitor-exit(r6)
            throw r12
        Lae:
            kotlin.Unit r12 = kotlin.Unit.INSTANCE
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.Recomposer$runRecomposeAndApplyChanges$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
