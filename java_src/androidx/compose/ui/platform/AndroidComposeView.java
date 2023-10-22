package androidx.compose.ui.platform;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Trace;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStructure;
import android.view.ViewTreeObserver;
import android.view.animation.AnimationUtils;
import android.view.autofill.AutofillValue;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.autofill.AndroidAutofill;
import androidx.compose.ui.autofill.AndroidAutofill_androidKt;
import androidx.compose.ui.autofill.Autofill;
import androidx.compose.ui.autofill.AutofillCallback;
import androidx.compose.ui.autofill.AutofillTree;
import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.focus.FocusManagerImpl;
import androidx.compose.ui.focus.FocusNodeUtilsKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.graphics.AndroidMatrixConversions_androidKt;
import androidx.compose.ui.graphics.CanvasHolder;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedback;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.KeyEvent;
import androidx.compose.ui.input.key.KeyEventType;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.key.KeyInputModifier;
import androidx.compose.ui.input.pointer.MotionEventAdapter;
import androidx.compose.ui.input.pointer.PointerInputEvent;
import androidx.compose.ui.input.pointer.PointerInputEventProcessor;
import androidx.compose.ui.input.pointer.PointerInputEventProcessorKt;
import androidx.compose.ui.input.pointer.PositionCalculator;
import androidx.compose.ui.input.pointer.ProcessResult;
import androidx.compose.ui.layout.RootMeasurePolicy;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.MeasureAndLayoutDelegate;
import androidx.compose.ui.node.OwnedLayer;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.node.OwnerSnapshotObserver;
import androidx.compose.ui.node.RootForTest;
import androidx.compose.ui.semantics.SemanticsModifierCore;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsNodeKt;
import androidx.compose.ui.semantics.SemanticsOwner;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.semantics.SemanticsWrapper;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.text.input.TextInputServiceAndroid;
import androidx.compose.ui.unit.AndroidDensity_androidKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.app.NotificationCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
/* compiled from: AndroidComposeView.android.kt */
@Metadata(d1 = {"\u0000ö\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0006\b\u0001\u0018\u0000 »\u00022\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005:\u0004»\u0002¼\u0002B\r\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u001a\u0010´\u0001\u001a\u00020+2\b\u0010\u009b\u0001\u001a\u00030µ\u00012\u0007\u0010¶\u0001\u001a\u00020rJ\u0019\u0010\u001a\u001a\u00020+2\u000f\u0010·\u0001\u001a\n\u0012\u0005\u0012\u00030¹\u00010¸\u0001H\u0016J\t\u0010º\u0001\u001a\u00020AH\u0002J\u0013\u0010»\u0001\u001a\u00020+H\u0086@ø\u0001\u0000¢\u0006\u0003\u0010¼\u0001J#\u0010½\u0001\u001a\u00030²\u00012\b\u0010¾\u0001\u001a\u00030²\u0001H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\b¿\u0001\u0010À\u0001J#\u0010Á\u0001\u001a\u00030²\u00012\b\u0010Â\u0001\u001a\u00030²\u0001H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\bÃ\u0001\u0010À\u0001J\u0012\u0010Ä\u0001\u001a\u00020+2\u0007\u0010Å\u0001\u001a\u00020\u0001H\u0002J\u000f\u0010Æ\u0001\u001a\u00020+H\u0000¢\u0006\u0003\bÇ\u0001J\"\u0010È\u0001\u001a\u0011\u0012\u0005\u0012\u00030Ê\u0001\u0012\u0005\u0012\u00030Ê\u00010É\u00012\b\u0010Ë\u0001\u001a\u00030Ê\u0001H\u0002J/\u0010Ì\u0001\u001a\u0002072\u0014\u0010Í\u0001\u001a\u000f\u0012\u0005\u0012\u00030Î\u0001\u0012\u0004\u0012\u00020+0)2\u000e\u0010Ï\u0001\u001a\t\u0012\u0004\u0012\u00020+0Ð\u0001H\u0016J\u0013\u0010Ñ\u0001\u001a\u00020+2\b\u0010Ò\u0001\u001a\u00030Ó\u0001H\u0014J\u0013\u0010Ô\u0001\u001a\u00020A2\b\u0010Õ\u0001\u001a\u00030Ö\u0001H\u0016J\u0013\u0010×\u0001\u001a\u00020A2\b\u0010Õ\u0001\u001a\u00030Ø\u0001H\u0016J\u0013\u0010Ù\u0001\u001a\u00020A2\b\u0010Ú\u0001\u001a\u00030Ö\u0001H\u0016J\u001b\u0010Û\u0001\u001a\u00020+2\b\u0010\u009b\u0001\u001a\u00030µ\u00012\b\u0010Ò\u0001\u001a\u00030Ó\u0001J \u0010Ü\u0001\u001a\u0005\u0018\u00010\u009c\u00012\b\u0010Ý\u0001\u001a\u00030Ê\u00012\b\u0010Þ\u0001\u001a\u00030\u009c\u0001H\u0002J\u0014\u0010ß\u0001\u001a\u0005\u0018\u00010\u009c\u00012\b\u0010Ý\u0001\u001a\u00030Ê\u0001J%\u0010à\u0001\u001a\u0005\u0018\u00010á\u00012\b\u0010â\u0001\u001a\u00030ã\u0001H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\bä\u0001\u0010å\u0001J\t\u0010æ\u0001\u001a\u00020+H\u0016J\u0012\u0010ç\u0001\u001a\u00020+2\u0007\u0010è\u0001\u001a\u00020rH\u0002J\u0012\u0010é\u0001\u001a\u00020+2\u0007\u0010è\u0001\u001a\u00020rH\u0002J\u0013\u0010ê\u0001\u001a\u00020+H\u0086@ø\u0001\u0000¢\u0006\u0003\u0010¼\u0001J#\u0010ë\u0001\u001a\u00030²\u00012\b\u0010Â\u0001\u001a\u00030²\u0001H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\bì\u0001\u0010À\u0001J\t\u0010í\u0001\u001a\u00020+H\u0016J!\u0010î\u0001\u001a\u00020+2\u0007\u0010ï\u0001\u001a\u0002072\u0007\u0010ð\u0001\u001a\u00020AH\u0000¢\u0006\u0003\bñ\u0001J\u0012\u0010ò\u0001\u001a\u00020+2\u0007\u0010è\u0001\u001a\u00020rH\u0016J\t\u0010ó\u0001\u001a\u00020+H\u0014J\t\u0010ô\u0001\u001a\u00020AH\u0016J\u0012\u0010õ\u0001\u001a\u00020+2\u0007\u0010ö\u0001\u001a\u00020*H\u0014J\u0016\u0010÷\u0001\u001a\u0005\u0018\u00010ø\u00012\b\u0010ù\u0001\u001a\u00030ú\u0001H\u0016J\u0012\u0010û\u0001\u001a\u00020+2\u0007\u0010è\u0001\u001a\u00020rH\u0016J\t\u0010ü\u0001\u001a\u00020+H\u0014J\u0013\u0010ý\u0001\u001a\u00020+2\b\u0010Ò\u0001\u001a\u00030Ó\u0001H\u0014J(\u0010þ\u0001\u001a\u00020+2\u0007\u0010ÿ\u0001\u001a\u00020A2\b\u0010\u0080\u0002\u001a\u00030Ê\u00012\n\u0010\u0081\u0002\u001a\u0005\u0018\u00010\u0082\u0002H\u0014J:\u0010\u0083\u0002\u001a\u00020+2\u0007\u0010\u0084\u0002\u001a\u00020A2\b\u0010\u0085\u0002\u001a\u00030Ê\u00012\b\u0010\u0086\u0002\u001a\u00030Ê\u00012\b\u0010\u0087\u0002\u001a\u00030Ê\u00012\b\u0010\u0088\u0002\u001a\u00030Ê\u0001H\u0014J\u0012\u0010\u0089\u0002\u001a\u00020+2\u0007\u0010¶\u0001\u001a\u00020rH\u0016J\u001d\u0010\u008a\u0002\u001a\u00020+2\b\u0010\u008b\u0002\u001a\u00030Ê\u00012\b\u0010\u008c\u0002\u001a\u00030Ê\u0001H\u0014J\u001f\u0010\u008d\u0002\u001a\u00020+2\n\u0010\u008e\u0002\u001a\u0005\u0018\u00010\u008f\u00022\b\u0010\u0090\u0002\u001a\u00030Ê\u0001H\u0016J\u0012\u0010\u0091\u0002\u001a\u00020+2\u0007\u0010¶\u0001\u001a\u00020rH\u0016J\u0012\u0010\u0092\u0002\u001a\u00020+2\u0007\u0010¶\u0001\u001a\u00020rH\u0016J\u0013\u0010\u0093\u0002\u001a\u00020+2\b\u0010\u0094\u0002\u001a\u00030\u0095\u0002H\u0016J\u0012\u0010\u0096\u0002\u001a\u00020+2\u0007\u0010\\\u001a\u00030Ê\u0001H\u0016J\t\u0010\u0097\u0002\u001a\u00020+H\u0016J\u0012\u0010\u0098\u0002\u001a\u00020+2\u0007\u0010\u0099\u0002\u001a\u00020AH\u0016J\t\u0010\u009a\u0002\u001a\u00020+H\u0002J\u0013\u0010\u009a\u0002\u001a\u00020+2\b\u0010Ú\u0001\u001a\u00030Ö\u0001H\u0002J\t\u0010\u009b\u0002\u001a\u00020+H\u0002J\u0011\u0010\u009c\u0002\u001a\u00020+2\b\u0010\u009b\u0001\u001a\u00030µ\u0001J\u0007\u0010\u009d\u0002\u001a\u00020+J\u0013\u0010\u009e\u0002\u001a\u00020+2\b\u0010\u009f\u0002\u001a\u00030 \u0002H\u0016J\u0016\u0010¡\u0002\u001a\u00020+2\u000b\b\u0002\u0010¢\u0002\u001a\u0004\u0018\u00010rH\u0002J#\u0010£\u0002\u001a\u00030²\u00012\b\u0010¤\u0002\u001a\u00030²\u0001H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\b¥\u0002\u0010À\u0001J\"\u0010¦\u0002\u001a\u00020A2\b\u0010â\u0001\u001a\u00030ã\u0001H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\b§\u0002\u0010¨\u0002J\u001c\u0010©\u0002\u001a\u00020+2\u0013\u0010ª\u0002\u001a\u000e\u0012\u0004\u0012\u00020m\u0012\u0004\u0012\u00020+0)J,\u0010«\u0002\u001a\u00020+2\b\u0010\u009b\u0001\u001a\u00030\u009c\u00012\b\u0010¬\u0002\u001a\u00030\u0097\u0001H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\b\u00ad\u0002\u0010®\u0002J\t\u0010¯\u0002\u001a\u00020+H\u0002J'\u0010°\u0002\u001a\u00020+*\u00030\u0097\u00012\b\u0010±\u0002\u001a\u00030²\u0002H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\b³\u0002\u0010´\u0002J1\u0010µ\u0002\u001a\u00020+*\u00030\u0097\u00012\b\u0010¶\u0002\u001a\u00030·\u00022\b\u0010¸\u0002\u001a\u00030·\u0002H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\b¹\u0002\u0010º\u0002R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u00020\u0014X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0017\u001a\u00020\n8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001a\u001a\u0004\u0018\u00010\u001b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\u001fX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010!R\u000e\u0010\"\u001a\u00020#X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010$\u001a\u00020%X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b&\u0010'R&\u0010(\u001a\u000e\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020+0)X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u001e\u00102\u001a\u0002012\u0006\u00100\u001a\u000201@RX\u0096\u000e¢\u0006\b\n\u0000\u001a\u0004\b3\u00104R\u0014\u00105\u001a\b\u0012\u0004\u0012\u00020706X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u00108\u001a\u0002098VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b:\u0010;R\u0014\u0010<\u001a\u00020=X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b>\u0010?R\u000e\u0010@\u001a\u00020AX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010B\u001a\u00020CX\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010D\u001a\u00020EX\u0082\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010FR\u0014\u0010G\u001a\u00020HX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\bI\u0010JR\u0014\u0010K\u001a\u00020A8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bL\u0010MR\u000e\u0010N\u001a\u00020AX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010O\u001a\u00020A8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bO\u0010MR\u000e\u0010P\u001a\u00020AX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010Q\u001a\u00020RX\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010S\u001a\u00020T8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\bU\u0010V\u001a\u0004\bW\u0010X\"\u0004\bY\u0010ZR+\u0010\\\u001a\u00020[2\u0006\u00100\u001a\u00020[8V@RX\u0096\u008e\u0002¢\u0006\u0012\n\u0004\ba\u0010b\u001a\u0004\b]\u0010^\"\u0004\b_\u0010`R\u000e\u0010c\u001a\u00020dX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010e\u001a\u00020T8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bf\u0010XR\u000e\u0010g\u001a\u00020hX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010i\u001a\u00020AX\u0082\u000e¢\u0006\u0002\n\u0000R\u0019\u0010j\u001a\u0004\u0018\u00010kX\u0082\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0002\n\u0000R\u001c\u0010l\u001a\u0010\u0012\u0004\u0012\u00020m\u0012\u0004\u0012\u00020+\u0018\u00010)X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010n\u001a\u00020oX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010p\u001a\n\u0012\u0004\u0012\u000207\u0018\u000106X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010q\u001a\u00020rX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\bs\u0010tR\u0014\u0010u\u001a\u00020vX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\bw\u0010xR\u000e\u0010y\u001a\u00020zX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010{\u001a\u00020|X\u0082\u0004¢\u0006\u0002\n\u0000R\u0015\u0010}\u001a\u00020~X\u0096\u0004¢\u0006\t\n\u0000\u001a\u0005\b\u007f\u0010\u0080\u0001R%\u0010\u0081\u0001\u001a\u00020AX\u0096\u000e¢\u0006\u0018\n\u0000\u0012\u0005\b\u0082\u0001\u0010V\u001a\u0005\b\u0083\u0001\u0010M\"\u0006\b\u0084\u0001\u0010\u0085\u0001R\u0018\u0010\u0086\u0001\u001a\u00030\u0087\u0001X\u0096\u0004¢\u0006\n\n\u0000\u001a\u0006\b\u0088\u0001\u0010\u0089\u0001R\u000f\u0010\u008a\u0001\u001a\u00020AX\u0082\u000e¢\u0006\u0002\n\u0000R\u001f\u0010\u008b\u0001\u001a\u00030\u008c\u0001X\u0096\u0004¢\u0006\u0011\n\u0000\u0012\u0005\b\u008d\u0001\u0010V\u001a\u0006\b\u008e\u0001\u0010\u008f\u0001R\u0010\u0010\u0090\u0001\u001a\u00030\u0091\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0092\u0001\u001a\u00030\u0093\u0001X\u0096\u0004¢\u0006\n\n\u0000\u001a\u0006\b\u0094\u0001\u0010\u0095\u0001R\u001c\u0010\u0096\u0001\u001a\u00030\u0097\u0001X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0005\n\u0003\u0010\u0098\u0001R\u0010\u0010\u0099\u0001\u001a\u00030\u009a\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u009b\u0001\u001a\u00030\u009c\u00018VX\u0096\u0004¢\u0006\b\u001a\u0006\b\u009d\u0001\u0010\u009e\u0001R\u0018\u0010\u009f\u0001\u001a\u00030 \u0001X\u0096\u0004¢\u0006\n\n\u0000\u001a\u0006\b¡\u0001\u0010¢\u0001R\u0012\u0010£\u0001\u001a\u0005\u0018\u00010¤\u0001X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010¥\u0001\u001a\u00030\u0097\u0001X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0005\n\u0003\u0010\u0098\u0001R5\u0010¦\u0001\u001a\u0004\u0018\u00010m2\b\u00100\u001a\u0004\u0018\u00010m8F@BX\u0086\u008e\u0002¢\u0006\u0017\n\u0005\b«\u0001\u0010b\u001a\u0006\b§\u0001\u0010¨\u0001\"\u0006\b©\u0001\u0010ª\u0001R\u000f\u0010¬\u0001\u001a\u00020AX\u0082\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u00ad\u0001\u001a\u00030®\u00018VX\u0096\u0004¢\u0006\b\u001a\u0006\b¯\u0001\u0010°\u0001R\u001b\u0010±\u0001\u001a\u00030²\u0001X\u0082\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010FR\u001c\u0010³\u0001\u001a\u00030\u0097\u0001X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0005\n\u0003\u0010\u0098\u0001\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006½\u0002"}, d2 = {"Landroidx/compose/ui/platform/AndroidComposeView;", "Landroid/view/ViewGroup;", "Landroidx/compose/ui/node/Owner;", "Landroidx/compose/ui/platform/ViewRootForTest;", "Landroidx/compose/ui/input/pointer/PositionCalculator;", "Landroidx/lifecycle/DefaultLifecycleObserver;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "_androidViewsHandler", "Landroidx/compose/ui/platform/AndroidViewsHandler;", "_autofill", "Landroidx/compose/ui/autofill/AndroidAutofill;", "_focusManager", "Landroidx/compose/ui/focus/FocusManagerImpl;", "_windowInfo", "Landroidx/compose/ui/platform/WindowInfoImpl;", "accessibilityDelegate", "Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;", "accessibilityManager", "Landroidx/compose/ui/platform/AndroidAccessibilityManager;", "getAccessibilityManager", "()Landroidx/compose/ui/platform/AndroidAccessibilityManager;", "androidViewsHandler", "getAndroidViewsHandler$ui_release", "()Landroidx/compose/ui/platform/AndroidViewsHandler;", "autofill", "Landroidx/compose/ui/autofill/Autofill;", "getAutofill", "()Landroidx/compose/ui/autofill/Autofill;", "autofillTree", "Landroidx/compose/ui/autofill/AutofillTree;", "getAutofillTree", "()Landroidx/compose/ui/autofill/AutofillTree;", "canvasHolder", "Landroidx/compose/ui/graphics/CanvasHolder;", "clipboardManager", "Landroidx/compose/ui/platform/AndroidClipboardManager;", "getClipboardManager", "()Landroidx/compose/ui/platform/AndroidClipboardManager;", "configurationChangeObserver", "Lkotlin/Function1;", "Landroid/content/res/Configuration;", "", "getConfigurationChangeObserver", "()Lkotlin/jvm/functions/Function1;", "setConfigurationChangeObserver", "(Lkotlin/jvm/functions/Function1;)V", "<set-?>", "Landroidx/compose/ui/unit/Density;", "density", "getDensity", "()Landroidx/compose/ui/unit/Density;", "dirtyLayers", "", "Landroidx/compose/ui/node/OwnedLayer;", "focusManager", "Landroidx/compose/ui/focus/FocusManager;", "getFocusManager", "()Landroidx/compose/ui/focus/FocusManager;", "fontLoader", "Landroidx/compose/ui/text/font/Font$ResourceLoader;", "getFontLoader", "()Landroidx/compose/ui/text/font/Font$ResourceLoader;", "forceUseMatrixCache", "", "globalLayoutListener", "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;", "globalPosition", "Landroidx/compose/ui/unit/IntOffset;", "J", "hapticFeedBack", "Landroidx/compose/ui/hapticfeedback/HapticFeedback;", "getHapticFeedBack", "()Landroidx/compose/ui/hapticfeedback/HapticFeedback;", "hasPendingMeasureOrLayout", "getHasPendingMeasureOrLayout", "()Z", "isDrawingContent", "isLifecycleInResumedState", "isRenderNodeCompatible", "keyInputModifier", "Landroidx/compose/ui/input/key/KeyInputModifier;", "lastMatrixRecalculationAnimationTime", "", "getLastMatrixRecalculationAnimationTime$ui_release$annotations", "()V", "getLastMatrixRecalculationAnimationTime$ui_release", "()J", "setLastMatrixRecalculationAnimationTime$ui_release", "(J)V", "Landroidx/compose/ui/unit/LayoutDirection;", "layoutDirection", "getLayoutDirection", "()Landroidx/compose/ui/unit/LayoutDirection;", "setLayoutDirection", "(Landroidx/compose/ui/unit/LayoutDirection;)V", "layoutDirection$delegate", "Landroidx/compose/runtime/MutableState;", "measureAndLayoutDelegate", "Landroidx/compose/ui/node/MeasureAndLayoutDelegate;", "measureIteration", "getMeasureIteration", "motionEventAdapter", "Landroidx/compose/ui/input/pointer/MotionEventAdapter;", "observationClearRequested", "onMeasureConstraints", "Landroidx/compose/ui/unit/Constraints;", "onViewTreeOwnersAvailable", "Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;", "pointerInputEventProcessor", "Landroidx/compose/ui/input/pointer/PointerInputEventProcessor;", "postponedDirtyLayers", "root", "Landroidx/compose/ui/node/LayoutNode;", "getRoot", "()Landroidx/compose/ui/node/LayoutNode;", "rootForTest", "Landroidx/compose/ui/node/RootForTest;", "getRootForTest", "()Landroidx/compose/ui/node/RootForTest;", "scrollChangedListener", "Landroid/view/ViewTreeObserver$OnScrollChangedListener;", "semanticsModifier", "Landroidx/compose/ui/semantics/SemanticsModifierCore;", "semanticsOwner", "Landroidx/compose/ui/semantics/SemanticsOwner;", "getSemanticsOwner", "()Landroidx/compose/ui/semantics/SemanticsOwner;", "showLayoutBounds", "getShowLayoutBounds$annotations", "getShowLayoutBounds", "setShowLayoutBounds", "(Z)V", "snapshotObserver", "Landroidx/compose/ui/node/OwnerSnapshotObserver;", "getSnapshotObserver", "()Landroidx/compose/ui/node/OwnerSnapshotObserver;", "superclassInitComplete", "textInputService", "Landroidx/compose/ui/text/input/TextInputService;", "getTextInputService$annotations", "getTextInputService", "()Landroidx/compose/ui/text/input/TextInputService;", "textInputServiceAndroid", "Landroidx/compose/ui/text/input/TextInputServiceAndroid;", "textToolbar", "Landroidx/compose/ui/platform/TextToolbar;", "getTextToolbar", "()Landroidx/compose/ui/platform/TextToolbar;", "tmpCalculationMatrix", "Landroidx/compose/ui/graphics/Matrix;", "[F", "tmpPositionArray", "", "view", "Landroid/view/View;", "getView", "()Landroid/view/View;", "viewConfiguration", "Landroidx/compose/ui/platform/ViewConfiguration;", "getViewConfiguration", "()Landroidx/compose/ui/platform/ViewConfiguration;", "viewLayersContainer", "Landroidx/compose/ui/platform/DrawChildContainer;", "viewToWindowMatrix", "viewTreeOwners", "getViewTreeOwners", "()Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;", "setViewTreeOwners", "(Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;)V", "viewTreeOwners$delegate", "wasMeasuredWithMultipleConstraints", "windowInfo", "Landroidx/compose/ui/platform/WindowInfo;", "getWindowInfo", "()Landroidx/compose/ui/platform/WindowInfo;", "windowPosition", "Landroidx/compose/ui/geometry/Offset;", "windowToViewMatrix", "addAndroidView", "Landroidx/compose/ui/viewinterop/AndroidViewHolder;", "layoutNode", "values", "Landroid/util/SparseArray;", "Landroid/view/autofill/AutofillValue;", "autofillSupported", "boundsUpdatesEventLoop", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "calculateLocalPosition", "positionInWindow", "calculateLocalPosition-MK-Hz9U", "(J)J", "calculatePositionInWindow", "localPosition", "calculatePositionInWindow-MK-Hz9U", "clearChildInvalidObservations", "viewGroup", "clearInvalidObservations", "clearInvalidObservations$ui_release", "convertMeasureSpec", "Lkotlin/Pair;", "", "measureSpec", "createLayer", "drawBlock", "Landroidx/compose/ui/graphics/Canvas;", "invalidateParentLayer", "Lkotlin/Function0;", "dispatchDraw", "canvas", "Landroid/graphics/Canvas;", "dispatchHoverEvent", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "dispatchKeyEvent", "Landroid/view/KeyEvent;", "dispatchTouchEvent", "motionEvent", "drawAndroidView", "findViewByAccessibilityIdRootedAtCurrentView", "accessibilityId", "currentView", "findViewByAccessibilityIdTraversal", "getFocusDirection", "Landroidx/compose/ui/focus/FocusDirection;", "keyEvent", "Landroidx/compose/ui/input/key/KeyEvent;", "getFocusDirection-P8AzH3I", "(Landroid/view/KeyEvent;)Landroidx/compose/ui/focus/FocusDirection;", "invalidateDescendants", "invalidateLayers", "node", "invalidateLayoutNodeMeasurement", "keyboardVisibilityEventLoop", "localToScreen", "localToScreen-MK-Hz9U", "measureAndLayout", "notifyLayerIsDirty", "layer", "isDirty", "notifyLayerIsDirty$ui_release", "onAttach", "onAttachedToWindow", "onCheckIsTextEditor", "onConfigurationChanged", "newConfig", "onCreateInputConnection", "Landroid/view/inputmethod/InputConnection;", "outAttrs", "Landroid/view/inputmethod/EditorInfo;", "onDetach", "onDetachedFromWindow", "onDraw", "onFocusChanged", "gainFocus", "direction", "previouslyFocusedRect", "Landroid/graphics/Rect;", "onLayout", "changed", "l", "t", "r", "b", "onLayoutChange", "onMeasure", "widthMeasureSpec", "heightMeasureSpec", "onProvideAutofillVirtualStructure", "structure", "Landroid/view/ViewStructure;", "flags", "onRequestMeasure", "onRequestRelayout", "onResume", "owner", "Landroidx/lifecycle/LifecycleOwner;", "onRtlPropertiesChanged", "onSemanticsChange", "onWindowFocusChanged", "hasWindowFocus", "recalculateWindowPosition", "recalculateWindowViewTransforms", "removeAndroidView", "requestClearInvalidObservations", "requestRectangleOnScreen", "rect", "Landroidx/compose/ui/geometry/Rect;", "scheduleMeasureAndLayout", "nodeToRemeasure", "screenToLocal", "positionOnScreen", "screenToLocal-MK-Hz9U", "sendKeyEvent", "sendKeyEvent-ZmokQxo", "(Landroid/view/KeyEvent;)Z", "setOnViewTreeOwnersAvailable", "callback", "transformMatrixToWindow", "matrix", "transformMatrixToWindow-EL8BTi8", "(Landroid/view/View;[F)V", "updatePositionCacheAndDispatch", "preConcat", "other", "Landroid/graphics/Matrix;", "preConcat-tU-YjHk", "([FLandroid/graphics/Matrix;)V", "preTranslate", "x", "", "y", "preTranslate-3XD1CNM", "([FFF)V", "Companion", "ViewTreeOwners", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidComposeView extends ViewGroup implements Owner, ViewRootForTest, PositionCalculator, DefaultLifecycleObserver {
    public static final Companion Companion = new Companion(null);
    private static Method getBooleanMethod;
    private static Class<?> systemPropertiesClass;
    private AndroidViewsHandler _androidViewsHandler;
    private final AndroidAutofill _autofill;
    private final FocusManagerImpl _focusManager;
    private final WindowInfoImpl _windowInfo;
    private final AndroidComposeViewAccessibilityDelegateCompat accessibilityDelegate;
    private final AndroidAccessibilityManager accessibilityManager;
    private final AutofillTree autofillTree;
    private final CanvasHolder canvasHolder;
    private final AndroidClipboardManager clipboardManager;
    private Function1<? super Configuration, Unit> configurationChangeObserver;
    private Density density;
    private final List<OwnedLayer> dirtyLayers;
    private final Font.ResourceLoader fontLoader;
    private boolean forceUseMatrixCache;
    private final ViewTreeObserver.OnGlobalLayoutListener globalLayoutListener;
    private long globalPosition;
    private final HapticFeedback hapticFeedBack;
    private boolean isDrawingContent;
    private boolean isRenderNodeCompatible;
    private final KeyInputModifier keyInputModifier;
    private long lastMatrixRecalculationAnimationTime;
    private final MutableState layoutDirection$delegate;
    private final MeasureAndLayoutDelegate measureAndLayoutDelegate;
    private final MotionEventAdapter motionEventAdapter;
    private boolean observationClearRequested;
    private Constraints onMeasureConstraints;
    private Function1<? super ViewTreeOwners, Unit> onViewTreeOwnersAvailable;
    private final PointerInputEventProcessor pointerInputEventProcessor;
    private List<OwnedLayer> postponedDirtyLayers;
    private final LayoutNode root;
    private final RootForTest rootForTest;
    private final ViewTreeObserver.OnScrollChangedListener scrollChangedListener;
    private final SemanticsModifierCore semanticsModifier;
    private final SemanticsOwner semanticsOwner;
    private boolean showLayoutBounds;
    private final OwnerSnapshotObserver snapshotObserver;
    private boolean superclassInitComplete;
    private final TextInputService textInputService;
    private final TextInputServiceAndroid textInputServiceAndroid;
    private final TextToolbar textToolbar;
    private final float[] tmpCalculationMatrix;
    private final int[] tmpPositionArray;
    private final ViewConfiguration viewConfiguration;
    private DrawChildContainer viewLayersContainer;
    private final float[] viewToWindowMatrix;
    private final MutableState viewTreeOwners$delegate;
    private boolean wasMeasuredWithMultipleConstraints;
    private long windowPosition;
    private final float[] windowToViewMatrix;

    public static /* synthetic */ void getLastMatrixRecalculationAnimationTime$ui_release$annotations() {
    }

    public static /* synthetic */ void getShowLayoutBounds$annotations() {
    }

    public static /* synthetic */ void getTextInputService$annotations() {
    }

    @Override // androidx.compose.ui.node.Owner
    public void onAttach(LayoutNode node) {
        Intrinsics.checkNotNullParameter(node, "node");
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidComposeView(Context context) {
        super(context);
        MutableState mutableStateOf$default;
        MutableState mutableStateOf$default2;
        Intrinsics.checkNotNullParameter(context, "context");
        this.superclassInitComplete = true;
        this.density = AndroidDensity_androidKt.Density(context);
        SemanticsModifierCore semanticsModifierCore = new SemanticsModifierCore(SemanticsModifierCore.Companion.generateSemanticsId(), false, false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.ui.platform.AndroidComposeView$semanticsModifier$1
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(SemanticsPropertyReceiver $receiver) {
                Intrinsics.checkNotNullParameter($receiver, "$this$$receiver");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                invoke2(semanticsPropertyReceiver);
                return Unit.INSTANCE;
            }
        });
        this.semanticsModifier = semanticsModifierCore;
        FocusManagerImpl focusManagerImpl = new FocusManagerImpl(null, 1, null);
        this._focusManager = focusManagerImpl;
        this._windowInfo = new WindowInfoImpl();
        KeyInputModifier keyInputModifier = new KeyInputModifier(new Function1<KeyEvent, Boolean>() { // from class: androidx.compose.ui.platform.AndroidComposeView$keyInputModifier$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(KeyEvent keyEvent) {
                return m1737invokeZmokQxo(keyEvent.m1452unboximpl());
            }

            /* renamed from: invoke-ZmokQxo  reason: not valid java name */
            public final Boolean m1737invokeZmokQxo(android.view.KeyEvent it) {
                Intrinsics.checkNotNullParameter(it, "it");
                FocusDirection mo1731getFocusDirectionP8AzH3I = AndroidComposeView.this.mo1731getFocusDirectionP8AzH3I(it);
                if (mo1731getFocusDirectionP8AzH3I == null || !KeyEventType.m1456equalsimpl0(KeyEvent_androidKt.m1464getTypeZmokQxo(it), KeyEventType.Companion.m1460getKeyDownCS__XNY())) {
                    return false;
                }
                return Boolean.valueOf(AndroidComposeView.this.getFocusManager().mo75moveFocus3ESFkO8(mo1731getFocusDirectionP8AzH3I.m64unboximpl()));
            }
        }, null);
        this.keyInputModifier = keyInputModifier;
        this.canvasHolder = new CanvasHolder();
        LayoutNode layoutNode = new LayoutNode();
        layoutNode.setMeasurePolicy(RootMeasurePolicy.INSTANCE);
        layoutNode.setModifier(Modifier.Companion.then(semanticsModifierCore).then(focusManagerImpl.getModifier()).then(keyInputModifier));
        Unit unit = Unit.INSTANCE;
        this.root = layoutNode;
        this.rootForTest = this;
        this.semanticsOwner = new SemanticsOwner(getRoot());
        AndroidComposeViewAccessibilityDelegateCompat androidComposeViewAccessibilityDelegateCompat = new AndroidComposeViewAccessibilityDelegateCompat(this);
        this.accessibilityDelegate = androidComposeViewAccessibilityDelegateCompat;
        this.autofillTree = new AutofillTree();
        this.dirtyLayers = new ArrayList();
        this.motionEventAdapter = new MotionEventAdapter();
        this.pointerInputEventProcessor = new PointerInputEventProcessor(getRoot());
        this.configurationChangeObserver = new Function1<Configuration, Unit>() { // from class: androidx.compose.ui.platform.AndroidComposeView$configurationChangeObserver$1
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Configuration it) {
                Intrinsics.checkNotNullParameter(it, "it");
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Configuration configuration) {
                invoke2(configuration);
                return Unit.INSTANCE;
            }
        };
        this._autofill = autofillSupported() ? new AndroidAutofill(this, getAutofillTree()) : null;
        this.clipboardManager = new AndroidClipboardManager(context);
        this.accessibilityManager = new AndroidAccessibilityManager(context);
        this.snapshotObserver = new OwnerSnapshotObserver(new Function1<Function0<? extends Unit>, Unit>() { // from class: androidx.compose.ui.platform.AndroidComposeView$snapshotObserver$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Function0<? extends Unit> function0) {
                invoke2((Function0<Unit>) function0);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(final Function0<Unit> command) {
                Intrinsics.checkNotNullParameter(command, "command");
                Handler handler = AndroidComposeView.this.getHandler();
                if ((handler == null ? null : handler.getLooper()) == Looper.myLooper()) {
                    command.invoke();
                    return;
                }
                Handler handler2 = AndroidComposeView.this.getHandler();
                if (handler2 == null) {
                    return;
                }
                handler2.post(new Runnable() { // from class: androidx.compose.ui.platform.AndroidComposeView_androidKt$sam$java_lang_Runnable$0
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        Function0.this.invoke();
                    }
                });
            }
        });
        this.measureAndLayoutDelegate = new MeasureAndLayoutDelegate(getRoot());
        android.view.ViewConfiguration viewConfiguration = android.view.ViewConfiguration.get(context);
        Intrinsics.checkNotNullExpressionValue(viewConfiguration, "get(context)");
        this.viewConfiguration = new AndroidViewConfiguration(viewConfiguration);
        this.globalPosition = IntOffset.Companion.m2193getZeronOccac();
        this.tmpPositionArray = new int[]{0, 0};
        this.viewToWindowMatrix = Matrix.m510constructorimpl$default(null, 1, null);
        this.windowToViewMatrix = Matrix.m510constructorimpl$default(null, 1, null);
        this.tmpCalculationMatrix = Matrix.m510constructorimpl$default(null, 1, null);
        this.lastMatrixRecalculationAnimationTime = -1L;
        this.windowPosition = Offset.Companion.m131getInfiniteF1C5BW0();
        this.isRenderNodeCompatible = true;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.viewTreeOwners$delegate = mutableStateOf$default;
        this.globalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: androidx.compose.ui.platform.AndroidComposeView$globalLayoutListener$1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                AndroidComposeView.this.updatePositionCacheAndDispatch();
            }
        };
        this.scrollChangedListener = new ViewTreeObserver.OnScrollChangedListener() { // from class: androidx.compose.ui.platform.AndroidComposeView$scrollChangedListener$1
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public final void onScrollChanged() {
                AndroidComposeView.this.updatePositionCacheAndDispatch();
            }
        };
        AndroidComposeView androidComposeView = this;
        TextInputServiceAndroid textInputServiceAndroid = new TextInputServiceAndroid(androidComposeView);
        this.textInputServiceAndroid = textInputServiceAndroid;
        this.textInputService = AndroidComposeView_androidKt.getTextInputServiceFactory().invoke(textInputServiceAndroid);
        this.fontLoader = new AndroidFontResourceLoader(context);
        Configuration configuration = context.getResources().getConfiguration();
        Intrinsics.checkNotNullExpressionValue(configuration, "context.resources.configuration");
        mutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(AndroidComposeView_androidKt.getLocaleLayoutDirection(configuration), null, 2, null);
        this.layoutDirection$delegate = mutableStateOf$default2;
        this.hapticFeedBack = new PlatformHapticFeedback(androidComposeView);
        this.textToolbar = new AndroidTextToolbar(androidComposeView);
        setWillNotDraw(false);
        setFocusable(true);
        if (Build.VERSION.SDK_INT >= 26) {
            AndroidComposeViewVerificationHelperMethods.INSTANCE.focusable(androidComposeView, 1, false);
        }
        setFocusableInTouchMode(true);
        setClipChildren(false);
        ViewCompat.setAccessibilityDelegate(androidComposeView, androidComposeViewAccessibilityDelegateCompat);
        Function1<ViewRootForTest, Unit> onViewCreatedCallback = ViewRootForTest.Companion.getOnViewCreatedCallback();
        if (onViewCreatedCallback != null) {
            onViewCreatedCallback.invoke(this);
        }
        getRoot().attach$ui_release(this);
    }

    @Override // androidx.compose.ui.platform.ViewRootForTest
    public View getView() {
        return this;
    }

    @Override // androidx.compose.ui.node.Owner, androidx.compose.ui.node.RootForTest
    public Density getDensity() {
        return this.density;
    }

    @Override // androidx.compose.ui.node.Owner
    public FocusManager getFocusManager() {
        return this._focusManager;
    }

    @Override // androidx.compose.ui.node.Owner
    public WindowInfo getWindowInfo() {
        return this._windowInfo;
    }

    @Override // androidx.compose.ui.node.Owner
    public LayoutNode getRoot() {
        return this.root;
    }

    @Override // androidx.compose.ui.node.Owner
    public RootForTest getRootForTest() {
        return this.rootForTest;
    }

    @Override // androidx.compose.ui.node.RootForTest
    public SemanticsOwner getSemanticsOwner() {
        return this.semanticsOwner;
    }

    @Override // androidx.compose.ui.node.Owner
    public AutofillTree getAutofillTree() {
        return this.autofillTree;
    }

    public final Function1<Configuration, Unit> getConfigurationChangeObserver() {
        return this.configurationChangeObserver;
    }

    public final void setConfigurationChangeObserver(Function1<? super Configuration, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.configurationChangeObserver = function1;
    }

    @Override // androidx.compose.ui.node.Owner
    public Autofill getAutofill() {
        return this._autofill;
    }

    @Override // androidx.compose.ui.node.Owner
    public AndroidClipboardManager getClipboardManager() {
        return this.clipboardManager;
    }

    @Override // androidx.compose.ui.node.Owner
    public AndroidAccessibilityManager getAccessibilityManager() {
        return this.accessibilityManager;
    }

    @Override // androidx.compose.ui.node.Owner
    public OwnerSnapshotObserver getSnapshotObserver() {
        return this.snapshotObserver;
    }

    @Override // androidx.compose.ui.node.Owner
    public boolean getShowLayoutBounds() {
        return this.showLayoutBounds;
    }

    @Override // androidx.compose.ui.node.Owner
    public void setShowLayoutBounds(boolean z) {
        this.showLayoutBounds = z;
    }

    public final AndroidViewsHandler getAndroidViewsHandler$ui_release() {
        if (this._androidViewsHandler == null) {
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            AndroidViewsHandler androidViewsHandler = new AndroidViewsHandler(context);
            this._androidViewsHandler = androidViewsHandler;
            addView(androidViewsHandler);
        }
        AndroidViewsHandler androidViewsHandler2 = this._androidViewsHandler;
        Intrinsics.checkNotNull(androidViewsHandler2);
        return androidViewsHandler2;
    }

    @Override // androidx.compose.ui.node.Owner
    public long getMeasureIteration() {
        return this.measureAndLayoutDelegate.getMeasureIteration();
    }

    @Override // androidx.compose.ui.node.Owner
    public ViewConfiguration getViewConfiguration() {
        return this.viewConfiguration;
    }

    @Override // androidx.compose.ui.platform.ViewRootForTest
    public boolean getHasPendingMeasureOrLayout() {
        return this.measureAndLayoutDelegate.getHasPendingMeasureOrLayout();
    }

    public final long getLastMatrixRecalculationAnimationTime$ui_release() {
        return this.lastMatrixRecalculationAnimationTime;
    }

    public final void setLastMatrixRecalculationAnimationTime$ui_release(long j) {
        this.lastMatrixRecalculationAnimationTime = j;
    }

    private final void setViewTreeOwners(ViewTreeOwners viewTreeOwners) {
        this.viewTreeOwners$delegate.setValue(viewTreeOwners);
    }

    public final ViewTreeOwners getViewTreeOwners() {
        return (ViewTreeOwners) this.viewTreeOwners$delegate.getValue();
    }

    @Override // androidx.compose.ui.node.Owner, androidx.compose.ui.node.RootForTest
    public TextInputService getTextInputService() {
        return this.textInputService;
    }

    @Override // androidx.compose.ui.node.Owner
    public Font.ResourceLoader getFontLoader() {
        return this.fontLoader;
    }

    private void setLayoutDirection(LayoutDirection layoutDirection) {
        this.layoutDirection$delegate.setValue(layoutDirection);
    }

    @Override // android.view.View, android.view.ViewParent, androidx.compose.ui.node.Owner
    public LayoutDirection getLayoutDirection() {
        return (LayoutDirection) this.layoutDirection$delegate.getValue();
    }

    @Override // androidx.compose.ui.node.Owner
    public HapticFeedback getHapticFeedBack() {
        return this.hapticFeedBack;
    }

    @Override // androidx.compose.ui.node.Owner
    public TextToolbar getTextToolbar() {
        return this.textToolbar;
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver, androidx.lifecycle.FullLifecycleObserver
    public void onResume(LifecycleOwner owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        setShowLayoutBounds(Companion.getIsShowingLayoutBounds());
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        Log.d(FocusNodeUtilsKt.getFOCUS_TAG(), "Owner FocusChanged(" + z + ')');
        FocusManagerImpl focusManagerImpl = this._focusManager;
        if (z) {
            focusManagerImpl.takeFocus();
        } else {
            focusManagerImpl.releaseFocus();
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        this._windowInfo.setWindowFocused(z);
        super.onWindowFocusChanged(z);
    }

    @Override // androidx.compose.ui.node.RootForTest
    /* renamed from: sendKeyEvent-ZmokQxo */
    public boolean mo1733sendKeyEventZmokQxo(android.view.KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(keyEvent, "keyEvent");
        return this.keyInputModifier.m1470processKeyInputZmokQxo(keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(android.view.KeyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (isFocused()) {
            return mo1733sendKeyEventZmokQxo(KeyEvent.m1447constructorimpl(event));
        }
        return super.dispatchKeyEvent(event);
    }

    @Override // androidx.compose.ui.node.Owner
    public void onDetach(LayoutNode node) {
        Intrinsics.checkNotNullParameter(node, "node");
        this.measureAndLayoutDelegate.onNodeDetached(node);
        requestClearInvalidObservations();
    }

    public final void requestClearInvalidObservations() {
        this.observationClearRequested = true;
    }

    public final void clearInvalidObservations$ui_release() {
        if (this.observationClearRequested) {
            getSnapshotObserver().clearInvalidObservations$ui_release();
            this.observationClearRequested = false;
        }
        AndroidViewsHandler androidViewsHandler = this._androidViewsHandler;
        if (androidViewsHandler != null) {
            clearChildInvalidObservations(androidViewsHandler);
        }
    }

    private final void clearChildInvalidObservations(ViewGroup viewGroup) {
        int childCount = viewGroup.getChildCount();
        if (childCount <= 0) {
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i + 1;
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof AndroidComposeView) {
                ((AndroidComposeView) childAt).clearInvalidObservations$ui_release();
            } else if (childAt instanceof ViewGroup) {
                clearChildInvalidObservations((ViewGroup) childAt);
            }
            if (i2 >= childCount) {
                return;
            }
            i = i2;
        }
    }

    public final void addAndroidView(AndroidViewHolder view, final LayoutNode layoutNode) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
        getAndroidViewsHandler$ui_release().getHolderToLayoutNode().put(view, layoutNode);
        AndroidViewHolder androidViewHolder = view;
        getAndroidViewsHandler$ui_release().addView(androidViewHolder);
        getAndroidViewsHandler$ui_release().getLayoutNodeToHolder().put(layoutNode, view);
        ViewCompat.setImportantForAccessibility(androidViewHolder, 1);
        ViewCompat.setAccessibilityDelegate(androidViewHolder, new AccessibilityDelegateCompat() { // from class: androidx.compose.ui.platform.AndroidComposeView$addAndroidView$1
            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view2, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view2, accessibilityNodeInfoCompat);
                SemanticsWrapper outerSemantics = SemanticsNodeKt.getOuterSemantics(LayoutNode.this);
                Intrinsics.checkNotNull(outerSemantics);
                SemanticsNode parent = new SemanticsNode(outerSemantics, false).getParent();
                Intrinsics.checkNotNull(parent);
                int id = parent.getId();
                if (id == this.getSemanticsOwner().getUnmergedRootSemanticsNode().getId()) {
                    id = -1;
                }
                Intrinsics.checkNotNull(accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.setParent(this, id);
            }
        });
    }

    public final void removeAndroidView(AndroidViewHolder view) {
        Intrinsics.checkNotNullParameter(view, "view");
        AndroidViewHolder androidViewHolder = view;
        getAndroidViewsHandler$ui_release().removeView(androidViewHolder);
        getAndroidViewsHandler$ui_release().getHolderToLayoutNode().remove(view);
        HashMap<LayoutNode, AndroidViewHolder> layoutNodeToHolder = getAndroidViewsHandler$ui_release().getLayoutNodeToHolder();
        LayoutNode layoutNode = getAndroidViewsHandler$ui_release().getHolderToLayoutNode().get(view);
        if (layoutNodeToHolder != null) {
            TypeIntrinsics.asMutableMap(layoutNodeToHolder).remove(layoutNode);
            ViewCompat.setImportantForAccessibility(androidViewHolder, 0);
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.collections.MutableMap<K, V>");
    }

    public final void drawAndroidView(AndroidViewHolder view, Canvas canvas) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        getAndroidViewsHandler$ui_release().drawView(view, canvas);
    }

    static /* synthetic */ void scheduleMeasureAndLayout$default(AndroidComposeView androidComposeView, LayoutNode layoutNode, int i, Object obj) {
        if ((i & 1) != 0) {
            layoutNode = null;
        }
        androidComposeView.scheduleMeasureAndLayout(layoutNode);
    }

    private final void scheduleMeasureAndLayout(LayoutNode layoutNode) {
        if (isLayoutRequested() || !isAttachedToWindow()) {
            return;
        }
        if (this.wasMeasuredWithMultipleConstraints && layoutNode != null) {
            while (layoutNode != null && layoutNode.getMeasuredByParent$ui_release() == LayoutNode.UsageByParent.InMeasureBlock) {
                layoutNode = layoutNode.getParent$ui_release();
            }
            if (layoutNode == getRoot()) {
                requestLayout();
                return;
            }
        }
        if (getWidth() == 0 || getHeight() == 0) {
            requestLayout();
        } else {
            invalidate();
        }
    }

    @Override // androidx.compose.ui.node.Owner
    public void measureAndLayout() {
        if (this.measureAndLayoutDelegate.measureAndLayout()) {
            requestLayout();
        }
        MeasureAndLayoutDelegate.dispatchOnPositionedCallbacks$default(this.measureAndLayoutDelegate, false, 1, null);
    }

    @Override // androidx.compose.ui.node.Owner
    public void onRequestMeasure(LayoutNode layoutNode) {
        Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
        if (this.measureAndLayoutDelegate.requestRemeasure(layoutNode)) {
            scheduleMeasureAndLayout(layoutNode);
        }
    }

    @Override // androidx.compose.ui.node.Owner
    public void onRequestRelayout(LayoutNode layoutNode) {
        Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
        if (this.measureAndLayoutDelegate.requestRelayout(layoutNode)) {
            scheduleMeasureAndLayout$default(this, null, 1, null);
        }
    }

    private final Pair<Integer, Integer> convertMeasureSpec(int i) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode != Integer.MIN_VALUE) {
            if (mode != 0) {
                if (mode == 1073741824) {
                    return TuplesKt.to(Integer.valueOf(size), Integer.valueOf(size));
                }
                throw new IllegalStateException();
            }
            return TuplesKt.to(0, Integer.MAX_VALUE);
        }
        return TuplesKt.to(0, Integer.valueOf(size));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.onMeasureConstraints = null;
        updatePositionCacheAndDispatch();
        if (this._androidViewsHandler != null) {
            getAndroidViewsHandler$ui_release().layout(0, 0, i3 - i, i4 - i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updatePositionCacheAndDispatch() {
        getLocationOnScreen(this.tmpPositionArray);
        boolean z = false;
        if (IntOffset.m2183getXimpl(this.globalPosition) != this.tmpPositionArray[0] || IntOffset.m2184getYimpl(this.globalPosition) != this.tmpPositionArray[1]) {
            int[] iArr = this.tmpPositionArray;
            this.globalPosition = IntOffsetKt.IntOffset(iArr[0], iArr[1]);
            z = true;
        }
        this.measureAndLayoutDelegate.dispatchOnPositionedCallbacks(z);
    }

    @Override // androidx.compose.ui.node.Owner
    public OwnedLayer createLayer(Function1<? super androidx.compose.ui.graphics.Canvas, Unit> drawBlock, Function0<Unit> invalidateParentLayer) {
        ViewLayerContainer viewLayerContainer;
        Intrinsics.checkNotNullParameter(drawBlock, "drawBlock");
        Intrinsics.checkNotNullParameter(invalidateParentLayer, "invalidateParentLayer");
        if (this.isRenderNodeCompatible) {
            try {
                return new RenderNodeLayer(this, drawBlock, invalidateParentLayer);
            } catch (Throwable unused) {
                this.isRenderNodeCompatible = false;
            }
        }
        if (this.viewLayersContainer == null) {
            if (!ViewLayer.Companion.getHasRetrievedMethod()) {
                ViewLayer.Companion.updateDisplayList(new View(getContext()));
            }
            if (ViewLayer.Companion.getShouldUseDispatchDraw()) {
                Context context = getContext();
                Intrinsics.checkNotNullExpressionValue(context, "context");
                viewLayerContainer = new DrawChildContainer(context);
            } else {
                Context context2 = getContext();
                Intrinsics.checkNotNullExpressionValue(context2, "context");
                viewLayerContainer = new ViewLayerContainer(context2);
            }
            this.viewLayersContainer = viewLayerContainer;
            addView(viewLayerContainer);
        }
        DrawChildContainer drawChildContainer = this.viewLayersContainer;
        Intrinsics.checkNotNull(drawChildContainer);
        return new ViewLayer(this, drawChildContainer, drawBlock, invalidateParentLayer);
    }

    @Override // androidx.compose.ui.node.Owner
    public void onSemanticsChange() {
        this.accessibilityDelegate.onSemanticsChange$ui_release();
    }

    @Override // androidx.compose.ui.node.Owner
    public void onLayoutChange(LayoutNode layoutNode) {
        Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
        this.accessibilityDelegate.onLayoutChange$ui_release(layoutNode);
    }

    @Override // androidx.compose.ui.node.Owner
    /* renamed from: getFocusDirection-P8AzH3I */
    public FocusDirection mo1731getFocusDirectionP8AzH3I(android.view.KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(keyEvent, "keyEvent");
        long m1463getKeyZmokQxo = KeyEvent_androidKt.m1463getKeyZmokQxo(keyEvent);
        if (Key.m868equalsimpl0(m1463getKeyZmokQxo, Key.Companion.m1391getTabEK5gGoQ())) {
            return FocusDirection.m58boximpl(KeyEvent_androidKt.m1469isShiftPressedZmokQxo(keyEvent) ? FocusDirection.Companion.m72getPreviousdhqQ8s() : FocusDirection.Companion.m70getNextdhqQ8s());
        } else if (Key.m868equalsimpl0(m1463getKeyZmokQxo, Key.Companion.m1232getDirectionRightEK5gGoQ())) {
            return FocusDirection.m58boximpl(FocusDirection.Companion.m73getRightdhqQ8s());
        } else {
            if (Key.m868equalsimpl0(m1463getKeyZmokQxo, Key.Companion.m1231getDirectionLeftEK5gGoQ())) {
                return FocusDirection.m58boximpl(FocusDirection.Companion.m69getLeftdhqQ8s());
            }
            if (Key.m868equalsimpl0(m1463getKeyZmokQxo, Key.Companion.m1233getDirectionUpEK5gGoQ())) {
                return FocusDirection.m58boximpl(FocusDirection.Companion.m74getUpdhqQ8s());
            }
            if (Key.m868equalsimpl0(m1463getKeyZmokQxo, Key.Companion.m1228getDirectionDownEK5gGoQ())) {
                return FocusDirection.m58boximpl(FocusDirection.Companion.m67getDowndhqQ8s());
            }
            if (Key.m868equalsimpl0(m1463getKeyZmokQxo, Key.Companion.m1227getDirectionCenterEK5gGoQ())) {
                return FocusDirection.m58boximpl(FocusDirection.Companion.m68getIndhqQ8s());
            }
            if (Key.m868equalsimpl0(m1463getKeyZmokQxo, Key.Companion.m1170getBackEK5gGoQ())) {
                return FocusDirection.m58boximpl(FocusDirection.Companion.m71getOutdhqQ8s());
            }
            return null;
        }
    }

    @Override // androidx.compose.ui.node.Owner
    public void requestRectangleOnScreen(androidx.compose.ui.geometry.Rect rect) {
        Rect rect2;
        Intrinsics.checkNotNullParameter(rect, "rect");
        rect2 = AndroidComposeView_androidKt.toRect(rect);
        requestRectangleOnScreen(rect2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        int size;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        if (!isAttachedToWindow()) {
            invalidateLayers(getRoot());
        }
        measureAndLayout();
        this.isDrawingContent = true;
        CanvasHolder canvasHolder = this.canvasHolder;
        Canvas internalCanvas = canvasHolder.getAndroidCanvas().getInternalCanvas();
        canvasHolder.getAndroidCanvas().setInternalCanvas(canvas);
        getRoot().draw$ui_release(canvasHolder.getAndroidCanvas());
        canvasHolder.getAndroidCanvas().setInternalCanvas(internalCanvas);
        if ((true ^ this.dirtyLayers.isEmpty()) && (size = this.dirtyLayers.size()) > 0) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                this.dirtyLayers.get(i).updateDisplayList();
                if (i2 >= size) {
                    break;
                }
                i = i2;
            }
        }
        if (ViewLayer.Companion.getShouldUseDispatchDraw()) {
            int save = canvas.save();
            canvas.clipRect(0.0f, 0.0f, 0.0f, 0.0f);
            super.dispatchDraw(canvas);
            canvas.restoreToCount(save);
        }
        this.dirtyLayers.clear();
        this.isDrawingContent = false;
        List<OwnedLayer> list = this.postponedDirtyLayers;
        if (list != null) {
            Intrinsics.checkNotNull(list);
            this.dirtyLayers.addAll(list);
            list.clear();
        }
    }

    public final void notifyLayerIsDirty$ui_release(OwnedLayer layer, boolean z) {
        Intrinsics.checkNotNullParameter(layer, "layer");
        if (!z) {
            if (!this.isDrawingContent && !this.dirtyLayers.remove(layer)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
        } else if (!this.isDrawingContent) {
            this.dirtyLayers.add(layer);
        } else {
            ArrayList arrayList = this.postponedDirtyLayers;
            if (arrayList == null) {
                arrayList = new ArrayList();
                this.postponedDirtyLayers = arrayList;
            }
            arrayList.add(layer);
        }
    }

    public final void setOnViewTreeOwnersAvailable(Function1<? super ViewTreeOwners, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        ViewTreeOwners viewTreeOwners = getViewTreeOwners();
        if (viewTreeOwners != null) {
            callback.invoke(viewTreeOwners);
        }
        if (isAttachedToWindow()) {
            return;
        }
        this.onViewTreeOwnersAvailable = callback;
    }

    public final Object boundsUpdatesEventLoop(Continuation<? super Unit> continuation) {
        Object boundsUpdatesEventLoop = this.accessibilityDelegate.boundsUpdatesEventLoop(continuation);
        return boundsUpdatesEventLoop == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? boundsUpdatesEventLoop : Unit.INSTANCE;
    }

    public final Object keyboardVisibilityEventLoop(Continuation<? super Unit> continuation) {
        Object keyboardVisibilityEventLoop = this.textInputServiceAndroid.keyboardVisibilityEventLoop(continuation);
        return keyboardVisibilityEventLoop == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? keyboardVisibilityEventLoop : Unit.INSTANCE;
    }

    private final void invalidateLayoutNodeMeasurement(LayoutNode layoutNode) {
        this.measureAndLayoutDelegate.requestRemeasure(layoutNode);
        MutableVector<LayoutNode> mutableVector = layoutNode.get_children$ui_release();
        int size = mutableVector.getSize();
        if (size > 0) {
            LayoutNode[] content = mutableVector.getContent();
            int i = 0;
            do {
                invalidateLayoutNodeMeasurement(content[i]);
                i++;
            } while (i < size);
        }
    }

    private final void invalidateLayers(LayoutNode layoutNode) {
        layoutNode.invalidateLayers$ui_release();
        MutableVector<LayoutNode> mutableVector = layoutNode.get_children$ui_release();
        int size = mutableVector.getSize();
        if (size > 0) {
            LayoutNode[] content = mutableVector.getContent();
            int i = 0;
            do {
                invalidateLayers(content[i]);
                i++;
            } while (i < size);
        }
    }

    @Override // androidx.compose.ui.platform.ViewRootForTest
    public void invalidateDescendants() {
        invalidateLayers(getRoot());
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        Lifecycle lifecycle;
        AndroidAutofill androidAutofill;
        super.onAttachedToWindow();
        invalidateLayoutNodeMeasurement(getRoot());
        invalidateLayers(getRoot());
        getSnapshotObserver().startObserving$ui_release();
        if (autofillSupported() && (androidAutofill = this._autofill) != null) {
            AutofillCallback.INSTANCE.register(androidAutofill);
        }
        AndroidComposeView androidComposeView = this;
        LifecycleOwner lifecycleOwner = ViewTreeLifecycleOwner.get(androidComposeView);
        SavedStateRegistryOwner savedStateRegistryOwner = ViewTreeSavedStateRegistryOwner.get(androidComposeView);
        ViewTreeOwners viewTreeOwners = getViewTreeOwners();
        if (viewTreeOwners == null || !(lifecycleOwner == null || savedStateRegistryOwner == null || (lifecycleOwner == viewTreeOwners.getLifecycleOwner() && savedStateRegistryOwner == viewTreeOwners.getLifecycleOwner()))) {
            if (lifecycleOwner == null) {
                throw new IllegalStateException("Composed into the View which doesn't propagate ViewTreeLifecycleOwner!");
            }
            if (savedStateRegistryOwner == null) {
                throw new IllegalStateException("Composed into the View which doesn't propagateViewTreeSavedStateRegistryOwner!");
            }
            LifecycleOwner lifecycleOwner2 = viewTreeOwners == null ? null : viewTreeOwners.getLifecycleOwner();
            if (lifecycleOwner2 != null && (lifecycle = lifecycleOwner2.getLifecycle()) != null) {
                lifecycle.removeObserver(this);
            }
            lifecycleOwner.getLifecycle().addObserver(this);
            ViewTreeOwners viewTreeOwners2 = new ViewTreeOwners(lifecycleOwner, savedStateRegistryOwner);
            setViewTreeOwners(viewTreeOwners2);
            Function1<? super ViewTreeOwners, Unit> function1 = this.onViewTreeOwnersAvailable;
            if (function1 != null) {
                function1.invoke(viewTreeOwners2);
            }
            this.onViewTreeOwnersAvailable = null;
        }
        ViewTreeOwners viewTreeOwners3 = getViewTreeOwners();
        Intrinsics.checkNotNull(viewTreeOwners3);
        viewTreeOwners3.getLifecycleOwner().getLifecycle().addObserver(this);
        getViewTreeObserver().addOnGlobalLayoutListener(this.globalLayoutListener);
        getViewTreeObserver().addOnScrollChangedListener(this.scrollChangedListener);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        AndroidAutofill androidAutofill;
        Lifecycle lifecycle;
        super.onDetachedFromWindow();
        getSnapshotObserver().stopObserving$ui_release();
        ViewTreeOwners viewTreeOwners = getViewTreeOwners();
        LifecycleOwner lifecycleOwner = viewTreeOwners == null ? null : viewTreeOwners.getLifecycleOwner();
        if (lifecycleOwner != null && (lifecycle = lifecycleOwner.getLifecycle()) != null) {
            lifecycle.removeObserver(this);
        }
        if (autofillSupported() && (androidAutofill = this._autofill) != null) {
            AutofillCallback.INSTANCE.unregister(androidAutofill);
        }
        getViewTreeObserver().removeOnGlobalLayoutListener(this.globalLayoutListener);
        getViewTreeObserver().removeOnScrollChangedListener(this.scrollChangedListener);
    }

    @Override // android.view.View
    public void onProvideAutofillVirtualStructure(ViewStructure viewStructure, int i) {
        AndroidAutofill androidAutofill;
        if (!autofillSupported() || viewStructure == null || (androidAutofill = this._autofill) == null) {
            return;
        }
        AndroidAutofill_androidKt.populateViewStructure(androidAutofill, viewStructure);
    }

    @Override // android.view.View
    public void autofill(SparseArray<AutofillValue> values) {
        AndroidAutofill androidAutofill;
        Intrinsics.checkNotNullParameter(values, "values");
        if (!autofillSupported() || (androidAutofill = this._autofill) == null) {
            return;
        }
        AndroidAutofill_androidKt.performAutofill(androidAutofill, values);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        int ProcessResult;
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        if (Float.isNaN(motionEvent.getX()) || Float.isNaN(motionEvent.getY()) || Float.isNaN(motionEvent.getRawX()) || Float.isNaN(motionEvent.getRawY())) {
            return false;
        }
        try {
            recalculateWindowPosition(motionEvent);
            this.forceUseMatrixCache = true;
            measureAndLayout();
            Trace.beginSection("AndroidOwner:onTouch");
            PointerInputEvent convertToPointerInputEvent$ui_release = this.motionEventAdapter.convertToPointerInputEvent$ui_release(motionEvent, this);
            if (convertToPointerInputEvent$ui_release != null) {
                ProcessResult = this.pointerInputEventProcessor.m1537processgBdvCQM(convertToPointerInputEvent$ui_release, this);
            } else {
                this.pointerInputEventProcessor.processCancel();
                ProcessResult = PointerInputEventProcessorKt.ProcessResult(false, false);
            }
            Trace.endSection();
            if (ProcessResult.m1580getAnyMovementConsumedimpl(ProcessResult)) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            return ProcessResult.m1581getDispatchedToAPointerInputModifierimpl(ProcessResult);
        } finally {
            this.forceUseMatrixCache = false;
        }
    }

    @Override // androidx.compose.ui.input.pointer.PositionCalculator
    /* renamed from: localToScreen-MK-Hz9U */
    public long mo1574localToScreenMKHz9U(long j) {
        recalculateWindowPosition();
        long m516mapMKHz9U = Matrix.m516mapMKHz9U(this.viewToWindowMatrix, j);
        return OffsetKt.Offset(Offset.m117getXimpl(m516mapMKHz9U) + Offset.m117getXimpl(this.windowPosition), Offset.m118getYimpl(m516mapMKHz9U) + Offset.m118getYimpl(this.windowPosition));
    }

    @Override // androidx.compose.ui.input.pointer.PositionCalculator
    /* renamed from: screenToLocal-MK-Hz9U */
    public long mo1575screenToLocalMKHz9U(long j) {
        recalculateWindowPosition();
        return Matrix.m516mapMKHz9U(this.windowToViewMatrix, OffsetKt.Offset(Offset.m117getXimpl(j) - Offset.m117getXimpl(this.windowPosition), Offset.m118getYimpl(j) - Offset.m118getYimpl(this.windowPosition)));
    }

    private final void recalculateWindowPosition() {
        if (this.forceUseMatrixCache) {
            return;
        }
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        if (currentAnimationTimeMillis != this.lastMatrixRecalculationAnimationTime) {
            this.lastMatrixRecalculationAnimationTime = currentAnimationTimeMillis;
            recalculateWindowViewTransforms();
            ViewParent parent = getParent();
            AndroidComposeView androidComposeView = this;
            while (parent instanceof ViewGroup) {
                androidComposeView = (View) parent;
                parent = ((ViewGroup) androidComposeView).getParent();
            }
            androidComposeView.getLocationOnScreen(this.tmpPositionArray);
            int[] iArr = this.tmpPositionArray;
            androidComposeView.getLocationInWindow(iArr);
            int[] iArr2 = this.tmpPositionArray;
            this.windowPosition = OffsetKt.Offset(iArr[0] - iArr2[0], iArr[1] - iArr2[1]);
        }
    }

    private final void recalculateWindowPosition(MotionEvent motionEvent) {
        this.lastMatrixRecalculationAnimationTime = AnimationUtils.currentAnimationTimeMillis();
        recalculateWindowViewTransforms();
        long m516mapMKHz9U = Matrix.m516mapMKHz9U(this.viewToWindowMatrix, OffsetKt.Offset(motionEvent.getX(), motionEvent.getY()));
        this.windowPosition = OffsetKt.Offset(motionEvent.getRawX() - Offset.m117getXimpl(m516mapMKHz9U), motionEvent.getRawY() - Offset.m118getYimpl(m516mapMKHz9U));
    }

    private final void recalculateWindowViewTransforms() {
        Matrix.m519resetimpl(this.viewToWindowMatrix);
        m1736transformMatrixToWindowEL8BTi8(this, this.viewToWindowMatrix);
        AndroidComposeView_androidKt.m1741invertToJiSxe2E(this.viewToWindowMatrix, this.windowToViewMatrix);
    }

    @Override // android.view.View
    public boolean onCheckIsTextEditor() {
        return this.textInputServiceAndroid.isEditorFocused();
    }

    @Override // android.view.View
    public InputConnection onCreateInputConnection(EditorInfo outAttrs) {
        Intrinsics.checkNotNullParameter(outAttrs, "outAttrs");
        return this.textInputServiceAndroid.createInputConnection(outAttrs);
    }

    @Override // androidx.compose.ui.node.Owner
    /* renamed from: calculateLocalPosition-MK-Hz9U */
    public long mo1729calculateLocalPositionMKHz9U(long j) {
        recalculateWindowPosition();
        return Matrix.m516mapMKHz9U(this.windowToViewMatrix, j);
    }

    @Override // androidx.compose.ui.node.Owner
    /* renamed from: calculatePositionInWindow-MK-Hz9U */
    public long mo1730calculatePositionInWindowMKHz9U(long j) {
        recalculateWindowPosition();
        return Matrix.m516mapMKHz9U(this.viewToWindowMatrix, j);
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        this.density = AndroidDensity_androidKt.Density(context);
        this.configurationChangeObserver.invoke(newConfig);
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        LayoutDirection layoutDirectionFromInt;
        if (this.superclassInitComplete) {
            layoutDirectionFromInt = AndroidComposeView_androidKt.layoutDirectionFromInt(i);
            setLayoutDirection(layoutDirectionFromInt);
        }
    }

    private final boolean autofillSupported() {
        return Build.VERSION.SDK_INT >= 26;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchHoverEvent(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        return this.accessibilityDelegate.dispatchHoverEvent(event);
    }

    private final View findViewByAccessibilityIdRootedAtCurrentView(int i, View view) {
        ViewGroup viewGroup;
        int childCount;
        if (Build.VERSION.SDK_INT >= 29) {
            return null;
        }
        int i2 = 0;
        Method declaredMethod = View.class.getDeclaredMethod("getAccessibilityViewId", new Class[0]);
        declaredMethod.setAccessible(true);
        if (Intrinsics.areEqual(declaredMethod.invoke(view, new Object[0]), Integer.valueOf(i))) {
            return view;
        }
        if (!(view instanceof ViewGroup) || (childCount = (viewGroup = (ViewGroup) view).getChildCount()) <= 0) {
            return null;
        }
        while (true) {
            int i3 = i2 + 1;
            View childAt = viewGroup.getChildAt(i2);
            Intrinsics.checkNotNullExpressionValue(childAt, "currentView.getChildAt(i)");
            View findViewByAccessibilityIdRootedAtCurrentView = findViewByAccessibilityIdRootedAtCurrentView(i, childAt);
            if (findViewByAccessibilityIdRootedAtCurrentView != null) {
                return findViewByAccessibilityIdRootedAtCurrentView;
            }
            if (i3 >= childCount) {
                return null;
            }
            i2 = i3;
        }
    }

    public final View findViewByAccessibilityIdTraversal(int i) {
        View view = null;
        try {
            if (Build.VERSION.SDK_INT >= 29) {
                Method declaredMethod = View.class.getDeclaredMethod("findViewByAccessibilityIdTraversal", Integer.TYPE);
                declaredMethod.setAccessible(true);
                Object invoke = declaredMethod.invoke(this, Integer.valueOf(i));
                if (invoke instanceof View) {
                    view = (View) invoke;
                }
            } else {
                view = findViewByAccessibilityIdRootedAtCurrentView(i, this);
            }
        } catch (NoSuchMethodException unused) {
        }
        return view;
    }

    @Override // androidx.compose.ui.platform.ViewRootForTest
    public boolean isLifecycleInResumedState() {
        Lifecycle lifecycle;
        ViewTreeOwners viewTreeOwners = getViewTreeOwners();
        Lifecycle.State state = null;
        LifecycleOwner lifecycleOwner = viewTreeOwners == null ? null : viewTreeOwners.getLifecycleOwner();
        if (lifecycleOwner != null && (lifecycle = lifecycleOwner.getLifecycle()) != null) {
            state = lifecycle.getCurrentState();
        }
        return state == Lifecycle.State.RESUMED;
    }

    /* renamed from: transformMatrixToWindow-EL8BTi8  reason: not valid java name */
    private final void m1736transformMatrixToWindowEL8BTi8(View view, float[] fArr) {
        ViewParent parent = view.getParent();
        if (parent instanceof View) {
            m1736transformMatrixToWindowEL8BTi8((View) parent, fArr);
            m1735preTranslate3XD1CNM(fArr, -view.getScrollX(), -view.getScrollY());
            m1735preTranslate3XD1CNM(fArr, view.getLeft(), view.getTop());
        } else {
            view.getLocationInWindow(this.tmpPositionArray);
            m1735preTranslate3XD1CNM(fArr, -view.getScrollX(), -view.getScrollY());
            int[] iArr = this.tmpPositionArray;
            m1735preTranslate3XD1CNM(fArr, iArr[0], iArr[1]);
        }
        android.graphics.Matrix viewMatrix = view.getMatrix();
        if (viewMatrix.isIdentity()) {
            return;
        }
        Intrinsics.checkNotNullExpressionValue(viewMatrix, "viewMatrix");
        m1734preConcattUYjHk(fArr, viewMatrix);
    }

    /* renamed from: preConcat-tU-YjHk  reason: not valid java name */
    private final void m1734preConcattUYjHk(float[] fArr, android.graphics.Matrix matrix) {
        AndroidMatrixConversions_androidKt.m230setFromtUYjHk(this.tmpCalculationMatrix, matrix);
        AndroidComposeView_androidKt.m1742preTransformJiSxe2E(fArr, this.tmpCalculationMatrix);
    }

    /* renamed from: preTranslate-3XD1CNM  reason: not valid java name */
    private final void m1735preTranslate3XD1CNM(float[] fArr, float f, float f2) {
        Matrix.m519resetimpl(this.tmpCalculationMatrix);
        Matrix.m530translateimpl$default(this.tmpCalculationMatrix, f, f2, 0.0f, 4, null);
        AndroidComposeView_androidKt.m1742preTransformJiSxe2E(fArr, this.tmpCalculationMatrix);
    }

    /* compiled from: AndroidComposeView.android.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH\u0003R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Landroidx/compose/ui/platform/AndroidComposeView$Companion;", "", "()V", "getBooleanMethod", "Ljava/lang/reflect/Method;", "systemPropertiesClass", "Ljava/lang/Class;", "getIsShowingLayoutBounds", "", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean getIsShowingLayoutBounds() {
            try {
                if (AndroidComposeView.systemPropertiesClass == null) {
                    AndroidComposeView.systemPropertiesClass = Class.forName("android.os.SystemProperties");
                    Class cls = AndroidComposeView.systemPropertiesClass;
                    AndroidComposeView.getBooleanMethod = cls == null ? null : cls.getDeclaredMethod("getBoolean", String.class, Boolean.TYPE);
                }
                Method method = AndroidComposeView.getBooleanMethod;
                Object invoke = method == null ? null : method.invoke(null, "debug.layout", false);
                Boolean bool = invoke instanceof Boolean ? invoke : null;
                if (bool == null) {
                    return false;
                }
                return bool.booleanValue();
            } catch (Exception unused) {
                return false;
            }
        }
    }

    /* compiled from: AndroidComposeView.android.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;", "", "lifecycleOwner", "Landroidx/lifecycle/LifecycleOwner;", "savedStateRegistryOwner", "Landroidx/savedstate/SavedStateRegistryOwner;", "(Landroidx/lifecycle/LifecycleOwner;Landroidx/savedstate/SavedStateRegistryOwner;)V", "getLifecycleOwner", "()Landroidx/lifecycle/LifecycleOwner;", "getSavedStateRegistryOwner", "()Landroidx/savedstate/SavedStateRegistryOwner;", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class ViewTreeOwners {
        public static final int $stable = 8;
        private final LifecycleOwner lifecycleOwner;
        private final SavedStateRegistryOwner savedStateRegistryOwner;

        public ViewTreeOwners(LifecycleOwner lifecycleOwner, SavedStateRegistryOwner savedStateRegistryOwner) {
            Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
            Intrinsics.checkNotNullParameter(savedStateRegistryOwner, "savedStateRegistryOwner");
            this.lifecycleOwner = lifecycleOwner;
            this.savedStateRegistryOwner = savedStateRegistryOwner;
        }

        public final LifecycleOwner getLifecycleOwner() {
            return this.lifecycleOwner;
        }

        public final SavedStateRegistryOwner getSavedStateRegistryOwner() {
            return this.savedStateRegistryOwner;
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        Trace.beginSection("AndroidOwner:onMeasure");
        try {
            if (!isAttachedToWindow()) {
                invalidateLayoutNodeMeasurement(getRoot());
            }
            Pair<Integer, Integer> convertMeasureSpec = convertMeasureSpec(i);
            int intValue = convertMeasureSpec.component1().intValue();
            int intValue2 = convertMeasureSpec.component2().intValue();
            Pair<Integer, Integer> convertMeasureSpec2 = convertMeasureSpec(i2);
            long Constraints = ConstraintsKt.Constraints(intValue, intValue2, convertMeasureSpec2.component1().intValue(), convertMeasureSpec2.component2().intValue());
            Constraints constraints = this.onMeasureConstraints;
            boolean z = false;
            if (constraints == null) {
                this.onMeasureConstraints = Constraints.m2063boximpl(Constraints);
                this.wasMeasuredWithMultipleConstraints = false;
            } else {
                if (constraints != null) {
                    z = Constraints.m2068equalsimpl0(constraints.m2081unboximpl(), Constraints);
                }
                if (!z) {
                    this.wasMeasuredWithMultipleConstraints = true;
                }
            }
            this.measureAndLayoutDelegate.m1718updateRootConstraintsBRTryo0(Constraints);
            this.measureAndLayoutDelegate.measureAndLayout();
            setMeasuredDimension(getRoot().getWidth(), getRoot().getHeight());
            if (this._androidViewsHandler != null) {
                getAndroidViewsHandler$ui_release().measure(View.MeasureSpec.makeMeasureSpec(getRoot().getWidth(), BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(getRoot().getHeight(), BasicMeasure.EXACTLY));
            }
            Unit unit = Unit.INSTANCE;
        } finally {
            Trace.endSection();
        }
    }
}
