package androidx.compose.ui.text;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.unit.Density;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: MultiParagraphIntrinsics.kt */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0007\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\u0018\u0010\u001f\u001a\u00020 2\u0006\u0010\u0004\u001a\u00020 2\u0006\u0010!\u001a\u00020 H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00120\u0007X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u001b\u0010\u0015\u001a\u00020\u00168VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u0017\u0010\u0018R\u001b\u0010\u001b\u001a\u00020\u00168VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u001a\u001a\u0004\b\u001c\u0010\u0018R\u001d\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0014¨\u0006\""}, d2 = {"Landroidx/compose/ui/text/MultiParagraphIntrinsics;", "Landroidx/compose/ui/text/ParagraphIntrinsics;", "annotatedString", "Landroidx/compose/ui/text/AnnotatedString;", "style", "Landroidx/compose/ui/text/TextStyle;", "placeholders", "", "Landroidx/compose/ui/text/AnnotatedString$Range;", "Landroidx/compose/ui/text/Placeholder;", "density", "Landroidx/compose/ui/unit/Density;", "resourceLoader", "Landroidx/compose/ui/text/font/Font$ResourceLoader;", "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/Font$ResourceLoader;)V", "getAnnotatedString", "()Landroidx/compose/ui/text/AnnotatedString;", "infoList", "Landroidx/compose/ui/text/ParagraphIntrinsicInfo;", "getInfoList$ui_text_release", "()Ljava/util/List;", "maxIntrinsicWidth", "", "getMaxIntrinsicWidth", "()F", "maxIntrinsicWidth$delegate", "Lkotlin/Lazy;", "minIntrinsicWidth", "getMinIntrinsicWidth", "minIntrinsicWidth$delegate", "getPlaceholders", "resolveTextDirection", "Landroidx/compose/ui/text/ParagraphStyle;", "defaultStyle", "ui-text_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class MultiParagraphIntrinsics implements ParagraphIntrinsics {
    private final AnnotatedString annotatedString;
    private final List<ParagraphIntrinsicInfo> infoList;
    private final Lazy maxIntrinsicWidth$delegate;
    private final Lazy minIntrinsicWidth$delegate;
    private final List<AnnotatedString.Range<Placeholder>> placeholders;

    public MultiParagraphIntrinsics(AnnotatedString annotatedString, TextStyle textStyle, List<AnnotatedString.Range<Placeholder>> placeholders, Density density, Font.ResourceLoader resourceLoader) {
        List localPlaceholders;
        AnnotatedString annotatedString2 = annotatedString;
        TextStyle style = textStyle;
        Intrinsics.checkNotNullParameter(annotatedString2, "annotatedString");
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(placeholders, "placeholders");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(resourceLoader, "resourceLoader");
        this.annotatedString = annotatedString2;
        this.placeholders = placeholders;
        this.minIntrinsicWidth$delegate = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<Float>() { // from class: androidx.compose.ui.text.MultiParagraphIntrinsics$minIntrinsicWidth$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Float invoke() {
                return Float.valueOf(invoke2());
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final float invoke2() {
                ParagraphIntrinsicInfo paragraphIntrinsicInfo;
                List<ParagraphIntrinsicInfo> infoList$ui_text_release = MultiParagraphIntrinsics.this.getInfoList$ui_text_release();
                if (infoList$ui_text_release.isEmpty()) {
                    paragraphIntrinsicInfo = null;
                } else {
                    paragraphIntrinsicInfo = infoList$ui_text_release.get(0);
                    float minIntrinsicWidth = paragraphIntrinsicInfo.getIntrinsics().getMinIntrinsicWidth();
                    int lastIndex = CollectionsKt.getLastIndex(infoList$ui_text_release);
                    int i = 1;
                    if (1 <= lastIndex) {
                        while (true) {
                            int i2 = i + 1;
                            ParagraphIntrinsicInfo paragraphIntrinsicInfo2 = infoList$ui_text_release.get(i);
                            float minIntrinsicWidth2 = paragraphIntrinsicInfo2.getIntrinsics().getMinIntrinsicWidth();
                            if (Float.compare(minIntrinsicWidth, minIntrinsicWidth2) < 0) {
                                paragraphIntrinsicInfo = paragraphIntrinsicInfo2;
                                minIntrinsicWidth = minIntrinsicWidth2;
                            }
                            if (i == lastIndex) {
                                break;
                            }
                            i = i2;
                        }
                    }
                }
                ParagraphIntrinsicInfo paragraphIntrinsicInfo3 = paragraphIntrinsicInfo;
                ParagraphIntrinsics intrinsics = paragraphIntrinsicInfo3 != null ? paragraphIntrinsicInfo3.getIntrinsics() : null;
                if (intrinsics == null) {
                    return 0.0f;
                }
                return intrinsics.getMinIntrinsicWidth();
            }
        });
        this.maxIntrinsicWidth$delegate = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<Float>() { // from class: androidx.compose.ui.text.MultiParagraphIntrinsics$maxIntrinsicWidth$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Float invoke() {
                return Float.valueOf(invoke2());
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final float invoke2() {
                ParagraphIntrinsicInfo paragraphIntrinsicInfo;
                List<ParagraphIntrinsicInfo> infoList$ui_text_release = MultiParagraphIntrinsics.this.getInfoList$ui_text_release();
                if (infoList$ui_text_release.isEmpty()) {
                    paragraphIntrinsicInfo = null;
                } else {
                    paragraphIntrinsicInfo = infoList$ui_text_release.get(0);
                    float maxIntrinsicWidth = paragraphIntrinsicInfo.getIntrinsics().getMaxIntrinsicWidth();
                    int lastIndex = CollectionsKt.getLastIndex(infoList$ui_text_release);
                    int i = 1;
                    if (1 <= lastIndex) {
                        while (true) {
                            int i2 = i + 1;
                            ParagraphIntrinsicInfo paragraphIntrinsicInfo2 = infoList$ui_text_release.get(i);
                            float maxIntrinsicWidth2 = paragraphIntrinsicInfo2.getIntrinsics().getMaxIntrinsicWidth();
                            if (Float.compare(maxIntrinsicWidth, maxIntrinsicWidth2) < 0) {
                                paragraphIntrinsicInfo = paragraphIntrinsicInfo2;
                                maxIntrinsicWidth = maxIntrinsicWidth2;
                            }
                            if (i == lastIndex) {
                                break;
                            }
                            i = i2;
                        }
                    }
                }
                ParagraphIntrinsicInfo paragraphIntrinsicInfo3 = paragraphIntrinsicInfo;
                ParagraphIntrinsics intrinsics = paragraphIntrinsicInfo3 != null ? paragraphIntrinsicInfo3.getIntrinsics() : null;
                if (intrinsics == null) {
                    return 0.0f;
                }
                return intrinsics.getMaxIntrinsicWidth();
            }
        });
        ParagraphStyle paragraphStyle = textStyle.toParagraphStyle();
        List<AnnotatedString.Range<ParagraphStyle>> normalizedParagraphStyles = AnnotatedStringKt.normalizedParagraphStyles(annotatedString2, paragraphStyle);
        ArrayList arrayList = new ArrayList(normalizedParagraphStyles.size());
        int size = normalizedParagraphStyles.size() - 1;
        if (size >= 0) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                AnnotatedString.Range<ParagraphStyle> range = normalizedParagraphStyles.get(i);
                AnnotatedString substringWithoutParagraphStyles = AnnotatedStringKt.substringWithoutParagraphStyles(annotatedString2, range.getStart(), range.getEnd());
                ParagraphStyle resolveTextDirection = resolveTextDirection(range.getItem(), paragraphStyle);
                String text = substringWithoutParagraphStyles.getText();
                TextStyle merge = style.merge(resolveTextDirection);
                List<AnnotatedString.Range<SpanStyle>> spanStyles = substringWithoutParagraphStyles.getSpanStyles();
                localPlaceholders = MultiParagraphIntrinsicsKt.getLocalPlaceholders(getPlaceholders(), range.getStart(), range.getEnd());
                arrayList.add(new ParagraphIntrinsicInfo(ParagraphIntrinsicsKt.ParagraphIntrinsics(text, merge, spanStyles, localPlaceholders, density, resourceLoader), range.getStart(), range.getEnd()));
                if (i2 > size) {
                    break;
                }
                annotatedString2 = annotatedString;
                style = textStyle;
                i = i2;
            }
        }
        this.infoList = arrayList;
    }

    public final AnnotatedString getAnnotatedString() {
        return this.annotatedString;
    }

    public final List<AnnotatedString.Range<Placeholder>> getPlaceholders() {
        return this.placeholders;
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public float getMinIntrinsicWidth() {
        return ((Number) this.minIntrinsicWidth$delegate.getValue()).floatValue();
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public float getMaxIntrinsicWidth() {
        return ((Number) this.maxIntrinsicWidth$delegate.getValue()).floatValue();
    }

    public final List<ParagraphIntrinsicInfo> getInfoList$ui_text_release() {
        return this.infoList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ParagraphStyle resolveTextDirection(ParagraphStyle paragraphStyle, ParagraphStyle paragraphStyle2) {
        ParagraphStyle paragraphStyle3;
        TextDirection m1801getTextDirectionmmuk1to = paragraphStyle.m1801getTextDirectionmmuk1to();
        if (m1801getTextDirectionmmuk1to == null) {
            paragraphStyle3 = null;
        } else {
            m1801getTextDirectionmmuk1to.m2043unboximpl();
            paragraphStyle3 = paragraphStyle;
        }
        return paragraphStyle3 == null ? ParagraphStyle.m1797copyElsmlbk$default(paragraphStyle, null, paragraphStyle2.m1801getTextDirectionmmuk1to(), 0L, null, 13, null) : paragraphStyle3;
    }
}
