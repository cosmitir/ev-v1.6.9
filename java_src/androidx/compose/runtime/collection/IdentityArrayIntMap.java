package androidx.compose.runtime.collection;

import androidx.compose.runtime.ActualJvm_jvmKt;
import com.google.firebase.crashlytics.internal.metadata.UserMetadata;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: IdentityArrayIntMap.kt */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0015\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u001c\u001a\u00020\fJ&\u0010\u001d\u001a\u00020\u001e2\u0018\u0010\u001f\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u001e0 H\u0086\bø\u0001\u0000J\u0012\u0010!\u001a\u00020\f2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u0002J\"\u0010\"\u001a\u00020\f2\u0006\u0010#\u001a\u00020\f2\b\u0010\u001c\u001a\u0004\u0018\u00010\u00012\u0006\u0010$\u001a\u00020\fH\u0002J&\u0010%\u001a\u00020\u001a2\u0018\u0010&\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u001a0 H\u0086\bø\u0001\u0000J\u0011\u0010'\u001a\u00020\f2\u0006\u0010\u001b\u001a\u00020\u0001H\u0086\u0002J\u000e\u0010(\u001a\u00020\u001e2\u0006\u0010\u001b\u001a\u00020\u0001J&\u0010)\u001a\u00020\u001a2\u0018\u0010\u001f\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u001e0 H\u0086\bø\u0001\u0000R.\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00048\u0000@\u0000X\u0081\u000e¢\u0006\u0016\n\u0002\u0010\n\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR$\u0010\u000b\u001a\u00020\f8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\r\u0010\u0002\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R$\u0010\u0012\u001a\u00020\u00138\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0014\u0010\u0002\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006*"}, d2 = {"Landroidx/compose/runtime/collection/IdentityArrayIntMap;", "", "()V", UserMetadata.KEYDATA_FILENAME, "", "getKeys$annotations", "getKeys", "()[Ljava/lang/Object;", "setKeys", "([Ljava/lang/Object;)V", "[Ljava/lang/Object;", "size", "", "getSize$annotations", "getSize", "()I", "setSize", "(I)V", "values", "", "getValues$annotations", "getValues", "()[I", "setValues", "([I)V", "add", "", "key", "value", "any", "", "predicate", "Lkotlin/Function2;", "find", "findExactIndex", "midIndex", "valueHash", "forEach", "block", "get", "remove", "removeValueIf", "runtime_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class IdentityArrayIntMap {
    private int size;
    private Object[] keys = new Object[4];
    private int[] values = new int[4];

    public static /* synthetic */ void getKeys$annotations() {
    }

    public static /* synthetic */ void getSize$annotations() {
    }

    public static /* synthetic */ void getValues$annotations() {
    }

    public final int getSize() {
        return this.size;
    }

    public final void setSize(int i) {
        this.size = i;
    }

    public final Object[] getKeys() {
        return this.keys;
    }

    public final void setKeys(Object[] objArr) {
        Intrinsics.checkNotNullParameter(objArr, "<set-?>");
        this.keys = objArr;
    }

    public final int[] getValues() {
        return this.values;
    }

    public final void setValues(int[] iArr) {
        Intrinsics.checkNotNullParameter(iArr, "<set-?>");
        this.values = iArr;
    }

    public final int get(Object key) {
        Intrinsics.checkNotNullParameter(key, "key");
        int find = find(key);
        if (find >= 0) {
            return this.values[find];
        }
        throw new IllegalStateException("Key not found".toString());
    }

    public final void add(Object key, int i) {
        int i2;
        Intrinsics.checkNotNullParameter(key, "key");
        if (this.size > 0) {
            i2 = find(key);
            if (i2 >= 0) {
                this.values[i2] = i;
                return;
            }
        } else {
            i2 = -1;
        }
        int i3 = -(i2 + 1);
        int i4 = this.size;
        Object[] objArr = this.keys;
        if (i4 == objArr.length) {
            Object[] objArr2 = new Object[objArr.length * 2];
            int[] iArr = new int[objArr.length * 2];
            int i5 = i3 + 1;
            ArraysKt.copyInto(objArr, objArr2, i5, i3, i4);
            ArraysKt.copyInto(this.values, iArr, i5, i3, this.size);
            ArraysKt.copyInto$default(this.keys, objArr2, 0, 0, i3, 6, (Object) null);
            ArraysKt.copyInto$default(this.values, iArr, 0, 0, i3, 6, (Object) null);
            this.keys = objArr2;
            this.values = iArr;
        } else {
            int i6 = i3 + 1;
            ArraysKt.copyInto(objArr, objArr, i6, i3, i4);
            int[] iArr2 = this.values;
            ArraysKt.copyInto(iArr2, iArr2, i6, i3, this.size);
        }
        this.keys[i3] = key;
        this.values[i3] = i;
        this.size++;
    }

    public final boolean remove(Object key) {
        Intrinsics.checkNotNullParameter(key, "key");
        int find = find(key);
        if (find >= 0) {
            int i = this.size;
            if (find < i - 1) {
                Object[] objArr = this.keys;
                int i2 = find + 1;
                ArraysKt.copyInto(objArr, objArr, find, i2, i);
                int[] iArr = this.values;
                ArraysKt.copyInto(iArr, iArr, find, i2, this.size);
            }
            int i3 = this.size - 1;
            this.size = i3;
            this.keys[i3] = null;
            return true;
        }
        return false;
    }

    public final void removeValueIf(Function2<Object, ? super Integer, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        int size = getSize();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            int i3 = i + 1;
            Object obj = getKeys()[i];
            if (obj == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Any");
            }
            int i4 = getValues()[i];
            if (!predicate.invoke(obj, Integer.valueOf(i4)).booleanValue()) {
                if (i2 != i) {
                    getKeys()[i2] = obj;
                    getValues()[i2] = i4;
                }
                i2++;
            }
            i = i3;
        }
        int size2 = getSize();
        for (int i5 = i2; i5 < size2; i5++) {
            getKeys()[i5] = null;
        }
        setSize(i2);
    }

    public final boolean any(Function2<Object, ? super Integer, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        int size = getSize();
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            Object obj = getKeys()[i];
            if (obj == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Any");
            }
            if (predicate.invoke(obj, Integer.valueOf(getValues()[i])).booleanValue()) {
                return true;
            }
            i = i2;
        }
        return false;
    }

    public final void forEach(Function2<Object, ? super Integer, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        int size = getSize();
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            Object obj = getKeys()[i];
            if (obj == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.Any");
            }
            block.invoke(obj, Integer.valueOf(getValues()[i]));
            i = i2;
        }
    }

    private final int find(Object obj) {
        int i = this.size - 1;
        int identityHashCode = ActualJvm_jvmKt.identityHashCode(obj);
        int i2 = 0;
        while (i2 <= i) {
            int i3 = (i2 + i) >>> 1;
            Object obj2 = this.keys[i3];
            int identityHashCode2 = ActualJvm_jvmKt.identityHashCode(obj2) - identityHashCode;
            if (identityHashCode2 < 0) {
                i2 = i3 + 1;
            } else if (identityHashCode2 <= 0) {
                return obj2 == obj ? i3 : findExactIndex(i3, obj, identityHashCode);
            } else {
                i = i3 - 1;
            }
        }
        return -(i2 + 1);
    }

    private final int findExactIndex(int i, Object obj, int i2) {
        int i3 = i - 1;
        if (i3 >= 0) {
            while (true) {
                int i4 = i3 - 1;
                Object obj2 = this.keys[i3];
                if (obj2 != obj) {
                    if (ActualJvm_jvmKt.identityHashCode(obj2) != i2 || i4 < 0) {
                        break;
                    }
                    i3 = i4;
                } else {
                    return i3;
                }
            }
        }
        int i5 = i + 1;
        int i6 = this.size;
        while (i5 < i6) {
            int i7 = i5 + 1;
            Object obj3 = this.keys[i5];
            if (obj3 == obj) {
                return i5;
            }
            if (ActualJvm_jvmKt.identityHashCode(obj3) != i2) {
                return -i7;
            }
            i5 = i7;
        }
        return -(this.size + 1);
    }
}
