package androidx.compose.ui.graphics.vector;

import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ImageVector.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0013\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0083@\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B$\u0012\u0018\b\u0002\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0004j\b\u0012\u0004\u0012\u00028\u0000`\u0005ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007J\r\u0010\f\u001a\u00020\r¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\u0016\u0010\u000bJ\r\u0010\u0017\u001a\u00020\u0011¢\u0006\u0004\b\u0018\u0010\u0019J\r\u0010\u001a\u001a\u00020\u0011¢\u0006\u0004\b\u001b\u0010\u0019J\r\u0010\u001c\u001a\u00028\u0000¢\u0006\u0004\b\u001d\u0010\u001eJ\r\u0010\u001f\u001a\u00028\u0000¢\u0006\u0004\b \u0010\u001eJ\u0015\u0010!\u001a\u00020\u00112\u0006\u0010\"\u001a\u00028\u0000¢\u0006\u0004\b#\u0010\u0014J\u0010\u0010$\u001a\u00020%HÖ\u0001¢\u0006\u0004\b&\u0010'R\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0004j\b\u0012\u0004\u0012\u00028\u0000`\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\b\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b\u0088\u0001\u0003\u0092\u0001\u0012\u0012\u0004\u0012\u0002H\u00010\u0004j\b\u0012\u0004\u0012\u0002H\u0001`\u0005ø\u0001\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006("}, d2 = {"Landroidx/compose/ui/graphics/vector/Stack;", "T", "", "backing", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "constructor-impl", "(Ljava/util/ArrayList;)Ljava/util/ArrayList;", "size", "", "getSize-impl", "(Ljava/util/ArrayList;)I", "clear", "", "clear-impl", "(Ljava/util/ArrayList;)V", "equals", "", "other", "equals-impl", "(Ljava/util/ArrayList;Ljava/lang/Object;)Z", "hashCode", "hashCode-impl", "isEmpty", "isEmpty-impl", "(Ljava/util/ArrayList;)Z", "isNotEmpty", "isNotEmpty-impl", "peek", "peek-impl", "(Ljava/util/ArrayList;)Ljava/lang/Object;", "pop", "pop-impl", "push", "value", "push-impl", "toString", "", "toString-impl", "(Ljava/util/ArrayList;)Ljava/lang/String;", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@JvmInline
/* loaded from: classes.dex */
final class Stack<T> {
    private final ArrayList<T> backing;

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ Stack m824boximpl(ArrayList arrayList) {
        return new Stack(arrayList);
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static <T> ArrayList<T> m826constructorimpl(ArrayList<T> backing) {
        Intrinsics.checkNotNullParameter(backing, "backing");
        return backing;
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m828equalsimpl(ArrayList<T> arrayList, Object obj) {
        return (obj instanceof Stack) && Intrinsics.areEqual(arrayList, ((Stack) obj).m838unboximpl());
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m829equalsimpl0(ArrayList<?> arrayList, ArrayList<?> arrayList2) {
        return Intrinsics.areEqual(arrayList, arrayList2);
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m831hashCodeimpl(ArrayList<T> arrayList) {
        return arrayList.hashCode();
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m837toStringimpl(ArrayList<T> arrayList) {
        return "Stack(backing=" + arrayList + ')';
    }

    public boolean equals(Object obj) {
        return m828equalsimpl(m838unboximpl(), obj);
    }

    public int hashCode() {
        return m831hashCodeimpl(m838unboximpl());
    }

    public String toString() {
        return m837toStringimpl(m838unboximpl());
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ ArrayList m838unboximpl() {
        return this.backing;
    }

    private /* synthetic */ Stack(ArrayList arrayList) {
        this.backing = arrayList;
    }

    /* renamed from: constructor-impl$default  reason: not valid java name */
    public static /* synthetic */ ArrayList m827constructorimpl$default(ArrayList arrayList, int i, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i & 1) != 0) {
            arrayList = new ArrayList();
        }
        return m826constructorimpl(arrayList);
    }

    /* renamed from: getSize-impl  reason: not valid java name */
    public static final int m830getSizeimpl(ArrayList<T> arg0) {
        Intrinsics.checkNotNullParameter(arg0, "arg0");
        return arg0.size();
    }

    /* renamed from: push-impl  reason: not valid java name */
    public static final boolean m836pushimpl(ArrayList<T> arg0, T t) {
        Intrinsics.checkNotNullParameter(arg0, "arg0");
        return arg0.add(t);
    }

    /* renamed from: pop-impl  reason: not valid java name */
    public static final T m835popimpl(ArrayList<T> arg0) {
        Intrinsics.checkNotNullParameter(arg0, "arg0");
        return arg0.remove(m830getSizeimpl(arg0) - 1);
    }

    /* renamed from: peek-impl  reason: not valid java name */
    public static final T m834peekimpl(ArrayList<T> arg0) {
        Intrinsics.checkNotNullParameter(arg0, "arg0");
        return arg0.get(m830getSizeimpl(arg0) - 1);
    }

    /* renamed from: isEmpty-impl  reason: not valid java name */
    public static final boolean m832isEmptyimpl(ArrayList<T> arg0) {
        Intrinsics.checkNotNullParameter(arg0, "arg0");
        return arg0.isEmpty();
    }

    /* renamed from: isNotEmpty-impl  reason: not valid java name */
    public static final boolean m833isNotEmptyimpl(ArrayList<T> arg0) {
        Intrinsics.checkNotNullParameter(arg0, "arg0");
        return !m832isEmptyimpl(arg0);
    }

    /* renamed from: clear-impl  reason: not valid java name */
    public static final void m825clearimpl(ArrayList<T> arg0) {
        Intrinsics.checkNotNullParameter(arg0, "arg0");
        arg0.clear();
    }
}
