package androidx.compose.material.icons.outlined;

import androidx.compose.ui.graphics.vector.ImageVector;
import kotlin.Metadata;
/* compiled from: HorizontalSplit.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"_horizontalSplit", "Landroidx/compose/ui/graphics/vector/ImageVector;", "HorizontalSplit", "Landroidx/compose/material/icons/Icons$Outlined;", "getHorizontalSplit", "(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;", "material-icons-extended-outlined_release"}, k = 2, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class HorizontalSplitKt {
    private static ImageVector _horizontalSplit;

    /*  JADX ERROR: JadxRuntimeException in pass: InlineMethods
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to process method for inline: androidx.compose.ui.graphics.vector.ImageVector.Builder.addPath-oIyEayM$default(androidx.compose.ui.graphics.vector.ImageVector$Builder, java.util.List, int, java.lang.String, androidx.compose.ui.graphics.Brush, float, androidx.compose.ui.graphics.Brush, float, float, int, int, float, float, float, float, int, java.lang.Object):androidx.compose.ui.graphics.vector.ImageVector$Builder
        	at jadx.core.dex.visitors.InlineMethods.processInvokeInsn(InlineMethods.java:76)
        	at jadx.core.dex.visitors.InlineMethods.visit(InlineMethods.java:51)
        Caused by: java.lang.NullPointerException
        */
    public static final androidx.compose.ui.graphics.vector.ImageVector getHorizontalSplit(androidx.compose.material.icons.Icons.Outlined r29) {
        /*
            java.lang.String r0 = "<this>"
            r1 = r29
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r1, r0)
            androidx.compose.ui.graphics.vector.ImageVector r0 = androidx.compose.material.icons.outlined.HorizontalSplitKt._horizontalSplit
            if (r0 == 0) goto Lf
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            return r0
        Lf:
            java.lang.String r2 = "Outlined.HorizontalSplit"
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
            androidx.compose.ui.graphics.vector.PathBuilder r0 = new androidx.compose.ui.graphics.vector.PathBuilder
            r0.<init>()
            r1 = 1100480512(0x41980000, float:19.0)
            r2 = 1097859072(0x41700000, float:15.0)
            r0.moveTo(r1, r2)
            r1 = 1073741824(0x40000000, float:2.0)
            r0.verticalLineToRelative(r1)
            r2 = 1099431936(0x41880000, float:17.0)
            r3 = 1084227584(0x40a00000, float:5.0)
            r0.lineTo(r3, r2)
            r2 = -1073741824(0xffffffffc0000000, float:-2.0)
            r0.verticalLineToRelative(r2)
            r2 = 1096810496(0x41600000, float:14.0)
            r0.horizontalLineToRelative(r2)
            r2 = -1054867456(0xffffffffc1200000, float:-10.0)
            r0.moveToRelative(r1, r2)
            r2 = 1077936128(0x40400000, float:3.0)
            r0.lineTo(r2, r3)
            r0.verticalLineToRelative(r1)
            r4 = 1099956224(0x41900000, float:18.0)
            r0.horizontalLineToRelative(r4)
            r5 = 1101529088(0x41a80000, float:21.0)
            r0.lineTo(r5, r3)
            r0.close()
            r3 = 1091567616(0x41100000, float:9.0)
            r0.moveTo(r5, r3)
            r0.lineTo(r2, r3)
            r0.verticalLineToRelative(r1)
            r0.horizontalLineToRelative(r4)
            r0.lineTo(r5, r3)
            r0.close()
            r1 = 1095761920(0x41500000, float:13.0)
            r0.moveTo(r5, r1)
            r0.lineTo(r2, r1)
            r1 = 1086324736(0x40c00000, float:6.0)
            r0.verticalLineToRelative(r1)
            r0.horizontalLineToRelative(r4)
            r1 = -1061158912(0xffffffffc0c00000, float:-6.0)
            r0.verticalLineToRelative(r1)
            r0.close()
            java.util.List r13 = r0.getNodes()
            r24 = 0
            r25 = 0
            r26 = 0
            r27 = 14336(0x3800, float:2.0089E-41)
            r28 = 0
            androidx.compose.ui.graphics.vector.ImageVector$Builder r0 = androidx.compose.ui.graphics.vector.ImageVector.Builder.m814addPathoIyEayM$default(r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, r28)
            androidx.compose.ui.graphics.vector.ImageVector r0 = r0.build()
            androidx.compose.material.icons.outlined.HorizontalSplitKt._horizontalSplit = r0
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.icons.outlined.HorizontalSplitKt.getHorizontalSplit(androidx.compose.material.icons.Icons$Outlined):androidx.compose.ui.graphics.vector.ImageVector");
    }
}
