package androidx.compose.runtime.collection;

import androidx.compose.runtime.ActualJvm_jvmKt;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
/* compiled from: IdentityArraySet.kt */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010(\n\u0002\b\u0004\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0005¢\u0006\u0002\u0010\u0004J\u0013\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028\u0000¢\u0006\u0002\u0010\u0016J\u0006\u0010\u0017\u001a\u00020\u0018J\u0016\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010\u0016J\u0016\u0010\u001b\u001a\u00020\u00142\f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00028\u00000\u001dH\u0016J\u0012\u0010\u001e\u001a\u00020\u00062\b\u0010\u0015\u001a\u0004\u0018\u00010\u0002H\u0002J\"\u0010\u001f\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u00062\b\u0010\u0015\u001a\u0004\u0018\u00010\u00022\u0006\u0010!\u001a\u00020\u0006H\u0002J+\u0010\"\u001a\u00020\u00182\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00180$H\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001J\u0016\u0010%\u001a\u00028\u00002\u0006\u0010&\u001a\u00020\u0006H\u0086\u0002¢\u0006\u0002\u0010'J\b\u0010(\u001a\u00020\u0014H\u0016J\u0006\u0010)\u001a\u00020\u0014J\u000f\u0010*\u001a\b\u0012\u0004\u0012\u00028\u00000+H\u0096\u0002J\u0013\u0010,\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028\u0000¢\u0006\u0002\u0010\u0016J \u0010-\u001a\u00020\u00182\u0012\u0010.\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00140$H\u0086\bø\u0001\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR.\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\f8\u0000@\u0000X\u0081\u000e¢\u0006\u0016\n\u0002\u0010\u0012\u0012\u0004\b\r\u0010\u0004\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006/"}, d2 = {"Landroidx/compose/runtime/collection/IdentityArraySet;", "T", "", "", "()V", "size", "", "getSize", "()I", "setSize", "(I)V", "values", "", "getValues$annotations", "getValues", "()[Ljava/lang/Object;", "setValues", "([Ljava/lang/Object;)V", "[Ljava/lang/Object;", "add", "", "value", "(Ljava/lang/Object;)Z", "clear", "", "contains", "element", "containsAll", "elements", "", "find", "findExactIndex", "midIndex", "valueHash", "forEach", "block", "Lkotlin/Function1;", "get", FirebaseAnalytics.Param.INDEX, "(I)Ljava/lang/Object;", "isEmpty", "isNotEmpty", "iterator", "", "remove", "removeValueIf", "predicate", "runtime_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class IdentityArraySet<T> implements Set<T>, KMappedMarker {
    private int size;
    private Object[] values = new Object[16];

    public static /* synthetic */ void getValues$annotations() {
    }

    @Override // java.util.Set, java.util.Collection
    public boolean addAll(Collection<? extends T> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    @Override // java.util.Set, java.util.Collection
    public <T> T[] toArray(T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return (T[]) CollectionToArray.toArray(this, array);
    }

    @Override // java.util.Set, java.util.Collection
    public final /* bridge */ int size() {
        return getSize();
    }

    public int getSize() {
        return this.size;
    }

    public void setSize(int i) {
        this.size = i;
    }

    public final Object[] getValues() {
        return this.values;
    }

    public final void setValues(Object[] objArr) {
        Intrinsics.checkNotNullParameter(objArr, "<set-?>");
        this.values = objArr;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean contains(Object obj) {
        return obj != null && find(obj) >= 0;
    }

    public final T get(int i) {
        T t = (T) this.values[i];
        if (t != null) {
            return t;
        }
        throw new NullPointerException("null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet");
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean add(T value) {
        int i;
        Intrinsics.checkNotNullParameter(value, "value");
        if (size() > 0) {
            i = find(value);
            if (i >= 0) {
                return false;
            }
        } else {
            i = -1;
        }
        int i2 = -(i + 1);
        int size = size();
        Object[] objArr = this.values;
        if (size == objArr.length) {
            Object[] objArr2 = new Object[objArr.length * 2];
            ArraysKt.copyInto(objArr, objArr2, i2 + 1, i2, size());
            ArraysKt.copyInto$default(this.values, objArr2, 0, 0, i2, 6, (Object) null);
            this.values = objArr2;
        } else {
            ArraysKt.copyInto(objArr, objArr, i2 + 1, i2, size());
        }
        this.values[i2] = value;
        setSize(size() + 1);
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public final void clear() {
        int size = size();
        for (int i = 0; i < size; i++) {
            this.values[i] = null;
        }
        setSize(0);
    }

    public final void forEach(Function1<? super T, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        int size = size();
        for (int i = 0; i < size; i++) {
            block.invoke(get(i));
        }
    }

    @Override // java.util.Set, java.util.Collection
    public boolean isEmpty() {
        return size() == 0;
    }

    public final boolean isNotEmpty() {
        return size() > 0;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean remove(T t) {
        int find;
        if (t != null && (find = find(t)) >= 0) {
            if (find < size() - 1) {
                Object[] objArr = this.values;
                ArraysKt.copyInto(objArr, objArr, find, find + 1, size());
            }
            setSize(size() - 1);
            this.values[size()] = null;
            return true;
        }
        return false;
    }

    public final void removeValueIf(Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        int size = size();
        int i = 0;
        int i2 = 0;
        while (i < size) {
            int i3 = i + 1;
            Object obj = getValues()[i];
            if (obj == null) {
                throw new NullPointerException("null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet");
            }
            if (!predicate.invoke(obj).booleanValue()) {
                if (i2 != i) {
                    getValues()[i2] = obj;
                }
                i2++;
            }
            i = i3;
        }
        int size2 = size();
        for (int i4 = i2; i4 < size2; i4++) {
            getValues()[i4] = null;
        }
        setSize(i2);
    }

    private final int find(Object obj) {
        int size = size() - 1;
        int identityHashCode = ActualJvm_jvmKt.identityHashCode(obj);
        int i = 0;
        while (i <= size) {
            int i2 = (i + size) >>> 1;
            T t = get(i2);
            int identityHashCode2 = ActualJvm_jvmKt.identityHashCode(t) - identityHashCode;
            if (identityHashCode2 < 0) {
                i = i2 + 1;
            } else if (identityHashCode2 <= 0) {
                return t == obj ? i2 : findExactIndex(i2, obj, identityHashCode);
            } else {
                size = i2 - 1;
            }
        }
        return -(i + 1);
    }

    private final int findExactIndex(int i, Object obj, int i2) {
        int i3 = i - 1;
        if (i3 >= 0) {
            while (true) {
                int i4 = i3 - 1;
                Object obj2 = this.values[i3];
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
        int size = size();
        while (i5 < size) {
            int i6 = i5 + 1;
            Object obj3 = this.values[i5];
            if (obj3 == obj) {
                return i5;
            }
            if (ActualJvm_jvmKt.identityHashCode(obj3) != i2) {
                return -i6;
            }
            i5 = i6;
        }
        return -(size() + 1);
    }

    @Override // java.util.Set, java.util.Collection
    public boolean containsAll(Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        Collection<? extends Object> collection = elements;
        if (collection.isEmpty()) {
            return true;
        }
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public Iterator<T> iterator() {
        return new IdentityArraySet$iterator$1(this);
    }
}
