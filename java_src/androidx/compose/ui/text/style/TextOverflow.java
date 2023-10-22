package androidx.compose.ui.text.style;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: TextOverflow.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087@\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0014\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\f\u0010\u0005J\u000f\u0010\r\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\u0002\n\u0000\u0088\u0001\u0002\u0092\u0001\u00020\u0003ø\u0001\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Landroidx/compose/ui/text/style/TextOverflow;", "", "value", "", "constructor-impl", "(I)I", "equals", "", "other", "equals-impl", "(ILjava/lang/Object;)Z", "hashCode", "hashCode-impl", "toString", "", "toString-impl", "(I)Ljava/lang/String;", "Companion", "ui-text_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@JvmInline
/* loaded from: classes.dex */
public final class TextOverflow {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int Clip = m2054constructorimpl(1);
    private static final int Ellipsis = m2054constructorimpl(2);
    private static final int Visible = m2054constructorimpl(3);

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ TextOverflow m2053boximpl(int i) {
        return new TextOverflow(i);
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static int m2054constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m2055equalsimpl(int i, Object obj) {
        return (obj instanceof TextOverflow) && i == ((TextOverflow) obj).m2059unboximpl();
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m2056equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m2057hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    public boolean equals(Object obj) {
        return m2055equalsimpl(m2059unboximpl(), obj);
    }

    public int hashCode() {
        return m2057hashCodeimpl(m2059unboximpl());
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ int m2059unboximpl() {
        return this.value;
    }

    private /* synthetic */ TextOverflow(int i) {
        this.value = i;
    }

    public String toString() {
        return m2058toStringimpl(m2059unboximpl());
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m2058toStringimpl(int i) {
        return m2056equalsimpl0(i, Clip) ? "Clip" : m2056equalsimpl0(i, Ellipsis) ? "Ellipsis" : m2056equalsimpl0(i, Visible) ? "Visible" : "Invalid";
    }

    /* compiled from: TextOverflow.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\b\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\t\u0010\u0006R\u001c\u0010\n\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u000b\u0010\u0006\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\f"}, d2 = {"Landroidx/compose/ui/text/style/TextOverflow$Companion;", "", "()V", "Clip", "Landroidx/compose/ui/text/style/TextOverflow;", "getClip-gIe3tQ8", "()I", "I", "Ellipsis", "getEllipsis-gIe3tQ8", "Visible", "getVisible-gIe3tQ8", "ui-text_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getClip-gIe3tQ8  reason: not valid java name */
        public final int m2060getClipgIe3tQ8() {
            return TextOverflow.Clip;
        }

        /* renamed from: getEllipsis-gIe3tQ8  reason: not valid java name */
        public final int m2061getEllipsisgIe3tQ8() {
            return TextOverflow.Ellipsis;
        }

        /* renamed from: getVisible-gIe3tQ8  reason: not valid java name */
        public final int m2062getVisiblegIe3tQ8() {
            return TextOverflow.Visible;
        }
    }
}
