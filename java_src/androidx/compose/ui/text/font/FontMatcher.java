package androidx.compose.ui.text.font;

import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: FontMatcher.kt */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001c\n\u0002\b\u0002\b\u0010\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J-\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000b\u0010\fJ-\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000b\u0010\u000eJ3\u0010\u0003\u001a\u00020\u00042\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00040\u00102\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000b\u0010\u0011\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006\u0012"}, d2 = {"Landroidx/compose/ui/text/font/FontMatcher;", "", "()V", "matchFont", "Landroidx/compose/ui/text/font/Font;", "fontFamily", "Landroidx/compose/ui/text/font/FontFamily;", "fontWeight", "Landroidx/compose/ui/text/font/FontWeight;", "fontStyle", "Landroidx/compose/ui/text/font/FontStyle;", "matchFont-RetOiIg", "(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;I)Landroidx/compose/ui/text/font/Font;", "Landroidx/compose/ui/text/font/FontListFontFamily;", "(Landroidx/compose/ui/text/font/FontListFontFamily;Landroidx/compose/ui/text/font/FontWeight;I)Landroidx/compose/ui/text/font/Font;", "fontList", "", "(Ljava/lang/Iterable;Landroidx/compose/ui/text/font/FontWeight;I)Landroidx/compose/ui/text/font/Font;", "ui-text_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public class FontMatcher {
    /* renamed from: matchFont-RetOiIg  reason: not valid java name */
    public Font m1894matchFontRetOiIg(FontFamily fontFamily, FontWeight fontWeight, int i) {
        Intrinsics.checkNotNullParameter(fontFamily, "fontFamily");
        Intrinsics.checkNotNullParameter(fontWeight, "fontWeight");
        if (!(fontFamily instanceof FontListFontFamily)) {
            throw new IllegalArgumentException("Only FontFamily instances that presents a list of Fonts can be used");
        }
        return m1895matchFontRetOiIg((FontListFontFamily) fontFamily, fontWeight, i);
    }

    /* renamed from: matchFont-RetOiIg  reason: not valid java name */
    public Font m1895matchFontRetOiIg(FontListFontFamily fontFamily, FontWeight fontWeight, int i) {
        Intrinsics.checkNotNullParameter(fontFamily, "fontFamily");
        Intrinsics.checkNotNullParameter(fontWeight, "fontWeight");
        return m1896matchFontRetOiIg(fontFamily.getFonts(), fontWeight, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v12 */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v20 */
    /* JADX WARN: Type inference failed for: r12v22 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* renamed from: matchFont-RetOiIg  reason: not valid java name */
    public Font m1896matchFontRetOiIg(Iterable<? extends Font> fontList, FontWeight fontWeight, int i) {
        int i2;
        Object obj;
        Font font;
        Object obj2;
        Object obj3;
        Object obj4;
        Intrinsics.checkNotNullParameter(fontList, "fontList");
        Intrinsics.checkNotNullParameter(fontWeight, "fontWeight");
        ArrayList arrayList = new ArrayList();
        Iterator<? extends Font> it = fontList.iterator();
        while (true) {
            boolean z = false;
            i2 = 1;
            if (!it.hasNext()) {
                break;
            }
            Font next = it.next();
            Font font2 = next;
            if (Intrinsics.areEqual(font2.getWeight(), fontWeight) && FontStyle.m1900equalsimpl0(font2.mo1885getStyle_LCdwA(), i)) {
                z = true;
            }
            if (z) {
                arrayList.add(next);
            }
        }
        ArrayList arrayList2 = arrayList;
        if (!arrayList2.isEmpty()) {
            return (Font) arrayList2.get(0);
        }
        Unit unit = Unit.INSTANCE;
        ArrayList arrayList3 = new ArrayList();
        for (Font font3 : fontList) {
            if (FontStyle.m1900equalsimpl0(font3.mo1885getStyle_LCdwA(), i)) {
                arrayList3.add(font3);
            }
        }
        ArrayList arrayList4 = arrayList3;
        if (!arrayList4.isEmpty()) {
            fontList = arrayList4;
        }
        Font font4 = null;
        if (fontWeight.compareTo(FontWeight.Companion.getW400()) < 0) {
            ArrayList arrayList5 = new ArrayList();
            for (Font font5 : fontList) {
                if (font5.getWeight().compareTo(fontWeight) <= 0) {
                    arrayList5.add(font5);
                }
            }
            ArrayList arrayList6 = arrayList5;
            if (arrayList6.isEmpty()) {
                obj4 = null;
            } else {
                obj4 = arrayList6.get(0);
                FontWeight weight = ((Font) obj4).getWeight();
                int lastIndex = CollectionsKt.getLastIndex(arrayList6);
                if (1 <= lastIndex) {
                    int i3 = 1;
                    while (true) {
                        int i4 = i3 + 1;
                        Object obj5 = arrayList6.get(i3);
                        FontWeight weight2 = ((Font) obj5).getWeight();
                        if (weight.compareTo(weight2) < 0) {
                            obj4 = obj5;
                            weight = weight2;
                        }
                        if (i3 == lastIndex) {
                            break;
                        }
                        i3 = i4;
                    }
                }
            }
            font = (Font) obj4;
            if (font == null) {
                ArrayList arrayList7 = new ArrayList();
                for (Font font6 : fontList) {
                    if (font6.getWeight().compareTo(fontWeight) > 0) {
                        arrayList7.add(font6);
                    }
                }
                ArrayList arrayList8 = arrayList7;
                if (!arrayList8.isEmpty()) {
                    Object obj6 = arrayList8.get(0);
                    FontWeight weight3 = ((Font) obj6).getWeight();
                    int lastIndex2 = CollectionsKt.getLastIndex(arrayList8);
                    Object obj7 = obj6;
                    if (1 <= lastIndex2) {
                        while (true) {
                            int i5 = i2 + 1;
                            Object obj8 = arrayList8.get(i2);
                            FontWeight weight4 = ((Font) obj8).getWeight();
                            obj6 = obj7;
                            if (weight3.compareTo(weight4) > 0) {
                                obj6 = obj8;
                                weight3 = weight4;
                            }
                            if (i2 == lastIndex2) {
                                break;
                            }
                            i2 = i5;
                            obj7 = obj6;
                        }
                    }
                    font4 = obj6;
                }
                font = font4;
            }
        } else if (fontWeight.compareTo(FontWeight.Companion.getW500()) > 0) {
            ArrayList arrayList9 = new ArrayList();
            for (Font font7 : fontList) {
                if (font7.getWeight().compareTo(fontWeight) >= 0) {
                    arrayList9.add(font7);
                }
            }
            ArrayList arrayList10 = arrayList9;
            if (arrayList10.isEmpty()) {
                obj3 = null;
            } else {
                obj3 = arrayList10.get(0);
                FontWeight weight5 = ((Font) obj3).getWeight();
                int lastIndex3 = CollectionsKt.getLastIndex(arrayList10);
                if (1 <= lastIndex3) {
                    int i6 = 1;
                    while (true) {
                        int i7 = i6 + 1;
                        Object obj9 = arrayList10.get(i6);
                        FontWeight weight6 = ((Font) obj9).getWeight();
                        if (weight5.compareTo(weight6) > 0) {
                            obj3 = obj9;
                            weight5 = weight6;
                        }
                        if (i6 == lastIndex3) {
                            break;
                        }
                        i6 = i7;
                    }
                }
            }
            font = (Font) obj3;
            if (font == null) {
                ArrayList arrayList11 = new ArrayList();
                for (Font font8 : fontList) {
                    if (font8.getWeight().compareTo(fontWeight) < 0) {
                        arrayList11.add(font8);
                    }
                }
                ArrayList arrayList12 = arrayList11;
                if (!arrayList12.isEmpty()) {
                    Object obj10 = arrayList12.get(0);
                    FontWeight weight7 = ((Font) obj10).getWeight();
                    int lastIndex4 = CollectionsKt.getLastIndex(arrayList12);
                    Object obj11 = obj10;
                    if (1 <= lastIndex4) {
                        while (true) {
                            int i8 = i2 + 1;
                            Object obj12 = arrayList12.get(i2);
                            FontWeight weight8 = ((Font) obj12).getWeight();
                            obj10 = obj11;
                            if (weight7.compareTo(weight8) < 0) {
                                obj10 = obj12;
                                weight7 = weight8;
                            }
                            if (i2 == lastIndex4) {
                                break;
                            }
                            i2 = i8;
                            obj11 = obj10;
                        }
                    }
                    font4 = obj10;
                }
                font = font4;
            }
        } else {
            ArrayList arrayList13 = new ArrayList();
            for (Font font9 : fontList) {
                Font font10 = font9;
                if (font10.getWeight().compareTo(fontWeight) >= 0 && font10.getWeight().compareTo(FontWeight.Companion.getW500()) <= 0) {
                    arrayList13.add(font9);
                }
            }
            ArrayList arrayList14 = arrayList13;
            if (arrayList14.isEmpty()) {
                obj = null;
            } else {
                obj = arrayList14.get(0);
                FontWeight weight9 = ((Font) obj).getWeight();
                int lastIndex5 = CollectionsKt.getLastIndex(arrayList14);
                if (1 <= lastIndex5) {
                    int i9 = 1;
                    while (true) {
                        int i10 = i9 + 1;
                        Object obj13 = arrayList14.get(i9);
                        FontWeight weight10 = ((Font) obj13).getWeight();
                        if (weight9.compareTo(weight10) > 0) {
                            obj = obj13;
                            weight9 = weight10;
                        }
                        if (i9 == lastIndex5) {
                            break;
                        }
                        i9 = i10;
                    }
                }
            }
            font = (Font) obj;
            if (font == null) {
                ArrayList arrayList15 = new ArrayList();
                for (Font font11 : fontList) {
                    if (font11.getWeight().compareTo(fontWeight) < 0) {
                        arrayList15.add(font11);
                    }
                }
                ArrayList arrayList16 = arrayList15;
                if (arrayList16.isEmpty()) {
                    obj2 = 0;
                } else {
                    obj2 = arrayList16.get(0);
                    FontWeight weight11 = ((Font) obj2).getWeight();
                    int lastIndex6 = CollectionsKt.getLastIndex(arrayList16);
                    if (1 <= lastIndex6) {
                        int i11 = 1;
                        Object obj14 = obj2;
                        while (true) {
                            int i12 = i11 + 1;
                            Object obj15 = arrayList16.get(i11);
                            FontWeight weight12 = ((Font) obj15).getWeight();
                            obj2 = obj14;
                            if (weight11.compareTo(weight12) < 0) {
                                obj2 = obj15;
                                weight11 = weight12;
                            }
                            if (i11 == lastIndex6) {
                                break;
                            }
                            i11 = i12;
                            obj14 = obj2;
                        }
                    }
                }
                font = obj2;
                if (font == null) {
                    ArrayList arrayList17 = new ArrayList();
                    for (Font font12 : fontList) {
                        if (font12.getWeight().compareTo(FontWeight.Companion.getW500()) > 0) {
                            arrayList17.add(font12);
                        }
                    }
                    ArrayList arrayList18 = arrayList17;
                    if (!arrayList18.isEmpty()) {
                        Object obj16 = arrayList18.get(0);
                        FontWeight weight13 = ((Font) obj16).getWeight();
                        int lastIndex7 = CollectionsKt.getLastIndex(arrayList18);
                        Object obj17 = obj16;
                        if (1 <= lastIndex7) {
                            while (true) {
                                int i13 = i2 + 1;
                                Object obj18 = arrayList18.get(i2);
                                FontWeight weight14 = ((Font) obj18).getWeight();
                                obj16 = obj17;
                                if (weight13.compareTo(weight14) > 0) {
                                    obj16 = obj18;
                                    weight13 = weight14;
                                }
                                if (i2 == lastIndex7) {
                                    break;
                                }
                                i2 = i13;
                                obj17 = obj16;
                            }
                        }
                        font4 = obj16;
                    }
                    font = font4;
                }
            }
        }
        if (font != null) {
            return font;
        }
        throw new IllegalStateException("Cannot match any font");
    }
}
