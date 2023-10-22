package androidx.compose.ui.text.font;

import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AndroidFont.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001B$\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007ø\u0001\u0000¢\u0006\u0002\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u001f\u0010\u0006\u001a\u00020\u0007X\u0096\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u000e\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0012\u001a\n \u0013*\u0004\u0018\u00010\u000f0\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0016"}, d2 = {"Landroidx/compose/ui/text/font/AndroidFileFont;", "Landroidx/compose/ui/text/font/AndroidFont;", "file", "Ljava/io/File;", "weight", "Landroidx/compose/ui/text/font/FontWeight;", "style", "Landroidx/compose/ui/text/font/FontStyle;", "(Ljava/io/File;Landroidx/compose/ui/text/font/FontWeight;ILkotlin/jvm/internal/DefaultConstructorMarker;)V", "getFile", "()Ljava/io/File;", "getStyle-_-LCdwA", "()I", "I", "typeface", "Landroid/graphics/Typeface;", "getTypeface", "()Landroid/graphics/Typeface;", "typefaceInternal", "kotlin.jvm.PlatformType", "getWeight", "()Landroidx/compose/ui/text/font/FontWeight;", "ui-text_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidFileFont implements AndroidFont {
    private final File file;
    private final int style;
    private final android.graphics.Typeface typefaceInternal;
    private final FontWeight weight;

    public /* synthetic */ AndroidFileFont(File file, FontWeight fontWeight, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(file, fontWeight, i);
    }

    private AndroidFileFont(File file, FontWeight fontWeight, int i) {
        this.file = file;
        this.weight = fontWeight;
        this.style = i;
        this.typefaceInternal = android.graphics.Typeface.createFromFile(file);
    }

    public final File getFile() {
        return this.file;
    }

    public /* synthetic */ AndroidFileFont(File file, FontWeight fontWeight, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(file, (i2 & 2) != 0 ? FontWeight.Companion.getNormal() : fontWeight, (i2 & 4) != 0 ? FontStyle.Companion.m1905getNormal_LCdwA() : i, null);
    }

    @Override // androidx.compose.ui.text.font.Font
    public FontWeight getWeight() {
        return this.weight;
    }

    @Override // androidx.compose.ui.text.font.Font
    /* renamed from: getStyle-_-LCdwA */
    public int mo1885getStyle_LCdwA() {
        return this.style;
    }

    @Override // androidx.compose.ui.text.font.AndroidFont
    public android.graphics.Typeface getTypeface() {
        android.graphics.Typeface typefaceInternal = this.typefaceInternal;
        Intrinsics.checkNotNullExpressionValue(typefaceInternal, "typefaceInternal");
        return typefaceInternal;
    }
}
