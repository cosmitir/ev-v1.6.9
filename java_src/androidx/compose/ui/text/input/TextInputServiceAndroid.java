package androidx.compose.ui.text.input;

import android.graphics.Rect;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.compose.ui.text.TextRange;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
/* compiled from: TextInputServiceAndroid.android.kt */
@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u00002\u00020\u0001B\u000f\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0010\u0010(\u001a\u0004\u0018\u00010)2\u0006\u0010*\u001a\u00020+J\b\u0010,\u001a\u00020\u001cH\u0016J\u0006\u0010-\u001a\u00020\u000fJ\u0011\u0010.\u001a\u00020\u001cH\u0086@ø\u0001\u0000¢\u0006\u0002\u0010/J\u0010\u00100\u001a\u00020\u001c2\u0006\u00101\u001a\u000202H\u0016J\b\u00103\u001a\u00020\u001cH\u0002J\b\u00104\u001a\u00020\u001cH\u0016JI\u00105\u001a\u00020\u001c2\u0006\u00106\u001a\u00020\"2\u0006\u0010\u0014\u001a\u00020\u00152\u0018\u0010\u0018\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001b0\u001a\u0012\u0004\u0012\u00020\u001c0\u00192\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001c0\u0019H\u0016ø\u0001\u0000J\b\u00107\u001a\u00020\u001cH\u0016J\u001a\u00108\u001a\u00020\u001c2\b\u00109\u001a\u0004\u0018\u00010\"2\u0006\u0010:\u001a\u00020\"H\u0016R\u001b\u0010\b\u001a\u00020\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u0018\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001b0\u001a\u0012\u0004\u0012\u00020\u001c0\u0019X\u0082\u000e¢\u0006\u0002\n\u0000R\u001d\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u001c0\u0019X\u0082\u000eø\u0001\u0000¢\u0006\u0002\n\u0000R\u0014\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u000f0 X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010#\u001a\u00020\"2\u0006\u0010!\u001a\u00020\"@BX\u0080\u000e¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b&\u0010'\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006;"}, d2 = {"Landroidx/compose/ui/text/input/TextInputServiceAndroid;", "Landroidx/compose/ui/text/input/PlatformTextInputService;", "view", "Landroid/view/View;", "(Landroid/view/View;)V", "inputMethodManager", "Landroidx/compose/ui/text/input/InputMethodManager;", "(Landroid/view/View;Landroidx/compose/ui/text/input/InputMethodManager;)V", "baseInputConnection", "Landroid/view/inputmethod/BaseInputConnection;", "getBaseInputConnection", "()Landroid/view/inputmethod/BaseInputConnection;", "baseInputConnection$delegate", "Lkotlin/Lazy;", "editorHasFocus", "", "focusedRect", "Landroid/graphics/Rect;", "ic", "Landroidx/compose/ui/text/input/RecordingInputConnection;", "imeOptions", "Landroidx/compose/ui/text/input/ImeOptions;", "layoutListener", "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;", "onEditCommand", "Lkotlin/Function1;", "", "Landroidx/compose/ui/text/input/EditCommand;", "", "onImeActionPerformed", "Landroidx/compose/ui/text/input/ImeAction;", "showKeyboardChannel", "Lkotlinx/coroutines/channels/Channel;", "<set-?>", "Landroidx/compose/ui/text/input/TextFieldValue;", "state", "getState$ui_release", "()Landroidx/compose/ui/text/input/TextFieldValue;", "getView", "()Landroid/view/View;", "createInputConnection", "Landroid/view/inputmethod/InputConnection;", "outAttrs", "Landroid/view/inputmethod/EditorInfo;", "hideSoftwareKeyboard", "isEditorFocused", "keyboardVisibilityEventLoop", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "notifyFocusedRect", "rect", "Landroidx/compose/ui/geometry/Rect;", "restartInput", "showSoftwareKeyboard", "startInput", "value", "stopInput", "updateState", "oldValue", "newValue", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class TextInputServiceAndroid implements PlatformTextInputService {
    private final Lazy baseInputConnection$delegate;
    private boolean editorHasFocus;
    private Rect focusedRect;
    private RecordingInputConnection ic;
    private ImeOptions imeOptions;
    private final InputMethodManager inputMethodManager;
    private final ViewTreeObserver.OnGlobalLayoutListener layoutListener;
    private Function1<? super List<? extends EditCommand>, Unit> onEditCommand;
    private Function1<? super ImeAction, Unit> onImeActionPerformed;
    private final Channel<Boolean> showKeyboardChannel;
    private TextFieldValue state;
    private final View view;

    public TextInputServiceAndroid(View view, InputMethodManager inputMethodManager) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(inputMethodManager, "inputMethodManager");
        this.view = view;
        this.inputMethodManager = inputMethodManager;
        this.onEditCommand = new Function1<List<? extends EditCommand>, Unit>() { // from class: androidx.compose.ui.text.input.TextInputServiceAndroid$onEditCommand$1
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(List<? extends EditCommand> it) {
                Intrinsics.checkNotNullParameter(it, "it");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends EditCommand> list) {
                invoke2(list);
                return Unit.INSTANCE;
            }
        };
        this.onImeActionPerformed = new Function1<ImeAction, Unit>() { // from class: androidx.compose.ui.text.input.TextInputServiceAndroid$onImeActionPerformed$1
            /* renamed from: invoke-KlQnJC8  reason: not valid java name */
            public final void m1976invokeKlQnJC8(int i) {
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ImeAction imeAction) {
                m1976invokeKlQnJC8(imeAction.m1928unboximpl());
                return Unit.INSTANCE;
            }
        };
        this.state = new TextFieldValue("", TextRange.Companion.m1869getZerod9O1mEE(), (TextRange) null, 4, (DefaultConstructorMarker) null);
        this.imeOptions = ImeOptions.Companion.getDefault();
        this.baseInputConnection$delegate = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<BaseInputConnection>() { // from class: androidx.compose.ui.text.input.TextInputServiceAndroid$baseInputConnection$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final BaseInputConnection invoke() {
                return new BaseInputConnection(TextInputServiceAndroid.this.getView(), false);
            }
        });
        this.showKeyboardChannel = ChannelKt.Channel$default(-1, null, null, 6, null);
        this.layoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.compose.ui.text.input.TextInputServiceAndroid$layoutListener$1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                Rect rect;
                rect = TextInputServiceAndroid.this.focusedRect;
                if (rect == null) {
                    return;
                }
                TextInputServiceAndroid.this.getView().requestRectangleOnScreen(new Rect(rect));
            }
        };
        view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.compose.ui.text.input.TextInputServiceAndroid.1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view2) {
                ViewTreeObserver viewTreeObserver;
                View rootView = view2 == null ? null : view2.getRootView();
                if (rootView == null || (viewTreeObserver = rootView.getViewTreeObserver()) == null) {
                    return;
                }
                viewTreeObserver.removeOnGlobalLayoutListener(TextInputServiceAndroid.this.layoutListener);
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view2) {
                ViewTreeObserver viewTreeObserver;
                View rootView = view2 == null ? null : view2.getRootView();
                if (rootView == null || (viewTreeObserver = rootView.getViewTreeObserver()) == null) {
                    return;
                }
                viewTreeObserver.addOnGlobalLayoutListener(TextInputServiceAndroid.this.layoutListener);
            }
        });
    }

    public final View getView() {
        return this.view;
    }

    public final TextFieldValue getState$ui_release() {
        return this.state;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final BaseInputConnection getBaseInputConnection() {
        return (BaseInputConnection) this.baseInputConnection$delegate.getValue();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TextInputServiceAndroid(android.view.View r4) {
        /*
            r3 = this;
            java.lang.String r0 = "view"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            androidx.compose.ui.text.input.InputMethodManagerImpl r0 = new androidx.compose.ui.text.input.InputMethodManagerImpl
            android.content.Context r1 = r4.getContext()
            java.lang.String r2 = "view.context"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
            r0.<init>(r1)
            androidx.compose.ui.text.input.InputMethodManager r0 = (androidx.compose.ui.text.input.InputMethodManager) r0
            r3.<init>(r4, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.input.TextInputServiceAndroid.<init>(android.view.View):void");
    }

    public final InputConnection createInputConnection(EditorInfo outAttrs) {
        Intrinsics.checkNotNullParameter(outAttrs, "outAttrs");
        if (this.editorHasFocus) {
            TextInputServiceAndroid_androidKt.update(outAttrs, this.imeOptions, this.state);
            RecordingInputConnection recordingInputConnection = new RecordingInputConnection(this.state, new InputEventCallback2() { // from class: androidx.compose.ui.text.input.TextInputServiceAndroid$createInputConnection$1
                @Override // androidx.compose.ui.text.input.InputEventCallback2
                public void onEditCommands(List<? extends EditCommand> editCommands) {
                    Function1 function1;
                    Intrinsics.checkNotNullParameter(editCommands, "editCommands");
                    function1 = TextInputServiceAndroid.this.onEditCommand;
                    function1.invoke(editCommands);
                }

                @Override // androidx.compose.ui.text.input.InputEventCallback2
                /* renamed from: onImeAction-KlQnJC8 */
                public void mo1943onImeActionKlQnJC8(int i) {
                    Function1 function1;
                    function1 = TextInputServiceAndroid.this.onImeActionPerformed;
                    function1.invoke(ImeAction.m1922boximpl(i));
                }

                @Override // androidx.compose.ui.text.input.InputEventCallback2
                public void onKeyEvent(KeyEvent event) {
                    BaseInputConnection baseInputConnection;
                    Intrinsics.checkNotNullParameter(event, "event");
                    baseInputConnection = TextInputServiceAndroid.this.getBaseInputConnection();
                    baseInputConnection.sendKeyEvent(event);
                }
            }, this.imeOptions.getAutoCorrect());
            this.ic = recordingInputConnection;
            return recordingInputConnection;
        }
        return null;
    }

    public final boolean isEditorFocused() {
        return this.editorHasFocus;
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public void startInput(TextFieldValue value, ImeOptions imeOptions, Function1<? super List<? extends EditCommand>, Unit> onEditCommand, Function1<? super ImeAction, Unit> onImeActionPerformed) {
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(imeOptions, "imeOptions");
        Intrinsics.checkNotNullParameter(onEditCommand, "onEditCommand");
        Intrinsics.checkNotNullParameter(onImeActionPerformed, "onImeActionPerformed");
        this.editorHasFocus = true;
        this.state = value;
        this.imeOptions = imeOptions;
        this.onEditCommand = onEditCommand;
        this.onImeActionPerformed = onImeActionPerformed;
        this.view.post(new Runnable() { // from class: androidx.compose.ui.text.input.TextInputServiceAndroid$startInput$1
            @Override // java.lang.Runnable
            public final void run() {
                TextInputServiceAndroid.this.restartInput();
                TextInputServiceAndroid.this.showSoftwareKeyboard();
            }
        });
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public void stopInput() {
        this.editorHasFocus = false;
        this.onEditCommand = new Function1<List<? extends EditCommand>, Unit>() { // from class: androidx.compose.ui.text.input.TextInputServiceAndroid$stopInput$1
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(List<? extends EditCommand> it) {
                Intrinsics.checkNotNullParameter(it, "it");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends EditCommand> list) {
                invoke2(list);
                return Unit.INSTANCE;
            }
        };
        this.onImeActionPerformed = new Function1<ImeAction, Unit>() { // from class: androidx.compose.ui.text.input.TextInputServiceAndroid$stopInput$2
            /* renamed from: invoke-KlQnJC8  reason: not valid java name */
            public final void m1977invokeKlQnJC8(int i) {
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ImeAction imeAction) {
                m1977invokeKlQnJC8(imeAction.m1928unboximpl());
                return Unit.INSTANCE;
            }
        };
        this.focusedRect = null;
        restartInput();
        this.editorHasFocus = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void restartInput() {
        this.inputMethodManager.restartInput(this.view);
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public void showSoftwareKeyboard() {
        this.showKeyboardChannel.mo3956trySendJP2dKIU(true);
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public void hideSoftwareKeyboard() {
        this.showKeyboardChannel.mo3956trySendJP2dKIU(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0051 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0091  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004f -> B:18:0x0052). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object keyboardVisibilityEventLoop(kotlin.coroutines.Continuation<? super kotlin.Unit> r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof androidx.compose.ui.text.input.TextInputServiceAndroid$keyboardVisibilityEventLoop$1
            if (r0 == 0) goto L14
            r0 = r7
            androidx.compose.ui.text.input.TextInputServiceAndroid$keyboardVisibilityEventLoop$1 r0 = (androidx.compose.ui.text.input.TextInputServiceAndroid$keyboardVisibilityEventLoop$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r7 = r0.label
            int r7 = r7 - r2
            r0.label = r7
            goto L19
        L14:
            androidx.compose.ui.text.input.TextInputServiceAndroid$keyboardVisibilityEventLoop$1 r0 = new androidx.compose.ui.text.input.TextInputServiceAndroid$keyboardVisibilityEventLoop$1
            r0.<init>(r6, r7)
        L19:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3a
            if (r2 != r3) goto L32
            java.lang.Object r2 = r0.L$1
            kotlinx.coroutines.channels.ChannelIterator r2 = (kotlinx.coroutines.channels.ChannelIterator) r2
            java.lang.Object r4 = r0.L$0
            androidx.compose.ui.text.input.TextInputServiceAndroid r4 = (androidx.compose.ui.text.input.TextInputServiceAndroid) r4
            kotlin.ResultKt.throwOnFailure(r7)
            goto L52
        L32:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L3a:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.channels.Channel<java.lang.Boolean> r7 = r6.showKeyboardChannel
            kotlinx.coroutines.channels.ChannelIterator r7 = r7.iterator()
            r4 = r6
            r2 = r7
        L45:
            r0.L$0 = r4
            r0.L$1 = r2
            r0.label = r3
            java.lang.Object r7 = r2.hasNext(r0)
            if (r7 != r1) goto L52
            return r1
        L52:
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            if (r7 == 0) goto L91
            java.lang.Object r7 = r2.next()
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            kotlinx.coroutines.channels.Channel<java.lang.Boolean> r5 = r4.showKeyboardChannel
            java.lang.Object r5 = r5.mo3955tryReceivePtdJZtk()
            java.lang.Object r5 = kotlinx.coroutines.channels.ChannelResult.m3966getOrNullimpl(r5)
            java.lang.Boolean r5 = (java.lang.Boolean) r5
            if (r5 != 0) goto L73
            goto L77
        L73:
            boolean r7 = r5.booleanValue()
        L77:
            if (r7 == 0) goto L83
            androidx.compose.ui.text.input.InputMethodManager r7 = r4.inputMethodManager
            android.view.View r5 = r4.getView()
            r7.showSoftInput(r5)
            goto L45
        L83:
            androidx.compose.ui.text.input.InputMethodManager r7 = r4.inputMethodManager
            android.view.View r5 = r4.getView()
            android.os.IBinder r5 = r5.getWindowToken()
            r7.hideSoftInputFromWindow(r5)
            goto L45
        L91:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.text.input.TextInputServiceAndroid.keyboardVisibilityEventLoop(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public void updateState(TextFieldValue textFieldValue, TextFieldValue newValue) {
        Intrinsics.checkNotNullParameter(newValue, "newValue");
        this.state = newValue;
        RecordingInputConnection recordingInputConnection = this.ic;
        if (recordingInputConnection != null) {
            recordingInputConnection.setMTextFieldValue$ui_release(newValue);
        }
        if (Intrinsics.areEqual(textFieldValue, newValue)) {
            return;
        }
        boolean z = false;
        if (textFieldValue != null && (!Intrinsics.areEqual(textFieldValue.getText(), newValue.getText()) || (TextRange.m1857equalsimpl0(textFieldValue.m1975getSelectiond9O1mEE(), newValue.m1975getSelectiond9O1mEE()) && !Intrinsics.areEqual(textFieldValue.m1974getCompositionMzsxiRA(), newValue.m1974getCompositionMzsxiRA())))) {
            z = true;
        }
        if (z) {
            restartInput();
            return;
        }
        RecordingInputConnection recordingInputConnection2 = this.ic;
        if (recordingInputConnection2 == null) {
            return;
        }
        recordingInputConnection2.updateInputState(this.state, this.inputMethodManager, this.view);
    }

    @Override // androidx.compose.ui.text.input.PlatformTextInputService
    public void notifyFocusedRect(androidx.compose.ui.geometry.Rect rect) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        Rect rect2 = new Rect(MathKt.roundToInt(rect.getLeft()), MathKt.roundToInt(rect.getTop()), MathKt.roundToInt(rect.getRight()), MathKt.roundToInt(rect.getBottom()));
        this.focusedRect = rect2;
        if (this.ic == null) {
            getView().requestRectangleOnScreen(new Rect(rect2));
        }
    }
}
