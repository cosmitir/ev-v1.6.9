package androidx.compose.material.icons.rounded;

import androidx.compose.ui.graphics.vector.ImageVector;
import kotlin.Metadata;
/* compiled from: DragHandle.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"_dragHandle", "Landroidx/compose/ui/graphics/vector/ImageVector;", "DragHandle", "Landroidx/compose/material/icons/Icons$Rounded;", "getDragHandle", "(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;", "material-icons-extended-rounded_release"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DragHandleKt {
    private static ImageVector _dragHandle;

    /*  JADX ERROR: JadxRuntimeException in pass: InlineMethods
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to process method for inline: androidx.compose.ui.graphics.vector.ImageVector.Builder.addPath-oIyEayM$default(androidx.compose.ui.graphics.vector.ImageVector$Builder, java.util.List, int, java.lang.String, androidx.compose.ui.graphics.Brush, float, androidx.compose.ui.graphics.Brush, float, float, int, int, float, float, float, float, int, java.lang.Object):androidx.compose.ui.graphics.vector.ImageVector$Builder
        	at jadx.core.dex.visitors.InlineMethods.processInvokeInsn(InlineMethods.java:76)
        	at jadx.core.dex.visitors.InlineMethods.visit(InlineMethods.java:51)
        Caused by: java.lang.NullPointerException
        */
    public static final androidx.compose.ui.graphics.vector.ImageVector getDragHandle(androidx.compose.material.icons.Icons.Rounded r29) {
        /*
            java.lang.String r0 = "<this>"
            r1 = r29
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r0)
            androidx.compose.ui.graphics.vector.ImageVector r0 = androidx.compose.material.icons.rounded.DragHandleKt._dragHandle
            if (r0 == 0) goto Lf
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            return r0
        Lf:
            java.lang.String r2 = "Rounded.DragHandle"
            androidx.compose.ui.graphics.vector.ImageVector$Builder r1 = new androidx.compose.ui.graphics.vector.ImageVector$Builder
            r12 = r1
            r0 = 1103101952(0x41c00000, float:24.0)
            float r3 = androidx.compose.ui.unit.Dp.m2105constructorimpl(r0)
            float r4 = androidx.compose.ui.unit.Dp.m2105constructorimpl(r0)
            r5 = 1103101952(0x41c00000, float:24.0)
            r6 = 1103101952(0x41c00000, float:24.0)
            r7 = 0
            r9 = 0
            r10 = 96
            r11 = 0
            r1.<init>(r2, r3, r4, r5, r6, r7, r9, r10, r11)
            r17 = 1065353216(0x3f800000, float:1.0)
            r19 = 1065353216(0x3f800000, float:1.0)
            int r14 = androidx.compose.ui.graphics.vector.VectorKt.getDefaultFillType()
            androidx.compose.ui.graphics.SolidColor r0 = new androidx.compose.ui.graphics.SolidColor
            androidx.compose.ui.graphics.Color$Companion r1 = androidx.compose.ui.graphics.Color.Companion
            long r1 = r1.m372getBlack0d7_KjU()
            r3 = 0
            r0.<init>(r1, r3)
            r16 = r0
            androidx.compose.ui.graphics.Brush r16 = (androidx.compose.ui.graphics.Brush) r16
            r18 = 0
            r20 = 1065353216(0x3f800000, float:1.0)
            androidx.compose.ui.graphics.StrokeCap$Companion r0 = androidx.compose.ui.graphics.StrokeCap.Companion
            int r21 = r0.m616getButtKaPHkGw()
            androidx.compose.ui.graphics.StrokeJoin$Companion r0 = androidx.compose.ui.graphics.StrokeJoin.Companion
            int r22 = r0.m626getBevelLxFBmk8()
            r23 = 1065353216(0x3f800000, float:1.0)
            java.lang.String r15 = ""
            androidx.compose.ui.graphics.vector.PathBuilder r7 = new androidx.compose.ui.graphics.vector.PathBuilder
            r7.<init>()
            r0 = 1100480512(0x41980000, float:19.0)
            r1 = 1091567616(0x41100000, float:9.0)
            r7.moveTo(r0, r1)
            r8 = 1084227584(0x40a00000, float:5.0)
            r7.horizontalLineTo(r8)
            r1 = -1089680179(0xffffffffbf0ccccd, float:-0.55)
            r2 = 0
            r3 = -1082130432(0xffffffffbf800000, float:-1.0)
            r4 = 1055286886(0x3ee66666, float:0.45)
            r5 = -1082130432(0xffffffffbf800000, float:-1.0)
            r6 = 1065353216(0x3f800000, float:1.0)
            r0 = r7
            r0.curveToRelative(r1, r2, r3, r4, r5, r6)
            r9 = 1055286886(0x3ee66666, float:0.45)
            r10 = 1065353216(0x3f800000, float:1.0)
            r7.reflectiveCurveToRelative(r9, r10, r10, r10)
            r11 = 1096810496(0x41600000, float:14.0)
            r7.horizontalLineToRelative(r11)
            r1 = 1057803469(0x3f0ccccd, float:0.55)
            r3 = 1065353216(0x3f800000, float:1.0)
            r4 = -1092196762(0xffffffffbee66666, float:-0.45)
            r5 = 1065353216(0x3f800000, float:1.0)
            r6 = -1082130432(0xffffffffbf800000, float:-1.0)
            r0.curveToRelative(r1, r2, r3, r4, r5, r6)
            r13 = -1092196762(0xffffffffbee66666, float:-0.45)
            r7.reflectiveCurveToRelative(r13, r6, r6, r6)
            r7.close()
            r0 = 1097859072(0x41700000, float:15.0)
            r7.moveTo(r8, r0)
            r7.horizontalLineToRelative(r11)
            r11 = -1082130432(0xffffffffbf800000, float:-1.0)
            r0 = r7
            r9 = r6
            r6 = r11
            r0.curveToRelative(r1, r2, r3, r4, r5, r6)
            r7.reflectiveCurveToRelative(r13, r9, r9, r9)
            r7.horizontalLineTo(r8)
            r1 = -1089680179(0xffffffffbf0ccccd, float:-0.55)
            r3 = -1082130432(0xffffffffbf800000, float:-1.0)
            r4 = 1055286886(0x3ee66666, float:0.45)
            r5 = -1082130432(0xffffffffbf800000, float:-1.0)
            r6 = 1065353216(0x3f800000, float:1.0)
            r0.curveToRelative(r1, r2, r3, r4, r5, r6)
            r0 = 1055286886(0x3ee66666, float:0.45)
            r7.reflectiveCurveToRelative(r0, r10, r10, r10)
            r7.close()
            java.util.List r13 = r7.getNodes()
            r24 = 0
            r25 = 0
            r26 = 0
            r27 = 14336(0x3800, float:2.0089E-41)
            r28 = 0
            androidx.compose.ui.graphics.vector.ImageVector$Builder r0 = androidx.compose.ui.graphics.vector.ImageVector.Builder.m814addPathoIyEayM$default(r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, r28)
            androidx.compose.ui.graphics.vector.ImageVector r0 = r0.build()
            androidx.compose.material.icons.rounded.DragHandleKt._dragHandle = r0
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.icons.rounded.DragHandleKt.getDragHandle(androidx.compose.material.icons.Icons$Rounded):androidx.compose.ui.graphics.vector.ImageVector");
    }
}
