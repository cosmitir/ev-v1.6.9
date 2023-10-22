package androidx.compose.ui.layout;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpRect;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: IntrinsicMeasureScope.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/layout/IntrinsicMeasureScope;", "Landroidx/compose/ui/unit/Density;", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "getLayoutDirection", "()Landroidx/compose/ui/unit/LayoutDirection;", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public interface IntrinsicMeasureScope extends Density {
    LayoutDirection getLayoutDirection();

    /* compiled from: IntrinsicMeasureScope.kt */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        /* renamed from: roundToPx--R2X_6o  reason: not valid java name */
        public static int m1609roundToPxR2X_6o(IntrinsicMeasureScope intrinsicMeasureScope, long j) {
            Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "this");
            return Density.DefaultImpls.m2093roundToPxR2X_6o(intrinsicMeasureScope, j);
        }

        /* renamed from: roundToPx-0680j_4  reason: not valid java name */
        public static int m1610roundToPx0680j_4(IntrinsicMeasureScope intrinsicMeasureScope, float f) {
            Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "this");
            return Density.DefaultImpls.m2094roundToPx0680j_4(intrinsicMeasureScope, f);
        }

        /* renamed from: toDp-GaN1DYA  reason: not valid java name */
        public static float m1611toDpGaN1DYA(IntrinsicMeasureScope intrinsicMeasureScope, long j) {
            Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "this");
            return Density.DefaultImpls.m2095toDpGaN1DYA(intrinsicMeasureScope, j);
        }

        /* renamed from: toDp-u2uoSUM  reason: not valid java name */
        public static float m1612toDpu2uoSUM(IntrinsicMeasureScope intrinsicMeasureScope, float f) {
            Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "this");
            return Density.DefaultImpls.m2096toDpu2uoSUM(intrinsicMeasureScope, f);
        }

        /* renamed from: toDp-u2uoSUM  reason: not valid java name */
        public static float m1613toDpu2uoSUM(IntrinsicMeasureScope intrinsicMeasureScope, int i) {
            Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "this");
            return Density.DefaultImpls.m2097toDpu2uoSUM((Density) intrinsicMeasureScope, i);
        }

        /* renamed from: toPx--R2X_6o  reason: not valid java name */
        public static float m1614toPxR2X_6o(IntrinsicMeasureScope intrinsicMeasureScope, long j) {
            Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "this");
            return Density.DefaultImpls.m2098toPxR2X_6o(intrinsicMeasureScope, j);
        }

        /* renamed from: toPx-0680j_4  reason: not valid java name */
        public static float m1615toPx0680j_4(IntrinsicMeasureScope intrinsicMeasureScope, float f) {
            Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "this");
            return Density.DefaultImpls.m2099toPx0680j_4(intrinsicMeasureScope, f);
        }

        public static Rect toRect(IntrinsicMeasureScope intrinsicMeasureScope, DpRect receiver) {
            Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "this");
            Intrinsics.checkNotNullParameter(receiver, "receiver");
            return Density.DefaultImpls.toRect(intrinsicMeasureScope, receiver);
        }

        /* renamed from: toSp-0xMU5do  reason: not valid java name */
        public static long m1616toSp0xMU5do(IntrinsicMeasureScope intrinsicMeasureScope, float f) {
            Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "this");
            return Density.DefaultImpls.m2100toSp0xMU5do(intrinsicMeasureScope, f);
        }

        /* renamed from: toSp-kPz2Gy4  reason: not valid java name */
        public static long m1617toSpkPz2Gy4(IntrinsicMeasureScope intrinsicMeasureScope, float f) {
            Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "this");
            return Density.DefaultImpls.m2101toSpkPz2Gy4(intrinsicMeasureScope, f);
        }

        /* renamed from: toSp-kPz2Gy4  reason: not valid java name */
        public static long m1618toSpkPz2Gy4(IntrinsicMeasureScope intrinsicMeasureScope, int i) {
            Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "this");
            return Density.DefaultImpls.m2102toSpkPz2Gy4((Density) intrinsicMeasureScope, i);
        }
    }
}
