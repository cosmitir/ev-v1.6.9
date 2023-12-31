package androidx.compose.ui.graphics;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmInline;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: ColorMatrix.kt */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0014\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b!\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0087@\u0018\u00002\u00020\u0001B\u0014\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\r\u0010\b\u001a\u00020\t¢\u0006\u0004\b\n\u0010\u000bJ\r\u0010\f\u001a\u00020\t¢\u0006\u0004\b\r\u0010\u000bJ5\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0012H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u001a\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u001a\u0010\u001bJ \u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0012H\u0086\n¢\u0006\u0004\b\u001d\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020\u0012HÖ\u0001¢\u0006\u0004\b \u0010!J\r\u0010\"\u001a\u00020\t¢\u0006\u0004\b#\u0010\u000bJP\u0010$\u001a\u00020\t2\u0006\u0010%\u001a\u00020\u000f26\u0010&\u001a2\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b(\u0012\b\b)\u0012\u0004\b\b(*\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b(\u0012\b\b)\u0012\u0004\b\b(+\u0012\u0004\u0012\u00020\t0'H\u0082\b¢\u0006\u0004\b,\u0010-J\u001b\u0010.\u001a\u00020\t2\u0006\u0010/\u001a\u00020\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b0\u00101J(\u0010.\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u00122\u0006\u00102\u001a\u00020\u000fH\u0086\n¢\u0006\u0004\b3\u00104J\u0015\u00105\u001a\u00020\t2\u0006\u0010%\u001a\u00020\u000f¢\u0006\u0004\b6\u00107J\u0015\u00108\u001a\u00020\t2\u0006\u0010%\u001a\u00020\u000f¢\u0006\u0004\b9\u00107J\u0015\u0010:\u001a\u00020\t2\u0006\u0010%\u001a\u00020\u000f¢\u0006\u0004\b;\u00107J\u0015\u0010<\u001a\u00020\t2\u0006\u0010=\u001a\u00020\u000f¢\u0006\u0004\b>\u00107J-\u0010?\u001a\u00020\t2\u0006\u0010@\u001a\u00020\u000f2\u0006\u0010A\u001a\u00020\u000f2\u0006\u0010B\u001a\u00020\u000f2\u0006\u0010C\u001a\u00020\u000f¢\u0006\u0004\bD\u0010EJ\u001e\u0010F\u001a\u00020\t2\u0006\u0010G\u001a\u00020\u0000H\u0086\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bH\u00101J\u0010\u0010I\u001a\u00020JHÖ\u0001¢\u0006\u0004\bK\u0010LR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u0088\u0001\u0002ø\u0001\u0000\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006M"}, d2 = {"Landroidx/compose/ui/graphics/ColorMatrix;", "", "values", "", "constructor-impl", "([F)[F", "getValues", "()[F", "convertRgbToYuv", "", "convertRgbToYuv-impl", "([F)V", "convertYuvToRgb", "convertYuvToRgb-impl", "dot", "", "m1", "row", "", "m2", "column", "dot-Me4OoYI", "([F[FI[FI)F", "equals", "", "other", "equals-impl", "([FLjava/lang/Object;)Z", "get", "get-impl", "([FII)F", "hashCode", "hashCode-impl", "([F)I", "reset", "reset-impl", "rotateInternal", "degrees", "block", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "cosine", "sine", "rotateInternal-impl", "([FFLkotlin/jvm/functions/Function2;)V", "set", "src", "set-jHG-Opc", "([F[F)V", "v", "set-impl", "([FIIF)V", "setToRotateBlue", "setToRotateBlue-impl", "([FF)V", "setToRotateGreen", "setToRotateGreen-impl", "setToRotateRed", "setToRotateRed-impl", "setToSaturation", "sat", "setToSaturation-impl", "setToScale", "redScale", "greenScale", "blueScale", "alphaScale", "setToScale-impl", "([FFFFF)V", "timesAssign", "colorMatrix", "timesAssign-jHG-Opc", "toString", "", "toString-impl", "([F)Ljava/lang/String;", "ui-graphics_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@JvmInline
/* loaded from: classes.dex */
public final class ColorMatrix {
    private final float[] values;

    /* renamed from: box-impl  reason: not valid java name */
    public static final /* synthetic */ ColorMatrix m402boximpl(float[] fArr) {
        return new ColorMatrix(fArr);
    }

    /* renamed from: constructor-impl  reason: not valid java name */
    public static float[] m403constructorimpl(float[] values) {
        Intrinsics.checkNotNullParameter(values, "values");
        return values;
    }

    /* renamed from: equals-impl  reason: not valid java name */
    public static boolean m408equalsimpl(float[] fArr, Object obj) {
        return (obj instanceof ColorMatrix) && Intrinsics.areEqual(fArr, ((ColorMatrix) obj).m423unboximpl());
    }

    /* renamed from: equals-impl0  reason: not valid java name */
    public static final boolean m409equalsimpl0(float[] fArr, float[] fArr2) {
        return Intrinsics.areEqual(fArr, fArr2);
    }

    /* renamed from: hashCode-impl  reason: not valid java name */
    public static int m411hashCodeimpl(float[] fArr) {
        return Arrays.hashCode(fArr);
    }

    /* renamed from: toString-impl  reason: not valid java name */
    public static String m422toStringimpl(float[] fArr) {
        return "ColorMatrix(values=" + Arrays.toString(fArr) + ')';
    }

    public boolean equals(Object obj) {
        return m408equalsimpl(m423unboximpl(), obj);
    }

    public int hashCode() {
        return m411hashCodeimpl(m423unboximpl());
    }

    public String toString() {
        return m422toStringimpl(m423unboximpl());
    }

    /* renamed from: unbox-impl  reason: not valid java name */
    public final /* synthetic */ float[] m423unboximpl() {
        return this.values;
    }

    private /* synthetic */ ColorMatrix(float[] fArr) {
        this.values = fArr;
    }

    public final float[] getValues() {
        return m423unboximpl();
    }

    /* renamed from: constructor-impl$default  reason: not valid java name */
    public static /* synthetic */ float[] m404constructorimpl$default(float[] fArr, int i, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i & 1) != 0) {
            fArr = new float[]{1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f};
        }
        return m403constructorimpl(fArr);
    }

    /* renamed from: get-impl  reason: not valid java name */
    public static final float m410getimpl(float[] arg0, int i, int i2) {
        Intrinsics.checkNotNullParameter(arg0, "arg0");
        return arg0[(i * 5) + i2];
    }

    /* renamed from: set-impl  reason: not valid java name */
    public static final void m414setimpl(float[] arg0, int i, int i2, float f) {
        Intrinsics.checkNotNullParameter(arg0, "arg0");
        arg0[(i * 5) + i2] = f;
    }

    /* renamed from: reset-impl  reason: not valid java name */
    public static final void m412resetimpl(float[] arg0) {
        Intrinsics.checkNotNullParameter(arg0, "arg0");
        ArraysKt.fill$default(arg0, 0.0f, 0, 0, 6, (Object) null);
        arg0[0] = 1.0f;
        arg0[12] = 1.0f;
        arg0[6] = 1.0f;
        arg0[18] = 1.0f;
    }

    /* renamed from: set-jHG-Opc  reason: not valid java name */
    public static final void m415setjHGOpc(float[] arg0, float[] src) {
        Intrinsics.checkNotNullParameter(arg0, "arg0");
        Intrinsics.checkNotNullParameter(src, "src");
        ArraysKt.copyInto$default(src, arg0, 0, 0, 0, 14, (Object) null);
    }

    /* renamed from: rotateInternal-impl  reason: not valid java name */
    private static final void m413rotateInternalimpl(float[] fArr, float f, Function2<? super Float, ? super Float, Unit> function2) {
        m412resetimpl(fArr);
        double d = (f * 3.141592653589793d) / 180.0d;
        function2.invoke(Float.valueOf((float) Math.cos(d)), Float.valueOf((float) Math.sin(d)));
    }

    /* renamed from: timesAssign-jHG-Opc  reason: not valid java name */
    public static final void m421timesAssignjHGOpc(float[] arg0, float[] colorMatrix) {
        Intrinsics.checkNotNullParameter(arg0, "arg0");
        Intrinsics.checkNotNullParameter(colorMatrix, "colorMatrix");
        float m407dotMe4OoYI = m407dotMe4OoYI(arg0, arg0, 0, colorMatrix, 0);
        float m407dotMe4OoYI2 = m407dotMe4OoYI(arg0, arg0, 0, colorMatrix, 1);
        float m407dotMe4OoYI3 = m407dotMe4OoYI(arg0, arg0, 0, colorMatrix, 2);
        float m407dotMe4OoYI4 = m407dotMe4OoYI(arg0, arg0, 0, colorMatrix, 3);
        float f = (arg0[0] * colorMatrix[4]) + (arg0[1] * colorMatrix[9]) + (arg0[2] * colorMatrix[14]) + (arg0[3] * colorMatrix[19]) + arg0[4];
        float m407dotMe4OoYI5 = m407dotMe4OoYI(arg0, arg0, 1, colorMatrix, 0);
        float m407dotMe4OoYI6 = m407dotMe4OoYI(arg0, arg0, 1, colorMatrix, 1);
        float m407dotMe4OoYI7 = m407dotMe4OoYI(arg0, arg0, 1, colorMatrix, 2);
        float m407dotMe4OoYI8 = m407dotMe4OoYI(arg0, arg0, 1, colorMatrix, 3);
        float f2 = (arg0[5] * colorMatrix[4]) + (arg0[6] * colorMatrix[9]) + (arg0[7] * colorMatrix[14]) + (arg0[8] * colorMatrix[19]) + arg0[9];
        float m407dotMe4OoYI9 = m407dotMe4OoYI(arg0, arg0, 2, colorMatrix, 0);
        float m407dotMe4OoYI10 = m407dotMe4OoYI(arg0, arg0, 2, colorMatrix, 1);
        float m407dotMe4OoYI11 = m407dotMe4OoYI(arg0, arg0, 2, colorMatrix, 2);
        float m407dotMe4OoYI12 = m407dotMe4OoYI(arg0, arg0, 2, colorMatrix, 3);
        float f3 = (arg0[10] * colorMatrix[4]) + (arg0[11] * colorMatrix[9]) + (arg0[12] * colorMatrix[14]) + (arg0[13] * colorMatrix[19]) + arg0[14];
        float m407dotMe4OoYI13 = m407dotMe4OoYI(arg0, arg0, 3, colorMatrix, 0);
        float m407dotMe4OoYI14 = m407dotMe4OoYI(arg0, arg0, 3, colorMatrix, 1);
        float m407dotMe4OoYI15 = m407dotMe4OoYI(arg0, arg0, 3, colorMatrix, 2);
        float m407dotMe4OoYI16 = m407dotMe4OoYI(arg0, arg0, 3, colorMatrix, 3);
        arg0[0] = m407dotMe4OoYI;
        arg0[1] = m407dotMe4OoYI2;
        arg0[2] = m407dotMe4OoYI3;
        arg0[3] = m407dotMe4OoYI4;
        arg0[4] = f;
        arg0[5] = m407dotMe4OoYI5;
        arg0[6] = m407dotMe4OoYI6;
        arg0[7] = m407dotMe4OoYI7;
        arg0[8] = m407dotMe4OoYI8;
        arg0[9] = f2;
        arg0[10] = m407dotMe4OoYI9;
        arg0[11] = m407dotMe4OoYI10;
        arg0[12] = m407dotMe4OoYI11;
        arg0[13] = m407dotMe4OoYI12;
        arg0[14] = f3;
        arg0[15] = m407dotMe4OoYI13;
        arg0[16] = m407dotMe4OoYI14;
        arg0[17] = m407dotMe4OoYI15;
        arg0[18] = m407dotMe4OoYI16;
        arg0[19] = (arg0[15] * colorMatrix[4]) + (arg0[16] * colorMatrix[9]) + (arg0[17] * colorMatrix[14]) + (arg0[18] * colorMatrix[19]) + arg0[19];
    }

    /* renamed from: setToSaturation-impl  reason: not valid java name */
    public static final void m419setToSaturationimpl(float[] arg0, float f) {
        Intrinsics.checkNotNullParameter(arg0, "arg0");
        m412resetimpl(arg0);
        float f2 = 1 - f;
        float f3 = 0.213f * f2;
        float f4 = 0.715f * f2;
        float f5 = f2 * 0.072f;
        arg0[0] = f3 + f;
        arg0[1] = f4;
        arg0[2] = f5;
        arg0[5] = f3;
        arg0[6] = f4 + f;
        arg0[7] = f5;
        arg0[10] = f3;
        arg0[11] = f4;
        arg0[12] = f5 + f;
    }

    /* renamed from: setToScale-impl  reason: not valid java name */
    public static final void m420setToScaleimpl(float[] arg0, float f, float f2, float f3, float f4) {
        Intrinsics.checkNotNullParameter(arg0, "arg0");
        m412resetimpl(arg0);
        arg0[0] = f;
        arg0[6] = f2;
        arg0[12] = f3;
        arg0[18] = f4;
    }

    /* renamed from: convertRgbToYuv-impl  reason: not valid java name */
    public static final void m405convertRgbToYuvimpl(float[] arg0) {
        Intrinsics.checkNotNullParameter(arg0, "arg0");
        m412resetimpl(arg0);
        arg0[0] = 0.299f;
        arg0[1] = 0.587f;
        arg0[2] = 0.114f;
        arg0[5] = -0.16874f;
        arg0[6] = -0.33126f;
        arg0[7] = 0.5f;
        arg0[10] = 0.5f;
        arg0[11] = -0.41869f;
        arg0[12] = -0.08131f;
    }

    /* renamed from: convertYuvToRgb-impl  reason: not valid java name */
    public static final void m406convertYuvToRgbimpl(float[] arg0) {
        Intrinsics.checkNotNullParameter(arg0, "arg0");
        m412resetimpl(arg0);
        arg0[2] = 1.402f;
        arg0[5] = 1.0f;
        arg0[6] = -0.34414f;
        arg0[7] = -0.71414f;
        arg0[10] = 1.0f;
        arg0[11] = 1.772f;
        arg0[12] = 0.0f;
    }

    /* renamed from: dot-Me4OoYI  reason: not valid java name */
    private static final float m407dotMe4OoYI(float[] fArr, float[] fArr2, int i, float[] fArr3, int i2) {
        int i3 = i * 5;
        return (fArr2[i3 + 0] * fArr3[0 + i2]) + (fArr2[i3 + 1] * fArr3[5 + i2]) + (fArr2[i3 + 2] * fArr3[10 + i2]) + (fArr2[i3 + 3] * fArr3[15 + i2]);
    }

    /* renamed from: setToRotateRed-impl  reason: not valid java name */
    public static final void m418setToRotateRedimpl(float[] arg0, float f) {
        Intrinsics.checkNotNullParameter(arg0, "arg0");
        m412resetimpl(arg0);
        double d = (f * 3.141592653589793d) / 180.0d;
        float cos = (float) Math.cos(d);
        float sin = (float) Math.sin(d);
        arg0[12] = cos;
        arg0[6] = cos;
        arg0[7] = sin;
        arg0[11] = -sin;
    }

    /* renamed from: setToRotateGreen-impl  reason: not valid java name */
    public static final void m417setToRotateGreenimpl(float[] arg0, float f) {
        Intrinsics.checkNotNullParameter(arg0, "arg0");
        m412resetimpl(arg0);
        double d = (f * 3.141592653589793d) / 180.0d;
        float cos = (float) Math.cos(d);
        float sin = (float) Math.sin(d);
        arg0[12] = cos;
        arg0[0] = cos;
        arg0[2] = -sin;
        arg0[10] = sin;
    }

    /* renamed from: setToRotateBlue-impl  reason: not valid java name */
    public static final void m416setToRotateBlueimpl(float[] arg0, float f) {
        Intrinsics.checkNotNullParameter(arg0, "arg0");
        m412resetimpl(arg0);
        double d = (f * 3.141592653589793d) / 180.0d;
        float cos = (float) Math.cos(d);
        float sin = (float) Math.sin(d);
        arg0[6] = cos;
        arg0[0] = cos;
        arg0[1] = sin;
        arg0[5] = -sin;
    }
}
