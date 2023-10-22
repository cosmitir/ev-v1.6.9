package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.collection.IdentityArraySet;
import androidx.compose.runtime.collection.IdentityScopeMap;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SnapshotStateObserver.kt */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0016\b\u0007\u0018\u00002\u00020\u0001:\u0001*B.\u0012'\u0010\u0002\u001a#\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\u0010\tJ\b\u0010\u0018\u001a\u00020\u0005H\u0002J\u0006\u0010\u0019\u001a\u00020\u0005J\u000e\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0001J)\u0010\u001b\u001a\u00020\u00052!\u0010\u001c\u001a\u001d\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\u001a\u0012\u0004\u0012\u00020\u00150\u0003J,\u0010\u001d\u001a\b\u0012\u0004\u0012\u0002H\u001e0\f\"\b\b\u0000\u0010\u001e*\u00020\u00012\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u0002H\u001e\u0012\u0004\u0012\u00020\u00050\u0003H\u0002J\u001c\u0010 \u001a\u00020\u00052\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00010\u000f2\u0006\u0010\"\u001a\u00020\u0010J?\u0010#\u001a\u00020\u0005\"\b\b\u0000\u0010\u001e*\u00020\u00012\u0006\u0010\u001a\u001a\u0002H\u001e2\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u0002H\u001e\u0012\u0004\u0012\u00020\u00050\u00032\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0002\u0010&J\u0006\u0010'\u001a\u00020\u0005J\u0006\u0010(\u001a\u00020\u0005J\u0014\u0010)\u001a\u00020\u00052\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004R\u0018\u0010\n\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R&\u0010\r\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00010\u000f\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00050\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\b\u0012\u0002\b\u0003\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R/\u0010\u0002\u001a#\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00050\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006+"}, d2 = {"Landroidx/compose/runtime/snapshots/SnapshotStateObserver;", "", "onChangedExecutor", "Lkotlin/Function1;", "Lkotlin/Function0;", "", "Lkotlin/ParameterName;", "name", "callback", "(Lkotlin/jvm/functions/Function1;)V", "applyMaps", "Landroidx/compose/runtime/collection/MutableVector;", "Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;", "applyObserver", "Lkotlin/Function2;", "", "Landroidx/compose/runtime/snapshots/Snapshot;", "applyUnsubscribe", "Landroidx/compose/runtime/snapshots/ObserverHandle;", "currentMap", "isObserving", "", "isPaused", "readObserver", "callOnChanged", "clear", "scope", "clearIf", "predicate", "ensureMap", "T", "onChanged", "notifyChanges", "changes", "snapshot", "observeReads", "onValueChangedForScope", "block", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V", "start", "stop", "withNoObservations", "ApplyMap", "runtime_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SnapshotStateObserver {
    public static final int $stable = 8;
    private final MutableVector<ApplyMap<?>> applyMaps;
    private final Function2<Set<? extends Object>, Snapshot, Unit> applyObserver;
    private ObserverHandle applyUnsubscribe;
    private ApplyMap<?> currentMap;
    private boolean isObserving;
    private boolean isPaused;
    private final Function1<Function0<Unit>, Unit> onChangedExecutor;
    private final Function1<Object, Unit> readObserver;

    /* JADX WARN: Multi-variable type inference failed */
    public SnapshotStateObserver(Function1<? super Function0<Unit>, Unit> onChangedExecutor) {
        Intrinsics.checkNotNullParameter(onChangedExecutor, "onChangedExecutor");
        this.onChangedExecutor = onChangedExecutor;
        this.applyObserver = new Function2<Set<? extends Object>, Snapshot, Unit>() { // from class: androidx.compose.runtime.snapshots.SnapshotStateObserver$applyObserver$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Set<? extends Object> set, Snapshot snapshot) {
                invoke2(set, snapshot);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Set<? extends Object> applied, Snapshot noName_1) {
                MutableVector mutableVector;
                MutableVector mutableVector2;
                int i;
                Function1 function1;
                Intrinsics.checkNotNullParameter(applied, "applied");
                Intrinsics.checkNotNullParameter(noName_1, "$noName_1");
                mutableVector = SnapshotStateObserver.this.applyMaps;
                SnapshotStateObserver snapshotStateObserver = SnapshotStateObserver.this;
                synchronized (mutableVector) {
                    mutableVector2 = snapshotStateObserver.applyMaps;
                    int size = mutableVector2.getSize();
                    i = 0;
                    if (size > 0) {
                        Object[] content = mutableVector2.getContent();
                        int i2 = 0;
                        do {
                            SnapshotStateObserver.ApplyMap applyMap = (SnapshotStateObserver.ApplyMap) content[i];
                            HashSet<Object> invalidated = applyMap.getInvalidated();
                            IdentityScopeMap map = applyMap.getMap();
                            for (Object obj : applied) {
                                int find = map.find(obj);
                                if (find >= 0) {
                                    for (Object obj2 : map.scopeSetAt(find)) {
                                        invalidated.add(obj2);
                                        i2 = 1;
                                    }
                                }
                            }
                            i++;
                        } while (i < size);
                        i = i2;
                    }
                    Unit unit = Unit.INSTANCE;
                }
                if (i != 0) {
                    function1 = SnapshotStateObserver.this.onChangedExecutor;
                    final SnapshotStateObserver snapshotStateObserver2 = SnapshotStateObserver.this;
                    function1.invoke(new Function0<Unit>() { // from class: androidx.compose.runtime.snapshots.SnapshotStateObserver$applyObserver$1.2
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public /* bridge */ /* synthetic */ Unit invoke() {
                            invoke2();
                            return Unit.INSTANCE;
                        }

                        /* renamed from: invoke  reason: avoid collision after fix types in other method */
                        public final void invoke2() {
                            SnapshotStateObserver.this.callOnChanged();
                        }
                    });
                }
            }
        };
        this.readObserver = new Function1<Object, Unit>() { // from class: androidx.compose.runtime.snapshots.SnapshotStateObserver$readObserver$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
                invoke2(obj);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Object state) {
                boolean z;
                MutableVector mutableVector;
                SnapshotStateObserver.ApplyMap applyMap;
                Intrinsics.checkNotNullParameter(state, "state");
                z = SnapshotStateObserver.this.isPaused;
                if (z) {
                    return;
                }
                mutableVector = SnapshotStateObserver.this.applyMaps;
                SnapshotStateObserver snapshotStateObserver = SnapshotStateObserver.this;
                synchronized (mutableVector) {
                    applyMap = snapshotStateObserver.currentMap;
                    Intrinsics.checkNotNull(applyMap);
                    applyMap.addValue(state);
                    Unit unit = Unit.INSTANCE;
                }
            }
        };
        this.applyMaps = new MutableVector<>(new ApplyMap[16], 0);
    }

    public final <T> void observeReads(T scope, Function1<? super T, Unit> onValueChangedForScope, Function0<Unit> block) {
        ApplyMap<?> ensureMap;
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(onValueChangedForScope, "onValueChangedForScope");
        Intrinsics.checkNotNullParameter(block, "block");
        ApplyMap<?> applyMap = this.currentMap;
        boolean z = this.isPaused;
        synchronized (this.applyMaps) {
            ensureMap = ensureMap(onValueChangedForScope);
        }
        Object currentScope = ensureMap.getCurrentScope();
        ensureMap.setCurrentScope(scope);
        this.currentMap = ensureMap;
        this.isPaused = false;
        synchronized (this.applyMaps) {
            IdentityScopeMap<?> map = ensureMap.getMap();
            int size = map.getSize();
            int i = 0;
            int i2 = 0;
            while (i < size) {
                int i3 = i + 1;
                int i4 = map.getValueOrder()[i];
                IdentityArraySet<?> identityArraySet = map.getScopeSets()[i4];
                Intrinsics.checkNotNull(identityArraySet);
                int size2 = identityArraySet.size();
                int i5 = size;
                int i6 = 0;
                int i7 = 0;
                while (i7 < size2) {
                    int i8 = i7 + 1;
                    int i9 = size2;
                    Object obj = identityArraySet.getValues()[i7];
                    if (obj == null) {
                        throw new NullPointerException("null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet");
                    }
                    if (!(obj == scope)) {
                        if (i6 != i7) {
                            identityArraySet.getValues()[i6] = obj;
                        }
                        i6++;
                    }
                    i7 = i8;
                    size2 = i9;
                }
                int size3 = identityArraySet.size();
                for (int i10 = i6; i10 < size3; i10++) {
                    identityArraySet.getValues()[i10] = null;
                }
                identityArraySet.setSize(i6);
                if (identityArraySet.size() > 0) {
                    if (i2 != i) {
                        int i11 = map.getValueOrder()[i2];
                        map.getValueOrder()[i2] = i4;
                        map.getValueOrder()[i] = i11;
                    }
                    i2++;
                }
                i = i3;
                size = i5;
            }
            int size4 = map.getSize();
            for (int i12 = i2; i12 < size4; i12++) {
                map.getValues()[map.getValueOrder()[i12]] = null;
            }
            map.setSize(i2);
            Unit unit = Unit.INSTANCE;
        }
        if (!this.isObserving) {
            this.isObserving = true;
            try {
                Snapshot.Companion.observe(this.readObserver, null, block);
            } finally {
                this.isObserving = false;
            }
        } else {
            block.invoke();
        }
        this.currentMap = applyMap;
        ensureMap.setCurrentScope(currentScope);
        this.isPaused = z;
    }

    public final void withNoObservations(Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        boolean z = this.isPaused;
        this.isPaused = true;
        try {
            block.invoke();
        } finally {
            this.isPaused = z;
        }
    }

    public final void clear(Object scope) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        synchronized (this.applyMaps) {
            MutableVector<ApplyMap<?>> mutableVector = this.applyMaps;
            int size = mutableVector.getSize();
            if (size > 0) {
                ApplyMap<?>[] content = mutableVector.getContent();
                int i = 0;
                while (true) {
                    IdentityScopeMap<?> map = content[i].getMap();
                    int size2 = map.getSize();
                    int i2 = 0;
                    int i3 = 0;
                    while (i2 < size2) {
                        int i4 = i2 + 1;
                        int i5 = map.getValueOrder()[i2];
                        IdentityArraySet<?> identityArraySet = map.getScopeSets()[i5];
                        Intrinsics.checkNotNull(identityArraySet);
                        int size3 = identityArraySet.size();
                        int i6 = 0;
                        int i7 = 0;
                        while (i6 < size3) {
                            int i8 = i6 + 1;
                            Object obj = identityArraySet.getValues()[i6];
                            if (obj == null) {
                                throw new NullPointerException("null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet");
                            }
                            if (!(obj == scope)) {
                                if (i7 != i6) {
                                    identityArraySet.getValues()[i7] = obj;
                                }
                                i7++;
                            }
                            i6 = i8;
                        }
                        int size4 = identityArraySet.size();
                        for (int i9 = i7; i9 < size4; i9++) {
                            identityArraySet.getValues()[i9] = null;
                        }
                        identityArraySet.setSize(i7);
                        if (identityArraySet.size() > 0) {
                            if (i3 != i2) {
                                int i10 = map.getValueOrder()[i3];
                                map.getValueOrder()[i3] = i5;
                                map.getValueOrder()[i2] = i10;
                            }
                            i3++;
                        }
                        i2 = i4;
                    }
                    int size5 = map.getSize();
                    for (int i11 = i3; i11 < size5; i11++) {
                        map.getValues()[map.getValueOrder()[i11]] = null;
                    }
                    map.setSize(i3);
                    i++;
                    if (i >= size) {
                        break;
                    }
                }
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void clearIf(Function1<Object, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        synchronized (this.applyMaps) {
            MutableVector<ApplyMap<?>> mutableVector = this.applyMaps;
            int size = mutableVector.getSize();
            if (size > 0) {
                ApplyMap<?>[] content = mutableVector.getContent();
                int i = 0;
                while (true) {
                    IdentityScopeMap<?> map = content[i].getMap();
                    int size2 = map.getSize();
                    int i2 = 0;
                    int i3 = 0;
                    while (i2 < size2) {
                        int i4 = i2 + 1;
                        int i5 = map.getValueOrder()[i2];
                        IdentityArraySet<?> identityArraySet = map.getScopeSets()[i5];
                        Intrinsics.checkNotNull(identityArraySet);
                        int size3 = identityArraySet.size();
                        int i6 = 0;
                        int i7 = 0;
                        while (i6 < size3) {
                            int i8 = i6 + 1;
                            Object obj = identityArraySet.getValues()[i6];
                            if (obj == null) {
                                throw new NullPointerException("null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet");
                            }
                            if (!predicate.invoke(obj).booleanValue()) {
                                if (i7 != i6) {
                                    identityArraySet.getValues()[i7] = obj;
                                }
                                i7++;
                            }
                            i6 = i8;
                        }
                        int size4 = identityArraySet.size();
                        for (int i9 = i7; i9 < size4; i9++) {
                            identityArraySet.getValues()[i9] = null;
                        }
                        identityArraySet.setSize(i7);
                        if (identityArraySet.size() > 0) {
                            if (i3 != i2) {
                                int i10 = map.getValueOrder()[i3];
                                map.getValueOrder()[i3] = i5;
                                map.getValueOrder()[i2] = i10;
                            }
                            i3++;
                        }
                        i2 = i4;
                    }
                    int size5 = map.getSize();
                    for (int i11 = i3; i11 < size5; i11++) {
                        map.getValues()[map.getValueOrder()[i11]] = null;
                    }
                    map.setSize(i3);
                    i++;
                    if (i >= size) {
                        break;
                    }
                }
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void start() {
        this.applyUnsubscribe = Snapshot.Companion.registerApplyObserver(this.applyObserver);
    }

    public final void stop() {
        ObserverHandle observerHandle = this.applyUnsubscribe;
        if (observerHandle == null) {
            return;
        }
        observerHandle.dispose();
    }

    public final void notifyChanges(Set<? extends Object> changes, Snapshot snapshot) {
        Intrinsics.checkNotNullParameter(changes, "changes");
        Intrinsics.checkNotNullParameter(snapshot, "snapshot");
        this.applyObserver.invoke(changes, snapshot);
    }

    public final void clear() {
        synchronized (this.applyMaps) {
            MutableVector<ApplyMap<?>> mutableVector = this.applyMaps;
            int size = mutableVector.getSize();
            if (size <= 0) {
                Unit unit = Unit.INSTANCE;
            } else {
                ApplyMap<?>[] content = mutableVector.getContent();
                int i = 0;
                do {
                    content[i].getMap().clear();
                    i++;
                } while (i < size);
                Unit unit2 = Unit.INSTANCE;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void callOnChanged() {
        MutableVector<ApplyMap<?>> mutableVector = this.applyMaps;
        int size = mutableVector.getSize();
        if (size > 0) {
            ApplyMap<?>[] content = mutableVector.getContent();
            int i = 0;
            do {
                ApplyMap<?> applyMap = content[i];
                HashSet<Object> invalidated = applyMap.getInvalidated();
                HashSet<Object> hashSet = invalidated;
                if (!hashSet.isEmpty()) {
                    applyMap.callOnChanged(hashSet);
                    invalidated.clear();
                }
                i++;
            } while (i < size);
        }
    }

    private final <T> ApplyMap<T> ensureMap(Function1<? super T, Unit> function1) {
        int i;
        MutableVector<ApplyMap<?>> mutableVector = this.applyMaps;
        int size = mutableVector.getSize();
        if (size > 0) {
            ApplyMap<?>[] content = mutableVector.getContent();
            i = 0;
            do {
                if (content[i].getOnChanged() == function1) {
                    break;
                }
                i++;
            } while (i < size);
            i = -1;
        } else {
            i = -1;
        }
        if (i == -1) {
            ApplyMap<T> applyMap = new ApplyMap<>(function1);
            this.applyMaps.add(applyMap);
            return applyMap;
        }
        return (ApplyMap<T>) this.applyMaps.getContent()[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SnapshotStateObserver.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u001e\n\u0000\b\u0002\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0002B\u0019\u0012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0002J\u0014\u0010\u001a\u001a\u00020\u00052\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00020\u001cR\u001e\u0010\u0007\u001a\u0004\u0018\u00018\u0000X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR!\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u00020\u000ej\b\u0012\u0004\u0012\u00020\u0002`\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u0013¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u001d\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001d"}, d2 = {"Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ApplyMap;", "T", "", "onChanged", "Lkotlin/Function1;", "", "(Lkotlin/jvm/functions/Function1;)V", "currentScope", "getCurrentScope", "()Ljava/lang/Object;", "setCurrentScope", "(Ljava/lang/Object;)V", "Ljava/lang/Object;", "invalidated", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "getInvalidated", "()Ljava/util/HashSet;", "map", "Landroidx/compose/runtime/collection/IdentityScopeMap;", "getMap", "()Landroidx/compose/runtime/collection/IdentityScopeMap;", "getOnChanged", "()Lkotlin/jvm/functions/Function1;", "addValue", "value", "callOnChanged", "scopes", "", "runtime_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class ApplyMap<T> {
        private T currentScope;
        private final HashSet<Object> invalidated;
        private final IdentityScopeMap<T> map;
        private final Function1<T, Unit> onChanged;

        /* JADX WARN: Multi-variable type inference failed */
        public ApplyMap(Function1<? super T, Unit> onChanged) {
            Intrinsics.checkNotNullParameter(onChanged, "onChanged");
            this.onChanged = onChanged;
            this.map = new IdentityScopeMap<>();
            this.invalidated = new HashSet<>();
        }

        public final Function1<T, Unit> getOnChanged() {
            return this.onChanged;
        }

        public final IdentityScopeMap<T> getMap() {
            return this.map;
        }

        public final HashSet<Object> getInvalidated() {
            return this.invalidated;
        }

        public final T getCurrentScope() {
            return this.currentScope;
        }

        public final void setCurrentScope(T t) {
            this.currentScope = t;
        }

        public final void addValue(Object value) {
            Intrinsics.checkNotNullParameter(value, "value");
            IdentityScopeMap<T> identityScopeMap = this.map;
            T t = this.currentScope;
            Intrinsics.checkNotNull(t);
            identityScopeMap.add(value, t);
        }

        public final void callOnChanged(Collection<? extends Object> scopes) {
            Intrinsics.checkNotNullParameter(scopes, "scopes");
            Iterator<T> it = scopes.iterator();
            while (it.hasNext()) {
                getOnChanged().invoke(it.next());
            }
        }
    }
}
