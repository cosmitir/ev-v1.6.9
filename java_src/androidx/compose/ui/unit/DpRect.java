package androidx.compose.ui.unit;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: Dp.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0087\b\u0018\u0000 %2\u00020\u0001:\u0001%B(\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0002\u0010\u0007J\u0019\u0010\u0013\u001a\u00020\u0003HÆ\u0003ø\u0001\u0000ø\u0001\u0002ø\u0001\u0001¢\u0006\u0004\b\u0014\u0010\u000bJ\u0019\u0010\u0015\u001a\u00020\u0003HÆ\u0003ø\u0001\u0000ø\u0001\u0002ø\u0001\u0001¢\u0006\u0004\b\u0016\u0010\u000bJ\u0019\u0010\u0017\u001a\u00020\u0003HÆ\u0003ø\u0001\u0000ø\u0001\u0002ø\u0001\u0001¢\u0006\u0004\b\u0018\u0010\u000bJ\u0019\u0010\u0019\u001a\u00020\u0003HÆ\u0003ø\u0001\u0000ø\u0001\u0002ø\u0001\u0001¢\u0006\u0004\b\u001a\u0010\u000bJ>\u0010\u001b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u0003HÆ\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001c\u0010\u001dJ\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\"HÖ\u0001J\t\u0010#\u001a\u00020$HÖ\u0001R'\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\f\u0012\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR'\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\f\u0012\u0004\b\r\u0010\t\u001a\u0004\b\u000e\u0010\u000bR'\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\f\u0012\u0004\b\u000f\u0010\t\u001a\u0004\b\u0010\u0010\u000bR'\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\f\u0012\u0004\b\u0011\u0010\t\u001a\u0004\b\u0012\u0010\u000b\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006&"}, d2 = {"Landroidx/compose/ui/unit/DpRect;", "", "left", "Landroidx/compose/ui/unit/Dp;", "top", "right", "bottom", "(FFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V", "getBottom-D9Ej5fM$annotations", "()V", "getBottom-D9Ej5fM", "()F", "F", "getLeft-D9Ej5fM$annotations", "getLeft-D9Ej5fM", "getRight-D9Ej5fM$annotations", "getRight-D9Ej5fM", "getTop-D9Ej5fM$annotations", "getTop-D9Ej5fM", "component1", "component1-D9Ej5fM", "component2", "component2-D9Ej5fM", "component3", "component3-D9Ej5fM", "component4", "component4-D9Ej5fM", "copy", "copy-a9UjIt4", "(FFFF)Landroidx/compose/ui/unit/DpRect;", "equals", "", "other", "hashCode", "", "toString", "", "Companion", "ui-unit_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class DpRect {
    public static final Companion Companion = new Companion(null);
    private final float bottom;
    private final float left;
    private final float right;
    private final float top;

    public /* synthetic */ DpRect(float f, float f2, float f3, float f4, DefaultConstructorMarker defaultConstructorMarker) {
        this(f, f2, f3, f4);
    }

    /* renamed from: copy-a9UjIt4$default  reason: not valid java name */
    public static /* synthetic */ DpRect m2160copya9UjIt4$default(DpRect dpRect, float f, float f2, float f3, float f4, int i, Object obj) {
        if ((i & 1) != 0) {
            f = dpRect.left;
        }
        if ((i & 2) != 0) {
            f2 = dpRect.top;
        }
        if ((i & 4) != 0) {
            f3 = dpRect.right;
        }
        if ((i & 8) != 0) {
            f4 = dpRect.bottom;
        }
        return dpRect.m2169copya9UjIt4(f, f2, f3, f4);
    }

    /* renamed from: getBottom-D9Ej5fM$annotations  reason: not valid java name */
    public static /* synthetic */ void m2161getBottomD9Ej5fM$annotations() {
    }

    /* renamed from: getLeft-D9Ej5fM$annotations  reason: not valid java name */
    public static /* synthetic */ void m2162getLeftD9Ej5fM$annotations() {
    }

    /* renamed from: getRight-D9Ej5fM$annotations  reason: not valid java name */
    public static /* synthetic */ void m2163getRightD9Ej5fM$annotations() {
    }

    /* renamed from: getTop-D9Ej5fM$annotations  reason: not valid java name */
    public static /* synthetic */ void m2164getTopD9Ej5fM$annotations() {
    }

    /* renamed from: component1-D9Ej5fM  reason: not valid java name */
    public final float m2165component1D9Ej5fM() {
        return this.left;
    }

    /* renamed from: component2-D9Ej5fM  reason: not valid java name */
    public final float m2166component2D9Ej5fM() {
        return this.top;
    }

    /* renamed from: component3-D9Ej5fM  reason: not valid java name */
    public final float m2167component3D9Ej5fM() {
        return this.right;
    }

    /* renamed from: component4-D9Ej5fM  reason: not valid java name */
    public final float m2168component4D9Ej5fM() {
        return this.bottom;
    }

    /* renamed from: copy-a9UjIt4  reason: not valid java name */
    public final DpRect m2169copya9UjIt4(float f, float f2, float f3, float f4) {
        return new DpRect(f, f2, f3, f4, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof DpRect) {
            DpRect dpRect = (DpRect) obj;
            return Dp.m2110equalsimpl0(this.left, dpRect.left) && Dp.m2110equalsimpl0(this.top, dpRect.top) && Dp.m2110equalsimpl0(this.right, dpRect.right) && Dp.m2110equalsimpl0(this.bottom, dpRect.bottom);
        }
        return false;
    }

    public int hashCode() {
        return (((((Dp.m2111hashCodeimpl(this.left) * 31) + Dp.m2111hashCodeimpl(this.top)) * 31) + Dp.m2111hashCodeimpl(this.right)) * 31) + Dp.m2111hashCodeimpl(this.bottom);
    }

    public String toString() {
        return "DpRect(left=" + ((Object) Dp.m2116toStringimpl(this.left)) + ", top=" + ((Object) Dp.m2116toStringimpl(this.top)) + ", right=" + ((Object) Dp.m2116toStringimpl(this.right)) + ", bottom=" + ((Object) Dp.m2116toStringimpl(this.bottom)) + ')';
    }

    private DpRect(float f, float f2, float f3, float f4) {
        this.left = f;
        this.top = f2;
        this.right = f3;
        this.bottom = f4;
    }

    /* renamed from: getLeft-D9Ej5fM  reason: not valid java name */
    public final float m2171getLeftD9Ej5fM() {
        return this.left;
    }

    /* renamed from: getTop-D9Ej5fM  reason: not valid java name */
    public final float m2173getTopD9Ej5fM() {
        return this.top;
    }

    /* renamed from: getRight-D9Ej5fM  reason: not valid java name */
    public final float m2172getRightD9Ej5fM() {
        return this.right;
    }

    /* renamed from: getBottom-D9Ej5fM  reason: not valid java name */
    public final float m2170getBottomD9Ej5fM() {
        return this.bottom;
    }

    /* compiled from: Dp.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Landroidx/compose/ui/unit/DpRect$Companion;", "", "()V", "ui-unit_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
