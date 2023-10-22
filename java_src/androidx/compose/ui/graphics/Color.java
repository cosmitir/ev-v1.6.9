package androidx.compose.ui.graphics;

import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.colorspace.ColorSpaceKt;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.colorspace.Connector;
import androidx.compose.ui.graphics.colorspace.Rgb;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.UnsignedKt;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Color.kt */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087@\u0018\u0000 :2\u00020\u0001:\u0001:B\u0012\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u001d\u001a\u00020\u0007H\u0087\u0002¢\u0006\u0004\b\u001e\u0010\u000bJ\u0010\u0010\u001f\u001a\u00020\u0007H\u0087\u0002¢\u0006\u0004\b \u0010\u000bJ\u0010\u0010!\u001a\u00020\u0007H\u0087\u0002¢\u0006\u0004\b\"\u0010\u000bJ\u0010\u0010#\u001a\u00020\u0007H\u0087\u0002¢\u0006\u0004\b$\u0010\u000bJ\u0010\u0010%\u001a\u00020\u0010H\u0087\u0002¢\u0006\u0004\b&\u0010\u0013J\u001e\u0010'\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010ø\u0001\u0000ø\u0001\u0002ø\u0001\u0001¢\u0006\u0004\b(\u0010)J@\u0010*\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\u0017\u001a\u00020\u00072\b\b\u0002\u0010\u0014\u001a\u00020\u00072\b\b\u0002\u0010\f\u001a\u00020\u0007H\u0007ø\u0001\u0000ø\u0001\u0002ø\u0001\u0001¢\u0006\u0004\b+\u0010,J\u001a\u0010-\u001a\u00020.2\b\u0010/\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b0\u00101J\u0010\u00102\u001a\u000203HÖ\u0001¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u000207H\u0016¢\u0006\u0004\b8\u00109R\u001a\u0010\u0006\u001a\u00020\u00078FX\u0087\u0004¢\u0006\f\u0012\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\u00078FX\u0087\u0004¢\u0006\f\u0012\u0004\b\r\u0010\t\u001a\u0004\b\u000e\u0010\u000bR\u001a\u0010\u000f\u001a\u00020\u00108FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0011\u0010\t\u001a\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0014\u001a\u00020\u00078FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0015\u0010\t\u001a\u0004\b\u0016\u0010\u000bR\u001a\u0010\u0017\u001a\u00020\u00078FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0018\u0010\t\u001a\u0004\b\u0019\u0010\u000bR\u001c\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u001c\u001a\u0004\b\u001a\u0010\u001b\u0088\u0001\u0002ø\u0001\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006;"}, d2 = {"Landroidx/compose/ui/graphics/Color;", "", "value", "Lkotlin/ULong;", "constructor-impl", "(J)J", "alpha", "", "getAlpha$annotations", "()V", "getAlpha-impl", "(J)F", "blue", "getBlue$annotations", "getBlue-impl", "colorSpace", "Landroidx/compose/ui/graphics/colorspace/ColorSpace;", "getColorSpace$annotations", "getColorSpace-impl", "(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;", "green", "getGreen$annotations", "getGreen-impl", "red", "getRed$annotations", "getRed-impl", "getValue-s-VKNKU", "()J", "J", "component1", "component1-impl", "component2", "component2-impl", "component3", "component3-impl", "component4", "component4-impl", "component5", "component5-impl", "convert", "convert-vNxB06k", "(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J", "copy", "copy-wmQWz5c", "(JFFFF)J", "equals", "", "other", "equals-impl", "(JLjava/lang/Object;)Z", "hashCode", "", "hashCode-impl", "(J)I", "toString", "", "toString-impl", "(J)Ljava/lang/String;", "Companion", "ui-graphics_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@JvmInline
/* loaded from: classes.dex */
public final class Color {
    private final long value;
    public static final Companion Companion = new Companion(null);
    private static final long Black = ColorKt.Color(4278190080L);
    private static final long DarkGray = ColorKt.Color(4282664004L);
    private static final long Gray = ColorKt.Color(4287137928L);
    private static final long LightGray = ColorKt.Color(4291611852L);
    private static final long White = ColorKt.Color(4294967295L);
    private static final long Red = ColorKt.Color(4294901760L);
    private static final long Green = ColorKt.Color(4278255360L);
    private static final long Blue = ColorKt.Color(4278190335L);
    private static final long Yellow = ColorKt.Color(4294967040L);
    private static final long Cyan = ColorKt.Color(4278255615L);
    private static final long Magenta = ColorKt.Color(4294902015L);
    private static final long Transparent = ColorKt.Color(0);
    private static final long Unspecified = ColorKt.Color(0.0f, 0.0f, 0.0f, 0.0f, ColorSpaces.INSTANCE.getUnspecified$ui_graphics_release());

    /* renamed from: box-impl */
    public static final /* synthetic */ Color m336boximpl(long j) {
        return new Color(j);
    }

    /* renamed from: constructor-impl */
    public static long m342constructorimpl(long j) {
        return j;
    }

    /* renamed from: equals-impl */
    public static boolean m346equalsimpl(long j, Object obj) {
        return (obj instanceof Color) && j == ((Color) obj).m356unboximpl();
    }

    /* renamed from: equals-impl0 */
    public static final boolean m347equalsimpl0(long j, long j2) {
        return j == j2;
    }

    public static /* synthetic */ void getAlpha$annotations() {
    }

    public static /* synthetic */ void getBlue$annotations() {
    }

    public static /* synthetic */ void getColorSpace$annotations() {
    }

    public static /* synthetic */ void getGreen$annotations() {
    }

    public static /* synthetic */ void getRed$annotations() {
    }

    /* renamed from: hashCode-impl */
    public static int m353hashCodeimpl(long j) {
        return ULong.m2649hashCodeimpl(j);
    }

    public boolean equals(Object obj) {
        return m346equalsimpl(m356unboximpl(), obj);
    }

    public int hashCode() {
        return m353hashCodeimpl(m356unboximpl());
    }

    /* renamed from: unbox-impl */
    public final /* synthetic */ long m356unboximpl() {
        return this.value;
    }

    private /* synthetic */ Color(long j) {
        this.value = j;
    }

    /* renamed from: getValue-s-VKNKU */
    public final long m355getValuesVKNKU() {
        return m356unboximpl();
    }

    /* renamed from: getColorSpace-impl */
    public static final ColorSpace m350getColorSpaceimpl(long j) {
        return ColorSpaces.INSTANCE.getColorSpacesArray$ui_graphics_release()[(int) ULong.m2637constructorimpl(j & 63)];
    }

    /* renamed from: convert-vNxB06k */
    public static final long m343convertvNxB06k(long j, ColorSpace colorSpace) {
        float[] m393getComponents8_81llA;
        Intrinsics.checkNotNullParameter(colorSpace, "colorSpace");
        if (Intrinsics.areEqual(colorSpace, m350getColorSpaceimpl(j))) {
            return j;
        }
        Connector m679connectYBCOT_4$default = ColorSpaceKt.m679connectYBCOT_4$default(m350getColorSpaceimpl(j), colorSpace, 0, 2, null);
        m393getComponents8_81llA = ColorKt.m393getComponents8_81llA(j);
        m679connectYBCOT_4$default.transform(m393getComponents8_81llA);
        return ColorKt.Color(m393getComponents8_81llA[0], m393getComponents8_81llA[1], m393getComponents8_81llA[2], m393getComponents8_81llA[3], colorSpace);
    }

    /* renamed from: getRed-impl */
    public static final float m352getRedimpl(long j) {
        if (ULong.m2637constructorimpl(63 & j) == 0) {
            return ((float) UnsignedKt.ulongToDouble(ULong.m2637constructorimpl(ULong.m2637constructorimpl(j >>> 48) & 255))) / 255.0f;
        }
        return Float16.m457toFloatimpl(Float16.m441constructorimpl((short) ULong.m2637constructorimpl(ULong.m2637constructorimpl(j >>> 48) & 65535)));
    }

    /* renamed from: getGreen-impl */
    public static final float m351getGreenimpl(long j) {
        if (ULong.m2637constructorimpl(63 & j) == 0) {
            return ((float) UnsignedKt.ulongToDouble(ULong.m2637constructorimpl(ULong.m2637constructorimpl(j >>> 40) & 255))) / 255.0f;
        }
        return Float16.m457toFloatimpl(Float16.m441constructorimpl((short) ULong.m2637constructorimpl(ULong.m2637constructorimpl(j >>> 32) & 65535)));
    }

    /* renamed from: getBlue-impl */
    public static final float m349getBlueimpl(long j) {
        if (ULong.m2637constructorimpl(63 & j) == 0) {
            return ((float) UnsignedKt.ulongToDouble(ULong.m2637constructorimpl(ULong.m2637constructorimpl(j >>> 32) & 255))) / 255.0f;
        }
        return Float16.m457toFloatimpl(Float16.m441constructorimpl((short) ULong.m2637constructorimpl(ULong.m2637constructorimpl(j >>> 16) & 65535)));
    }

    /* renamed from: getAlpha-impl */
    public static final float m348getAlphaimpl(long j) {
        float ulongToDouble;
        float f;
        if (ULong.m2637constructorimpl(63 & j) == 0) {
            ulongToDouble = (float) UnsignedKt.ulongToDouble(ULong.m2637constructorimpl(ULong.m2637constructorimpl(j >>> 56) & 255));
            f = 255.0f;
        } else {
            ulongToDouble = (float) UnsignedKt.ulongToDouble(ULong.m2637constructorimpl(ULong.m2637constructorimpl(j >>> 6) & 1023));
            f = 1023.0f;
        }
        return ulongToDouble / f;
    }

    /* renamed from: component1-impl */
    public static final float m337component1impl(long j) {
        return m352getRedimpl(j);
    }

    /* renamed from: component2-impl */
    public static final float m338component2impl(long j) {
        return m351getGreenimpl(j);
    }

    /* renamed from: component3-impl */
    public static final float m339component3impl(long j) {
        return m349getBlueimpl(j);
    }

    /* renamed from: component4-impl */
    public static final float m340component4impl(long j) {
        return m348getAlphaimpl(j);
    }

    /* renamed from: component5-impl */
    public static final ColorSpace m341component5impl(long j) {
        return m350getColorSpaceimpl(j);
    }

    /* renamed from: copy-wmQWz5c$default */
    public static /* synthetic */ long m345copywmQWz5c$default(long j, float f, float f2, float f3, float f4, int i, Object obj) {
        if ((i & 1) != 0) {
            f = m348getAlphaimpl(j);
        }
        float f5 = f;
        if ((i & 2) != 0) {
            f2 = m352getRedimpl(j);
        }
        float f6 = f2;
        if ((i & 4) != 0) {
            f3 = m351getGreenimpl(j);
        }
        float f7 = f3;
        if ((i & 8) != 0) {
            f4 = m349getBlueimpl(j);
        }
        return m344copywmQWz5c(j, f5, f6, f7, f4);
    }

    /* renamed from: copy-wmQWz5c */
    public static final long m344copywmQWz5c(long j, float f, float f2, float f3, float f4) {
        return ColorKt.Color(f2, f3, f4, f, m350getColorSpaceimpl(j));
    }

    public String toString() {
        return m354toStringimpl(m356unboximpl());
    }

    /* renamed from: toString-impl */
    public static String m354toStringimpl(long j) {
        return "Color(" + m352getRedimpl(j) + ", " + m351getGreenimpl(j) + ", " + m349getBlueimpl(j) + ", " + m348getAlphaimpl(j) + ", " + m350getColorSpaceimpl(j).getName() + ')';
    }

    /* compiled from: Color.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b*\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JD\u0010-\u001a\u00020\u00042\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020/2\u0006\u00101\u001a\u00020/2\b\b\u0002\u00102\u001a\u00020/2\b\b\u0002\u00103\u001a\u000204H\u0007ø\u0001\u0000ø\u0001\u0002ø\u0001\u0001¢\u0006\u0004\b5\u00106J(\u00107\u001a\u00020/2\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020/2\u0006\u0010;\u001a\u00020/2\u0006\u0010<\u001a\u00020/H\u0002JD\u0010=\u001a\u00020\u00042\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020/2\u0006\u0010>\u001a\u00020/2\b\b\u0002\u00102\u001a\u00020/2\b\b\u0002\u00103\u001a\u000204H\u0007ø\u0001\u0000ø\u0001\u0002ø\u0001\u0001¢\u0006\u0004\b?\u00106J(\u0010@\u001a\u00020/2\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020/2\u0006\u0010;\u001a\u00020/2\u0006\u0010A\u001a\u00020/H\u0002R'\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\b\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007R'\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\b\u0012\u0004\b\n\u0010\u0002\u001a\u0004\b\u000b\u0010\u0007R'\u0010\f\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\b\u0012\u0004\b\r\u0010\u0002\u001a\u0004\b\u000e\u0010\u0007R'\u0010\u000f\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\b\u0012\u0004\b\u0010\u0010\u0002\u001a\u0004\b\u0011\u0010\u0007R'\u0010\u0012\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\b\u0012\u0004\b\u0013\u0010\u0002\u001a\u0004\b\u0014\u0010\u0007R'\u0010\u0015\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\b\u0012\u0004\b\u0016\u0010\u0002\u001a\u0004\b\u0017\u0010\u0007R'\u0010\u0018\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\b\u0012\u0004\b\u0019\u0010\u0002\u001a\u0004\b\u001a\u0010\u0007R'\u0010\u001b\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\b\u0012\u0004\b\u001c\u0010\u0002\u001a\u0004\b\u001d\u0010\u0007R'\u0010\u001e\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\b\u0012\u0004\b\u001f\u0010\u0002\u001a\u0004\b \u0010\u0007R'\u0010!\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\b\u0012\u0004\b\"\u0010\u0002\u001a\u0004\b#\u0010\u0007R'\u0010$\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\b\u0012\u0004\b%\u0010\u0002\u001a\u0004\b&\u0010\u0007R'\u0010'\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\b\u0012\u0004\b(\u0010\u0002\u001a\u0004\b)\u0010\u0007R'\u0010*\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0010\n\u0002\u0010\b\u0012\u0004\b+\u0010\u0002\u001a\u0004\b,\u0010\u0007\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006B"}, d2 = {"Landroidx/compose/ui/graphics/Color$Companion;", "", "()V", "Black", "Landroidx/compose/ui/graphics/Color;", "getBlack-0d7_KjU$annotations", "getBlack-0d7_KjU", "()J", "J", "Blue", "getBlue-0d7_KjU$annotations", "getBlue-0d7_KjU", "Cyan", "getCyan-0d7_KjU$annotations", "getCyan-0d7_KjU", "DarkGray", "getDarkGray-0d7_KjU$annotations", "getDarkGray-0d7_KjU", "Gray", "getGray-0d7_KjU$annotations", "getGray-0d7_KjU", "Green", "getGreen-0d7_KjU$annotations", "getGreen-0d7_KjU", "LightGray", "getLightGray-0d7_KjU$annotations", "getLightGray-0d7_KjU", "Magenta", "getMagenta-0d7_KjU$annotations", "getMagenta-0d7_KjU", "Red", "getRed-0d7_KjU$annotations", "getRed-0d7_KjU", "Transparent", "getTransparent-0d7_KjU$annotations", "getTransparent-0d7_KjU", "Unspecified", "getUnspecified-0d7_KjU$annotations", "getUnspecified-0d7_KjU", "White", "getWhite-0d7_KjU$annotations", "getWhite-0d7_KjU", "Yellow", "getYellow-0d7_KjU$annotations", "getYellow-0d7_KjU", "hsl", "hue", "", "saturation", "lightness", "alpha", "colorSpace", "Landroidx/compose/ui/graphics/colorspace/Rgb;", "hsl-JlNiLsg", "(FFFFLandroidx/compose/ui/graphics/colorspace/Rgb;)J", "hslToRgbComponent", "n", "", "h", "s", "l", "hsv", "value", "hsv-JlNiLsg", "hsvToRgbComponent", "v", "ui-graphics_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: getBlack-0d7_KjU$annotations */
        public static /* synthetic */ void m357getBlack0d7_KjU$annotations() {
        }

        /* renamed from: getBlue-0d7_KjU$annotations */
        public static /* synthetic */ void m358getBlue0d7_KjU$annotations() {
        }

        /* renamed from: getCyan-0d7_KjU$annotations */
        public static /* synthetic */ void m359getCyan0d7_KjU$annotations() {
        }

        /* renamed from: getDarkGray-0d7_KjU$annotations */
        public static /* synthetic */ void m360getDarkGray0d7_KjU$annotations() {
        }

        /* renamed from: getGray-0d7_KjU$annotations */
        public static /* synthetic */ void m361getGray0d7_KjU$annotations() {
        }

        /* renamed from: getGreen-0d7_KjU$annotations */
        public static /* synthetic */ void m362getGreen0d7_KjU$annotations() {
        }

        /* renamed from: getLightGray-0d7_KjU$annotations */
        public static /* synthetic */ void m363getLightGray0d7_KjU$annotations() {
        }

        /* renamed from: getMagenta-0d7_KjU$annotations */
        public static /* synthetic */ void m364getMagenta0d7_KjU$annotations() {
        }

        /* renamed from: getRed-0d7_KjU$annotations */
        public static /* synthetic */ void m365getRed0d7_KjU$annotations() {
        }

        /* renamed from: getTransparent-0d7_KjU$annotations */
        public static /* synthetic */ void m366getTransparent0d7_KjU$annotations() {
        }

        /* renamed from: getUnspecified-0d7_KjU$annotations */
        public static /* synthetic */ void m367getUnspecified0d7_KjU$annotations() {
        }

        /* renamed from: getWhite-0d7_KjU$annotations */
        public static /* synthetic */ void m368getWhite0d7_KjU$annotations() {
        }

        /* renamed from: getYellow-0d7_KjU$annotations */
        public static /* synthetic */ void m369getYellow0d7_KjU$annotations() {
        }

        private Companion() {
        }

        /* renamed from: getBlack-0d7_KjU */
        public final long m372getBlack0d7_KjU() {
            return Color.Black;
        }

        /* renamed from: getDarkGray-0d7_KjU */
        public final long m375getDarkGray0d7_KjU() {
            return Color.DarkGray;
        }

        /* renamed from: getGray-0d7_KjU */
        public final long m376getGray0d7_KjU() {
            return Color.Gray;
        }

        /* renamed from: getLightGray-0d7_KjU */
        public final long m378getLightGray0d7_KjU() {
            return Color.LightGray;
        }

        /* renamed from: getWhite-0d7_KjU */
        public final long m383getWhite0d7_KjU() {
            return Color.White;
        }

        /* renamed from: getRed-0d7_KjU */
        public final long m380getRed0d7_KjU() {
            return Color.Red;
        }

        /* renamed from: getGreen-0d7_KjU */
        public final long m377getGreen0d7_KjU() {
            return Color.Green;
        }

        /* renamed from: getBlue-0d7_KjU */
        public final long m373getBlue0d7_KjU() {
            return Color.Blue;
        }

        /* renamed from: getYellow-0d7_KjU */
        public final long m384getYellow0d7_KjU() {
            return Color.Yellow;
        }

        /* renamed from: getCyan-0d7_KjU */
        public final long m374getCyan0d7_KjU() {
            return Color.Cyan;
        }

        /* renamed from: getMagenta-0d7_KjU */
        public final long m379getMagenta0d7_KjU() {
            return Color.Magenta;
        }

        /* renamed from: getTransparent-0d7_KjU */
        public final long m381getTransparent0d7_KjU() {
            return Color.Transparent;
        }

        /* renamed from: getUnspecified-0d7_KjU */
        public final long m382getUnspecified0d7_KjU() {
            return Color.Unspecified;
        }

        /* renamed from: hsv-JlNiLsg$default */
        public static /* synthetic */ long m371hsvJlNiLsg$default(Companion companion, float f, float f2, float f3, float f4, Rgb rgb, int i, Object obj) {
            if ((i & 8) != 0) {
                f4 = 1.0f;
            }
            float f5 = f4;
            if ((i & 16) != 0) {
                rgb = ColorSpaces.INSTANCE.getSrgb();
            }
            return companion.m386hsvJlNiLsg(f, f2, f3, f5, rgb);
        }

        @ExperimentalGraphicsApi
        /* renamed from: hsv-JlNiLsg */
        public final long m386hsvJlNiLsg(float f, float f2, float f3, float f4, Rgb colorSpace) {
            Intrinsics.checkNotNullParameter(colorSpace, "colorSpace");
            boolean z = false;
            if (0.0f <= f && f <= 360.0f) {
                if (0.0f <= f2 && f2 <= 1.0f) {
                    if (0.0f <= f3 && f3 <= 1.0f) {
                        z = true;
                    }
                }
            }
            if (!z) {
                throw new IllegalArgumentException(("HSV (" + f + ", " + f2 + ", " + f3 + ") must be in range (0..360, 0..1, 0..1)").toString());
            }
            return ColorKt.Color(hsvToRgbComponent(5, f, f2, f3), hsvToRgbComponent(3, f, f2, f3), hsvToRgbComponent(1, f, f2, f3), f4, colorSpace);
        }

        private final float hsvToRgbComponent(int i, float f, float f2, float f3) {
            float f4 = (i + (f / 60.0f)) % 6.0f;
            return f3 - ((f2 * f3) * Math.max(0.0f, Math.min(f4, Math.min(4 - f4, 1.0f))));
        }

        /* renamed from: hsl-JlNiLsg$default */
        public static /* synthetic */ long m370hslJlNiLsg$default(Companion companion, float f, float f2, float f3, float f4, Rgb rgb, int i, Object obj) {
            if ((i & 8) != 0) {
                f4 = 1.0f;
            }
            float f5 = f4;
            if ((i & 16) != 0) {
                rgb = ColorSpaces.INSTANCE.getSrgb();
            }
            return companion.m385hslJlNiLsg(f, f2, f3, f5, rgb);
        }

        /* JADX WARN: Code restructure failed: missing block: B:52:0x0031, code lost:
            if ((0.0f <= r8 && r8 <= 1.0f) != false) goto L19;
         */
        @androidx.compose.ui.graphics.ExperimentalGraphicsApi
        /* renamed from: hsl-JlNiLsg */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final long m385hslJlNiLsg(float r6, float r7, float r8, float r9, androidx.compose.ui.graphics.colorspace.Rgb r10) {
            /*
                r5 = this;
                java.lang.String r0 = "colorSpace"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
                r0 = 0
                int r1 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1))
                r2 = 1
                r3 = 0
                if (r1 > 0) goto L14
                r1 = 1135869952(0x43b40000, float:360.0)
                int r1 = (r6 > r1 ? 1 : (r6 == r1 ? 0 : -1))
                if (r1 > 0) goto L14
                r1 = r2
                goto L15
            L14:
                r1 = r3
            L15:
                if (r1 == 0) goto L34
                int r1 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
                r4 = 1065353216(0x3f800000, float:1.0)
                if (r1 > 0) goto L23
                int r1 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
                if (r1 > 0) goto L23
                r1 = r2
                goto L24
            L23:
                r1 = r3
            L24:
                if (r1 == 0) goto L34
                int r0 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
                if (r0 > 0) goto L30
                int r0 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
                if (r0 > 0) goto L30
                r0 = r2
                goto L31
            L30:
                r0 = r3
            L31:
                if (r0 == 0) goto L34
                goto L35
            L34:
                r2 = r3
            L35:
                if (r2 == 0) goto L4d
                float r0 = r5.hslToRgbComponent(r3, r6, r7, r8)
                r1 = 8
                float r1 = r5.hslToRgbComponent(r1, r6, r7, r8)
                r2 = 4
                float r6 = r5.hslToRgbComponent(r2, r6, r7, r8)
                androidx.compose.ui.graphics.colorspace.ColorSpace r10 = (androidx.compose.ui.graphics.colorspace.ColorSpace) r10
                long r6 = androidx.compose.ui.graphics.ColorKt.Color(r0, r1, r6, r9, r10)
                return r6
            L4d:
                java.lang.StringBuilder r9 = new java.lang.StringBuilder
                java.lang.String r10 = "HSL ("
                r9.<init>(r10)
                java.lang.StringBuilder r6 = r9.append(r6)
                java.lang.String r9 = ", "
                java.lang.StringBuilder r6 = r6.append(r9)
                java.lang.StringBuilder r6 = r6.append(r7)
                java.lang.StringBuilder r6 = r6.append(r9)
                java.lang.StringBuilder r6 = r6.append(r8)
                java.lang.String r7 = ") must be in range (0..360, 0..1, 0..1)"
                java.lang.StringBuilder r6 = r6.append(r7)
                java.lang.String r6 = r6.toString()
                java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
                java.lang.String r6 = r6.toString()
                r7.<init>(r6)
                java.lang.Throwable r7 = (java.lang.Throwable) r7
                throw r7
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.Color.Companion.m385hslJlNiLsg(float, float, float, float, androidx.compose.ui.graphics.colorspace.Rgb):long");
        }

        private final float hslToRgbComponent(int i, float f, float f2, float f3) {
            float f4 = (i + (f / 30.0f)) % 12.0f;
            return f3 - ((f2 * Math.min(f3, 1.0f - f3)) * Math.max(-1.0f, Math.min(f4 - 3, Math.min(9 - f4, 1.0f))));
        }
    }
}
