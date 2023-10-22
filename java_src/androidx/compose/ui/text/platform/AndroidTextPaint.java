package androidx.compose.ui.text.platform;

import android.text.TextPaint;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AndroidTextPaint.android.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001b\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\f2\b\u0010\u0007\u001a\u0004\u0018\u00010\bJ\u0010\u0010\u0012\u001a\u00020\f2\b\u0010\t\u001a\u0004\u0018\u00010\nR\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006\u0013"}, d2 = {"Landroidx/compose/ui/text/platform/AndroidTextPaint;", "Landroid/text/TextPaint;", "flags", "", "density", "", "(IF)V", "shadow", "Landroidx/compose/ui/graphics/Shadow;", "textDecoration", "Landroidx/compose/ui/text/style/TextDecoration;", "setColor", "", TypedValues.Custom.S_COLOR, "Landroidx/compose/ui/graphics/Color;", "setColor-8_81llA", "(J)V", "setShadow", "setTextDecoration", "ui-text_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidTextPaint extends TextPaint {
    private Shadow shadow;
    private TextDecoration textDecoration;

    public AndroidTextPaint(int i, float f) {
        super(i);
        this.density = f;
        this.textDecoration = TextDecoration.Companion.getNone();
        this.shadow = Shadow.Companion.getNone();
    }

    public final void setTextDecoration(TextDecoration textDecoration) {
        if (textDecoration == null) {
            textDecoration = TextDecoration.Companion.getNone();
        }
        if (Intrinsics.areEqual(this.textDecoration, textDecoration)) {
            return;
        }
        this.textDecoration = textDecoration;
        setUnderlineText(textDecoration.contains(TextDecoration.Companion.getUnderline()));
        setStrikeThruText(this.textDecoration.contains(TextDecoration.Companion.getLineThrough()));
    }

    public final void setShadow(Shadow shadow) {
        if (shadow == null) {
            shadow = Shadow.Companion.getNone();
        }
        if (Intrinsics.areEqual(this.shadow, shadow)) {
            return;
        }
        this.shadow = shadow;
        if (Intrinsics.areEqual(shadow, Shadow.Companion.getNone())) {
            clearShadowLayer();
        } else {
            setShadowLayer(this.shadow.getBlurRadius(), Offset.m117getXimpl(this.shadow.m597getOffsetF1C5BW0()), Offset.m118getYimpl(this.shadow.m597getOffsetF1C5BW0()), ColorKt.m401toArgb8_81llA(this.shadow.m596getColor0d7_KjU()));
        }
    }

    /* renamed from: setColor-8_81llA  reason: not valid java name */
    public final void m1985setColor8_81llA(long j) {
        int m401toArgb8_81llA;
        if (!(j != Color.Companion.m382getUnspecified0d7_KjU()) || getColor() == (m401toArgb8_81llA = ColorKt.m401toArgb8_81llA(j))) {
            return;
        }
        setColor(m401toArgb8_81llA);
    }
}
