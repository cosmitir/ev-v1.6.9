package androidx.compose.runtime;

import androidx.compose.runtime.tooling.CompositionData;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: Composer.kt */
@Metadata(d1 = {"\u0000¤\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0002\u0010\f\n\u0002\u0010\u0006\n\u0002\u0010\u0007\n\u0002\u0010\t\n\u0002\u0010\n\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\t\bf\u0018\u0000 k2\u00020\u0001:\u0001kJ@\u0010*\u001a\u00020+\"\u0004\b\u0000\u0010,\"\u0004\b\u0001\u0010-2\u0006\u0010.\u001a\u0002H,2\u001d\u0010/\u001a\u0019\u0012\u0004\u0012\u0002H-\u0012\u0004\u0012\u0002H,\u0012\u0004\u0012\u00020+00¢\u0006\u0002\b1H'¢\u0006\u0002\u00102J\b\u00103\u001a\u000204H'J\u0012\u00105\u001a\u00020\u001b2\b\u0010.\u001a\u0004\u0018\u00010\u0001H'J\u0010\u00105\u001a\u00020\u001b2\u0006\u0010.\u001a\u00020\u001bH\u0017J\u0010\u00105\u001a\u00020\u001b2\u0006\u0010.\u001a\u000206H\u0017J\u0010\u00105\u001a\u00020\u001b2\u0006\u0010.\u001a\u000207H\u0017J\u0010\u00105\u001a\u00020\u001b2\u0006\u0010.\u001a\u000208H\u0017J\u0010\u00105\u001a\u00020\u001b2\u0006\u0010.\u001a\u000209H\u0017J\u0010\u00105\u001a\u00020\u001b2\u0006\u0010.\u001a\u00020\u0016H\u0017J\u0010\u00105\u001a\u00020\u001b2\u0006\u0010.\u001a\u00020:H\u0017J\u0010\u00105\u001a\u00020\u001b2\u0006\u0010.\u001a\u00020;H\u0017J\b\u0010<\u001a\u00020+H&J!\u0010=\u001a\u0002H-\"\u0004\b\u0000\u0010-2\f\u0010>\u001a\b\u0012\u0004\u0012\u0002H-0?H'¢\u0006\u0002\u0010@J\u001c\u0010A\u001a\u00020+\"\u0004\b\u0000\u0010-2\f\u0010B\u001a\b\u0012\u0004\u0012\u0002H-0CH'J\b\u0010D\u001a\u00020+H'J\b\u0010E\u001a\u00020+H'J\b\u0010F\u001a\u00020+H'J\b\u0010G\u001a\u00020+H'J\b\u0010H\u001a\u00020+H'J\b\u0010I\u001a\u00020+H'J\b\u0010J\u001a\u00020+H'J\n\u0010K\u001a\u0004\u0018\u00010LH'J\b\u0010M\u001a\u00020+H'J\u001c\u0010N\u001a\u00020\u00012\b\u0010O\u001a\u0004\u0018\u00010\u00012\b\u0010P\u001a\u0004\u0018\u00010\u0001H'J\u0016\u0010Q\u001a\u00020+2\f\u0010R\u001a\b\u0012\u0004\u0012\u00020+0CH'J\u0010\u0010S\u001a\u00020+2\u0006\u0010T\u001a\u00020#H'J\n\u0010U\u001a\u0004\u0018\u00010\u0001H'J\b\u0010V\u001a\u00020+H'J\b\u0010W\u001a\u00020+H'J\u0010\u0010X\u001a\u00020+2\u0006\u0010X\u001a\u00020YH&J\b\u0010Z\u001a\u00020+H&J\u0018\u0010[\u001a\u00020+2\u0006\u0010>\u001a\u00020\u00162\u0006\u0010X\u001a\u00020YH&J\b\u0010\\\u001a\u00020+H'J\u001a\u0010]\u001a\u00020+2\u0006\u0010>\u001a\u00020\u00162\b\u0010^\u001a\u0004\u0018\u00010\u0001H'J\b\u0010_\u001a\u00020+H'J!\u0010`\u001a\u00020+2\u0012\u0010a\u001a\u000e\u0012\n\b\u0001\u0012\u0006\u0012\u0002\b\u00030c0bH'¢\u0006\u0002\u0010dJ\u0010\u0010e\u001a\u00020+2\u0006\u0010>\u001a\u00020\u0016H'J\u0010\u0010f\u001a\u00020\u00002\u0006\u0010>\u001a\u00020\u0016H'J\u001a\u0010g\u001a\u00020+2\u0006\u0010>\u001a\u00020\u00162\b\u0010^\u001a\u0004\u0018\u00010\u0001H'J\b\u0010h\u001a\u00020+H'J\u0012\u0010i\u001a\u00020+2\b\u0010.\u001a\u0004\u0018\u00010\u0001H'J\b\u0010j\u001a\u00020+H'R\u001e\u0010\u0002\u001a\u0006\u0012\u0002\b\u00030\u00038&X§\u0004¢\u0006\f\u0012\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\u00020\t8fX§\u0004¢\u0006\f\u0012\u0004\b\n\u0010\u0005\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\u000e8fX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0012\u0010\u0011\u001a\u00020\u0012X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u00168&X§\u0004¢\u0006\f\u0012\u0004\b\u0017\u0010\u0005\u001a\u0004\b\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u001b8&X§\u0004¢\u0006\f\u0012\u0004\b\u001c\u0010\u0005\u001a\u0004\b\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\u00020\u001b8&X§\u0004¢\u0006\f\u0012\u0004\b \u0010\u0005\u001a\u0004\b!\u0010\u001eR\u001c\u0010\"\u001a\u0004\u0018\u00010#8&X§\u0004¢\u0006\f\u0012\u0004\b$\u0010\u0005\u001a\u0004\b%\u0010&R\u001a\u0010'\u001a\u00020\u001b8&X§\u0004¢\u0006\f\u0012\u0004\b(\u0010\u0005\u001a\u0004\b)\u0010\u001e¨\u0006l"}, d2 = {"Landroidx/compose/runtime/Composer;", "", "applier", "Landroidx/compose/runtime/Applier;", "getApplier$annotations", "()V", "getApplier", "()Landroidx/compose/runtime/Applier;", "applyCoroutineContext", "Lkotlin/coroutines/CoroutineContext;", "getApplyCoroutineContext$annotations", "getApplyCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "composition", "Landroidx/compose/runtime/ControlledComposition;", "getComposition", "()Landroidx/compose/runtime/ControlledComposition;", "compositionData", "Landroidx/compose/runtime/tooling/CompositionData;", "getCompositionData", "()Landroidx/compose/runtime/tooling/CompositionData;", "compoundKeyHash", "", "getCompoundKeyHash$annotations", "getCompoundKeyHash", "()I", "defaultsInvalid", "", "getDefaultsInvalid$annotations", "getDefaultsInvalid", "()Z", "inserting", "getInserting$annotations", "getInserting", "recomposeScope", "Landroidx/compose/runtime/RecomposeScope;", "getRecomposeScope$annotations", "getRecomposeScope", "()Landroidx/compose/runtime/RecomposeScope;", "skipping", "getSkipping$annotations", "getSkipping", "apply", "", "V", "T", "value", "block", "Lkotlin/Function2;", "Lkotlin/ExtensionFunctionType;", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V", "buildContext", "Landroidx/compose/runtime/CompositionContext;", "changed", "", "", "", "", "", "", "collectParameterInformation", "consume", "key", "Landroidx/compose/runtime/CompositionLocal;", "(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;", "createNode", "factory", "Lkotlin/Function0;", "disableReusing", "enableReusing", "endDefaults", "endMovableGroup", "endNode", "endProviders", "endReplaceableGroup", "endRestartGroup", "Landroidx/compose/runtime/ScopeUpdateScope;", "endReusableGroup", "joinKey", "left", "right", "recordSideEffect", "effect", "recordUsed", "scope", "rememberedValue", "skipCurrentGroup", "skipToGroupEnd", "sourceInformation", "", "sourceInformationMarkerEnd", "sourceInformationMarkerStart", "startDefaults", "startMovableGroup", "dataKey", "startNode", "startProviders", "values", "", "Landroidx/compose/runtime/ProvidedValue;", "([Landroidx/compose/runtime/ProvidedValue;)V", "startReplaceableGroup", "startRestartGroup", "startReusableGroup", "startReusableNode", "updateRememberedValue", "useNode", "Companion", "runtime_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public interface Composer {
    public static final Companion Companion = Companion.$$INSTANCE;

    @ComposeCompilerApi
    <V, T> void apply(V v, Function2<? super T, ? super V, Unit> function2);

    @InternalComposeApi
    CompositionContext buildContext();

    @ComposeCompilerApi
    boolean changed(byte b);

    @ComposeCompilerApi
    boolean changed(char c);

    @ComposeCompilerApi
    boolean changed(double d);

    @ComposeCompilerApi
    boolean changed(float f);

    @ComposeCompilerApi
    boolean changed(int i);

    @ComposeCompilerApi
    boolean changed(long j);

    @ComposeCompilerApi
    boolean changed(Object obj);

    @ComposeCompilerApi
    boolean changed(short s);

    @ComposeCompilerApi
    boolean changed(boolean z);

    void collectParameterInformation();

    @InternalComposeApi
    <T> T consume(CompositionLocal<T> compositionLocal);

    @ComposeCompilerApi
    <T> void createNode(Function0<? extends T> function0);

    @ComposeCompilerApi
    void disableReusing();

    @ComposeCompilerApi
    void enableReusing();

    @ComposeCompilerApi
    void endDefaults();

    @ComposeCompilerApi
    void endMovableGroup();

    @ComposeCompilerApi
    void endNode();

    @InternalComposeApi
    void endProviders();

    @ComposeCompilerApi
    void endReplaceableGroup();

    @ComposeCompilerApi
    ScopeUpdateScope endRestartGroup();

    @ComposeCompilerApi
    void endReusableGroup();

    Applier<?> getApplier();

    CoroutineContext getApplyCoroutineContext();

    ControlledComposition getComposition();

    CompositionData getCompositionData();

    int getCompoundKeyHash();

    boolean getDefaultsInvalid();

    boolean getInserting();

    RecomposeScope getRecomposeScope();

    boolean getSkipping();

    @ComposeCompilerApi
    Object joinKey(Object obj, Object obj2);

    @InternalComposeApi
    void recordSideEffect(Function0<Unit> function0);

    @InternalComposeApi
    void recordUsed(RecomposeScope recomposeScope);

    @ComposeCompilerApi
    Object rememberedValue();

    @ComposeCompilerApi
    void skipCurrentGroup();

    @ComposeCompilerApi
    void skipToGroupEnd();

    void sourceInformation(String str);

    void sourceInformationMarkerEnd();

    void sourceInformationMarkerStart(int i, String str);

    @ComposeCompilerApi
    void startDefaults();

    @ComposeCompilerApi
    void startMovableGroup(int i, Object obj);

    @ComposeCompilerApi
    void startNode();

    @InternalComposeApi
    void startProviders(ProvidedValue<?>[] providedValueArr);

    @ComposeCompilerApi
    void startReplaceableGroup(int i);

    @ComposeCompilerApi
    Composer startRestartGroup(int i);

    @ComposeCompilerApi
    void startReusableGroup(int i, Object obj);

    @ComposeCompilerApi
    void startReusableNode();

    @ComposeCompilerApi
    void updateRememberedValue(Object obj);

    @ComposeCompilerApi
    void useNode();

    /* compiled from: Composer.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @ComposeCompilerApi
        public static /* synthetic */ void getApplier$annotations() {
        }

        @InternalComposeApi
        public static /* synthetic */ void getApplyCoroutineContext$annotations() {
        }

        @InternalComposeApi
        public static /* synthetic */ void getCompoundKeyHash$annotations() {
        }

        @ComposeCompilerApi
        public static /* synthetic */ void getDefaultsInvalid$annotations() {
        }

        @ComposeCompilerApi
        public static /* synthetic */ void getInserting$annotations() {
        }

        @InternalComposeApi
        public static /* synthetic */ void getRecomposeScope$annotations() {
        }

        @ComposeCompilerApi
        public static /* synthetic */ void getSkipping$annotations() {
        }

        @ComposeCompilerApi
        public static boolean changed(Composer composer, boolean z) {
            Intrinsics.checkNotNullParameter(composer, "this");
            return composer.changed(z);
        }

        @ComposeCompilerApi
        public static boolean changed(Composer composer, char c) {
            Intrinsics.checkNotNullParameter(composer, "this");
            return composer.changed(c);
        }

        @ComposeCompilerApi
        public static boolean changed(Composer composer, byte b) {
            Intrinsics.checkNotNullParameter(composer, "this");
            return composer.changed(b);
        }

        @ComposeCompilerApi
        public static boolean changed(Composer composer, short s) {
            Intrinsics.checkNotNullParameter(composer, "this");
            return composer.changed(s);
        }

        @ComposeCompilerApi
        public static boolean changed(Composer composer, int i) {
            Intrinsics.checkNotNullParameter(composer, "this");
            return composer.changed(i);
        }

        @ComposeCompilerApi
        public static boolean changed(Composer composer, float f) {
            Intrinsics.checkNotNullParameter(composer, "this");
            return composer.changed(f);
        }

        @ComposeCompilerApi
        public static boolean changed(Composer composer, long j) {
            Intrinsics.checkNotNullParameter(composer, "this");
            return composer.changed(j);
        }

        @ComposeCompilerApi
        public static boolean changed(Composer composer, double d) {
            Intrinsics.checkNotNullParameter(composer, "this");
            return composer.changed(d);
        }
    }

    /* compiled from: Composer.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/runtime/Composer$Companion;", "", "()V", "Empty", "getEmpty", "()Ljava/lang/Object;", "runtime_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final Object Empty = new Object() { // from class: androidx.compose.runtime.Composer$Companion$Empty$1
            public String toString() {
                return "Empty";
            }
        };

        private Companion() {
        }

        public final Object getEmpty() {
            return Empty;
        }
    }
}
