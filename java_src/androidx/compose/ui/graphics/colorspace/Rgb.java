package androidx.compose.ui.graphics.colorspace;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.RangesKt;
/* compiled from: Rgb.kt */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\u0000\n\u0002\b\u0011\u0018\u0000 H2\u00020\u0001:\u0001HB?\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0002\u0010\nBW\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0002\u0010\u0011B\u001f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0012\u001a\u00020\u0013¢\u0006\u0002\u0010\u0014B'\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u0012\u001a\u00020\u0013¢\u0006\u0002\u0010\u0015B/\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0017¢\u0006\u0002\u0010\u0018B\u001f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0019\u001a\u00020\b¢\u0006\u0002\u0010\u001aB'\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u0019\u001a\u00020\b¢\u0006\u0002\u0010\u001bB?\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u0019\u001a\u00020\b\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0016\u001a\u00020\u0017¢\u0006\u0002\u0010\u001cB\u001f\b\u0010\u0012\u0006\u0010\u001d\u001a\u00020\u0000\u0012\u0006\u0010\u001e\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u001fBs\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\r\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\b\u0010 \u001a\u0004\u0018\u00010\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0017¢\u0006\u0002\u0010!J\u0013\u00106\u001a\u00020*2\b\u00107\u001a\u0004\u0018\u000108H\u0096\u0002J\u001e\u00109\u001a\u00020\u00052\u0006\u0010:\u001a\u00020\u000f2\u0006\u0010;\u001a\u00020\u000f2\u0006\u0010<\u001a\u00020\u000fJ\u000e\u00109\u001a\u00020\u00052\u0006\u0010=\u001a\u00020\u0005J\u0010\u0010>\u001a\u00020\u00052\u0006\u0010=\u001a\u00020\u0005H\u0016J\u0006\u0010?\u001a\u00020\u0005J\u000e\u0010?\u001a\u00020\u00052\u0006\u0010&\u001a\u00020\u0005J\u0010\u0010@\u001a\u00020\u000f2\u0006\u0010A\u001a\u00020\u0017H\u0016J\u0010\u0010B\u001a\u00020\u000f2\u0006\u0010A\u001a\u00020\u0017H\u0016J\u0006\u0010C\u001a\u00020\u0005J\u000e\u0010C\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u0005J\u0006\u0010D\u001a\u00020\u0005J\u000e\u0010D\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u0005J\b\u0010E\u001a\u00020\u0017H\u0016J\u001e\u0010F\u001a\u00020\u00052\u0006\u0010:\u001a\u00020\u000f2\u0006\u0010;\u001a\u00020\u000f2\u0006\u0010<\u001a\u00020\u000fJ\u000e\u0010F\u001a\u00020\u00052\u0006\u0010=\u001a\u00020\u0005J\u0010\u0010G\u001a\u00020\u00052\u0006\u0010=\u001a\u00020\u0005H\u0016R\u001d\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R \u0010$\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u0007X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b%\u0010#R\u0014\u0010&\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0014\u0010)\u001a\u00020*X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b)\u0010+R\u0014\u0010,\u001a\u00020*X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b,\u0010+R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b-\u0010#R \u0010.\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u0007X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b/\u0010#R\u0014\u0010\u000b\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b0\u0010(R\u0013\u0010 \u001a\u0004\u0018\u00010\u0013¢\u0006\b\n\u0000\u001a\u0004\b1\u00102R\u0014\u0010\u001e\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b3\u0010(R\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b4\u00105¨\u0006I"}, d2 = {"Landroidx/compose/ui/graphics/colorspace/Rgb;", "Landroidx/compose/ui/graphics/colorspace/ColorSpace;", "name", "", "toXYZ", "", "oetf", "Lkotlin/Function1;", "", "eotf", "(Ljava/lang/String;[FLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "primaries", "whitePoint", "Landroidx/compose/ui/graphics/colorspace/WhitePoint;", "min", "", "max", "(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FF)V", "function", "Landroidx/compose/ui/graphics/colorspace/TransferParameters;", "(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/TransferParameters;)V", "(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;)V", "id", "", "(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V", "gamma", "(Ljava/lang/String;[FD)V", "(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;D)V", "(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;DFFI)V", "colorSpace", "transform", "(Landroidx/compose/ui/graphics/colorspace/Rgb;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;)V", "transferParameters", "(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;[FLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FFLandroidx/compose/ui/graphics/colorspace/TransferParameters;I)V", "getEotf", "()Lkotlin/jvm/functions/Function1;", "eotfOrig", "getEotfOrig$ui_graphics_release", "inverseTransform", "getInverseTransform$ui_graphics_release", "()[F", "isSrgb", "", "()Z", "isWideGamut", "getOetf", "oetfOrig", "getOetfOrig$ui_graphics_release", "getPrimaries$ui_graphics_release", "getTransferParameters", "()Landroidx/compose/ui/graphics/colorspace/TransferParameters;", "getTransform$ui_graphics_release", "getWhitePoint", "()Landroidx/compose/ui/graphics/colorspace/WhitePoint;", "equals", "other", "", "fromLinear", "r", "g", "b", "v", "fromXyz", "getInverseTransform", "getMaxValue", "component", "getMinValue", "getPrimaries", "getTransform", "hashCode", "toLinear", "toXyz", "Companion", "ui-graphics_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class Rgb extends ColorSpace {
    public static final Companion Companion = new Companion(null);
    private static final Function1<Double, Double> DoubleIdentity = new Function1<Double, Double>() { // from class: androidx.compose.ui.graphics.colorspace.Rgb$Companion$DoubleIdentity$1
        public final double invoke(double d) {
            return d;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Double invoke(Double d) {
            return Double.valueOf(invoke(d.doubleValue()));
        }
    };
    private final Function1<Double, Double> eotf;
    private final Function1<Double, Double> eotfOrig;
    private final float[] inverseTransform;
    private final boolean isSrgb;
    private final boolean isWideGamut;
    private final float max;
    private final float min;
    private final Function1<Double, Double> oetf;
    private final Function1<Double, Double> oetfOrig;
    private final float[] primaries;
    private final TransferParameters transferParameters;
    private final float[] transform;
    private final WhitePoint whitePoint;

    public final WhitePoint getWhitePoint() {
        return this.whitePoint;
    }

    public final TransferParameters getTransferParameters() {
        return this.transferParameters;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public Rgb(String name, float[] primaries, WhitePoint whitePoint, float[] fArr, Function1<? super Double, Double> oetf, Function1<? super Double, Double> eotf, float f, float f2, TransferParameters transferParameters, int i) {
        super(name, ColorModel.Companion.m675getRgbxdoWZVw(), i, null);
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(primaries, "primaries");
        Intrinsics.checkNotNullParameter(whitePoint, "whitePoint");
        Intrinsics.checkNotNullParameter(oetf, "oetf");
        Intrinsics.checkNotNullParameter(eotf, "eotf");
        this.whitePoint = whitePoint;
        this.min = f;
        this.max = f2;
        this.transferParameters = transferParameters;
        this.oetfOrig = oetf;
        this.oetf = new Function1<Double, Double>() { // from class: androidx.compose.ui.graphics.colorspace.Rgb$oetf$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            public final double invoke(double d) {
                float f3;
                float f4;
                double doubleValue = Rgb.this.getOetfOrig$ui_graphics_release().invoke(Double.valueOf(d)).doubleValue();
                f3 = Rgb.this.min;
                double d2 = f3;
                f4 = Rgb.this.max;
                return RangesKt.coerceIn(doubleValue, d2, f4);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Double invoke(Double d) {
                return Double.valueOf(invoke(d.doubleValue()));
            }
        };
        this.eotfOrig = eotf;
        this.eotf = new Function1<Double, Double>() { // from class: androidx.compose.ui.graphics.colorspace.Rgb$eotf$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            public final double invoke(double d) {
                float f3;
                float f4;
                Function1<Double, Double> eotfOrig$ui_graphics_release = Rgb.this.getEotfOrig$ui_graphics_release();
                f3 = Rgb.this.min;
                double d2 = f3;
                f4 = Rgb.this.max;
                return eotfOrig$ui_graphics_release.invoke(Double.valueOf(RangesKt.coerceIn(d, d2, f4))).doubleValue();
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Double invoke(Double d) {
                return Double.valueOf(invoke(d.doubleValue()));
            }
        };
        if (primaries.length != 6 && primaries.length != 9) {
            throw new IllegalArgumentException("The color space's primaries must be defined as an array of 6 floats in xyY or 9 floats in XYZ");
        }
        if (f >= f2) {
            throw new IllegalArgumentException("Invalid range: min=" + f + ", max=" + f2 + "; min must be strictly < max");
        }
        Companion companion = Companion;
        float[] xyPrimaries = companion.xyPrimaries(primaries);
        this.primaries = xyPrimaries;
        if (fArr != null) {
            if (fArr.length != 9) {
                throw new IllegalArgumentException(Intrinsics.stringPlus("Transform must have 9 entries! Has ", Integer.valueOf(fArr.length)));
            }
            this.transform = fArr;
        } else {
            this.transform = companion.computeXYZMatrix(xyPrimaries, whitePoint);
        }
        this.inverseTransform = ColorSpaceKt.inverse3x3(this.transform);
        this.isWideGamut = companion.isWideGamut(xyPrimaries, f, f2);
        this.isSrgb = companion.isSrgb(xyPrimaries, whitePoint, oetf, eotf, f, f2, i);
    }

    public final float[] getPrimaries$ui_graphics_release() {
        return this.primaries;
    }

    public final float[] getTransform$ui_graphics_release() {
        return this.transform;
    }

    public final float[] getInverseTransform$ui_graphics_release() {
        return this.inverseTransform;
    }

    public final Function1<Double, Double> getOetfOrig$ui_graphics_release() {
        return this.oetfOrig;
    }

    public final Function1<Double, Double> getOetf() {
        return this.oetf;
    }

    public final Function1<Double, Double> getEotfOrig$ui_graphics_release() {
        return this.eotfOrig;
    }

    public final Function1<Double, Double> getEotf() {
        return this.eotf;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public boolean isWideGamut() {
        return this.isWideGamut;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public boolean isSrgb() {
        return this.isSrgb;
    }

    public final float[] getPrimaries() {
        float[] fArr = this.primaries;
        float[] copyOf = Arrays.copyOf(fArr, fArr.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "java.util.Arrays.copyOf(this, size)");
        return copyOf;
    }

    public final float[] getTransform() {
        float[] fArr = this.transform;
        float[] copyOf = Arrays.copyOf(fArr, fArr.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "java.util.Arrays.copyOf(this, size)");
        return copyOf;
    }

    public final float[] getInverseTransform() {
        float[] fArr = this.inverseTransform;
        float[] copyOf = Arrays.copyOf(fArr, fArr.length);
        Intrinsics.checkNotNullExpressionValue(copyOf, "java.util.Arrays.copyOf(this, size)");
        return copyOf;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Rgb(java.lang.String r14, float[] r15, kotlin.jvm.functions.Function1<? super java.lang.Double, java.lang.Double> r16, kotlin.jvm.functions.Function1<? super java.lang.Double, java.lang.Double> r17) {
        /*
            r13 = this;
            r0 = r15
            java.lang.String r1 = "name"
            r3 = r14
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r14, r1)
            java.lang.String r1 = "toXYZ"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r15, r1)
            java.lang.String r1 = "oetf"
            r7 = r16
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r1)
            java.lang.String r1 = "eotf"
            r8 = r17
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r1)
            androidx.compose.ui.graphics.colorspace.Rgb$Companion r1 = androidx.compose.ui.graphics.colorspace.Rgb.Companion
            float[] r4 = r1.computePrimaries$ui_graphics_release(r15)
            androidx.compose.ui.graphics.colorspace.WhitePoint r5 = androidx.compose.ui.graphics.colorspace.Rgb.Companion.access$computeWhitePoint(r1, r15)
            r6 = 0
            r9 = 0
            r10 = 1065353216(0x3f800000, float:1.0)
            r11 = 0
            r12 = -1
            r2 = r13
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.colorspace.Rgb.<init>(java.lang.String, float[], kotlin.jvm.functions.Function1, kotlin.jvm.functions.Function1):void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Rgb(String name, float[] primaries, WhitePoint whitePoint, Function1<? super Double, Double> oetf, Function1<? super Double, Double> eotf, float f, float f2) {
        this(name, primaries, whitePoint, null, oetf, eotf, f, f2, null, -1);
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(primaries, "primaries");
        Intrinsics.checkNotNullParameter(whitePoint, "whitePoint");
        Intrinsics.checkNotNullParameter(oetf, "oetf");
        Intrinsics.checkNotNullParameter(eotf, "eotf");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Rgb(java.lang.String r8, float[] r9, androidx.compose.ui.graphics.colorspace.TransferParameters r10) {
        /*
            r7 = this;
            java.lang.String r0 = "name"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.lang.String r0 = "toXYZ"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            java.lang.String r0 = "function"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            androidx.compose.ui.graphics.colorspace.Rgb$Companion r0 = androidx.compose.ui.graphics.colorspace.Rgb.Companion
            float[] r3 = r0.computePrimaries$ui_graphics_release(r9)
            androidx.compose.ui.graphics.colorspace.WhitePoint r4 = androidx.compose.ui.graphics.colorspace.Rgb.Companion.access$computeWhitePoint(r0, r9)
            r6 = -1
            r1 = r7
            r2 = r8
            r5 = r10
            r1.<init>(r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.colorspace.Rgb.<init>(java.lang.String, float[], androidx.compose.ui.graphics.colorspace.TransferParameters):void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Rgb(String name, float[] primaries, WhitePoint whitePoint, TransferParameters function) {
        this(name, primaries, whitePoint, function, -1);
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(primaries, "primaries");
        Intrinsics.checkNotNullParameter(whitePoint, "whitePoint");
        Intrinsics.checkNotNullParameter(function, "function");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0059  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Rgb(java.lang.String r14, float[] r15, androidx.compose.ui.graphics.colorspace.WhitePoint r16, final androidx.compose.ui.graphics.colorspace.TransferParameters r17, int r18) {
        /*
            r13 = this;
            r9 = r17
            java.lang.String r0 = "name"
            r1 = r14
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r14, r0)
            java.lang.String r0 = "primaries"
            r2 = r15
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r15, r0)
            java.lang.String r0 = "whitePoint"
            r3 = r16
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.String r0 = "function"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            r4 = 0
            double r5 = r17.getE()
            r7 = 0
            int r0 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            r5 = 1
            r6 = 0
            if (r0 != 0) goto L2c
            r0 = r5
            goto L2d
        L2c:
            r0 = r6
        L2d:
            if (r0 == 0) goto L44
            double r10 = r17.getF()
            int r0 = (r10 > r7 ? 1 : (r10 == r7 ? 0 : -1))
            if (r0 != 0) goto L39
            r0 = r5
            goto L3a
        L39:
            r0 = r6
        L3a:
            if (r0 == 0) goto L44
            androidx.compose.ui.graphics.colorspace.Rgb$1 r0 = new androidx.compose.ui.graphics.colorspace.Rgb$1
            r0.<init>()
            kotlin.jvm.functions.Function1 r0 = (kotlin.jvm.functions.Function1) r0
            goto L4b
        L44:
            androidx.compose.ui.graphics.colorspace.Rgb$2 r0 = new androidx.compose.ui.graphics.colorspace.Rgb$2
            r0.<init>()
            kotlin.jvm.functions.Function1 r0 = (kotlin.jvm.functions.Function1) r0
        L4b:
            r10 = r0
            double r11 = r17.getE()
            int r0 = (r11 > r7 ? 1 : (r11 == r7 ? 0 : -1))
            if (r0 != 0) goto L56
            r0 = r5
            goto L57
        L56:
            r0 = r6
        L57:
            if (r0 == 0) goto L6d
            double r11 = r17.getF()
            int r0 = (r11 > r7 ? 1 : (r11 == r7 ? 0 : -1))
            if (r0 != 0) goto L62
            goto L63
        L62:
            r5 = r6
        L63:
            if (r5 == 0) goto L6d
            androidx.compose.ui.graphics.colorspace.Rgb$3 r0 = new androidx.compose.ui.graphics.colorspace.Rgb$3
            r0.<init>()
            kotlin.jvm.functions.Function1 r0 = (kotlin.jvm.functions.Function1) r0
            goto L74
        L6d:
            androidx.compose.ui.graphics.colorspace.Rgb$4 r0 = new androidx.compose.ui.graphics.colorspace.Rgb$4
            r0.<init>()
            kotlin.jvm.functions.Function1 r0 = (kotlin.jvm.functions.Function1) r0
        L74:
            r6 = r0
            r7 = 0
            r8 = 1065353216(0x3f800000, float:1.0)
            r0 = r13
            r1 = r14
            r2 = r15
            r3 = r16
            r5 = r10
            r9 = r17
            r10 = r18
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.colorspace.Rgb.<init>(java.lang.String, float[], androidx.compose.ui.graphics.colorspace.WhitePoint, androidx.compose.ui.graphics.colorspace.TransferParameters, int):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Rgb(java.lang.String r11, float[] r12, double r13) {
        /*
            r10 = this;
            java.lang.String r0 = "name"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r0)
            java.lang.String r0 = "toXYZ"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r12, r0)
            androidx.compose.ui.graphics.colorspace.Rgb$Companion r0 = androidx.compose.ui.graphics.colorspace.Rgb.Companion
            float[] r3 = r0.computePrimaries$ui_graphics_release(r12)
            androidx.compose.ui.graphics.colorspace.WhitePoint r4 = androidx.compose.ui.graphics.colorspace.Rgb.Companion.access$computeWhitePoint(r0, r12)
            r7 = 0
            r8 = 1065353216(0x3f800000, float:1.0)
            r9 = -1
            r1 = r10
            r2 = r11
            r5 = r13
            r1.<init>(r2, r3, r4, r5, r7, r8, r9)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.colorspace.Rgb.<init>(java.lang.String, float[], double):void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Rgb(String name, float[] primaries, WhitePoint whitePoint, double d) {
        this(name, primaries, whitePoint, d, 0.0f, 1.0f, -1);
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(primaries, "primaries");
        Intrinsics.checkNotNullParameter(whitePoint, "whitePoint");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Rgb(java.lang.String r24, float[] r25, androidx.compose.ui.graphics.colorspace.WhitePoint r26, final double r27, float r29, float r30, int r31) {
        /*
            r23 = this;
            r1 = r27
            java.lang.String r0 = "name"
            r15 = r24
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r15, r0)
            java.lang.String r0 = "primaries"
            r13 = r25
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r13, r0)
            java.lang.String r0 = "whitePoint"
            r14 = r26
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r14, r0)
            r17 = 0
            r3 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            int r0 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            r3 = 1
            r4 = 0
            if (r0 != 0) goto L26
            r5 = r3
            goto L27
        L26:
            r5 = r4
        L27:
            if (r5 == 0) goto L2c
            kotlin.jvm.functions.Function1<java.lang.Double, java.lang.Double> r5 = androidx.compose.ui.graphics.colorspace.Rgb.DoubleIdentity
            goto L33
        L2c:
            androidx.compose.ui.graphics.colorspace.Rgb$5 r5 = new androidx.compose.ui.graphics.colorspace.Rgb$5
            r5.<init>()
            kotlin.jvm.functions.Function1 r5 = (kotlin.jvm.functions.Function1) r5
        L33:
            r18 = r5
            if (r0 != 0) goto L38
            goto L39
        L38:
            r3 = r4
        L39:
            if (r3 == 0) goto L3e
            kotlin.jvm.functions.Function1<java.lang.Double, java.lang.Double> r0 = androidx.compose.ui.graphics.colorspace.Rgb.DoubleIdentity
            goto L45
        L3e:
            androidx.compose.ui.graphics.colorspace.Rgb$6 r0 = new androidx.compose.ui.graphics.colorspace.Rgb$6
            r0.<init>()
            kotlin.jvm.functions.Function1 r0 = (kotlin.jvm.functions.Function1) r0
        L45:
            r19 = r0
            androidx.compose.ui.graphics.colorspace.TransferParameters r20 = new androidx.compose.ui.graphics.colorspace.TransferParameters
            r0 = r20
            r3 = 4607182418800017408(0x3ff0000000000000, double:1.0)
            r5 = 0
            r7 = 0
            r9 = 0
            r11 = 0
            r21 = 0
            r13 = r21
            r16 = 96
            r15 = r16
            r16 = 0
            r1 = r27
            r0.<init>(r1, r3, r5, r7, r9, r11, r13, r15, r16)
            r1 = r23
            r2 = r24
            r3 = r25
            r4 = r26
            r5 = r17
            r6 = r18
            r7 = r19
            r8 = r29
            r9 = r30
            r10 = r20
            r11 = r31
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.colorspace.Rgb.<init>(java.lang.String, float[], androidx.compose.ui.graphics.colorspace.WhitePoint, double, float, float, int):void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Rgb(Rgb colorSpace, float[] transform, WhitePoint whitePoint) {
        this(colorSpace.getName(), colorSpace.primaries, whitePoint, transform, colorSpace.oetfOrig, colorSpace.eotfOrig, colorSpace.min, colorSpace.max, colorSpace.transferParameters, -1);
        Intrinsics.checkNotNullParameter(colorSpace, "colorSpace");
        Intrinsics.checkNotNullParameter(transform, "transform");
        Intrinsics.checkNotNullParameter(whitePoint, "whitePoint");
    }

    public final float[] getPrimaries(float[] primaries) {
        Intrinsics.checkNotNullParameter(primaries, "primaries");
        return ArraysKt.copyInto$default(this.primaries, primaries, 0, 0, 0, 14, (Object) null);
    }

    public final float[] getTransform(float[] transform) {
        Intrinsics.checkNotNullParameter(transform, "transform");
        return ArraysKt.copyInto$default(this.transform, transform, 0, 0, 0, 14, (Object) null);
    }

    public final float[] getInverseTransform(float[] inverseTransform) {
        Intrinsics.checkNotNullParameter(inverseTransform, "inverseTransform");
        return ArraysKt.copyInto$default(this.inverseTransform, inverseTransform, 0, 0, 0, 14, (Object) null);
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public float getMinValue(int i) {
        return this.min;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public float getMaxValue(int i) {
        return this.max;
    }

    public final float[] toLinear(float f, float f2, float f3) {
        return toLinear(new float[]{f, f2, f3});
    }

    public final float[] toLinear(float[] v) {
        Intrinsics.checkNotNullParameter(v, "v");
        v[0] = (float) this.eotf.invoke(Double.valueOf(v[0])).doubleValue();
        v[1] = (float) this.eotf.invoke(Double.valueOf(v[1])).doubleValue();
        v[2] = (float) this.eotf.invoke(Double.valueOf(v[2])).doubleValue();
        return v;
    }

    public final float[] fromLinear(float f, float f2, float f3) {
        return fromLinear(new float[]{f, f2, f3});
    }

    public final float[] fromLinear(float[] v) {
        Intrinsics.checkNotNullParameter(v, "v");
        v[0] = (float) this.oetf.invoke(Double.valueOf(v[0])).doubleValue();
        v[1] = (float) this.oetf.invoke(Double.valueOf(v[1])).doubleValue();
        v[2] = (float) this.oetf.invoke(Double.valueOf(v[2])).doubleValue();
        return v;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public float[] toXyz(float[] v) {
        Intrinsics.checkNotNullParameter(v, "v");
        v[0] = (float) this.eotf.invoke(Double.valueOf(v[0])).doubleValue();
        v[1] = (float) this.eotf.invoke(Double.valueOf(v[1])).doubleValue();
        v[2] = (float) this.eotf.invoke(Double.valueOf(v[2])).doubleValue();
        return ColorSpaceKt.mul3x3Float3(this.transform, v);
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public float[] fromXyz(float[] v) {
        Intrinsics.checkNotNullParameter(v, "v");
        ColorSpaceKt.mul3x3Float3(this.inverseTransform, v);
        v[0] = (float) this.oetf.invoke(Double.valueOf(v[0])).doubleValue();
        v[1] = (float) this.oetf.invoke(Double.valueOf(v[1])).doubleValue();
        v[2] = (float) this.oetf.invoke(Double.valueOf(v[2])).doubleValue();
        return v;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(getClass()), Reflection.getOrCreateKotlinClass(obj.getClass())) && super.equals(obj)) {
            Rgb rgb = (Rgb) obj;
            if (Float.compare(rgb.min, this.min) == 0 && Float.compare(rgb.max, this.max) == 0 && Intrinsics.areEqual(this.whitePoint, rgb.whitePoint) && Arrays.equals(this.primaries, rgb.primaries)) {
                TransferParameters transferParameters = this.transferParameters;
                if (transferParameters != null) {
                    return Intrinsics.areEqual(transferParameters, rgb.transferParameters);
                }
                if (rgb.transferParameters == null) {
                    return true;
                }
                if (Intrinsics.areEqual(this.oetfOrig, rgb.oetfOrig)) {
                    return Intrinsics.areEqual(this.eotfOrig, rgb.eotfOrig);
                }
                return false;
            }
            return false;
        }
        return false;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public int hashCode() {
        int hashCode = ((((super.hashCode() * 31) + this.whitePoint.hashCode()) * 31) + Arrays.hashCode(this.primaries)) * 31;
        float f = this.min;
        int floatToIntBits = (hashCode + (!((f > 0.0f ? 1 : (f == 0.0f ? 0 : -1)) == 0) ? Float.floatToIntBits(f) : 0)) * 31;
        float f2 = this.max;
        int floatToIntBits2 = (floatToIntBits + (!(f2 == 0.0f) ? Float.floatToIntBits(f2) : 0)) * 31;
        TransferParameters transferParameters = this.transferParameters;
        int hashCode2 = floatToIntBits2 + (transferParameters != null ? transferParameters.hashCode() : 0);
        return this.transferParameters == null ? (((hashCode2 * 31) + this.oetfOrig.hashCode()) * 31) + this.eotfOrig.hashCode() : hashCode2;
    }

    /* compiled from: Rgb.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0002J8\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u00052\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00042\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0015\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\tH\u0000¢\u0006\u0002\b\u0011J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\tH\u0002J\u0018\u0010\u0014\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u0013H\u0002J\u0018\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\tH\u0002J(\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u0007H\u0002JX\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u00132\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00042\u0012\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010!\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u00072\u0006\u0010#\u001a\u00020$H\u0002J \u0010%\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\t2\u0006\u0010!\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u0007H\u0002J\u0010\u0010&\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\tH\u0002R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;", "", "()V", "DoubleIdentity", "Lkotlin/Function1;", "", "area", "", "primaries", "", "compare", "", "point", "a", "b", "computePrimaries", "toXYZ", "computePrimaries$ui_graphics_release", "computeWhitePoint", "Landroidx/compose/ui/graphics/colorspace/WhitePoint;", "computeXYZMatrix", "whitePoint", "contains", "p1", "p2", "cross", "ax", "ay", "bx", "by", "isSrgb", "OETF", "EOTF", "min", "max", "id", "", "isWideGamut", "xyPrimaries", "ui-graphics_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final float cross(float f, float f2, float f3, float f4) {
            return (f * f4) - (f2 * f3);
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isSrgb(float[] fArr, WhitePoint whitePoint, Function1<? super Double, Double> function1, Function1<? super Double, Double> function12, float f, float f2, int i) {
            if (i == 0) {
                return true;
            }
            if (ColorSpaceKt.compare(fArr, ColorSpaces.INSTANCE.getSrgbPrimaries$ui_graphics_release()) && ColorSpaceKt.compare(whitePoint, Illuminant.INSTANCE.getD65())) {
                if (f == 0.0f) {
                    if (f2 == 1.0f) {
                        Rgb srgb = ColorSpaces.INSTANCE.getSrgb();
                        for (double d = 0.0d; d <= 1.0d; d += 0.00392156862745098d) {
                            if (!compare(d, function1, srgb.getOetfOrig$ui_graphics_release()) || !compare(d, function12, srgb.getEotfOrig$ui_graphics_release())) {
                                return false;
                            }
                        }
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }

        private final boolean compare(double d, Function1<? super Double, Double> function1, Function1<? super Double, Double> function12) {
            return Math.abs(function1.invoke(Double.valueOf(d)).doubleValue() - function12.invoke(Double.valueOf(d)).doubleValue()) <= 0.001d;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean isWideGamut(float[] fArr, float f, float f2) {
            return (area(fArr) / area(ColorSpaces.INSTANCE.getNtsc1953Primaries$ui_graphics_release()) > 0.9f && contains(fArr, ColorSpaces.INSTANCE.getSrgbPrimaries$ui_graphics_release())) || (f < 0.0f && f2 > 1.0f);
        }

        private final float area(float[] fArr) {
            float f = fArr[0];
            float f2 = fArr[1];
            float f3 = fArr[2];
            float f4 = fArr[3];
            float f5 = fArr[4];
            float f6 = fArr[5];
            float f7 = ((((((f * f4) + (f2 * f5)) + (f3 * f6)) - (f4 * f5)) - (f2 * f3)) - (f * f6)) * 0.5f;
            return f7 < 0.0f ? -f7 : f7;
        }

        private final boolean contains(float[] fArr, float[] fArr2) {
            float f = fArr[0] - fArr2[0];
            float f2 = fArr[1] - fArr2[1];
            float[] fArr3 = {f, f2, fArr[2] - fArr2[2], fArr[3] - fArr2[3], fArr[4] - fArr2[4], fArr[5] - fArr2[5]};
            return cross(f, f2, fArr2[0] - fArr2[4], fArr2[1] - fArr2[5]) >= 0.0f && cross(fArr2[0] - fArr2[2], fArr2[1] - fArr2[3], fArr3[0], fArr3[1]) >= 0.0f && cross(fArr3[2], fArr3[3], fArr2[2] - fArr2[0], fArr2[3] - fArr2[1]) >= 0.0f && cross(fArr2[2] - fArr2[4], fArr2[3] - fArr2[5], fArr3[2], fArr3[3]) >= 0.0f && cross(fArr3[4], fArr3[5], fArr2[4] - fArr2[2], fArr2[5] - fArr2[3]) >= 0.0f && cross(fArr2[4] - fArr2[0], fArr2[5] - fArr2[1], fArr3[4], fArr3[5]) >= 0.0f;
        }

        public final float[] computePrimaries$ui_graphics_release(float[] toXYZ) {
            Intrinsics.checkNotNullParameter(toXYZ, "toXYZ");
            float[] mul3x3Float3 = ColorSpaceKt.mul3x3Float3(toXYZ, new float[]{1.0f, 0.0f, 0.0f});
            float[] mul3x3Float32 = ColorSpaceKt.mul3x3Float3(toXYZ, new float[]{0.0f, 1.0f, 0.0f});
            float[] mul3x3Float33 = ColorSpaceKt.mul3x3Float3(toXYZ, new float[]{0.0f, 0.0f, 1.0f});
            float f = mul3x3Float3[0];
            float f2 = mul3x3Float3[1];
            float f3 = f + f2 + mul3x3Float3[2];
            float f4 = mul3x3Float32[0] + mul3x3Float32[1] + mul3x3Float32[2];
            float f5 = mul3x3Float33[0] + mul3x3Float33[1] + mul3x3Float33[2];
            return new float[]{f / f3, f2 / f3, mul3x3Float32[0] / f4, mul3x3Float32[1] / f4, mul3x3Float33[0] / f5, mul3x3Float33[1] / f5};
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final WhitePoint computeWhitePoint(float[] fArr) {
            float[] mul3x3Float3 = ColorSpaceKt.mul3x3Float3(fArr, new float[]{1.0f, 1.0f, 1.0f});
            float f = mul3x3Float3[0] + mul3x3Float3[1] + mul3x3Float3[2];
            return new WhitePoint(mul3x3Float3[0] / f, mul3x3Float3[1] / f);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final float[] xyPrimaries(float[] fArr) {
            float[] fArr2 = new float[6];
            if (fArr.length == 9) {
                float f = fArr[0];
                float f2 = fArr[1];
                float f3 = f + f2 + fArr[2];
                fArr2[0] = f / f3;
                fArr2[1] = f2 / f3;
                float f4 = fArr[3];
                float f5 = fArr[4];
                float f6 = f4 + f5 + fArr[5];
                fArr2[2] = f4 / f6;
                fArr2[3] = f5 / f6;
                float f7 = fArr[6];
                float f8 = fArr[7];
                float f9 = f7 + f8 + fArr[8];
                fArr2[4] = f7 / f9;
                fArr2[5] = f8 / f9;
            } else {
                ArraysKt.copyInto$default(fArr, fArr2, 0, 0, 6, 6, (Object) null);
            }
            return fArr2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final float[] computeXYZMatrix(float[] fArr, WhitePoint whitePoint) {
            float f = fArr[0];
            float f2 = fArr[1];
            float f3 = fArr[2];
            float f4 = fArr[3];
            float f5 = fArr[4];
            float f6 = fArr[5];
            float x = whitePoint.getX();
            float y = whitePoint.getY();
            float f7 = 1;
            float f8 = (f7 - f) / f2;
            float f9 = f / f2;
            float f10 = (f3 / f4) - f9;
            float f11 = (x / y) - f9;
            float f12 = ((f7 - f3) / f4) - f8;
            float f13 = (f5 / f6) - f9;
            float f14 = (((((f7 - x) / y) - f8) * f10) - (f11 * f12)) / (((((f7 - f5) / f6) - f8) * f10) - (f12 * f13));
            float f15 = (f11 - (f13 * f14)) / f10;
            float f16 = (1.0f - f15) - f14;
            float f17 = f16 / f2;
            float f18 = f15 / f4;
            float f19 = f14 / f6;
            return new float[]{f17 * f, f16, f17 * ((1.0f - f) - f2), f18 * f3, f15, f18 * ((1.0f - f3) - f4), f19 * f5, f14, f19 * ((1.0f - f5) - f6)};
        }
    }
}
