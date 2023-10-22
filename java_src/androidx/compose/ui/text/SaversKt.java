package androidx.compose.ui.text;

import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.compose.ui.unit.TextUnitType;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ULong;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Savers.kt */
@Metadata(d1 = {"\u0000Ô\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aL\u0010G\u001a\u0004\u0018\u0001HH\"\u0014\b\u0000\u0010I*\u000e\u0012\u0004\u0012\u0002HJ\u0012\u0004\u0012\u0002HK0\u0001\"\u0004\b\u0001\u0010J\"\u0004\b\u0002\u0010K\"\u0006\b\u0003\u0010H\u0018\u00012\b\u0010L\u001a\u0004\u0018\u0001HK2\u0006\u0010M\u001a\u0002HIH\u0080\b¢\u0006\u0002\u0010N\u001a\"\u0010G\u001a\u0004\u0018\u0001HH\"\u0006\b\u0000\u0010H\u0018\u00012\b\u0010L\u001a\u0004\u0018\u00010\u0003H\u0080\b¢\u0006\u0002\u0010O\u001aI\u0010P\u001a\u00020\u0003\"\u0014\b\u0000\u0010I*\u000e\u0012\u0004\u0012\u0002HJ\u0012\u0004\u0012\u0002HK0\u0001\"\u0004\b\u0001\u0010J\"\u0004\b\u0002\u0010K2\b\u0010L\u001a\u0004\u0018\u0001HJ2\u0006\u0010M\u001a\u0002HI2\u0006\u0010Q\u001a\u00020RH\u0000¢\u0006\u0002\u0010S\u001a\u001f\u0010P\u001a\u0004\u0018\u0001HI\"\u0004\b\u0000\u0010I2\b\u0010L\u001a\u0004\u0018\u0001HIH\u0000¢\u0006\u0002\u0010O\" \u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0005\"(\u0010\u0006\u001a\u001c\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00030\b0\u0007\u0012\u0004\u0012\u00020\u00030\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\"\u0010\t\u001a\u0016\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00030\b\u0012\u0004\u0012\u00020\u00030\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u001d\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00030\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0002\n\u0000\"#\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00030\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\b\n\u0000\u0012\u0004\b\u000e\u0010\u000f\"\u001a\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00030\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u001a\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00030\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u001a\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00030\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u001d\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00030\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0002\n\u0000\" \u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00030\u0001X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0005\"\u001a\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00030\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\" \u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00030\u0001X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0005\"\u001a\u0010 \u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\u00030\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u001a\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u00030\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u001a\u0010$\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u00030\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u001d\u0010&\u001a\u000e\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020\u00030\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0002\n\u0000\"#\u0010(\u001a\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\u00030\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\b\n\u0000\u0012\u0004\b*\u0010\u000f\"\u001a\u0010+\u001a\u000e\u0012\u0004\u0012\u00020,\u0012\u0004\u0012\u00020\u00030\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"'\u0010-\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00030\u0001*\u00020.8@X\u0080\u0004ø\u0001\u0000¢\u0006\u0006\u001a\u0004\b/\u00100\"'\u0010-\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00030\u0001*\u0002018@X\u0080\u0004ø\u0001\u0000¢\u0006\u0006\u001a\u0004\b/\u00102\"$\u0010-\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00030\u0001*\u0002038@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b/\u00104\"'\u0010-\u001a\u000e\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020\u00030\u0001*\u0002058@X\u0080\u0004ø\u0001\u0000¢\u0006\u0006\u001a\u0004\b/\u00106\"$\u0010-\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u00030\u0001*\u0002078@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b/\u00108\"$\u0010-\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00030\u0001*\u0002098@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b/\u0010:\"$\u0010-\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00030\u0001*\u00020;8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b/\u0010<\"'\u0010-\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00030\u0001*\u00020=8@X\u0080\u0004ø\u0001\u0000¢\u0006\u0006\u001a\u0004\b/\u0010>\"$\u0010-\u001a\u000e\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\u00030\u0001*\u00020?8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b/\u0010@\"$\u0010-\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u00030\u0001*\u00020A8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b/\u0010B\"$\u0010-\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u00030\u0001*\u00020C8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b/\u0010D\"'\u0010-\u001a\u000e\u0012\u0004\u0012\u00020)\u0012\u0004\u0012\u00020\u00030\u0001*\u00020E8@X\u0080\u0004ø\u0001\u0000¢\u0006\u0006\u001a\u0004\b/\u0010F\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006T"}, d2 = {"AnnotatedStringSaver", "Landroidx/compose/runtime/saveable/Saver;", "Landroidx/compose/ui/text/AnnotatedString;", "", "getAnnotatedStringSaver", "()Landroidx/compose/runtime/saveable/Saver;", "AnnotationRangeListSaver", "", "Landroidx/compose/ui/text/AnnotatedString$Range;", "AnnotationRangeSaver", "BaselineShiftSaver", "Landroidx/compose/ui/text/style/BaselineShift;", "ColorSaver", "Landroidx/compose/ui/graphics/Color;", "getColorSaver$annotations", "()V", "FontWeightSaver", "Landroidx/compose/ui/text/font/FontWeight;", "LocaleListSaver", "Landroidx/compose/ui/text/intl/LocaleList;", "LocaleSaver", "Landroidx/compose/ui/text/intl/Locale;", "OffsetSaver", "Landroidx/compose/ui/geometry/Offset;", "ParagraphStyleSaver", "Landroidx/compose/ui/text/ParagraphStyle;", "getParagraphStyleSaver", "ShadowSaver", "Landroidx/compose/ui/graphics/Shadow;", "SpanStyleSaver", "Landroidx/compose/ui/text/SpanStyle;", "getSpanStyleSaver", "TextDecorationSaver", "Landroidx/compose/ui/text/style/TextDecoration;", "TextGeometricTransformSaver", "Landroidx/compose/ui/text/style/TextGeometricTransform;", "TextIndentSaver", "Landroidx/compose/ui/text/style/TextIndent;", "TextRangeSaver", "Landroidx/compose/ui/text/TextRange;", "TextUnitSaver", "Landroidx/compose/ui/unit/TextUnit;", "getTextUnitSaver$annotations", "VerbatimTtsAnnotationSaver", "Landroidx/compose/ui/text/VerbatimTtsAnnotation;", "Saver", "Landroidx/compose/ui/geometry/Offset$Companion;", "getSaver", "(Landroidx/compose/ui/geometry/Offset$Companion;)Landroidx/compose/runtime/saveable/Saver;", "Landroidx/compose/ui/graphics/Color$Companion;", "(Landroidx/compose/ui/graphics/Color$Companion;)Landroidx/compose/runtime/saveable/Saver;", "Landroidx/compose/ui/graphics/Shadow$Companion;", "(Landroidx/compose/ui/graphics/Shadow$Companion;)Landroidx/compose/runtime/saveable/Saver;", "Landroidx/compose/ui/text/TextRange$Companion;", "(Landroidx/compose/ui/text/TextRange$Companion;)Landroidx/compose/runtime/saveable/Saver;", "Landroidx/compose/ui/text/font/FontWeight$Companion;", "(Landroidx/compose/ui/text/font/FontWeight$Companion;)Landroidx/compose/runtime/saveable/Saver;", "Landroidx/compose/ui/text/intl/Locale$Companion;", "(Landroidx/compose/ui/text/intl/Locale$Companion;)Landroidx/compose/runtime/saveable/Saver;", "Landroidx/compose/ui/text/intl/LocaleList$Companion;", "(Landroidx/compose/ui/text/intl/LocaleList$Companion;)Landroidx/compose/runtime/saveable/Saver;", "Landroidx/compose/ui/text/style/BaselineShift$Companion;", "(Landroidx/compose/ui/text/style/BaselineShift$Companion;)Landroidx/compose/runtime/saveable/Saver;", "Landroidx/compose/ui/text/style/TextDecoration$Companion;", "(Landroidx/compose/ui/text/style/TextDecoration$Companion;)Landroidx/compose/runtime/saveable/Saver;", "Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;", "(Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;)Landroidx/compose/runtime/saveable/Saver;", "Landroidx/compose/ui/text/style/TextIndent$Companion;", "(Landroidx/compose/ui/text/style/TextIndent$Companion;)Landroidx/compose/runtime/saveable/Saver;", "Landroidx/compose/ui/unit/TextUnit$Companion;", "(Landroidx/compose/ui/unit/TextUnit$Companion;)Landroidx/compose/runtime/saveable/Saver;", "restore", "Result", "T", "Original", "Saveable", "value", "saver", "(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;)Ljava/lang/Object;", "(Ljava/lang/Object;)Ljava/lang/Object;", "save", "scope", "Landroidx/compose/runtime/saveable/SaverScope;", "(Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Landroidx/compose/runtime/saveable/SaverScope;)Ljava/lang/Object;", "ui-text_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class SaversKt {
    private static final Saver<AnnotatedString, Object> AnnotatedStringSaver = SaverKt.Saver(new Function2<SaverScope, AnnotatedString, Object>() { // from class: androidx.compose.ui.text.SaversKt$AnnotatedStringSaver$1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SaverScope Saver, AnnotatedString it) {
            Saver saver;
            Saver saver2;
            Saver saver3;
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            Intrinsics.checkNotNullParameter(it, "it");
            List<AnnotatedString.Range<SpanStyle>> spanStyles = it.getSpanStyles();
            saver = SaversKt.AnnotationRangeListSaver;
            List<AnnotatedString.Range<ParagraphStyle>> paragraphStyles = it.getParagraphStyles();
            saver2 = SaversKt.AnnotationRangeListSaver;
            List<AnnotatedString.Range<? extends Object>> annotations$ui_text_release = it.getAnnotations$ui_text_release();
            saver3 = SaversKt.AnnotationRangeListSaver;
            return CollectionsKt.arrayListOf(SaversKt.save(it.getText()), SaversKt.save(spanStyles, saver, Saver), SaversKt.save(paragraphStyles, saver2, Saver), SaversKt.save(annotations$ui_text_release, saver3, Saver));
        }
    }, new Function1<Object, AnnotatedString>() { // from class: androidx.compose.ui.text.SaversKt$AnnotatedStringSaver$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function1
        public final AnnotatedString invoke(Object it) {
            Saver saver;
            Saver saver2;
            Saver saver3;
            Intrinsics.checkNotNullParameter(it, "it");
            List list = (List) it;
            Object obj = list.get(0);
            List list2 = null;
            String str = obj == null ? null : (String) obj;
            Intrinsics.checkNotNull(str);
            Object obj2 = list.get(1);
            saver = SaversKt.AnnotationRangeListSaver;
            List list3 = (Intrinsics.areEqual(obj2, (Object) false) || obj2 == null) ? null : (List) saver.restore(obj2);
            Intrinsics.checkNotNull(list3);
            Object obj3 = list.get(2);
            saver2 = SaversKt.AnnotationRangeListSaver;
            List list4 = (Intrinsics.areEqual(obj3, (Object) false) || obj3 == null) ? null : (List) saver2.restore(obj3);
            Intrinsics.checkNotNull(list4);
            Object obj4 = list.get(3);
            saver3 = SaversKt.AnnotationRangeListSaver;
            if (!Intrinsics.areEqual(obj4, (Object) false) && obj4 != null) {
                list2 = (List) saver3.restore(obj4);
            }
            Intrinsics.checkNotNull(list2);
            return new AnnotatedString(str, list3, list4, list2);
        }
    });
    private static final Saver<List<AnnotatedString.Range<? extends Object>>, Object> AnnotationRangeListSaver = SaverKt.Saver(new Function2<SaverScope, List<? extends AnnotatedString.Range<? extends Object>>, Object>() { // from class: androidx.compose.ui.text.SaversKt$AnnotationRangeListSaver$1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SaverScope Saver, List<? extends AnnotatedString.Range<? extends Object>> it) {
            Saver saver;
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            Intrinsics.checkNotNullParameter(it, "it");
            ArrayList arrayList = new ArrayList(it.size());
            int size = it.size() - 1;
            if (size >= 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    saver = SaversKt.AnnotationRangeSaver;
                    arrayList.add(SaversKt.save(it.get(i), saver, Saver));
                    if (i2 > size) {
                        break;
                    }
                    i = i2;
                }
            }
            return arrayList;
        }
    }, new Function1<Object, List<? extends AnnotatedString.Range<? extends Object>>>() { // from class: androidx.compose.ui.text.SaversKt$AnnotationRangeListSaver$2
        @Override // kotlin.jvm.functions.Function1
        public final List<? extends AnnotatedString.Range<? extends Object>> invoke(Object it) {
            Saver saver;
            Intrinsics.checkNotNullParameter(it, "it");
            List list = (List) it;
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size() - 1;
            if (size >= 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    Object obj = list.get(i);
                    ArrayList arrayList2 = arrayList;
                    saver = SaversKt.AnnotationRangeSaver;
                    AnnotatedString.Range range = null;
                    if (!Intrinsics.areEqual(obj, (Object) false) && obj != null) {
                        range = (AnnotatedString.Range) saver.restore(obj);
                    }
                    Intrinsics.checkNotNull(range);
                    arrayList2.add(range);
                    if (i2 > size) {
                        break;
                    }
                    i = i2;
                }
            }
            return arrayList;
        }
    });
    private static final Saver<AnnotatedString.Range<? extends Object>, Object> AnnotationRangeSaver = SaverKt.Saver(new Function2<SaverScope, AnnotatedString.Range<? extends Object>, Object>() { // from class: androidx.compose.ui.text.SaversKt$AnnotationRangeSaver$1

        /* compiled from: Savers.kt */
        @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[AnnotationType.valuesCustom().length];
                iArr[AnnotationType.Paragraph.ordinal()] = 1;
                iArr[AnnotationType.Span.ordinal()] = 2;
                iArr[AnnotationType.VerbatimTts.ordinal()] = 3;
                iArr[AnnotationType.String.ordinal()] = 4;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SaverScope Saver, AnnotatedString.Range<? extends Object> it) {
            AnnotationType annotationType;
            Object save;
            Saver saver;
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            Intrinsics.checkNotNullParameter(it, "it");
            Object item = it.getItem();
            if (item instanceof ParagraphStyle) {
                annotationType = AnnotationType.Paragraph;
            } else if (item instanceof SpanStyle) {
                annotationType = AnnotationType.Span;
            } else {
                annotationType = item instanceof VerbatimTtsAnnotation ? AnnotationType.VerbatimTts : AnnotationType.String;
            }
            int i = WhenMappings.$EnumSwitchMapping$0[annotationType.ordinal()];
            if (i == 1) {
                save = SaversKt.save((ParagraphStyle) it.getItem(), SaversKt.getParagraphStyleSaver(), Saver);
            } else if (i == 2) {
                save = SaversKt.save((SpanStyle) it.getItem(), SaversKt.getSpanStyleSaver(), Saver);
            } else if (i == 3) {
                saver = SaversKt.VerbatimTtsAnnotationSaver;
                save = SaversKt.save((VerbatimTtsAnnotation) it.getItem(), saver, Saver);
            } else if (i != 4) {
                throw new NoWhenBranchMatchedException();
            } else {
                save = SaversKt.save(it.getItem());
            }
            return CollectionsKt.arrayListOf(SaversKt.save(annotationType), save, SaversKt.save(Integer.valueOf(it.getStart())), SaversKt.save(Integer.valueOf(it.getEnd())), SaversKt.save(it.getTag()));
        }
    }, new Function1<Object, AnnotatedString.Range<? extends Object>>() { // from class: androidx.compose.ui.text.SaversKt$AnnotationRangeSaver$2

        /* compiled from: Savers.kt */
        @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[AnnotationType.valuesCustom().length];
                iArr[AnnotationType.Paragraph.ordinal()] = 1;
                iArr[AnnotationType.Span.ordinal()] = 2;
                iArr[AnnotationType.VerbatimTts.ordinal()] = 3;
                iArr[AnnotationType.String.ordinal()] = 4;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function1
        public final AnnotatedString.Range<? extends Object> invoke(Object it) {
            Saver saver;
            Intrinsics.checkNotNullParameter(it, "it");
            List list = (List) it;
            Object obj = list.get(0);
            AnnotationType annotationType = obj == null ? null : (AnnotationType) obj;
            Intrinsics.checkNotNull(annotationType);
            Object obj2 = list.get(2);
            Integer num = obj2 == null ? null : (Integer) obj2;
            Intrinsics.checkNotNull(num);
            int intValue = num.intValue();
            Object obj3 = list.get(3);
            Integer num2 = obj3 == null ? null : (Integer) obj3;
            Intrinsics.checkNotNull(num2);
            int intValue2 = num2.intValue();
            Object obj4 = list.get(4);
            String str = obj4 == null ? null : (String) obj4;
            Intrinsics.checkNotNull(str);
            int i = WhenMappings.$EnumSwitchMapping$0[annotationType.ordinal()];
            if (i == 1) {
                Object obj5 = list.get(1);
                Saver<ParagraphStyle, Object> paragraphStyleSaver = SaversKt.getParagraphStyleSaver();
                if (!Intrinsics.areEqual(obj5, (Object) false) && obj5 != null) {
                    r2 = (ParagraphStyle) paragraphStyleSaver.restore(obj5);
                }
                Intrinsics.checkNotNull(r2);
                return new AnnotatedString.Range<>(r2, intValue, intValue2, str);
            } else if (i == 2) {
                Object obj6 = list.get(1);
                Saver<SpanStyle, Object> spanStyleSaver = SaversKt.getSpanStyleSaver();
                if (!Intrinsics.areEqual(obj6, (Object) false) && obj6 != null) {
                    r2 = (SpanStyle) spanStyleSaver.restore(obj6);
                }
                Intrinsics.checkNotNull(r2);
                return new AnnotatedString.Range<>(r2, intValue, intValue2, str);
            } else if (i != 3) {
                if (i == 4) {
                    Object obj7 = list.get(1);
                    r2 = obj7 != null ? (String) obj7 : null;
                    Intrinsics.checkNotNull(r2);
                    return new AnnotatedString.Range<>(r2, intValue, intValue2, str);
                }
                throw new NoWhenBranchMatchedException();
            } else {
                Object obj8 = list.get(1);
                saver = SaversKt.VerbatimTtsAnnotationSaver;
                if (!Intrinsics.areEqual(obj8, (Object) false) && obj8 != null) {
                    r2 = (VerbatimTtsAnnotation) saver.restore(obj8);
                }
                Intrinsics.checkNotNull(r2);
                return new AnnotatedString.Range<>(r2, intValue, intValue2, str);
            }
        }
    });
    private static final Saver<VerbatimTtsAnnotation, Object> VerbatimTtsAnnotationSaver = SaverKt.Saver(new Function2<SaverScope, VerbatimTtsAnnotation, Object>() { // from class: androidx.compose.ui.text.SaversKt$VerbatimTtsAnnotationSaver$1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SaverScope Saver, VerbatimTtsAnnotation it) {
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            Intrinsics.checkNotNullParameter(it, "it");
            return SaversKt.save(it.getVerbatim());
        }
    }, new Function1<Object, VerbatimTtsAnnotation>() { // from class: androidx.compose.ui.text.SaversKt$VerbatimTtsAnnotationSaver$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function1
        public final VerbatimTtsAnnotation invoke(Object it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return new VerbatimTtsAnnotation((String) it);
        }
    });
    private static final Saver<ParagraphStyle, Object> ParagraphStyleSaver = SaverKt.Saver(new Function2<SaverScope, ParagraphStyle, Object>() { // from class: androidx.compose.ui.text.SaversKt$ParagraphStyleSaver$1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SaverScope Saver, ParagraphStyle it) {
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            Intrinsics.checkNotNullParameter(it, "it");
            return CollectionsKt.arrayListOf(SaversKt.save(it.m1800getTextAlignbuA522U()), SaversKt.save(it.m1801getTextDirectionmmuk1to()), SaversKt.save(TextUnit.m2236boximpl(it.m1799getLineHeightXSAIIZE()), SaversKt.getSaver(TextUnit.Companion), Saver), SaversKt.save(it.getTextIndent(), SaversKt.getSaver(TextIndent.Companion), Saver));
        }
    }, new Function1<Object, ParagraphStyle>() { // from class: androidx.compose.ui.text.SaversKt$ParagraphStyleSaver$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function1
        public final ParagraphStyle invoke(Object it) {
            Intrinsics.checkNotNullParameter(it, "it");
            List list = (List) it;
            Object obj = list.get(0);
            TextIndent textIndent = null;
            TextAlign textAlign = obj == null ? null : (TextAlign) obj;
            Object obj2 = list.get(1);
            TextDirection textDirection = obj2 == null ? null : (TextDirection) obj2;
            Object obj3 = list.get(2);
            TextUnit restore = (Intrinsics.areEqual(obj3, (Object) false) || obj3 == null) ? null : SaversKt.getSaver(TextUnit.Companion).restore(obj3);
            Intrinsics.checkNotNull(restore);
            long m2255unboximpl = restore.m2255unboximpl();
            Object obj4 = list.get(3);
            Saver<TextIndent, Object> saver = SaversKt.getSaver(TextIndent.Companion);
            if (!Intrinsics.areEqual(obj4, (Object) false) && obj4 != null) {
                textIndent = saver.restore(obj4);
            }
            return new ParagraphStyle(textAlign, textDirection, m2255unboximpl, textIndent, null);
        }
    });
    private static final Saver<SpanStyle, Object> SpanStyleSaver = SaverKt.Saver(new Function2<SaverScope, SpanStyle, Object>() { // from class: androidx.compose.ui.text.SaversKt$SpanStyleSaver$1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SaverScope Saver, SpanStyle it) {
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            Intrinsics.checkNotNullParameter(it, "it");
            return CollectionsKt.arrayListOf(SaversKt.save(Color.m336boximpl(it.m1835getColor0d7_KjU()), SaversKt.getSaver(Color.Companion), Saver), SaversKt.save(TextUnit.m2236boximpl(it.m1836getFontSizeXSAIIZE()), SaversKt.getSaver(TextUnit.Companion), Saver), SaversKt.save(it.getFontWeight(), SaversKt.getSaver(FontWeight.Companion), Saver), SaversKt.save(it.m1837getFontStyle4Lr2A7w()), SaversKt.save(it.m1838getFontSynthesisZQGJjVo()), SaversKt.save(-1), SaversKt.save(it.getFontFeatureSettings()), SaversKt.save(TextUnit.m2236boximpl(it.m1839getLetterSpacingXSAIIZE()), SaversKt.getSaver(TextUnit.Companion), Saver), SaversKt.save(it.m1834getBaselineShift5SSeXJ0(), SaversKt.getSaver(BaselineShift.Companion), Saver), SaversKt.save(it.getTextGeometricTransform(), SaversKt.getSaver(TextGeometricTransform.Companion), Saver), SaversKt.save(it.getLocaleList(), SaversKt.getSaver(LocaleList.Companion), Saver), SaversKt.save(Color.m336boximpl(it.m1833getBackground0d7_KjU()), SaversKt.getSaver(Color.Companion), Saver), SaversKt.save(it.getTextDecoration(), SaversKt.getSaver(TextDecoration.Companion), Saver), SaversKt.save(it.getShadow(), SaversKt.getSaver(Shadow.Companion), Saver));
        }
    }, new Function1<Object, SpanStyle>() { // from class: androidx.compose.ui.text.SaversKt$SpanStyleSaver$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function1
        public final SpanStyle invoke(Object it) {
            FontWeight restore;
            BaselineShift restore2;
            TextGeometricTransform restore3;
            LocaleList restore4;
            TextDecoration restore5;
            Shadow restore6;
            Intrinsics.checkNotNullParameter(it, "it");
            List list = (List) it;
            Object obj = list.get(0);
            Color restore7 = (Intrinsics.areEqual(obj, (Object) false) || obj == null) ? null : SaversKt.getSaver(Color.Companion).restore(obj);
            Intrinsics.checkNotNull(restore7);
            long m356unboximpl = restore7.m356unboximpl();
            Object obj2 = list.get(1);
            TextUnit restore8 = (Intrinsics.areEqual(obj2, (Object) false) || obj2 == null) ? null : SaversKt.getSaver(TextUnit.Companion).restore(obj2);
            Intrinsics.checkNotNull(restore8);
            long m2255unboximpl = restore8.m2255unboximpl();
            Object obj3 = list.get(2);
            Saver<FontWeight, Object> saver = SaversKt.getSaver(FontWeight.Companion);
            if (Intrinsics.areEqual(obj3, (Object) false)) {
                restore = null;
            } else {
                restore = obj3 == null ? null : saver.restore(obj3);
            }
            Object obj4 = list.get(3);
            FontStyle fontStyle = obj4 == null ? null : (FontStyle) obj4;
            Object obj5 = list.get(4);
            FontSynthesis fontSynthesis = obj5 == null ? null : (FontSynthesis) obj5;
            Object obj6 = list.get(6);
            String str = obj6 == null ? null : (String) obj6;
            Object obj7 = list.get(7);
            TextUnit restore9 = (Intrinsics.areEqual(obj7, (Object) false) || obj7 == null) ? null : SaversKt.getSaver(TextUnit.Companion).restore(obj7);
            Intrinsics.checkNotNull(restore9);
            long m2255unboximpl2 = restore9.m2255unboximpl();
            Object obj8 = list.get(8);
            Saver<BaselineShift, Object> saver2 = SaversKt.getSaver(BaselineShift.Companion);
            if (Intrinsics.areEqual(obj8, (Object) false)) {
                restore2 = null;
            } else {
                restore2 = obj8 == null ? null : saver2.restore(obj8);
            }
            Object obj9 = list.get(9);
            Saver<TextGeometricTransform, Object> saver3 = SaversKt.getSaver(TextGeometricTransform.Companion);
            if (Intrinsics.areEqual(obj9, (Object) false)) {
                restore3 = null;
            } else {
                restore3 = obj9 == null ? null : saver3.restore(obj9);
            }
            Object obj10 = list.get(10);
            Saver<LocaleList, Object> saver4 = SaversKt.getSaver(LocaleList.Companion);
            if (Intrinsics.areEqual(obj10, (Object) false)) {
                restore4 = null;
            } else {
                restore4 = obj10 == null ? null : saver4.restore(obj10);
            }
            Object obj11 = list.get(11);
            Color restore10 = (Intrinsics.areEqual(obj11, (Object) false) || obj11 == null) ? null : SaversKt.getSaver(Color.Companion).restore(obj11);
            Intrinsics.checkNotNull(restore10);
            long m356unboximpl2 = restore10.m356unboximpl();
            Object obj12 = list.get(12);
            Saver<TextDecoration, Object> saver5 = SaversKt.getSaver(TextDecoration.Companion);
            if (Intrinsics.areEqual(obj12, (Object) false)) {
                restore5 = null;
            } else {
                restore5 = obj12 == null ? null : saver5.restore(obj12);
            }
            Object obj13 = list.get(13);
            Saver<Shadow, Object> saver6 = SaversKt.getSaver(Shadow.Companion);
            if (Intrinsics.areEqual(obj13, (Object) false)) {
                restore6 = null;
            } else {
                restore6 = obj13 == null ? null : saver6.restore(obj13);
            }
            return new SpanStyle(m356unboximpl, m2255unboximpl, restore, fontStyle, fontSynthesis, null, str, m2255unboximpl2, restore2, restore3, restore4, m356unboximpl2, restore5, restore6, 32, null);
        }
    });
    private static final Saver<TextDecoration, Object> TextDecorationSaver = SaverKt.Saver(new Function2<SaverScope, TextDecoration, Object>() { // from class: androidx.compose.ui.text.SaversKt$TextDecorationSaver$1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SaverScope Saver, TextDecoration it) {
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            Intrinsics.checkNotNullParameter(it, "it");
            return Integer.valueOf(it.getMask());
        }
    }, new Function1<Object, TextDecoration>() { // from class: androidx.compose.ui.text.SaversKt$TextDecorationSaver$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function1
        public final TextDecoration invoke(Object it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return new TextDecoration(((Integer) it).intValue());
        }
    });
    private static final Saver<TextGeometricTransform, Object> TextGeometricTransformSaver = SaverKt.Saver(new Function2<SaverScope, TextGeometricTransform, Object>() { // from class: androidx.compose.ui.text.SaversKt$TextGeometricTransformSaver$1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SaverScope Saver, TextGeometricTransform it) {
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            Intrinsics.checkNotNullParameter(it, "it");
            return CollectionsKt.arrayListOf(Float.valueOf(it.getScaleX()), Float.valueOf(it.getSkewX()));
        }
    }, new Function1<Object, TextGeometricTransform>() { // from class: androidx.compose.ui.text.SaversKt$TextGeometricTransformSaver$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function1
        public final TextGeometricTransform invoke(Object it) {
            Intrinsics.checkNotNullParameter(it, "it");
            List list = (List) it;
            return new TextGeometricTransform(((Number) list.get(0)).floatValue(), ((Number) list.get(1)).floatValue());
        }
    });
    private static final Saver<TextIndent, Object> TextIndentSaver = SaverKt.Saver(new Function2<SaverScope, TextIndent, Object>() { // from class: androidx.compose.ui.text.SaversKt$TextIndentSaver$1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SaverScope Saver, TextIndent it) {
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            Intrinsics.checkNotNullParameter(it, "it");
            return CollectionsKt.arrayListOf(SaversKt.save(TextUnit.m2236boximpl(it.m2051getFirstLineXSAIIZE()), SaversKt.getSaver(TextUnit.Companion), Saver), SaversKt.save(TextUnit.m2236boximpl(it.m2052getRestLineXSAIIZE()), SaversKt.getSaver(TextUnit.Companion), Saver));
        }
    }, new Function1<Object, TextIndent>() { // from class: androidx.compose.ui.text.SaversKt$TextIndentSaver$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function1
        public final TextIndent invoke(Object it) {
            Intrinsics.checkNotNullParameter(it, "it");
            List list = (List) it;
            Object obj = list.get(0);
            TextUnit textUnit = null;
            TextUnit restore = (Intrinsics.areEqual(obj, (Object) false) || obj == null) ? null : SaversKt.getSaver(TextUnit.Companion).restore(obj);
            Intrinsics.checkNotNull(restore);
            long m2255unboximpl = restore.m2255unboximpl();
            Object obj2 = list.get(1);
            Saver<TextUnit, Object> saver = SaversKt.getSaver(TextUnit.Companion);
            if (!Intrinsics.areEqual(obj2, (Object) false) && obj2 != null) {
                textUnit = saver.restore(obj2);
            }
            Intrinsics.checkNotNull(textUnit);
            return new TextIndent(m2255unboximpl, textUnit.m2255unboximpl(), null);
        }
    });
    private static final Saver<FontWeight, Object> FontWeightSaver = SaverKt.Saver(new Function2<SaverScope, FontWeight, Object>() { // from class: androidx.compose.ui.text.SaversKt$FontWeightSaver$1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SaverScope Saver, FontWeight it) {
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            Intrinsics.checkNotNullParameter(it, "it");
            return Integer.valueOf(it.getWeight());
        }
    }, new Function1<Object, FontWeight>() { // from class: androidx.compose.ui.text.SaversKt$FontWeightSaver$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function1
        public final FontWeight invoke(Object it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return new FontWeight(((Integer) it).intValue());
        }
    });
    private static final Saver<BaselineShift, Object> BaselineShiftSaver = SaverKt.Saver(new Function2<SaverScope, BaselineShift, Object>() { // from class: androidx.compose.ui.text.SaversKt$BaselineShiftSaver$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(SaverScope saverScope, BaselineShift baselineShift) {
            return m1821invoke8a2Sb4w(saverScope, baselineShift.m2016unboximpl());
        }

        /* renamed from: invoke-8a2Sb4w  reason: not valid java name */
        public final Object m1821invoke8a2Sb4w(SaverScope Saver, float f) {
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            return Float.valueOf(f);
        }
    }, new Function1<Object, BaselineShift>() { // from class: androidx.compose.ui.text.SaversKt$BaselineShiftSaver$2
        @Override // kotlin.jvm.functions.Function1
        /* renamed from: invoke-jTk7eUs-jTk7eUs  reason: not valid java name */
        public final BaselineShift invoke(Object it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return BaselineShift.m2010boximpl(BaselineShift.m2011constructorimpl(((Float) it).floatValue()));
        }
    });
    private static final Saver<TextRange, Object> TextRangeSaver = SaverKt.Saver(new Function2<SaverScope, TextRange, Object>() { // from class: androidx.compose.ui.text.SaversKt$TextRangeSaver$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(SaverScope saverScope, TextRange textRange) {
            return m1827invokeFDrldGo(saverScope, textRange.m1868unboximpl());
        }

        /* renamed from: invoke-FDrldGo  reason: not valid java name */
        public final Object m1827invokeFDrldGo(SaverScope Saver, long j) {
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            return CollectionsKt.arrayListOf((Integer) SaversKt.save(Integer.valueOf(TextRange.m1864getStartimpl(j))), (Integer) SaversKt.save(Integer.valueOf(TextRange.m1859getEndimpl(j))));
        }
    }, new Function1<Object, TextRange>() { // from class: androidx.compose.ui.text.SaversKt$TextRangeSaver$2
        @Override // kotlin.jvm.functions.Function1
        /* renamed from: invoke-VqIyPBM-VqIyPBM  reason: not valid java name */
        public final TextRange invoke(Object it) {
            Intrinsics.checkNotNullParameter(it, "it");
            List list = (List) it;
            Object obj = list.get(0);
            Integer num = obj == null ? null : (Integer) obj;
            Intrinsics.checkNotNull(num);
            int intValue = num.intValue();
            Object obj2 = list.get(1);
            Integer num2 = obj2 != null ? (Integer) obj2 : null;
            Intrinsics.checkNotNull(num2);
            return TextRange.m1852boximpl(TextRangeKt.TextRange(intValue, num2.intValue()));
        }
    });
    private static final Saver<Shadow, Object> ShadowSaver = SaverKt.Saver(new Function2<SaverScope, Shadow, Object>() { // from class: androidx.compose.ui.text.SaversKt$ShadowSaver$1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SaverScope Saver, Shadow it) {
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            Intrinsics.checkNotNullParameter(it, "it");
            return CollectionsKt.arrayListOf(SaversKt.save(Color.m336boximpl(it.m596getColor0d7_KjU()), SaversKt.getSaver(Color.Companion), Saver), SaversKt.save(Offset.m106boximpl(it.m597getOffsetF1C5BW0()), SaversKt.getSaver(Offset.Companion), Saver), SaversKt.save(Float.valueOf(it.getBlurRadius())));
        }
    }, new Function1<Object, Shadow>() { // from class: androidx.compose.ui.text.SaversKt$ShadowSaver$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function1
        public final Shadow invoke(Object it) {
            Intrinsics.checkNotNullParameter(it, "it");
            List list = (List) it;
            Object obj = list.get(0);
            Color restore = (Intrinsics.areEqual(obj, (Object) false) || obj == null) ? null : SaversKt.getSaver(Color.Companion).restore(obj);
            Intrinsics.checkNotNull(restore);
            long m356unboximpl = restore.m356unboximpl();
            Object obj2 = list.get(1);
            Offset restore2 = (Intrinsics.areEqual(obj2, (Object) false) || obj2 == null) ? null : SaversKt.getSaver(Offset.Companion).restore(obj2);
            Intrinsics.checkNotNull(restore2);
            long m127unboximpl = restore2.m127unboximpl();
            Object obj3 = list.get(2);
            Float f = obj3 != null ? (Float) obj3 : null;
            Intrinsics.checkNotNull(f);
            return new Shadow(m356unboximpl, m127unboximpl, f.floatValue(), null);
        }
    });
    private static final Saver<Color, Object> ColorSaver = SaverKt.Saver(new Function2<SaverScope, Color, Object>() { // from class: androidx.compose.ui.text.SaversKt$ColorSaver$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(SaverScope saverScope, Color color) {
            return m1823invoke4WTKRHQ(saverScope, color.m356unboximpl());
        }

        /* renamed from: invoke-4WTKRHQ  reason: not valid java name */
        public final Object m1823invoke4WTKRHQ(SaverScope Saver, long j) {
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            return ULong.m2631boximpl(j);
        }
    }, new Function1<Object, Color>() { // from class: androidx.compose.ui.text.SaversKt$ColorSaver$2
        @Override // kotlin.jvm.functions.Function1
        /* renamed from: invoke-ijrfgN4-ijrfgN4  reason: not valid java name */
        public final Color invoke(Object it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return Color.m336boximpl(Color.m342constructorimpl(((ULong) it).m2688unboximpl()));
        }
    });
    private static final Saver<TextUnit, Object> TextUnitSaver = SaverKt.Saver(new Function2<SaverScope, TextUnit, Object>() { // from class: androidx.compose.ui.text.SaversKt$TextUnitSaver$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(SaverScope saverScope, TextUnit textUnit) {
            return m1829invokempE4wyQ(saverScope, textUnit.m2255unboximpl());
        }

        /* renamed from: invoke-mpE4wyQ  reason: not valid java name */
        public final Object m1829invokempE4wyQ(SaverScope Saver, long j) {
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            return CollectionsKt.arrayListOf(SaversKt.save(Float.valueOf(TextUnit.m2246getValueimpl(j))), SaversKt.save(TextUnitType.m2271boximpl(TextUnit.m2245getTypeUIouoOA(j))));
        }
    }, new Function1<Object, TextUnit>() { // from class: androidx.compose.ui.text.SaversKt$TextUnitSaver$2
        @Override // kotlin.jvm.functions.Function1
        /* renamed from: invoke-XNhUCwk-XNhUCwk  reason: not valid java name */
        public final TextUnit invoke(Object it) {
            Intrinsics.checkNotNullParameter(it, "it");
            List list = (List) it;
            Object obj = list.get(0);
            Float f = obj == null ? null : (Float) obj;
            Intrinsics.checkNotNull(f);
            float floatValue = f.floatValue();
            Object obj2 = list.get(1);
            TextUnitType textUnitType = obj2 != null ? (TextUnitType) obj2 : null;
            Intrinsics.checkNotNull(textUnitType);
            return TextUnit.m2236boximpl(TextUnitKt.m2258TextUnitanM5pPY(floatValue, textUnitType.m2277unboximpl()));
        }
    });
    private static final Saver<Offset, Object> OffsetSaver = SaverKt.Saver(new Function2<SaverScope, Offset, Object>() { // from class: androidx.compose.ui.text.SaversKt$OffsetSaver$1
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(SaverScope saverScope, Offset offset) {
            return m1825invokeUv8p0NA(saverScope, offset.m127unboximpl());
        }

        /* renamed from: invoke-Uv8p0NA  reason: not valid java name */
        public final Object m1825invokeUv8p0NA(SaverScope Saver, long j) {
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            return Offset.m114equalsimpl0(j, Offset.Companion.m132getUnspecifiedF1C5BW0()) ? (Serializable) false : CollectionsKt.arrayListOf((Float) SaversKt.save(Float.valueOf(Offset.m117getXimpl(j))), (Float) SaversKt.save(Float.valueOf(Offset.m118getYimpl(j))));
        }
    }, new Function1<Object, Offset>() { // from class: androidx.compose.ui.text.SaversKt$OffsetSaver$2
        @Override // kotlin.jvm.functions.Function1
        /* renamed from: invoke-x-9fifI-x-9fifI  reason: not valid java name */
        public final Offset invoke(Object it) {
            Intrinsics.checkNotNullParameter(it, "it");
            if (Intrinsics.areEqual(it, (Object) false)) {
                return Offset.m106boximpl(Offset.Companion.m132getUnspecifiedF1C5BW0());
            }
            List list = (List) it;
            Object obj = list.get(0);
            Float f = obj == null ? null : (Float) obj;
            Intrinsics.checkNotNull(f);
            float floatValue = f.floatValue();
            Object obj2 = list.get(1);
            Float f2 = obj2 != null ? (Float) obj2 : null;
            Intrinsics.checkNotNull(f2);
            return Offset.m106boximpl(OffsetKt.Offset(floatValue, f2.floatValue()));
        }
    });
    private static final Saver<LocaleList, Object> LocaleListSaver = SaverKt.Saver(new Function2<SaverScope, LocaleList, Object>() { // from class: androidx.compose.ui.text.SaversKt$LocaleListSaver$1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SaverScope Saver, LocaleList it) {
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            Intrinsics.checkNotNullParameter(it, "it");
            List<Locale> localeList = it.getLocaleList();
            ArrayList arrayList = new ArrayList(localeList.size());
            int size = localeList.size() - 1;
            if (size >= 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    arrayList.add(SaversKt.save(localeList.get(i), SaversKt.getSaver(Locale.Companion), Saver));
                    if (i2 > size) {
                        break;
                    }
                    i = i2;
                }
            }
            return arrayList;
        }
    }, new Function1<Object, LocaleList>() { // from class: androidx.compose.ui.text.SaversKt$LocaleListSaver$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function1
        public final LocaleList invoke(Object it) {
            Intrinsics.checkNotNullParameter(it, "it");
            List list = (List) it;
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size() - 1;
            if (size >= 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    Object obj = list.get(i);
                    ArrayList arrayList2 = arrayList;
                    Saver<Locale, Object> saver = SaversKt.getSaver(Locale.Companion);
                    Locale locale = null;
                    if (!Intrinsics.areEqual(obj, (Object) false) && obj != null) {
                        locale = saver.restore(obj);
                    }
                    Intrinsics.checkNotNull(locale);
                    arrayList2.add(locale);
                    if (i2 > size) {
                        break;
                    }
                    i = i2;
                }
            }
            return new LocaleList(arrayList);
        }
    });
    private static final Saver<Locale, Object> LocaleSaver = SaverKt.Saver(new Function2<SaverScope, Locale, Object>() { // from class: androidx.compose.ui.text.SaversKt$LocaleSaver$1
        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(SaverScope Saver, Locale it) {
            Intrinsics.checkNotNullParameter(Saver, "$this$Saver");
            Intrinsics.checkNotNullParameter(it, "it");
            return it.toLanguageTag();
        }
    }, new Function1<Object, Locale>() { // from class: androidx.compose.ui.text.SaversKt$LocaleSaver$2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function1
        public final Locale invoke(Object it) {
            Intrinsics.checkNotNullParameter(it, "it");
            return new Locale((String) it);
        }
    });

    private static /* synthetic */ void getColorSaver$annotations() {
    }

    private static /* synthetic */ void getTextUnitSaver$annotations() {
    }

    public static final <T> T save(T t) {
        return t;
    }

    public static final <T extends Saver<Original, Saveable>, Original, Saveable> Object save(Original original, T saver, SaverScope scope) {
        Object save;
        Intrinsics.checkNotNullParameter(saver, "saver");
        Intrinsics.checkNotNullParameter(scope, "scope");
        if (original == null || (save = saver.save(scope, original)) == null) {
            return false;
        }
        return save;
    }

    public static final /* synthetic */ <T extends Saver<Original, Saveable>, Original, Saveable, Result> Result restore(Saveable saveable, T saver) {
        Intrinsics.checkNotNullParameter(saver, "saver");
        if (Intrinsics.areEqual((Object) saveable, (Object) false) || saveable == null) {
            return null;
        }
        Result result = (Result) saver.restore(saveable);
        Intrinsics.reifiedOperationMarker(1, "Result");
        return result;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final /* synthetic */ <Result> Result restore(Object obj) {
        if (obj == 0) {
            return null;
        }
        Intrinsics.reifiedOperationMarker(1, "Result");
        return obj;
    }

    public static final Saver<AnnotatedString, Object> getAnnotatedStringSaver() {
        return AnnotatedStringSaver;
    }

    public static final Saver<ParagraphStyle, Object> getParagraphStyleSaver() {
        return ParagraphStyleSaver;
    }

    public static final Saver<SpanStyle, Object> getSpanStyleSaver() {
        return SpanStyleSaver;
    }

    public static final Saver<TextDecoration, Object> getSaver(TextDecoration.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return TextDecorationSaver;
    }

    public static final Saver<TextGeometricTransform, Object> getSaver(TextGeometricTransform.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return TextGeometricTransformSaver;
    }

    public static final Saver<TextIndent, Object> getSaver(TextIndent.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return TextIndentSaver;
    }

    public static final Saver<FontWeight, Object> getSaver(FontWeight.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return FontWeightSaver;
    }

    public static final Saver<BaselineShift, Object> getSaver(BaselineShift.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return BaselineShiftSaver;
    }

    public static final Saver<TextRange, Object> getSaver(TextRange.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return TextRangeSaver;
    }

    public static final Saver<Shadow, Object> getSaver(Shadow.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return ShadowSaver;
    }

    public static final Saver<Color, Object> getSaver(Color.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return ColorSaver;
    }

    public static final Saver<TextUnit, Object> getSaver(TextUnit.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return TextUnitSaver;
    }

    public static final Saver<Offset, Object> getSaver(Offset.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return OffsetSaver;
    }

    public static final Saver<LocaleList, Object> getSaver(LocaleList.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return LocaleListSaver;
    }

    public static final Saver<Locale, Object> getSaver(Locale.Companion companion) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        return LocaleSaver;
    }
}
