package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.DpRect;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ContentDrawScope.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;", "Landroidx/compose/ui/graphics/drawscope/DrawScope;", "drawContent", "", "ui-graphics_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public interface ContentDrawScope extends DrawScope {
    void drawContent();

    /* compiled from: ContentDrawScope.kt */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        /* renamed from: getCenter-F1C5BW0  reason: not valid java name */
        public static long m735getCenterF1C5BW0(ContentDrawScope contentDrawScope) {
            Intrinsics.checkNotNullParameter(contentDrawScope, "this");
            return DrawScope.DefaultImpls.m766getCenterF1C5BW0(contentDrawScope);
        }

        /* renamed from: getSize-NH-jbRc  reason: not valid java name */
        public static long m736getSizeNHjbRc(ContentDrawScope contentDrawScope) {
            Intrinsics.checkNotNullParameter(contentDrawScope, "this");
            return DrawScope.DefaultImpls.m767getSizeNHjbRc(contentDrawScope);
        }

        /* renamed from: roundToPx--R2X_6o  reason: not valid java name */
        public static int m737roundToPxR2X_6o(ContentDrawScope contentDrawScope, long j) {
            Intrinsics.checkNotNullParameter(contentDrawScope, "this");
            return DrawScope.DefaultImpls.m769roundToPxR2X_6o(contentDrawScope, j);
        }

        /* renamed from: roundToPx-0680j_4  reason: not valid java name */
        public static int m738roundToPx0680j_4(ContentDrawScope contentDrawScope, float f) {
            Intrinsics.checkNotNullParameter(contentDrawScope, "this");
            return DrawScope.DefaultImpls.m770roundToPx0680j_4(contentDrawScope, f);
        }

        /* renamed from: toDp-GaN1DYA  reason: not valid java name */
        public static float m739toDpGaN1DYA(ContentDrawScope contentDrawScope, long j) {
            Intrinsics.checkNotNullParameter(contentDrawScope, "this");
            return DrawScope.DefaultImpls.m771toDpGaN1DYA(contentDrawScope, j);
        }

        /* renamed from: toDp-u2uoSUM  reason: not valid java name */
        public static float m740toDpu2uoSUM(ContentDrawScope contentDrawScope, float f) {
            Intrinsics.checkNotNullParameter(contentDrawScope, "this");
            return DrawScope.DefaultImpls.m772toDpu2uoSUM(contentDrawScope, f);
        }

        /* renamed from: toDp-u2uoSUM  reason: not valid java name */
        public static float m741toDpu2uoSUM(ContentDrawScope contentDrawScope, int i) {
            Intrinsics.checkNotNullParameter(contentDrawScope, "this");
            return DrawScope.DefaultImpls.m773toDpu2uoSUM((DrawScope) contentDrawScope, i);
        }

        /* renamed from: toPx--R2X_6o  reason: not valid java name */
        public static float m742toPxR2X_6o(ContentDrawScope contentDrawScope, long j) {
            Intrinsics.checkNotNullParameter(contentDrawScope, "this");
            return DrawScope.DefaultImpls.m774toPxR2X_6o(contentDrawScope, j);
        }

        /* renamed from: toPx-0680j_4  reason: not valid java name */
        public static float m743toPx0680j_4(ContentDrawScope contentDrawScope, float f) {
            Intrinsics.checkNotNullParameter(contentDrawScope, "this");
            return DrawScope.DefaultImpls.m775toPx0680j_4(contentDrawScope, f);
        }

        public static Rect toRect(ContentDrawScope contentDrawScope, DpRect receiver) {
            Intrinsics.checkNotNullParameter(contentDrawScope, "this");
            Intrinsics.checkNotNullParameter(receiver, "receiver");
            return DrawScope.DefaultImpls.toRect(contentDrawScope, receiver);
        }

        /* renamed from: toSp-0xMU5do  reason: not valid java name */
        public static long m744toSp0xMU5do(ContentDrawScope contentDrawScope, float f) {
            Intrinsics.checkNotNullParameter(contentDrawScope, "this");
            return DrawScope.DefaultImpls.m776toSp0xMU5do(contentDrawScope, f);
        }

        /* renamed from: toSp-kPz2Gy4  reason: not valid java name */
        public static long m745toSpkPz2Gy4(ContentDrawScope contentDrawScope, float f) {
            Intrinsics.checkNotNullParameter(contentDrawScope, "this");
            return DrawScope.DefaultImpls.m777toSpkPz2Gy4(contentDrawScope, f);
        }

        /* renamed from: toSp-kPz2Gy4  reason: not valid java name */
        public static long m746toSpkPz2Gy4(ContentDrawScope contentDrawScope, int i) {
            Intrinsics.checkNotNullParameter(contentDrawScope, "this");
            return DrawScope.DefaultImpls.m778toSpkPz2Gy4((DrawScope) contentDrawScope, i);
        }
    }
}
