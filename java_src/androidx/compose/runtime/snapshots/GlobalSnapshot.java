package androidx.compose.runtime.snapshots;

import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Snapshot.kt */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\nH\u0016J\u0015\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0010¢\u0006\u0002\b\u000fJ\u0015\u0010\u0010\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0010¢\u0006\u0002\b\u0011J\r\u0010\u0012\u001a\u00020\nH\u0010¢\u0006\u0002\b\u0013J4\u0010\u0014\u001a\u00020\u00012\u0014\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\n\u0018\u00010\u00162\u0014\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\n\u0018\u00010\u0016H\u0016J\u001e\u0010\u0019\u001a\u00020\u000e2\u0014\u0010\u0015\u001a\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\n\u0018\u00010\u0016H\u0016¨\u0006\u001a"}, d2 = {"Landroidx/compose/runtime/snapshots/GlobalSnapshot;", "Landroidx/compose/runtime/snapshots/MutableSnapshot;", "id", "", "invalid", "Landroidx/compose/runtime/snapshots/SnapshotIdSet;", "(ILandroidx/compose/runtime/snapshots/SnapshotIdSet;)V", "apply", "Landroidx/compose/runtime/snapshots/SnapshotApplyResult;", "dispose", "", "nestedActivated", "", "snapshot", "Landroidx/compose/runtime/snapshots/Snapshot;", "nestedActivated$runtime_release", "nestedDeactivated", "nestedDeactivated$runtime_release", "notifyObjectsInitialized", "notifyObjectsInitialized$runtime_release", "takeNestedMutableSnapshot", "readObserver", "Lkotlin/Function1;", "", "writeObserver", "takeNestedSnapshot", "runtime_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class GlobalSnapshot extends MutableSnapshot {
    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public void dispose() {
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public Snapshot takeNestedSnapshot(final Function1<Object, Unit> function1) {
        return SnapshotKt.access$takeNewSnapshot(new Function1<SnapshotIdSet, ReadonlySnapshot>() { // from class: androidx.compose.runtime.snapshots.GlobalSnapshot$takeNestedSnapshot$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ReadonlySnapshot invoke(SnapshotIdSet invalid) {
                int i;
                Intrinsics.checkNotNullParameter(invalid, "invalid");
                synchronized (SnapshotKt.getLock()) {
                    i = SnapshotKt.nextSnapshotId;
                    SnapshotKt.nextSnapshotId = i + 1;
                }
                return new ReadonlySnapshot(i, invalid, function1);
            }
        });
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    public MutableSnapshot takeNestedMutableSnapshot(final Function1<Object, Unit> function1, final Function1<Object, Unit> function12) {
        return (MutableSnapshot) SnapshotKt.access$takeNewSnapshot(new Function1<SnapshotIdSet, MutableSnapshot>() { // from class: androidx.compose.runtime.snapshots.GlobalSnapshot$takeNestedMutableSnapshot$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final MutableSnapshot invoke(SnapshotIdSet invalid) {
                int i;
                Intrinsics.checkNotNullParameter(invalid, "invalid");
                synchronized (SnapshotKt.getLock()) {
                    i = SnapshotKt.nextSnapshotId;
                    SnapshotKt.nextSnapshotId = i + 1;
                }
                return new MutableSnapshot(i, invalid, function1, function12);
            }
        });
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public void notifyObjectsInitialized$runtime_release() {
        SnapshotKt.access$advanceGlobalSnapshot();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    /* renamed from: nestedDeactivated$runtime_release */
    public Void mo36nestedDeactivated$runtime_release(Snapshot snapshot) {
        Intrinsics.checkNotNullParameter(snapshot, "snapshot");
        SnapshotStateMapKt.unsupported();
        throw new KotlinNothingValueException();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    /* renamed from: nestedActivated$runtime_release */
    public Void mo35nestedActivated$runtime_release(Snapshot snapshot) {
        Intrinsics.checkNotNullParameter(snapshot, "snapshot");
        SnapshotStateMapKt.unsupported();
        throw new KotlinNothingValueException();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    public SnapshotApplyResult apply() {
        throw new IllegalStateException("Cannot apply the global snapshot directly. Call Snapshot.advanceGlobalSnapshot".toString());
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public GlobalSnapshot(int r5, androidx.compose.runtime.snapshots.SnapshotIdSet r6) {
        /*
            r4 = this;
            java.lang.String r0 = "invalid"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            java.lang.Object r0 = androidx.compose.runtime.snapshots.SnapshotKt.getLock()
            monitor-enter(r0)
            java.util.List r1 = androidx.compose.runtime.snapshots.SnapshotKt.access$getGlobalWriteObservers$p()     // Catch: java.lang.Throwable -> L3e
            java.util.Collection r1 = (java.util.Collection) r1     // Catch: java.lang.Throwable -> L3e
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L3e
            r1 = r1 ^ 1
            r2 = 0
            if (r1 == 0) goto L25
            java.util.List r1 = androidx.compose.runtime.snapshots.SnapshotKt.access$getGlobalWriteObservers$p()     // Catch: java.lang.Throwable -> L3e
            java.util.Collection r1 = (java.util.Collection) r1     // Catch: java.lang.Throwable -> L3e
            java.util.List r1 = kotlin.collections.CollectionsKt.toMutableList(r1)     // Catch: java.lang.Throwable -> L3e
            goto L26
        L25:
            r1 = r2
        L26:
            if (r1 != 0) goto L2a
            r3 = r2
            goto L39
        L2a:
            java.lang.Object r3 = kotlin.collections.CollectionsKt.singleOrNull(r1)     // Catch: java.lang.Throwable -> L3e
            kotlin.jvm.functions.Function1 r3 = (kotlin.jvm.functions.Function1) r3     // Catch: java.lang.Throwable -> L3e
            if (r3 != 0) goto L39
            androidx.compose.runtime.snapshots.GlobalSnapshot$1$1$1 r3 = new androidx.compose.runtime.snapshots.GlobalSnapshot$1$1$1     // Catch: java.lang.Throwable -> L3e
            r3.<init>()     // Catch: java.lang.Throwable -> L3e
            kotlin.jvm.functions.Function1 r3 = (kotlin.jvm.functions.Function1) r3     // Catch: java.lang.Throwable -> L3e
        L39:
            monitor-exit(r0)
            r4.<init>(r5, r6, r2, r3)
            return
        L3e:
            r5 = move-exception
            monitor-exit(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.snapshots.GlobalSnapshot.<init>(int, androidx.compose.runtime.snapshots.SnapshotIdSet):void");
    }
}
