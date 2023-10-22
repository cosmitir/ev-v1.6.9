package androidx.compose.ui.text.platform;

import android.graphics.Typeface;
import android.os.Build;
import androidx.collection.LruCache;
import androidx.compose.ui.text.font.AndroidFont;
import androidx.compose.ui.text.font.DefaultFontFamily;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontListFontFamily;
import androidx.compose.ui.text.font.FontMatcher;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.GenericFontFamily;
import androidx.compose.ui.text.font.LoadedFontFamily;
import androidx.compose.ui.text.font.ResourceFont;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TypefaceAdapter.android.kt */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0010\u0018\u0000 \u001f2\u00020\u0001:\u0002\u001e\u001fB\u0017\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J?\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u0014H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0015\u0010\u0016J;\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u000f\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u00172\b\b\u0002\u0010\u0013\u001a\u00020\u0014H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0018\u0010\u0019J5\u0010\u000b\u001a\u00020\f2\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u0012H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001c\u0010\u001dR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006 "}, d2 = {"Landroidx/compose/ui/text/platform/TypefaceAdapter;", "", "fontMatcher", "Landroidx/compose/ui/text/font/FontMatcher;", "resourceLoader", "Landroidx/compose/ui/text/font/Font$ResourceLoader;", "(Landroidx/compose/ui/text/font/FontMatcher;Landroidx/compose/ui/text/font/Font$ResourceLoader;)V", "getFontMatcher", "()Landroidx/compose/ui/text/font/FontMatcher;", "getResourceLoader", "()Landroidx/compose/ui/text/font/Font$ResourceLoader;", "create", "Landroid/graphics/Typeface;", "fontFamily", "Landroidx/compose/ui/text/font/FontFamily;", "fontWeight", "Landroidx/compose/ui/text/font/FontWeight;", "fontStyle", "Landroidx/compose/ui/text/font/FontStyle;", "fontSynthesis", "Landroidx/compose/ui/text/font/FontSynthesis;", "create-DPcqOEQ", "(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;II)Landroid/graphics/Typeface;", "Landroidx/compose/ui/text/font/FontListFontFamily;", "create-xC2X5gM", "(ILandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontListFontFamily;I)Landroid/graphics/Typeface;", "genericFontFamily", "", "create-RetOiIg", "(Ljava/lang/String;Landroidx/compose/ui/text/font/FontWeight;I)Landroid/graphics/Typeface;", "CacheKey", "Companion", "ui-text_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public class TypefaceAdapter {
    private final FontMatcher fontMatcher;
    private final Font.ResourceLoader resourceLoader;
    public static final Companion Companion = new Companion(null);
    private static final FontWeight ANDROID_BOLD = FontWeight.Companion.getW600();
    private static final LruCache<CacheKey, Typeface> typefaceCache = new LruCache<>(16);

    public TypefaceAdapter(FontMatcher fontMatcher, Font.ResourceLoader resourceLoader) {
        Intrinsics.checkNotNullParameter(fontMatcher, "fontMatcher");
        Intrinsics.checkNotNullParameter(resourceLoader, "resourceLoader");
        this.fontMatcher = fontMatcher;
        this.resourceLoader = resourceLoader;
    }

    public /* synthetic */ TypefaceAdapter(FontMatcher fontMatcher, Font.ResourceLoader resourceLoader, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new FontMatcher() : fontMatcher, resourceLoader);
    }

    public final FontMatcher getFontMatcher() {
        return this.fontMatcher;
    }

    public final Font.ResourceLoader getResourceLoader() {
        return this.resourceLoader;
    }

    /* compiled from: TypefaceAdapter.android.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B,\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\tø\u0001\u0000¢\u0006\u0002\u0010\nJ\u000b\u0010\u0013\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\u0014\u001a\u00020\u0005HÆ\u0003J\u0019\u0010\u0015\u001a\u00020\u0007HÆ\u0003ø\u0001\u0000ø\u0001\u0002ø\u0001\u0001¢\u0006\u0004\b\u0016\u0010\u000eJ\u0019\u0010\u0017\u001a\u00020\tHÆ\u0003ø\u0001\u0000ø\u0001\u0002ø\u0001\u0001¢\u0006\u0004\b\u0018\u0010\u000eJ@\u0010\u0019\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001a\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001f\u001a\u00020 HÖ\u0001J\t\u0010!\u001a\u00020\"HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u001c\u0010\u0006\u001a\u00020\u0007ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\r\u0010\u000eR\u001c\u0010\b\u001a\u00020\tø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u000f\u001a\u0004\b\u0010\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006#"}, d2 = {"Landroidx/compose/ui/text/platform/TypefaceAdapter$CacheKey;", "", "fontFamily", "Landroidx/compose/ui/text/font/FontFamily;", "fontWeight", "Landroidx/compose/ui/text/font/FontWeight;", "fontStyle", "Landroidx/compose/ui/text/font/FontStyle;", "fontSynthesis", "Landroidx/compose/ui/text/font/FontSynthesis;", "(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;IILkotlin/jvm/internal/DefaultConstructorMarker;)V", "getFontFamily", "()Landroidx/compose/ui/text/font/FontFamily;", "getFontStyle-_-LCdwA", "()I", "I", "getFontSynthesis-GVVA2EU", "getFontWeight", "()Landroidx/compose/ui/text/font/FontWeight;", "component1", "component2", "component3", "component3-_-LCdwA", "component4", "component4-GVVA2EU", "copy", "copy-DPcqOEQ", "(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;II)Landroidx/compose/ui/text/platform/TypefaceAdapter$CacheKey;", "equals", "", "other", "hashCode", "", "toString", "", "ui-text_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class CacheKey {
        private final FontFamily fontFamily;
        private final int fontStyle;
        private final int fontSynthesis;
        private final FontWeight fontWeight;

        public /* synthetic */ CacheKey(FontFamily fontFamily, FontWeight fontWeight, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(fontFamily, fontWeight, i, i2);
        }

        /* renamed from: copy-DPcqOEQ$default  reason: not valid java name */
        public static /* synthetic */ CacheKey m1992copyDPcqOEQ$default(CacheKey cacheKey, FontFamily fontFamily, FontWeight fontWeight, int i, int i2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                fontFamily = cacheKey.fontFamily;
            }
            if ((i3 & 2) != 0) {
                fontWeight = cacheKey.fontWeight;
            }
            if ((i3 & 4) != 0) {
                i = cacheKey.fontStyle;
            }
            if ((i3 & 8) != 0) {
                i2 = cacheKey.fontSynthesis;
            }
            return cacheKey.m1995copyDPcqOEQ(fontFamily, fontWeight, i, i2);
        }

        public final FontFamily component1() {
            return this.fontFamily;
        }

        public final FontWeight component2() {
            return this.fontWeight;
        }

        /* renamed from: component3-_-LCdwA  reason: not valid java name */
        public final int m1993component3_LCdwA() {
            return this.fontStyle;
        }

        /* renamed from: component4-GVVA2EU  reason: not valid java name */
        public final int m1994component4GVVA2EU() {
            return this.fontSynthesis;
        }

        /* renamed from: copy-DPcqOEQ  reason: not valid java name */
        public final CacheKey m1995copyDPcqOEQ(FontFamily fontFamily, FontWeight fontWeight, int i, int i2) {
            Intrinsics.checkNotNullParameter(fontWeight, "fontWeight");
            return new CacheKey(fontFamily, fontWeight, i, i2, null);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof CacheKey) {
                CacheKey cacheKey = (CacheKey) obj;
                return Intrinsics.areEqual(this.fontFamily, cacheKey.fontFamily) && Intrinsics.areEqual(this.fontWeight, cacheKey.fontWeight) && FontStyle.m1900equalsimpl0(this.fontStyle, cacheKey.fontStyle) && FontSynthesis.m1909equalsimpl0(this.fontSynthesis, cacheKey.fontSynthesis);
            }
            return false;
        }

        public int hashCode() {
            FontFamily fontFamily = this.fontFamily;
            return ((((((fontFamily == null ? 0 : fontFamily.hashCode()) * 31) + this.fontWeight.hashCode()) * 31) + FontStyle.m1901hashCodeimpl(this.fontStyle)) * 31) + FontSynthesis.m1910hashCodeimpl(this.fontSynthesis);
        }

        public String toString() {
            return "CacheKey(fontFamily=" + this.fontFamily + ", fontWeight=" + this.fontWeight + ", fontStyle=" + ((Object) FontStyle.m1902toStringimpl(this.fontStyle)) + ", fontSynthesis=" + ((Object) FontSynthesis.m1913toStringimpl(this.fontSynthesis)) + ')';
        }

        private CacheKey(FontFamily fontFamily, FontWeight fontWeight, int i, int i2) {
            this.fontFamily = fontFamily;
            this.fontWeight = fontWeight;
            this.fontStyle = i;
            this.fontSynthesis = i2;
        }

        public /* synthetic */ CacheKey(FontFamily fontFamily, FontWeight fontWeight, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this((i3 & 1) != 0 ? null : fontFamily, fontWeight, i, i2, null);
        }

        public final FontFamily getFontFamily() {
            return this.fontFamily;
        }

        public final FontWeight getFontWeight() {
            return this.fontWeight;
        }

        /* renamed from: getFontStyle-_-LCdwA  reason: not valid java name */
        public final int m1996getFontStyle_LCdwA() {
            return this.fontStyle;
        }

        /* renamed from: getFontSynthesis-GVVA2EU  reason: not valid java name */
        public final int m1997getFontSynthesisGVVA2EU() {
            return this.fontSynthesis;
        }
    }

    /* compiled from: TypefaceAdapter.android.kt */
    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J#\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000fø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J;\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u001aø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001b\u0010\u001cR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006\u001d"}, d2 = {"Landroidx/compose/ui/text/platform/TypefaceAdapter$Companion;", "", "()V", "ANDROID_BOLD", "Landroidx/compose/ui/text/font/FontWeight;", "typefaceCache", "Landroidx/collection/LruCache;", "Landroidx/compose/ui/text/platform/TypefaceAdapter$CacheKey;", "Landroid/graphics/Typeface;", "getTypefaceCache", "()Landroidx/collection/LruCache;", "getTypefaceStyle", "", "fontWeight", "fontStyle", "Landroidx/compose/ui/text/font/FontStyle;", "getTypefaceStyle-FO1MlWM", "(Landroidx/compose/ui/text/font/FontWeight;I)I", "isBold", "", "isItalic", "synthesize", "typeface", "font", "Landroidx/compose/ui/text/font/Font;", "fontSynthesis", "Landroidx/compose/ui/text/font/FontSynthesis;", "synthesize-Wqqsr6A", "(Landroid/graphics/Typeface;Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/FontWeight;II)Landroid/graphics/Typeface;", "ui-text_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final int getTypefaceStyle(boolean z, boolean z2) {
            if (z2 && z) {
                return 3;
            }
            if (z) {
                return 1;
            }
            return z2 ? 2 : 0;
        }

        private Companion() {
        }

        public final LruCache<CacheKey, Typeface> getTypefaceCache() {
            return TypefaceAdapter.typefaceCache;
        }

        /* renamed from: synthesize-Wqqsr6A  reason: not valid java name */
        public final Typeface m1999synthesizeWqqsr6A(Typeface typeface, Font font, FontWeight fontWeight, int i, int i2) {
            int weight;
            boolean m1900equalsimpl0;
            Intrinsics.checkNotNullParameter(typeface, "typeface");
            Intrinsics.checkNotNullParameter(font, "font");
            Intrinsics.checkNotNullParameter(fontWeight, "fontWeight");
            boolean z = true;
            boolean z2 = FontSynthesis.m1912isWeightOnimpl$ui_text_release(i2) && fontWeight.compareTo(TypefaceAdapter.ANDROID_BOLD) >= 0 && font.getWeight().compareTo(TypefaceAdapter.ANDROID_BOLD) < 0;
            boolean z3 = FontSynthesis.m1911isStyleOnimpl$ui_text_release(i2) && !FontStyle.m1900equalsimpl0(i, font.mo1885getStyle_LCdwA());
            if (z3 || z2) {
                if (Build.VERSION.SDK_INT < 28) {
                    if (!z3 || !FontStyle.m1900equalsimpl0(i, FontStyle.Companion.m1904getItalic_LCdwA())) {
                        z = false;
                    }
                    Typeface create = Typeface.create(typeface, getTypefaceStyle(z2, z));
                    Intrinsics.checkNotNullExpressionValue(create, "{\n                val targetStyle = getTypefaceStyle(\n                    isBold = synthesizeWeight,\n                    isItalic = synthesizeStyle && fontStyle == FontStyle.Italic\n                )\n                Typeface.create(typeface, targetStyle)\n            }");
                    return create;
                }
                if (z2) {
                    weight = fontWeight.getWeight();
                } else {
                    weight = font.getWeight().getWeight();
                }
                if (z3) {
                    m1900equalsimpl0 = FontStyle.m1900equalsimpl0(i, FontStyle.Companion.m1904getItalic_LCdwA());
                } else {
                    m1900equalsimpl0 = FontStyle.m1900equalsimpl0(font.mo1885getStyle_LCdwA(), FontStyle.Companion.m1904getItalic_LCdwA());
                }
                return TypefaceAdapterHelperMethods.INSTANCE.create(typeface, weight, m1900equalsimpl0);
            }
            return typeface;
        }

        /* renamed from: getTypefaceStyle-FO1MlWM  reason: not valid java name */
        public final int m1998getTypefaceStyleFO1MlWM(FontWeight fontWeight, int i) {
            Intrinsics.checkNotNullParameter(fontWeight, "fontWeight");
            return getTypefaceStyle(fontWeight.compareTo(TypefaceAdapter.ANDROID_BOLD) >= 0, FontStyle.m1900equalsimpl0(i, FontStyle.Companion.m1904getItalic_LCdwA()));
        }
    }

    /* renamed from: create-DPcqOEQ$default  reason: not valid java name */
    public static /* synthetic */ Typeface m1986createDPcqOEQ$default(TypefaceAdapter typefaceAdapter, FontFamily fontFamily, FontWeight fontWeight, int i, int i2, int i3, Object obj) {
        if (obj == null) {
            if ((i3 & 1) != 0) {
                fontFamily = null;
            }
            if ((i3 & 2) != 0) {
                fontWeight = FontWeight.Companion.getNormal();
            }
            if ((i3 & 4) != 0) {
                i = FontStyle.Companion.m1905getNormal_LCdwA();
            }
            if ((i3 & 8) != 0) {
                i2 = FontSynthesis.Companion.m1915getAllGVVA2EU();
            }
            return typefaceAdapter.m1991createDPcqOEQ(fontFamily, fontWeight, i, i2);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: create-DPcqOEQ");
    }

    /* renamed from: create-DPcqOEQ  reason: not valid java name */
    public Typeface m1991createDPcqOEQ(FontFamily fontFamily, FontWeight fontWeight, int i, int i2) {
        Typeface mo1978getNativeTypefacePYhJU0U;
        Intrinsics.checkNotNullParameter(fontWeight, "fontWeight");
        CacheKey cacheKey = new CacheKey(fontFamily, fontWeight, i, i2, null);
        LruCache<CacheKey, Typeface> lruCache = typefaceCache;
        Typeface typeface = lruCache.get(cacheKey);
        if (typeface != null) {
            return typeface;
        }
        if (fontFamily instanceof FontListFontFamily) {
            mo1978getNativeTypefacePYhJU0U = m1989createxC2X5gM(i, fontWeight, (FontListFontFamily) fontFamily, i2);
        } else if (fontFamily instanceof GenericFontFamily) {
            mo1978getNativeTypefacePYhJU0U = m1987createRetOiIg(((GenericFontFamily) fontFamily).getName(), fontWeight, i);
        } else {
            boolean z = true;
            if (!(fontFamily instanceof DefaultFontFamily) && fontFamily != null) {
                z = false;
            }
            if (z) {
                mo1978getNativeTypefacePYhJU0U = m1987createRetOiIg(null, fontWeight, i);
            } else if (fontFamily instanceof LoadedFontFamily) {
                mo1978getNativeTypefacePYhJU0U = ((AndroidTypeface) ((LoadedFontFamily) fontFamily).getTypeface()).mo1978getNativeTypefacePYhJU0U(fontWeight, i, i2);
            } else {
                throw new NoWhenBranchMatchedException();
            }
        }
        lruCache.put(cacheKey, mo1978getNativeTypefacePYhJU0U);
        return mo1978getNativeTypefacePYhJU0U;
    }

    /* renamed from: create-RetOiIg$default  reason: not valid java name */
    static /* synthetic */ Typeface m1988createRetOiIg$default(TypefaceAdapter typefaceAdapter, String str, FontWeight fontWeight, int i, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 1) != 0) {
                str = null;
            }
            if ((i2 & 2) != 0) {
                fontWeight = FontWeight.Companion.getNormal();
            }
            if ((i2 & 4) != 0) {
                i = FontStyle.Companion.m1905getNormal_LCdwA();
            }
            return typefaceAdapter.m1987createRetOiIg(str, fontWeight, i);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: create-RetOiIg");
    }

    /* renamed from: create-RetOiIg  reason: not valid java name */
    private final Typeface m1987createRetOiIg(String str, FontWeight fontWeight, int i) {
        Typeface familyTypeface;
        Typeface create;
        boolean z = true;
        if (FontStyle.m1900equalsimpl0(i, FontStyle.Companion.m1905getNormal_LCdwA()) && Intrinsics.areEqual(fontWeight, FontWeight.Companion.getNormal())) {
            String str2 = str;
            if (str2 == null || str2.length() == 0) {
                Typeface DEFAULT = Typeface.DEFAULT;
                Intrinsics.checkNotNullExpressionValue(DEFAULT, "DEFAULT");
                return DEFAULT;
            }
        }
        if (Build.VERSION.SDK_INT < 28) {
            int m1998getTypefaceStyleFO1MlWM = Companion.m1998getTypefaceStyleFO1MlWM(fontWeight, i);
            String str3 = str;
            if (str3 != null && str3.length() != 0) {
                z = false;
            }
            if (z) {
                create = Typeface.defaultFromStyle(m1998getTypefaceStyleFO1MlWM);
            } else {
                create = Typeface.create(str, m1998getTypefaceStyleFO1MlWM);
            }
            Intrinsics.checkNotNullExpressionValue(create, "{\n            val targetStyle = getTypefaceStyle(fontWeight, fontStyle)\n            if (genericFontFamily.isNullOrEmpty()) {\n                Typeface.defaultFromStyle(targetStyle)\n            } else {\n                Typeface.create(genericFontFamily, targetStyle)\n            }\n        }");
            return create;
        }
        if (str == null) {
            familyTypeface = Typeface.DEFAULT;
        } else {
            familyTypeface = Typeface.create(str, 0);
        }
        TypefaceAdapterHelperMethods typefaceAdapterHelperMethods = TypefaceAdapterHelperMethods.INSTANCE;
        Intrinsics.checkNotNullExpressionValue(familyTypeface, "familyTypeface");
        return typefaceAdapterHelperMethods.create(familyTypeface, fontWeight.getWeight(), FontStyle.m1900equalsimpl0(i, FontStyle.Companion.m1904getItalic_LCdwA()));
    }

    /* renamed from: create-xC2X5gM$default  reason: not valid java name */
    static /* synthetic */ Typeface m1990createxC2X5gM$default(TypefaceAdapter typefaceAdapter, int i, FontWeight fontWeight, FontListFontFamily fontListFontFamily, int i2, int i3, Object obj) {
        if (obj == null) {
            if ((i3 & 1) != 0) {
                i = FontStyle.Companion.m1905getNormal_LCdwA();
            }
            if ((i3 & 2) != 0) {
                fontWeight = FontWeight.Companion.getNormal();
            }
            if ((i3 & 8) != 0) {
                i2 = FontSynthesis.Companion.m1915getAllGVVA2EU();
            }
            return typefaceAdapter.m1989createxC2X5gM(i, fontWeight, fontListFontFamily, i2);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: create-xC2X5gM");
    }

    /* renamed from: create-xC2X5gM  reason: not valid java name */
    private final Typeface m1989createxC2X5gM(int i, FontWeight fontWeight, FontListFontFamily fontListFontFamily, int i2) {
        Typeface typeface;
        Font m1895matchFontRetOiIg = this.fontMatcher.m1895matchFontRetOiIg(fontListFontFamily, fontWeight, i);
        try {
            if (m1895matchFontRetOiIg instanceof ResourceFont) {
                typeface = (Typeface) this.resourceLoader.load(m1895matchFontRetOiIg);
            } else if (!(m1895matchFontRetOiIg instanceof AndroidFont)) {
                throw new IllegalStateException(Intrinsics.stringPlus("Unknown font type: ", m1895matchFontRetOiIg));
            } else {
                typeface = ((AndroidFont) m1895matchFontRetOiIg).getTypeface();
            }
            Typeface typeface2 = typeface;
            return (FontSynthesis.m1909equalsimpl0(i2, FontSynthesis.Companion.m1916getNoneGVVA2EU()) || (Intrinsics.areEqual(fontWeight, m1895matchFontRetOiIg.getWeight()) && FontStyle.m1900equalsimpl0(i, m1895matchFontRetOiIg.mo1885getStyle_LCdwA()))) ? typeface2 : Companion.m1999synthesizeWqqsr6A(typeface2, m1895matchFontRetOiIg, fontWeight, i, i2);
        } catch (Exception e) {
            throw new IllegalStateException(Intrinsics.stringPlus("Cannot create Typeface from ", m1895matchFontRetOiIg), e);
        }
    }
}
