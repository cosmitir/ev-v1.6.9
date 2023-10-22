package androidx.compose.ui.input.pointer;

import android.os.Build;
import android.view.MotionEvent;
import androidx.compose.ui.geometry.OffsetKt;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
/* compiled from: MotionEventAdapter.android.kt */
@Metadata(d1 = {"\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\u001aG\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\r\u0010\u000e\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006\u000f"}, d2 = {"createPointerInputEventData", "Landroidx/compose/ui/input/pointer/PointerInputEventData;", "positionCalculator", "Landroidx/compose/ui/input/pointer/PositionCalculator;", "pointerId", "Landroidx/compose/ui/input/pointer/PointerId;", "timestamp", "", "motionEvent", "Landroid/view/MotionEvent;", FirebaseAnalytics.Param.INDEX, "", "upIndex", "createPointerInputEventData-VnAYq1g", "(Landroidx/compose/ui/input/pointer/PositionCalculator;JJLandroid/view/MotionEvent;ILjava/lang/Integer;)Landroidx/compose/ui/input/pointer/PointerInputEventData;", "ui_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class MotionEventAdapter_androidKt {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: createPointerInputEventData-VnAYq1g  reason: not valid java name */
    public static final PointerInputEventData m1509createPointerInputEventDataVnAYq1g(PositionCalculator positionCalculator, long j, long j2, MotionEvent motionEvent, int i, Integer num) {
        long j3;
        long mo1574localToScreenMKHz9U;
        int m1573getUnknownT8wyACA;
        long Offset = OffsetKt.Offset(motionEvent.getX(i), motionEvent.getY(i));
        if (i == 0) {
            long Offset2 = OffsetKt.Offset(motionEvent.getRawX(), motionEvent.getRawY());
            mo1574localToScreenMKHz9U = Offset2;
            j3 = positionCalculator.mo1575screenToLocalMKHz9U(Offset2);
        } else if (Build.VERSION.SDK_INT >= 29) {
            long m1510toRawOffsetdBAh8RU = MotionEventHelper.INSTANCE.m1510toRawOffsetdBAh8RU(motionEvent, i);
            mo1574localToScreenMKHz9U = m1510toRawOffsetdBAh8RU;
            j3 = positionCalculator.mo1575screenToLocalMKHz9U(m1510toRawOffsetdBAh8RU);
        } else {
            j3 = Offset;
            mo1574localToScreenMKHz9U = positionCalculator.mo1574localToScreenMKHz9U(Offset);
        }
        int toolType = motionEvent.getToolType(i);
        if (toolType == 0) {
            m1573getUnknownT8wyACA = PointerType.Companion.m1573getUnknownT8wyACA();
        } else if (toolType == 1) {
            m1573getUnknownT8wyACA = PointerType.Companion.m1572getTouchT8wyACA();
        } else if (toolType == 2) {
            m1573getUnknownT8wyACA = PointerType.Companion.m1571getStylusT8wyACA();
        } else if (toolType == 3) {
            m1573getUnknownT8wyACA = PointerType.Companion.m1570getMouseT8wyACA();
        } else if (toolType == 4) {
            m1573getUnknownT8wyACA = PointerType.Companion.m1569getEraserT8wyACA();
        } else {
            m1573getUnknownT8wyACA = PointerType.Companion.m1573getUnknownT8wyACA();
        }
        return new PointerInputEventData(j, j2, mo1574localToScreenMKHz9U, j3, num == null || i != num.intValue(), m1573getUnknownT8wyACA, null);
    }
}
