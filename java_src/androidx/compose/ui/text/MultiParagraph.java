package androidx.compose.ui.text;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Density;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: MultiParagraph.kt */
@Metadata(d1 = {"\u0000\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001BY\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0014\b\u0002\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013¢\u0006\u0002\u0010\u0014B)\u0012\u0006\u0010\u0015\u001a\u00020\u0016\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0017J\u000e\u00106\u001a\u0002072\u0006\u00108\u001a\u00020\u000bJ\u000e\u00109\u001a\u0002032\u0006\u00108\u001a\u00020\u000bJ\u000e\u0010:\u001a\u0002032\u0006\u00108\u001a\u00020\u000bJ\u0016\u0010;\u001a\u00020\u000f2\u0006\u00108\u001a\u00020\u000b2\u0006\u0010<\u001a\u00020\rJ\u000e\u0010=\u001a\u00020\u000f2\u0006\u0010>\u001a\u00020\u000bJ\u0018\u0010?\u001a\u00020\u000b2\u0006\u0010>\u001a\u00020\u000b2\b\b\u0002\u0010@\u001a\u00020\rJ\u000e\u0010A\u001a\u00020\u000b2\u0006\u00108\u001a\u00020\u000bJ\u000e\u0010B\u001a\u00020\u000b2\u0006\u0010C\u001a\u00020\u000fJ\u000e\u0010D\u001a\u00020\u000f2\u0006\u0010>\u001a\u00020\u000bJ\u000e\u0010E\u001a\u00020\u000f2\u0006\u0010>\u001a\u00020\u000bJ\u000e\u0010F\u001a\u00020\u000f2\u0006\u0010>\u001a\u00020\u000bJ\u000e\u0010G\u001a\u00020\u000b2\u0006\u0010>\u001a\u00020\u000bJ\u000e\u0010H\u001a\u00020\u000f2\u0006\u0010>\u001a\u00020\u000bJ\u000e\u0010I\u001a\u00020\u000f2\u0006\u0010>\u001a\u00020\u000bJ\u001b\u0010J\u001a\u00020\u000b2\u0006\u0010K\u001a\u00020Lø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bM\u0010NJ\u000e\u0010O\u001a\u0002072\u0006\u00108\u001a\u00020\u000bJ\u0016\u0010P\u001a\u00020Q2\u0006\u0010R\u001a\u00020\u000b2\u0006\u0010S\u001a\u00020\u000bJ\u001e\u0010T\u001a\u00020U2\u0006\u00108\u001a\u00020\u000bø\u0001\u0000ø\u0001\u0002ø\u0001\u0001¢\u0006\u0004\bV\u0010WJ\u000e\u0010X\u001a\u00020\r2\u0006\u0010>\u001a\u00020\u000bJ=\u0010Y\u001a\u00020Z2\u0006\u0010[\u001a\u00020\\2\b\b\u0002\u0010]\u001a\u00020^2\n\b\u0002\u0010_\u001a\u0004\u0018\u00010`2\n\b\u0002\u0010a\u001a\u0004\u0018\u00010bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bc\u0010dJ\u0010\u0010e\u001a\u00020Z2\u0006\u00108\u001a\u00020\u000bH\u0002J\u0010\u0010f\u001a\u00020Z2\u0006\u00108\u001a\u00020\u000bH\u0002J\u0010\u0010g\u001a\u00020Z2\u0006\u0010>\u001a\u00020\u000bH\u0002R\u0014\u0010\u0002\u001a\u00020\u00038BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001cR\u0011\u0010\u001d\u001a\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b\u001e\u0010\u001fR\u0011\u0010 \u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001fR\u0011\u0010\u0015\u001a\u00020\u0016¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010#R\u0011\u0010$\u001a\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b%\u0010\u001fR\u0011\u0010&\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b'\u0010(R\u0011\u0010)\u001a\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b*\u0010\u001fR\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b+\u0010(R\u0011\u0010,\u001a\u00020\u000f8F¢\u0006\u0006\u001a\u0004\b-\u0010\u001fR\u001a\u0010.\u001a\b\u0012\u0004\u0012\u00020/0\u0007X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b0\u00101R\u0019\u00102\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001030\u0007¢\u0006\b\n\u0000\u001a\u0004\b4\u00101R\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b5\u0010\u001f\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006h"}, d2 = {"Landroidx/compose/ui/text/MultiParagraph;", "", "annotatedString", "Landroidx/compose/ui/text/AnnotatedString;", "style", "Landroidx/compose/ui/text/TextStyle;", "placeholders", "", "Landroidx/compose/ui/text/AnnotatedString$Range;", "Landroidx/compose/ui/text/Placeholder;", "maxLines", "", "ellipsis", "", "width", "", "density", "Landroidx/compose/ui/unit/Density;", "resourceLoader", "Landroidx/compose/ui/text/font/Font$ResourceLoader;", "(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;IZFLandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/Font$ResourceLoader;)V", "intrinsics", "Landroidx/compose/ui/text/MultiParagraphIntrinsics;", "(Landroidx/compose/ui/text/MultiParagraphIntrinsics;IZF)V", "getAnnotatedString", "()Landroidx/compose/ui/text/AnnotatedString;", "didExceedMaxLines", "getDidExceedMaxLines", "()Z", "firstBaseline", "getFirstBaseline", "()F", "height", "getHeight", "getIntrinsics", "()Landroidx/compose/ui/text/MultiParagraphIntrinsics;", "lastBaseline", "getLastBaseline", "lineCount", "getLineCount", "()I", "maxIntrinsicWidth", "getMaxIntrinsicWidth", "getMaxLines", "minIntrinsicWidth", "getMinIntrinsicWidth", "paragraphInfoList", "Landroidx/compose/ui/text/ParagraphInfo;", "getParagraphInfoList$ui_text_release", "()Ljava/util/List;", "placeholderRects", "Landroidx/compose/ui/geometry/Rect;", "getPlaceholderRects", "getWidth", "getBidiRunDirection", "Landroidx/compose/ui/text/style/ResolvedTextDirection;", TypedValues.CycleType.S_WAVE_OFFSET, "getBoundingBox", "getCursorRect", "getHorizontalPosition", "usePrimaryDirection", "getLineBottom", "lineIndex", "getLineEnd", "visibleEnd", "getLineForOffset", "getLineForVerticalPosition", "vertical", "getLineHeight", "getLineLeft", "getLineRight", "getLineStart", "getLineTop", "getLineWidth", "getOffsetForPosition", "position", "Landroidx/compose/ui/geometry/Offset;", "getOffsetForPosition-k-4lQ0M", "(J)I", "getParagraphDirection", "getPathForRange", "Landroidx/compose/ui/graphics/Path;", "start", "end", "getWordBoundary", "Landroidx/compose/ui/text/TextRange;", "getWordBoundary--jx7JFs", "(I)J", "isLineEllipsized", "paint", "", "canvas", "Landroidx/compose/ui/graphics/Canvas;", TypedValues.Custom.S_COLOR, "Landroidx/compose/ui/graphics/Color;", "shadow", "Landroidx/compose/ui/graphics/Shadow;", "decoration", "Landroidx/compose/ui/text/style/TextDecoration;", "paint-RPmYEkk", "(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextDecoration;)V", "requireIndexInRange", "requireIndexInRangeInclusiveEnd", "requireLineIndexInRange", "ui-text_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class MultiParagraph {
    private final boolean didExceedMaxLines;
    private final float height;
    private final MultiParagraphIntrinsics intrinsics;
    private final int lineCount;
    private final int maxLines;
    private final List<ParagraphInfo> paragraphInfoList;
    private final List<Rect> placeholderRects;
    private final float width;

    public MultiParagraph(MultiParagraphIntrinsics intrinsics, int i, boolean z, float f) {
        boolean z2;
        int i2;
        float height;
        Intrinsics.checkNotNullParameter(intrinsics, "intrinsics");
        this.intrinsics = intrinsics;
        this.maxLines = i;
        ArrayList arrayList = new ArrayList();
        List<ParagraphIntrinsicInfo> infoList$ui_text_release = intrinsics.getInfoList$ui_text_release();
        int size = infoList$ui_text_release.size() - 1;
        float f2 = 0.0f;
        if (size >= 0) {
            float f3 = 0.0f;
            int i3 = 0;
            int i4 = 0;
            while (true) {
                int i5 = i3 + 1;
                ParagraphIntrinsicInfo paragraphIntrinsicInfo = infoList$ui_text_release.get(i3);
                Paragraph Paragraph = ParagraphKt.Paragraph(paragraphIntrinsicInfo.getIntrinsics(), this.maxLines - i4, z, f);
                height = f3 + Paragraph.getHeight();
                int lineCount = i4 + Paragraph.getLineCount();
                arrayList.add(new ParagraphInfo(Paragraph, paragraphIntrinsicInfo.getStartIndex(), paragraphIntrinsicInfo.getEndIndex(), i4, lineCount, f3, height));
                if (Paragraph.getDidExceedMaxLines()) {
                    i4 = lineCount;
                    break;
                }
                i4 = lineCount;
                if (i4 == this.maxLines && i3 != CollectionsKt.getLastIndex(this.intrinsics.getInfoList$ui_text_release())) {
                    break;
                } else if (i5 > size) {
                    i2 = i4;
                    f2 = height;
                    z2 = false;
                    break;
                } else {
                    i3 = i5;
                    f3 = height;
                }
            }
            z2 = true;
            i2 = i4;
            f2 = height;
        } else {
            z2 = false;
            i2 = 0;
        }
        this.height = f2;
        this.lineCount = i2;
        this.didExceedMaxLines = z2;
        this.paragraphInfoList = arrayList;
        this.width = f;
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size2 = arrayList.size() - 1;
        if (size2 >= 0) {
            int i6 = 0;
            while (true) {
                int i7 = i6 + 1;
                ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(i6);
                List<Rect> placeholderRects = paragraphInfo.getParagraph().getPlaceholderRects();
                ArrayList arrayList3 = new ArrayList(placeholderRects.size());
                int size3 = placeholderRects.size() - 1;
                if (size3 >= 0) {
                    int i8 = 0;
                    while (true) {
                        int i9 = i8 + 1;
                        ArrayList arrayList4 = arrayList3;
                        Rect rect = placeholderRects.get(i8);
                        arrayList4.add(rect == null ? null : paragraphInfo.toGlobal(rect));
                        if (i9 > size3) {
                            break;
                        }
                        i8 = i9;
                    }
                }
                CollectionsKt.addAll(arrayList2, arrayList3);
                if (i7 > size2) {
                    break;
                }
                i6 = i7;
            }
        }
        ArrayList arrayList5 = arrayList2;
        if (arrayList5.size() < getIntrinsics().getPlaceholders().size()) {
            ArrayList arrayList6 = arrayList5;
            int size4 = getIntrinsics().getPlaceholders().size() - arrayList5.size();
            ArrayList arrayList7 = new ArrayList(size4);
            for (int i10 = 0; i10 < size4; i10++) {
                arrayList7.add(null);
            }
            arrayList5 = CollectionsKt.plus((Collection) arrayList6, (Iterable) arrayList7);
        }
        this.placeholderRects = arrayList5;
    }

    public /* synthetic */ MultiParagraph(MultiParagraphIntrinsics multiParagraphIntrinsics, int i, boolean z, float f, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(multiParagraphIntrinsics, (i2 & 2) != 0 ? Integer.MAX_VALUE : i, (i2 & 4) != 0 ? false : z, f);
    }

    public final MultiParagraphIntrinsics getIntrinsics() {
        return this.intrinsics;
    }

    public final int getMaxLines() {
        return this.maxLines;
    }

    public /* synthetic */ MultiParagraph(AnnotatedString annotatedString, TextStyle textStyle, List list, int i, boolean z, float f, Density density, Font.ResourceLoader resourceLoader, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(annotatedString, textStyle, (i2 & 4) != 0 ? CollectionsKt.emptyList() : list, (i2 & 8) != 0 ? Integer.MAX_VALUE : i, (i2 & 16) != 0 ? false : z, f, density, resourceLoader);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MultiParagraph(AnnotatedString annotatedString, TextStyle style, List<AnnotatedString.Range<Placeholder>> placeholders, int i, boolean z, float f, Density density, Font.ResourceLoader resourceLoader) {
        this(new MultiParagraphIntrinsics(annotatedString, style, placeholders, density, resourceLoader), i, z, f);
        Intrinsics.checkNotNullParameter(annotatedString, "annotatedString");
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(placeholders, "placeholders");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(resourceLoader, "resourceLoader");
    }

    private final AnnotatedString getAnnotatedString() {
        return this.intrinsics.getAnnotatedString();
    }

    public final float getMinIntrinsicWidth() {
        return this.intrinsics.getMaxIntrinsicWidth();
    }

    public final float getMaxIntrinsicWidth() {
        return this.intrinsics.getMaxIntrinsicWidth();
    }

    public final boolean getDidExceedMaxLines() {
        return this.didExceedMaxLines;
    }

    public final float getWidth() {
        return this.width;
    }

    public final float getHeight() {
        return this.height;
    }

    public final float getFirstBaseline() {
        if (this.paragraphInfoList.isEmpty()) {
            return 0.0f;
        }
        return this.paragraphInfoList.get(0).getParagraph().getFirstBaseline();
    }

    public final float getLastBaseline() {
        if (this.paragraphInfoList.isEmpty()) {
            return 0.0f;
        }
        ParagraphInfo paragraphInfo = (ParagraphInfo) CollectionsKt.last((List<? extends Object>) this.paragraphInfoList);
        return paragraphInfo.toGlobalYPosition(paragraphInfo.getParagraph().getLastBaseline());
    }

    public final int getLineCount() {
        return this.lineCount;
    }

    public final List<Rect> getPlaceholderRects() {
        return this.placeholderRects;
    }

    public final List<ParagraphInfo> getParagraphInfoList$ui_text_release() {
        return this.paragraphInfoList;
    }

    /* renamed from: paint-RPmYEkk$default  reason: not valid java name */
    public static /* synthetic */ void m1787paintRPmYEkk$default(MultiParagraph multiParagraph, Canvas canvas, long j, Shadow shadow, TextDecoration textDecoration, int i, Object obj) {
        if ((i & 2) != 0) {
            j = Color.Companion.m382getUnspecified0d7_KjU();
        }
        multiParagraph.m1790paintRPmYEkk(canvas, j, (i & 4) != 0 ? null : shadow, (i & 8) != 0 ? null : textDecoration);
    }

    /* renamed from: paint-RPmYEkk  reason: not valid java name */
    public final void m1790paintRPmYEkk(Canvas canvas, long j, Shadow shadow, TextDecoration textDecoration) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        canvas.save();
        List<ParagraphInfo> list = this.paragraphInfoList;
        int size = list.size() - 1;
        if (size >= 0) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                ParagraphInfo paragraphInfo = list.get(i);
                paragraphInfo.getParagraph().mo1793paintRPmYEkk(canvas, j, shadow, textDecoration);
                canvas.translate(0.0f, paragraphInfo.getParagraph().getHeight());
                if (i2 > size) {
                    break;
                }
                i = i2;
            }
        }
        canvas.restore();
    }

    public final Path getPathForRange(int i, int i2) {
        int i3 = 0;
        if ((i >= 0 && i <= i2) && i2 <= getAnnotatedString().getText().length()) {
            if (i == i2) {
                return AndroidPath_androidKt.Path();
            }
            int findParagraphByIndex = MultiParagraphKt.findParagraphByIndex(this.paragraphInfoList, i);
            Path Path = AndroidPath_androidKt.Path();
            List fastDrop = TempListUtilsKt.fastDrop(this.paragraphInfoList, findParagraphByIndex);
            ArrayList arrayList = new ArrayList(fastDrop.size());
            int size = fastDrop.size() - 1;
            if (size >= 0) {
                int i4 = 0;
                while (true) {
                    int i5 = i4 + 1;
                    Object obj = fastDrop.get(i4);
                    if (!(((ParagraphInfo) obj).getStartIndex() < i2)) {
                        break;
                    }
                    arrayList.add(obj);
                    if (i5 > size) {
                        break;
                    }
                    i4 = i5;
                }
            }
            ArrayList arrayList2 = arrayList;
            ArrayList arrayList3 = new ArrayList(arrayList2.size());
            int size2 = arrayList2.size() - 1;
            if (size2 >= 0) {
                int i6 = 0;
                while (true) {
                    int i7 = i6 + 1;
                    Object obj2 = arrayList2.get(i6);
                    ParagraphInfo paragraphInfo = (ParagraphInfo) obj2;
                    if (!(paragraphInfo.getStartIndex() == paragraphInfo.getEndIndex())) {
                        arrayList3.add(obj2);
                    }
                    if (i7 > size2) {
                        break;
                    }
                    i6 = i7;
                }
            }
            ArrayList arrayList4 = arrayList3;
            int size3 = arrayList4.size() - 1;
            if (size3 >= 0) {
                while (true) {
                    int i8 = i3 + 1;
                    ParagraphInfo paragraphInfo2 = (ParagraphInfo) arrayList4.get(i3);
                    Path.DefaultImpls.m549addPathUv8p0NA$default(Path, paragraphInfo2.toGlobal(paragraphInfo2.getParagraph().getPathForRange(paragraphInfo2.toLocalIndex(i), paragraphInfo2.toLocalIndex(i2))), 0L, 2, null);
                    if (i8 > size3) {
                        break;
                    }
                    i3 = i8;
                }
            }
            return Path;
        }
        throw new IllegalArgumentException(("Start(" + i + ") or End(" + i2 + ") is out of range [0.." + getAnnotatedString().getText().length() + "), or start > end!").toString());
    }

    public final int getLineForVerticalPosition(float f) {
        int lastIndex;
        if (f <= 0.0f) {
            lastIndex = 0;
        } else {
            lastIndex = f >= this.height ? CollectionsKt.getLastIndex(this.paragraphInfoList) : MultiParagraphKt.findParagraphByY(this.paragraphInfoList, f);
        }
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(lastIndex);
        if (paragraphInfo.getLength() == 0) {
            return Math.max(0, paragraphInfo.getStartIndex() - 1);
        }
        return paragraphInfo.toGlobalLineIndex(paragraphInfo.getParagraph().getLineForVerticalPosition(paragraphInfo.toLocalYPosition(f)));
    }

    /* renamed from: getOffsetForPosition-k-4lQ0M  reason: not valid java name */
    public final int m1788getOffsetForPositionk4lQ0M(long j) {
        int lastIndex;
        if (Offset.m118getYimpl(j) <= 0.0f) {
            lastIndex = 0;
        } else {
            lastIndex = Offset.m118getYimpl(j) >= this.height ? CollectionsKt.getLastIndex(this.paragraphInfoList) : MultiParagraphKt.findParagraphByY(this.paragraphInfoList, Offset.m118getYimpl(j));
        }
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(lastIndex);
        if (paragraphInfo.getLength() == 0) {
            return Math.max(0, paragraphInfo.getStartIndex() - 1);
        }
        return paragraphInfo.toGlobalIndex(paragraphInfo.getParagraph().mo1791getOffsetForPositionk4lQ0M(paragraphInfo.m1796toLocalMKHz9U(j)));
    }

    public final Rect getBoundingBox(int i) {
        requireIndexInRange(i);
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(MultiParagraphKt.findParagraphByIndex(this.paragraphInfoList, i));
        return paragraphInfo.toGlobal(paragraphInfo.getParagraph().getBoundingBox(paragraphInfo.toLocalIndex(i)));
    }

    public final float getHorizontalPosition(int i, boolean z) {
        int findParagraphByIndex;
        requireIndexInRangeInclusiveEnd(i);
        if (i == getAnnotatedString().length()) {
            findParagraphByIndex = CollectionsKt.getLastIndex(this.paragraphInfoList);
        } else {
            findParagraphByIndex = MultiParagraphKt.findParagraphByIndex(this.paragraphInfoList, i);
        }
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(findParagraphByIndex);
        return paragraphInfo.getParagraph().getHorizontalPosition(paragraphInfo.toLocalIndex(i), z);
    }

    public final ResolvedTextDirection getParagraphDirection(int i) {
        int findParagraphByIndex;
        requireIndexInRangeInclusiveEnd(i);
        if (i == getAnnotatedString().length()) {
            findParagraphByIndex = CollectionsKt.getLastIndex(this.paragraphInfoList);
        } else {
            findParagraphByIndex = MultiParagraphKt.findParagraphByIndex(this.paragraphInfoList, i);
        }
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(findParagraphByIndex);
        return paragraphInfo.getParagraph().getParagraphDirection(paragraphInfo.toLocalIndex(i));
    }

    public final ResolvedTextDirection getBidiRunDirection(int i) {
        int findParagraphByIndex;
        requireIndexInRangeInclusiveEnd(i);
        if (i == getAnnotatedString().length()) {
            findParagraphByIndex = CollectionsKt.getLastIndex(this.paragraphInfoList);
        } else {
            findParagraphByIndex = MultiParagraphKt.findParagraphByIndex(this.paragraphInfoList, i);
        }
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(findParagraphByIndex);
        return paragraphInfo.getParagraph().getBidiRunDirection(paragraphInfo.toLocalIndex(i));
    }

    /* renamed from: getWordBoundary--jx7JFs  reason: not valid java name */
    public final long m1789getWordBoundaryjx7JFs(int i) {
        requireIndexInRange(i);
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(MultiParagraphKt.findParagraphByIndex(this.paragraphInfoList, i));
        return paragraphInfo.m1795toGlobalGEjPoXI(paragraphInfo.getParagraph().mo1792getWordBoundaryjx7JFs(paragraphInfo.toLocalIndex(i)));
    }

    public final Rect getCursorRect(int i) {
        int findParagraphByIndex;
        requireIndexInRangeInclusiveEnd(i);
        if (i == getAnnotatedString().length()) {
            findParagraphByIndex = CollectionsKt.getLastIndex(this.paragraphInfoList);
        } else {
            findParagraphByIndex = MultiParagraphKt.findParagraphByIndex(this.paragraphInfoList, i);
        }
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(findParagraphByIndex);
        return paragraphInfo.toGlobal(paragraphInfo.getParagraph().getCursorRect(paragraphInfo.toLocalIndex(i)));
    }

    public final int getLineForOffset(int i) {
        int findParagraphByIndex;
        requireIndexInRangeInclusiveEnd(i);
        if (i == getAnnotatedString().length()) {
            findParagraphByIndex = CollectionsKt.getLastIndex(this.paragraphInfoList);
        } else {
            findParagraphByIndex = MultiParagraphKt.findParagraphByIndex(this.paragraphInfoList, i);
        }
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(findParagraphByIndex);
        return paragraphInfo.toGlobalLineIndex(paragraphInfo.getParagraph().getLineForOffset(paragraphInfo.toLocalIndex(i)));
    }

    public final float getLineLeft(int i) {
        requireLineIndexInRange(i);
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(MultiParagraphKt.findParagraphByLineIndex(this.paragraphInfoList, i));
        return paragraphInfo.getParagraph().getLineLeft(paragraphInfo.toLocalLineIndex(i));
    }

    public final float getLineRight(int i) {
        requireLineIndexInRange(i);
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(MultiParagraphKt.findParagraphByLineIndex(this.paragraphInfoList, i));
        return paragraphInfo.getParagraph().getLineRight(paragraphInfo.toLocalLineIndex(i));
    }

    public final float getLineTop(int i) {
        requireLineIndexInRange(i);
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(MultiParagraphKt.findParagraphByLineIndex(this.paragraphInfoList, i));
        return paragraphInfo.toGlobalYPosition(paragraphInfo.getParagraph().getLineTop(paragraphInfo.toLocalLineIndex(i)));
    }

    public final float getLineBottom(int i) {
        requireLineIndexInRange(i);
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(MultiParagraphKt.findParagraphByLineIndex(this.paragraphInfoList, i));
        return paragraphInfo.toGlobalYPosition(paragraphInfo.getParagraph().getLineBottom(paragraphInfo.toLocalLineIndex(i)));
    }

    public final float getLineHeight(int i) {
        requireLineIndexInRange(i);
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(MultiParagraphKt.findParagraphByLineIndex(this.paragraphInfoList, i));
        return paragraphInfo.getParagraph().getLineHeight(paragraphInfo.toLocalLineIndex(i));
    }

    public final float getLineWidth(int i) {
        requireLineIndexInRange(i);
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(MultiParagraphKt.findParagraphByLineIndex(this.paragraphInfoList, i));
        return paragraphInfo.getParagraph().getLineWidth(paragraphInfo.toLocalLineIndex(i));
    }

    public final int getLineStart(int i) {
        requireLineIndexInRange(i);
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(MultiParagraphKt.findParagraphByLineIndex(this.paragraphInfoList, i));
        return paragraphInfo.toGlobalIndex(paragraphInfo.getParagraph().getLineStart(paragraphInfo.toLocalLineIndex(i)));
    }

    public static /* synthetic */ int getLineEnd$default(MultiParagraph multiParagraph, int i, boolean z, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        return multiParagraph.getLineEnd(i, z);
    }

    public final int getLineEnd(int i, boolean z) {
        requireLineIndexInRange(i);
        ParagraphInfo paragraphInfo = this.paragraphInfoList.get(MultiParagraphKt.findParagraphByLineIndex(this.paragraphInfoList, i));
        return paragraphInfo.toGlobalIndex(paragraphInfo.getParagraph().getLineEnd(paragraphInfo.toLocalLineIndex(i), z));
    }

    public final boolean isLineEllipsized(int i) {
        requireLineIndexInRange(i);
        return this.paragraphInfoList.get(MultiParagraphKt.findParagraphByLineIndex(this.paragraphInfoList, i)).getParagraph().isLineEllipsized(i);
    }

    private final void requireIndexInRange(int i) {
        boolean z = false;
        if (i >= 0 && i <= getAnnotatedString().getText().length() - 1) {
            z = true;
        }
        if (!z) {
            throw new IllegalArgumentException(("offset(" + i + ") is out of bounds [0, " + getAnnotatedString().length() + ')').toString());
        }
    }

    private final void requireIndexInRangeInclusiveEnd(int i) {
        boolean z = false;
        if (i >= 0 && i <= getAnnotatedString().getText().length()) {
            z = true;
        }
        if (!z) {
            throw new IllegalArgumentException(("offset(" + i + ") is out of bounds [0, " + getAnnotatedString().length() + ']').toString());
        }
    }

    private final void requireLineIndexInRange(int i) {
        boolean z = false;
        if (i >= 0 && i < this.lineCount) {
            z = true;
        }
        if (!z) {
            throw new IllegalArgumentException(("lineIndex(" + i + ") is out of bounds [0, " + i + ')').toString());
        }
    }
}
