package androidx.compose.ui.text.input;

import android.view.inputmethod.EditorInfo;
import androidx.compose.ui.text.TextRange;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.view.inputmethod.EditorInfoCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TextInputServiceAndroid.android.kt */
@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u001a\u001c\u0010\u0007\u001a\u00020\b*\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"DEBUG_CLASS", "", "hasFlag", "", "bits", "", "flag", "update", "", "Landroid/view/inputmethod/EditorInfo;", "imeOptions", "Landroidx/compose/ui/text/input/ImeOptions;", "textFieldValue", "Landroidx/compose/ui/text/input/TextFieldValue;", "ui_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class TextInputServiceAndroid_androidKt {
    private static final String DEBUG_CLASS = "TextInputServiceAndroid";

    private static final boolean hasFlag(int i, int i2) {
        return (i & i2) == i2;
    }

    public static final void update(EditorInfo editorInfo, ImeOptions imeOptions, TextFieldValue textFieldValue) {
        Intrinsics.checkNotNullParameter(editorInfo, "<this>");
        Intrinsics.checkNotNullParameter(imeOptions, "imeOptions");
        Intrinsics.checkNotNullParameter(textFieldValue, "textFieldValue");
        int m1940getImeActioneUduSuo = imeOptions.m1940getImeActioneUduSuo();
        int i = 6;
        if (ImeAction.m1925equalsimpl0(m1940getImeActioneUduSuo, ImeAction.Companion.m1929getDefaulteUduSuo())) {
            if (!imeOptions.getSingleLine()) {
                i = 0;
            }
        } else if (ImeAction.m1925equalsimpl0(m1940getImeActioneUduSuo, ImeAction.Companion.m1933getNoneeUduSuo())) {
            i = 1;
        } else if (ImeAction.m1925equalsimpl0(m1940getImeActioneUduSuo, ImeAction.Companion.m1931getGoeUduSuo())) {
            i = 2;
        } else if (ImeAction.m1925equalsimpl0(m1940getImeActioneUduSuo, ImeAction.Companion.m1932getNexteUduSuo())) {
            i = 5;
        } else if (ImeAction.m1925equalsimpl0(m1940getImeActioneUduSuo, ImeAction.Companion.m1934getPreviouseUduSuo())) {
            i = 7;
        } else if (ImeAction.m1925equalsimpl0(m1940getImeActioneUduSuo, ImeAction.Companion.m1935getSearcheUduSuo())) {
            i = 3;
        } else if (ImeAction.m1925equalsimpl0(m1940getImeActioneUduSuo, ImeAction.Companion.m1936getSendeUduSuo())) {
            i = 4;
        } else if (!ImeAction.m1925equalsimpl0(m1940getImeActioneUduSuo, ImeAction.Companion.m1930getDoneeUduSuo())) {
            throw new IllegalStateException("invalid ImeAction".toString());
        }
        editorInfo.imeOptions = i;
        int m1941getKeyboardTypePjHm6EE = imeOptions.m1941getKeyboardTypePjHm6EE();
        if (KeyboardType.m1958equalsimpl0(m1941getKeyboardTypePjHm6EE, KeyboardType.Companion.m1968getTextPjHm6EE())) {
            editorInfo.inputType = 1;
        } else if (KeyboardType.m1958equalsimpl0(m1941getKeyboardTypePjHm6EE, KeyboardType.Companion.m1962getAsciiPjHm6EE())) {
            editorInfo.inputType = 1;
            editorInfo.imeOptions |= Integer.MIN_VALUE;
        } else if (KeyboardType.m1958equalsimpl0(m1941getKeyboardTypePjHm6EE, KeyboardType.Companion.m1964getNumberPjHm6EE())) {
            editorInfo.inputType = 2;
        } else if (KeyboardType.m1958equalsimpl0(m1941getKeyboardTypePjHm6EE, KeyboardType.Companion.m1967getPhonePjHm6EE())) {
            editorInfo.inputType = 3;
        } else if (KeyboardType.m1958equalsimpl0(m1941getKeyboardTypePjHm6EE, KeyboardType.Companion.m1969getUriPjHm6EE())) {
            editorInfo.inputType = 17;
        } else if (KeyboardType.m1958equalsimpl0(m1941getKeyboardTypePjHm6EE, KeyboardType.Companion.m1963getEmailPjHm6EE())) {
            editorInfo.inputType = 33;
        } else if (KeyboardType.m1958equalsimpl0(m1941getKeyboardTypePjHm6EE, KeyboardType.Companion.m1966getPasswordPjHm6EE())) {
            editorInfo.inputType = 129;
        } else if (KeyboardType.m1958equalsimpl0(m1941getKeyboardTypePjHm6EE, KeyboardType.Companion.m1965getNumberPasswordPjHm6EE())) {
            editorInfo.inputType = 18;
        } else {
            throw new IllegalStateException("Invalid Keyboard Type".toString());
        }
        if (!imeOptions.getSingleLine() && hasFlag(editorInfo.inputType, 1)) {
            editorInfo.inputType |= 131072;
            if (ImeAction.m1925equalsimpl0(imeOptions.m1940getImeActioneUduSuo(), ImeAction.Companion.m1929getDefaulteUduSuo())) {
                editorInfo.imeOptions |= BasicMeasure.EXACTLY;
            }
        }
        if (hasFlag(editorInfo.inputType, 1)) {
            int m1939getCapitalizationIUNYP9k = imeOptions.m1939getCapitalizationIUNYP9k();
            if (KeyboardCapitalization.m1947equalsimpl0(m1939getCapitalizationIUNYP9k, KeyboardCapitalization.Companion.m1951getCharactersIUNYP9k())) {
                editorInfo.inputType |= 4096;
            } else if (KeyboardCapitalization.m1947equalsimpl0(m1939getCapitalizationIUNYP9k, KeyboardCapitalization.Companion.m1954getWordsIUNYP9k())) {
                editorInfo.inputType |= 8192;
            } else if (KeyboardCapitalization.m1947equalsimpl0(m1939getCapitalizationIUNYP9k, KeyboardCapitalization.Companion.m1953getSentencesIUNYP9k())) {
                editorInfo.inputType |= 16384;
            }
            if (imeOptions.getAutoCorrect()) {
                editorInfo.inputType |= 32768;
            }
        }
        editorInfo.initialSelStart = TextRange.m1864getStartimpl(textFieldValue.m1975getSelectiond9O1mEE());
        editorInfo.initialSelEnd = TextRange.m1859getEndimpl(textFieldValue.m1975getSelectiond9O1mEE());
        EditorInfoCompat.setInitialSurroundingText(editorInfo, textFieldValue.getText());
        editorInfo.imeOptions |= 33554432;
    }
}
