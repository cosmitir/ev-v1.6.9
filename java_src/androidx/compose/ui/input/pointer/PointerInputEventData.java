package androidx.compose.ui.input.pointer;

import androidx.compose.ui.geometry.Offset;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* compiled from: InternalPointerInput.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0080\b\u0018\u00002\u00020\u0001B8\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\fø\u0001\u0000¢\u0006\u0002\u0010\rJ\u0019\u0010\u0019\u001a\u00020\u0003HÆ\u0003ø\u0001\u0000ø\u0001\u0002ø\u0001\u0001¢\u0006\u0004\b\u001a\u0010\u0011J\t\u0010\u001b\u001a\u00020\u0005HÆ\u0003J\u0019\u0010\u001c\u001a\u00020\u0007HÆ\u0003ø\u0001\u0000ø\u0001\u0002ø\u0001\u0001¢\u0006\u0004\b\u001d\u0010\u0011J\u0019\u0010\u001e\u001a\u00020\u0007HÆ\u0003ø\u0001\u0000ø\u0001\u0002ø\u0001\u0001¢\u0006\u0004\b\u001f\u0010\u0011J\t\u0010 \u001a\u00020\nHÆ\u0003J\u0019\u0010!\u001a\u00020\fHÆ\u0003ø\u0001\u0000ø\u0001\u0002ø\u0001\u0001¢\u0006\u0004\b\"\u0010\u0016JR\u0010#\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\fHÆ\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b$\u0010%J\u0013\u0010&\u001a\u00020\n2\b\u0010'\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010(\u001a\u00020)HÖ\u0001J\t\u0010*\u001a\u00020+HÖ\u0001R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0010\u0010\u0011R\u001c\u0010\b\u001a\u00020\u0007ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0013\u0010\u0011R\u001c\u0010\u0006\u001a\u00020\u0007ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0012\u001a\u0004\b\u0014\u0010\u0011R\u001c\u0010\u000b\u001a\u00020\fø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0017\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0011\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006,"}, d2 = {"Landroidx/compose/ui/input/pointer/PointerInputEventData;", "", "id", "Landroidx/compose/ui/input/pointer/PointerId;", "uptime", "", "positionOnScreen", "Landroidx/compose/ui/geometry/Offset;", "position", "down", "", "type", "Landroidx/compose/ui/input/pointer/PointerType;", "(JJJJZILkotlin/jvm/internal/DefaultConstructorMarker;)V", "getDown", "()Z", "getId-J3iCeTQ", "()J", "J", "getPosition-F1C5BW0", "getPositionOnScreen-F1C5BW0", "getType-T8wyACA", "()I", "I", "getUptime", "component1", "component1-J3iCeTQ", "component2", "component3", "component3-F1C5BW0", "component4", "component4-F1C5BW0", "component5", "component6", "component6-T8wyACA", "copy", "copy-1boDhkU", "(JJJJZI)Landroidx/compose/ui/input/pointer/PointerInputEventData;", "equals", "other", "hashCode", "", "toString", "", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class PointerInputEventData {
    private final boolean down;
    private final long id;
    private final long position;
    private final long positionOnScreen;
    private final int type;
    private final long uptime;

    public /* synthetic */ PointerInputEventData(long j, long j2, long j3, long j4, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, j3, j4, z, i);
    }

    /* renamed from: component1-J3iCeTQ  reason: not valid java name */
    public final long m1528component1J3iCeTQ() {
        return this.id;
    }

    public final long component2() {
        return this.uptime;
    }

    /* renamed from: component3-F1C5BW0  reason: not valid java name */
    public final long m1529component3F1C5BW0() {
        return this.positionOnScreen;
    }

    /* renamed from: component4-F1C5BW0  reason: not valid java name */
    public final long m1530component4F1C5BW0() {
        return this.position;
    }

    public final boolean component5() {
        return this.down;
    }

    /* renamed from: component6-T8wyACA  reason: not valid java name */
    public final int m1531component6T8wyACA() {
        return this.type;
    }

    /* renamed from: copy-1boDhkU  reason: not valid java name */
    public final PointerInputEventData m1532copy1boDhkU(long j, long j2, long j3, long j4, boolean z, int i) {
        return new PointerInputEventData(j, j2, j3, j4, z, i, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof PointerInputEventData) {
            PointerInputEventData pointerInputEventData = (PointerInputEventData) obj;
            return PointerId.m1516equalsimpl0(this.id, pointerInputEventData.id) && this.uptime == pointerInputEventData.uptime && Offset.m114equalsimpl0(this.positionOnScreen, pointerInputEventData.positionOnScreen) && Offset.m114equalsimpl0(this.position, pointerInputEventData.position) && this.down == pointerInputEventData.down && PointerType.m1565equalsimpl0(this.type, pointerInputEventData.type);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int m1517hashCodeimpl = ((((((PointerId.m1517hashCodeimpl(this.id) * 31) + Long.hashCode(this.uptime)) * 31) + Offset.m119hashCodeimpl(this.positionOnScreen)) * 31) + Offset.m119hashCodeimpl(this.position)) * 31;
        boolean z = this.down;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return ((m1517hashCodeimpl + i) * 31) + PointerType.m1566hashCodeimpl(this.type);
    }

    public String toString() {
        return "PointerInputEventData(id=" + ((Object) PointerId.m1518toStringimpl(this.id)) + ", uptime=" + this.uptime + ", positionOnScreen=" + ((Object) Offset.m125toStringimpl(this.positionOnScreen)) + ", position=" + ((Object) Offset.m125toStringimpl(this.position)) + ", down=" + this.down + ", type=" + ((Object) PointerType.m1567toStringimpl(this.type)) + ')';
    }

    private PointerInputEventData(long j, long j2, long j3, long j4, boolean z, int i) {
        this.id = j;
        this.uptime = j2;
        this.positionOnScreen = j3;
        this.position = j4;
        this.down = z;
        this.type = i;
    }

    /* renamed from: getId-J3iCeTQ  reason: not valid java name */
    public final long m1533getIdJ3iCeTQ() {
        return this.id;
    }

    public final long getUptime() {
        return this.uptime;
    }

    /* renamed from: getPositionOnScreen-F1C5BW0  reason: not valid java name */
    public final long m1535getPositionOnScreenF1C5BW0() {
        return this.positionOnScreen;
    }

    /* renamed from: getPosition-F1C5BW0  reason: not valid java name */
    public final long m1534getPositionF1C5BW0() {
        return this.position;
    }

    public final boolean getDown() {
        return this.down;
    }

    /* renamed from: getType-T8wyACA  reason: not valid java name */
    public final int m1536getTypeT8wyACA() {
        return this.type;
    }
}
