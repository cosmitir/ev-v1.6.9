package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.input.pointer.PointerInputFilter;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutInfo;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.ModifierInfo;
import androidx.compose.ui.layout.OnGloballyPositionedModifier;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.Remeasurement;
import androidx.compose.ui.platform.JvmActuals_jvmKt;
import androidx.compose.ui.semantics.SemanticsNodeKt;
import androidx.compose.ui.semantics.SemanticsWrapper;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: LayoutNode.kt */
@Metadata(d1 = {"\u0000º\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b$\n\u0002\u0018\u0002\n\u0002\b\n\b\u0000\u0018\u0000 \u008c\u00022\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005:\b\u008c\u0002\u008d\u0002\u008e\u0002\u008f\u0002B\u0007\b\u0010¢\u0006\u0002\u0010\u0006B\u000f\b\u0010\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\t\u0010¢\u0001\u001a\u00020vH\u0002J\u0018\u0010£\u0001\u001a\u00020v2\u0007\u0010\u0084\u0001\u001a\u00020uH\u0000¢\u0006\u0003\b¤\u0001J\u001d\u0010¥\u0001\u001a\u0010\u0012\u0005\u0012\u00030§\u0001\u0012\u0004\u0012\u00020/0¦\u0001H\u0000¢\u0006\u0003\b¨\u0001J\t\u0010©\u0001\u001a\u00020vH\u0002J\u0014\u0010ª\u0001\u001a\u00030«\u00012\b\b\u0002\u0010.\u001a\u00020/H\u0002J\u000f\u0010¬\u0001\u001a\u00020vH\u0000¢\u0006\u0003\b\u00ad\u0001J\u000f\u0010®\u0001\u001a\u00020vH\u0000¢\u0006\u0003\b¯\u0001J\u0019\u0010°\u0001\u001a\u00020v2\b\u0010±\u0001\u001a\u00030²\u0001H\u0000¢\u0006\u0003\b³\u0001J\u001f\u0010´\u0001\u001a\u00020v2\u0013\u0010µ\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020v0tH\u0082\bJ\u001f\u0010¶\u0001\u001a\u00020v2\u0013\u0010µ\u0001\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020v0tH\u0082\bJ\t\u0010·\u0001\u001a\u00020vH\u0016J\u0010\u0010¸\u0001\u001a\t\u0012\u0005\u0012\u00030¹\u00010 H\u0016J\u000f\u0010º\u0001\u001a\b\u0012\u0004\u0012\u00020\u007f0\rH\u0002J\u0019\u0010»\u0001\u001a\u00020v2\b\u0010¼\u0001\u001a\u00030½\u0001H\u0000¢\u0006\u0003\b¾\u0001J\t\u0010¿\u0001\u001a\u00020\bH\u0002J3\u0010À\u0001\u001a\u00020v2\b\u0010Á\u0001\u001a\u00030Â\u00012\u000f\u0010Ã\u0001\u001a\n\u0012\u0005\u0012\u00030Å\u00010Ä\u0001H\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\bÆ\u0001\u0010Ç\u0001J3\u0010È\u0001\u001a\u00020v2\b\u0010Á\u0001\u001a\u00030Â\u00012\u000f\u0010É\u0001\u001a\n\u0012\u0005\u0012\u00030Ê\u00010Ä\u0001H\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\bË\u0001\u0010Ç\u0001J\"\u00108\u001a\u00020v2\u000e\u0010µ\u0001\u001a\t\u0012\u0004\u0012\u00020v0Ì\u0001H\u0080\bø\u0001\u0002¢\u0006\u0003\bÍ\u0001J!\u0010Î\u0001\u001a\u00020v2\u0007\u0010Ï\u0001\u001a\u00020/2\u0007\u0010Ð\u0001\u001a\u00020\u0000H\u0000¢\u0006\u0003\bÑ\u0001J\u000f\u0010Ò\u0001\u001a\u00020vH\u0000¢\u0006\u0003\bÓ\u0001J\u000f\u0010Ô\u0001\u001a\u00020vH\u0000¢\u0006\u0003\bÕ\u0001J\t\u0010Ö\u0001\u001a\u00020vH\u0002J\u000f\u0010×\u0001\u001a\u00020vH\u0000¢\u0006\u0003\bØ\u0001J\t\u0010Ù\u0001\u001a\u00020vH\u0002J\u0011\u0010Ú\u0001\u001a\u00020v2\u0006\u0010j\u001a\u00020iH\u0002J\t\u0010Û\u0001\u001a\u00020vH\u0002J\u0012\u0010Ü\u0001\u001a\u00020/2\u0007\u0010\u0098\u0001\u001a\u00020/H\u0016J\u0011\u0010Ý\u0001\u001a\u00020/2\u0006\u00106\u001a\u00020/H\u0016J#\u0010Þ\u0001\u001a\u00030ß\u00012\b\u0010à\u0001\u001a\u00030á\u0001H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\bâ\u0001\u0010ã\u0001J\u0012\u0010ä\u0001\u001a\u00020/2\u0007\u0010\u0098\u0001\u001a\u00020/H\u0016J\u0011\u0010å\u0001\u001a\u00020/2\u0006\u00106\u001a\u00020/H\u0016J*\u0010æ\u0001\u001a\u00020v2\u0007\u0010ç\u0001\u001a\u00020/2\u0007\u0010è\u0001\u001a\u00020/2\u0007\u0010é\u0001\u001a\u00020/H\u0000¢\u0006\u0003\bê\u0001J\u000f\u0010ë\u0001\u001a\u00020vH\u0000¢\u0006\u0003\bì\u0001J\t\u0010í\u0001\u001a\u00020vH\u0002J\t\u0010î\u0001\u001a\u00020vH\u0002J\u000f\u0010ï\u0001\u001a\u00020vH\u0000¢\u0006\u0003\bð\u0001J\t\u0010ñ\u0001\u001a\u00020vH\u0002J!\u0010ò\u0001\u001a\u00020v2\u0007\u0010ó\u0001\u001a\u00020/2\u0007\u0010ô\u0001\u001a\u00020/H\u0000¢\u0006\u0003\bõ\u0001J\t\u0010ö\u0001\u001a\u00020vH\u0002J#\u0010÷\u0001\u001a\u00020\b2\f\b\u0002\u0010à\u0001\u001a\u0005\u0018\u00010á\u0001H\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0003\bø\u0001J\u000f\u0010ù\u0001\u001a\u00020vH\u0000¢\u0006\u0003\bú\u0001J!\u0010û\u0001\u001a\u00020v2\u0007\u0010Ï\u0001\u001a\u00020/2\u0007\u0010é\u0001\u001a\u00020/H\u0000¢\u0006\u0003\bü\u0001J\u000f\u0010ý\u0001\u001a\u00020vH\u0000¢\u0006\u0003\bþ\u0001J\u000f\u0010ÿ\u0001\u001a\u00020vH\u0000¢\u0006\u0003\b\u0080\u0002J\u000f\u0010\u0081\u0002\u001a\u00020vH\u0000¢\u0006\u0003\b\u0082\u0002J\u0012\u0010\u0083\u0002\u001a\u00020v2\u0007\u0010\u0084\u0002\u001a\u00020\u0000H\u0002J\"\u0010\u0085\u0002\u001a\t\u0012\u0002\b\u0003\u0018\u00010\u009b\u00012\u0007\u0010j\u001a\u00030\u0086\u00022\u0007\u0010\u0087\u0002\u001a\u00020\u0013H\u0002J\t\u0010\u0088\u0002\u001a\u00020\bH\u0002J\n\u0010\u0089\u0002\u001a\u00030«\u0001H\u0016J\u001f\u0010\u008a\u0002\u001a\u00020v2\u000e\u0010µ\u0001\u001a\t\u0012\u0004\u0012\u00020v0Ì\u0001H\u0000¢\u0006\u0003\b\u008b\u0002R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00000\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00000\r8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00000\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0000X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00000\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u00020\u0017X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R$\u0010\u001a\u001a\u00020\b8\u0000@\u0000X\u0081\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u001b\u0010\u0006\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\tR\u001a\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00000 8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\"R\u0014\u0010#\u001a\u00020$8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b%\u0010&R$\u0010)\u001a\u00020(2\u0006\u0010'\u001a\u00020(@VX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u001a\u0010.\u001a\u00020/X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\u001a\u00104\u001a\b\u0012\u0004\u0012\u00020\u00000 8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b5\u0010\"R\u0014\u00106\u001a\u00020/8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b7\u00101R\u000e\u00108\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u00109\u001a\u0004\u0018\u00010\u00138@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b:\u0010;R\u001a\u0010<\u001a\u00020\bX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b=\u0010\u001d\"\u0004\b>\u0010\tR\u0014\u0010?\u001a\u00020\u0013X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b@\u0010;R\u0014\u0010A\u001a\u00020BX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\bC\u0010DR\u0014\u0010E\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bE\u0010\u001dR\u001e\u0010G\u001a\u00020\b2\u0006\u0010F\u001a\u00020\b@RX\u0096\u000e¢\u0006\b\n\u0000\u001a\u0004\bG\u0010\u001dR\u0014\u0010H\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bH\u0010\u001dR\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010J\u001a\u00020I2\u0006\u0010'\u001a\u00020I@VX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bK\u0010L\"\u0004\bM\u0010NR\u001a\u0010O\u001a\u00020PX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010TR\u0014\u0010U\u001a\u00020VX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\bW\u0010XR$\u0010Z\u001a\u00020Y2\u0006\u0010'\u001a\u00020Y@VX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b[\u0010\\\"\u0004\b]\u0010^R\u0014\u0010_\u001a\u00020`X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\ba\u0010bR\u001a\u0010c\u001a\u00020dX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\be\u0010f\"\u0004\bg\u0010hR$\u0010j\u001a\u00020i2\u0006\u0010'\u001a\u00020i@VX\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bk\u0010l\"\u0004\bm\u0010nR\u001a\u0010o\u001a\u00020\bX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bp\u0010\u001d\"\u0004\bq\u0010\tR\u000e\u0010r\u001a\u00020/X\u0082\u000e¢\u0006\u0002\n\u0000R(\u0010s\u001a\u0010\u0012\u0004\u0012\u00020u\u0012\u0004\u0012\u00020v\u0018\u00010tX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bw\u0010x\"\u0004\by\u0010zR(\u0010{\u001a\u0010\u0012\u0004\u0012\u00020u\u0012\u0004\u0012\u00020v\u0018\u00010tX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b|\u0010x\"\u0004\b}\u0010zR\u0016\u0010~\u001a\n\u0012\u0004\u0012\u00020\u007f\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0080\u0001\u001a\u00020\u00138@X\u0080\u0004¢\u0006\u0007\u001a\u0005\b\u0081\u0001\u0010;R\u0010\u0010\u0082\u0001\u001a\u00030\u0083\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R%\u0010\u0084\u0001\u001a\u0004\u0018\u00010u2\b\u0010F\u001a\u0004\u0018\u00010u@BX\u0080\u000e¢\u0006\n\n\u0000\u001a\u0006\b\u0085\u0001\u0010\u0086\u0001R\u0019\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u00008@X\u0080\u0004¢\u0006\b\u001a\u0006\b\u0088\u0001\u0010\u0089\u0001R\u001a\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u008b\u00018VX\u0096\u0004¢\u0006\b\u001a\u0006\b\u008c\u0001\u0010\u008d\u0001R\u0019\u0010\u008e\u0001\u001a\u0004\u0018\u00010\u00048VX\u0096\u0004¢\u0006\b\u001a\u0006\b\u008f\u0001\u0010\u0090\u0001R \u0010\u0091\u0001\u001a\u00020/2\u0006\u0010F\u001a\u00020/@BX\u0080\u000e¢\u0006\t\n\u0000\u001a\u0005\b\u0092\u0001\u00101R\u000f\u0010\u0093\u0001\u001a\u00020/X\u0082\u000e¢\u0006\u0002\n\u0000R\u000f\u0010\u0094\u0001\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000f\u0010\u0095\u0001\u001a\u00020/X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0096\u0001\u001a\u00020\b8@X\u0080\u0004¢\u0006\u0007\u001a\u0005\b\u0097\u0001\u0010\u001dR\u0016\u0010\u0098\u0001\u001a\u00020/8VX\u0096\u0004¢\u0006\u0007\u001a\u0005\b\u0099\u0001\u00101R\u001a\u0010\u009a\u0001\u001a\r\u0012\t\u0012\u0007\u0012\u0002\b\u00030\u009b\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u009c\u0001\u001a\u00030\u009d\u0001X\u0082\u000e¢\u0006\u0002\n\u0000R#\u0010\u009e\u0001\u001a\b\u0012\u0004\u0012\u00020\u00000\r8@X\u0081\u0004¢\u0006\u000e\u0012\u0005\b\u009f\u0001\u0010\u0006\u001a\u0005\b \u0001\u0010\u000fR\u000f\u0010¡\u0001\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u0012\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0005\b\u009920\u0001¨\u0006\u0090\u0002"}, d2 = {"Landroidx/compose/ui/node/LayoutNode;", "Landroidx/compose/ui/layout/Measurable;", "Landroidx/compose/ui/layout/Remeasurement;", "Landroidx/compose/ui/node/OwnerScope;", "Landroidx/compose/ui/layout/LayoutInfo;", "Landroidx/compose/ui/node/ComposeUiNode;", "()V", "isVirtual", "", "(Z)V", "ZComparator", "Ljava/util/Comparator;", "_children", "Landroidx/compose/runtime/collection/MutableVector;", "get_children$ui_release", "()Landroidx/compose/runtime/collection/MutableVector;", "_foldedChildren", "_foldedParent", "_innerLayerWrapper", "Landroidx/compose/ui/node/LayoutNodeWrapper;", "_unfoldedChildren", "_zSortedChildren", "alignmentLines", "Landroidx/compose/ui/node/LayoutNodeAlignmentLines;", "getAlignmentLines$ui_release", "()Landroidx/compose/ui/node/LayoutNodeAlignmentLines;", "canMultiMeasure", "getCanMultiMeasure$ui_release$annotations", "getCanMultiMeasure$ui_release", "()Z", "setCanMultiMeasure$ui_release", "children", "", "getChildren$ui_release", "()Ljava/util/List;", "coordinates", "Landroidx/compose/ui/layout/LayoutCoordinates;", "getCoordinates", "()Landroidx/compose/ui/layout/LayoutCoordinates;", "value", "Landroidx/compose/ui/unit/Density;", "density", "getDensity", "()Landroidx/compose/ui/unit/Density;", "setDensity", "(Landroidx/compose/ui/unit/Density;)V", "depth", "", "getDepth$ui_release", "()I", "setDepth$ui_release", "(I)V", "foldedChildren", "getFoldedChildren$ui_release", "height", "getHeight", "ignoreRemeasureRequests", "innerLayerWrapper", "getInnerLayerWrapper$ui_release", "()Landroidx/compose/ui/node/LayoutNodeWrapper;", "innerLayerWrapperIsDirty", "getInnerLayerWrapperIsDirty$ui_release", "setInnerLayerWrapperIsDirty$ui_release", "innerLayoutNodeWrapper", "getInnerLayoutNodeWrapper$ui_release", "intrinsicsPolicy", "Landroidx/compose/ui/node/IntrinsicsPolicy;", "getIntrinsicsPolicy$ui_release", "()Landroidx/compose/ui/node/IntrinsicsPolicy;", "isAttached", "<set-?>", "isPlaced", "isValid", "Landroidx/compose/ui/unit/LayoutDirection;", "layoutDirection", "getLayoutDirection", "()Landroidx/compose/ui/unit/LayoutDirection;", "setLayoutDirection", "(Landroidx/compose/ui/unit/LayoutDirection;)V", "layoutState", "Landroidx/compose/ui/node/LayoutNode$LayoutState;", "getLayoutState$ui_release", "()Landroidx/compose/ui/node/LayoutNode$LayoutState;", "setLayoutState$ui_release", "(Landroidx/compose/ui/node/LayoutNode$LayoutState;)V", "mDrawScope", "Landroidx/compose/ui/node/LayoutNodeDrawScope;", "getMDrawScope$ui_release", "()Landroidx/compose/ui/node/LayoutNodeDrawScope;", "Landroidx/compose/ui/layout/MeasurePolicy;", "measurePolicy", "getMeasurePolicy", "()Landroidx/compose/ui/layout/MeasurePolicy;", "setMeasurePolicy", "(Landroidx/compose/ui/layout/MeasurePolicy;)V", "measureScope", "Landroidx/compose/ui/layout/MeasureScope;", "getMeasureScope$ui_release", "()Landroidx/compose/ui/layout/MeasureScope;", "measuredByParent", "Landroidx/compose/ui/node/LayoutNode$UsageByParent;", "getMeasuredByParent$ui_release", "()Landroidx/compose/ui/node/LayoutNode$UsageByParent;", "setMeasuredByParent$ui_release", "(Landroidx/compose/ui/node/LayoutNode$UsageByParent;)V", "Landroidx/compose/ui/Modifier;", "modifier", "getModifier", "()Landroidx/compose/ui/Modifier;", "setModifier", "(Landroidx/compose/ui/Modifier;)V", "needsOnPositionedDispatch", "getNeedsOnPositionedDispatch$ui_release", "setNeedsOnPositionedDispatch$ui_release", "nextChildPlaceOrder", "onAttach", "Lkotlin/Function1;", "Landroidx/compose/ui/node/Owner;", "", "getOnAttach$ui_release", "()Lkotlin/jvm/functions/Function1;", "setOnAttach$ui_release", "(Lkotlin/jvm/functions/Function1;)V", "onDetach", "getOnDetach$ui_release", "setOnDetach$ui_release", "onPositionedCallbacks", "Landroidx/compose/ui/node/OnGloballyPositionedModifierWrapper;", "outerLayoutNodeWrapper", "getOuterLayoutNodeWrapper$ui_release", "outerMeasurablePlaceable", "Landroidx/compose/ui/node/OuterMeasurablePlaceable;", "owner", "getOwner$ui_release", "()Landroidx/compose/ui/node/Owner;", "parent", "getParent$ui_release", "()Landroidx/compose/ui/node/LayoutNode;", "parentData", "", "getParentData", "()Ljava/lang/Object;", "parentInfo", "getParentInfo", "()Landroidx/compose/ui/layout/LayoutInfo;", "placeOrder", "getPlaceOrder$ui_release", "previousPlaceOrder", "unfoldedVirtualChildrenListDirty", "virtualChildrenCount", "wasMeasuredDuringThisIteration", "getWasMeasuredDuringThisIteration$ui_release", "width", "getWidth", "wrapperCache", "Landroidx/compose/ui/node/DelegatingLayoutNodeWrapper;", "zIndex", "", "zSortedChildren", "getZSortedChildren$annotations", "getZSortedChildren", "zSortedChildrenInvalidated", "alignmentLinesQueriedByModifier", "attach", "attach$ui_release", "calculateAlignmentLines", "", "Landroidx/compose/ui/layout/AlignmentLine;", "calculateAlignmentLines$ui_release", "copyWrappersToCache", "debugTreeToString", "", "detach", "detach$ui_release", "dispatchOnPositionedCallbacks", "dispatchOnPositionedCallbacks$ui_release", "draw", "canvas", "Landroidx/compose/ui/graphics/Canvas;", "draw$ui_release", "forEachDelegate", "block", "forEachDelegateIncludingInner", "forceRemeasure", "getModifierInfo", "Landroidx/compose/ui/layout/ModifierInfo;", "getOrCreateOnPositionedCallbacks", "handleMeasureResult", "measureResult", "Landroidx/compose/ui/layout/MeasureResult;", "handleMeasureResult$ui_release", "hasNewPositioningCallback", "hitTest", "pointerPosition", "Landroidx/compose/ui/geometry/Offset;", "hitPointerInputFilters", "", "Landroidx/compose/ui/input/pointer/PointerInputFilter;", "hitTest-3MmeM6k$ui_release", "(JLjava/util/List;)V", "hitTestSemantics", "hitSemanticsWrappers", "Landroidx/compose/ui/semantics/SemanticsWrapper;", "hitTestSemantics-3MmeM6k$ui_release", "Lkotlin/Function0;", "ignoreRemeasureRequests$ui_release", "insertAt", FirebaseAnalytics.Param.INDEX, "instance", "insertAt$ui_release", "invalidateLayer", "invalidateLayer$ui_release", "invalidateLayers", "invalidateLayers$ui_release", "invalidateUnfoldedVirtualChildren", "layoutChildren", "layoutChildren$ui_release", "markNodeAndSubtreeAsPlaced", "markReusedModifiers", "markSubtreeAsNotPlaced", "maxIntrinsicHeight", "maxIntrinsicWidth", "measure", "Landroidx/compose/ui/layout/Placeable;", "constraints", "Landroidx/compose/ui/unit/Constraints;", "measure-BRTryo0", "(J)Landroidx/compose/ui/layout/Placeable;", "minIntrinsicHeight", "minIntrinsicWidth", "move", TypedValues.TransitionType.S_FROM, TypedValues.TransitionType.S_TO, "count", "move$ui_release", "onAlignmentsChanged", "onAlignmentsChanged$ui_release", "onBeforeLayoutChildren", "onDensityOrLayoutDirectionChanged", "onNodePlaced", "onNodePlaced$ui_release", "onZSortedChildrenInvalidated", "place", "x", "y", "place$ui_release", "recreateUnfoldedChildrenIfDirty", "remeasure", "remeasure-_Sx5XlM$ui_release", "removeAll", "removeAll$ui_release", "removeAt", "removeAt$ui_release", "replace", "replace$ui_release", "requestRelayout", "requestRelayout$ui_release", "requestRemeasure", "requestRemeasure$ui_release", "rescheduleRemeasureOrRelayout", "it", "reuseLayoutNodeWrapper", "Landroidx/compose/ui/Modifier$Element;", "wrapper", "shouldInvalidateParentLayer", "toString", "withNoSnapshotReadObservation", "withNoSnapshotReadObservation$ui_release", "Companion", "LayoutState", "NoIntrinsicsMeasurePolicy", "UsageByParent", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class LayoutNode implements Measurable, Remeasurement, OwnerScope, LayoutInfo, ComposeUiNode {
    public static final int NotPlacedPlaceOrder = Integer.MAX_VALUE;
    private final Comparator<LayoutNode> ZComparator;
    private final MutableVector<LayoutNode> _foldedChildren;
    private LayoutNode _foldedParent;
    private LayoutNodeWrapper _innerLayerWrapper;
    private MutableVector<LayoutNode> _unfoldedChildren;
    private final MutableVector<LayoutNode> _zSortedChildren;
    private final LayoutNodeAlignmentLines alignmentLines;
    private boolean canMultiMeasure;
    private Density density;
    private int depth;
    private boolean ignoreRemeasureRequests;
    private boolean innerLayerWrapperIsDirty;
    private final LayoutNodeWrapper innerLayoutNodeWrapper;
    private final IntrinsicsPolicy intrinsicsPolicy;
    private boolean isPlaced;
    private final boolean isVirtual;
    private LayoutDirection layoutDirection;
    private LayoutState layoutState;
    private final LayoutNodeDrawScope mDrawScope;
    private MeasurePolicy measurePolicy;
    private final MeasureScope measureScope;
    private UsageByParent measuredByParent;
    private Modifier modifier;
    private boolean needsOnPositionedDispatch;
    private int nextChildPlaceOrder;
    private Function1<? super Owner, Unit> onAttach;
    private Function1<? super Owner, Unit> onDetach;
    private MutableVector<OnGloballyPositionedModifierWrapper> onPositionedCallbacks;
    private final OuterMeasurablePlaceable outerMeasurablePlaceable;
    private Owner owner;
    private int placeOrder;
    private int previousPlaceOrder;
    private boolean unfoldedVirtualChildrenListDirty;
    private int virtualChildrenCount;
    private MutableVector<DelegatingLayoutNodeWrapper<?>> wrapperCache;
    private float zIndex;
    private boolean zSortedChildrenInvalidated;
    public static final Companion Companion = new Companion(null);
    private static final NoIntrinsicsMeasurePolicy ErrorMeasurePolicy = new NoIntrinsicsMeasurePolicy() { // from class: androidx.compose.ui.node.LayoutNode$Companion$ErrorMeasurePolicy$1
        @Override // androidx.compose.ui.layout.MeasurePolicy
        /* renamed from: measure-3p2s80s */
        public /* bridge */ /* synthetic */ MeasureResult mo1624measure3p2s80s(MeasureScope measureScope, List list, long j) {
            m1701measure3p2s80s(measureScope, (List<? extends Measurable>) list, j);
            throw new KotlinNothingValueException();
        }

        /* renamed from: measure-3p2s80s  reason: not valid java name */
        public Void m1701measure3p2s80s(MeasureScope receiver, List<? extends Measurable> measurables, long j) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            Intrinsics.checkNotNullParameter(measurables, "measurables");
            throw new IllegalStateException("Undefined measure and it is required".toString());
        }
    };
    private static final Function0<LayoutNode> Constructor = new Function0<LayoutNode>() { // from class: androidx.compose.ui.node.LayoutNode$Companion$Constructor$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final LayoutNode invoke() {
            return new LayoutNode();
        }
    };

    /* compiled from: LayoutNode.kt */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LayoutState.valuesCustom().length];
            iArr[LayoutState.NeedsRemeasure.ordinal()] = 1;
            iArr[LayoutState.NeedsRelayout.ordinal()] = 2;
            iArr[LayoutState.Ready.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Deprecated(message = "Temporary API to support ConstraintLayout prototyping.")
    public static /* synthetic */ void getCanMultiMeasure$ui_release$annotations() {
    }

    public static /* synthetic */ void getZSortedChildren$annotations() {
    }

    public LayoutNode() {
        this(false);
    }

    public LayoutNode(boolean z) {
        this._foldedChildren = new MutableVector<>(new LayoutNode[16], 0);
        this.layoutState = LayoutState.Ready;
        this.wrapperCache = new MutableVector<>(new DelegatingLayoutNodeWrapper[16], 0);
        this._zSortedChildren = new MutableVector<>(new LayoutNode[16], 0);
        this.zSortedChildrenInvalidated = true;
        this.measurePolicy = ErrorMeasurePolicy;
        this.intrinsicsPolicy = new IntrinsicsPolicy(this);
        this.density = DensityKt.Density$default(1.0f, 0.0f, 2, null);
        this.measureScope = new LayoutNode$measureScope$1(this);
        this.layoutDirection = LayoutDirection.Ltr;
        this.alignmentLines = new LayoutNodeAlignmentLines(this);
        this.mDrawScope = LayoutNodeKt.getSharedDrawScope();
        this.placeOrder = Integer.MAX_VALUE;
        this.previousPlaceOrder = Integer.MAX_VALUE;
        this.measuredByParent = UsageByParent.NotUsed;
        InnerPlaceable innerPlaceable = new InnerPlaceable(this);
        this.innerLayoutNodeWrapper = innerPlaceable;
        this.outerMeasurablePlaceable = new OuterMeasurablePlaceable(this, innerPlaceable);
        this.innerLayerWrapperIsDirty = true;
        this.modifier = Modifier.Companion;
        this.ZComparator = new Comparator() { // from class: androidx.compose.ui.node.LayoutNode$ZComparator$1
            @Override // java.util.Comparator
            public final int compare(LayoutNode node1, LayoutNode node2) {
                float f;
                float f2;
                float f3;
                float f4;
                Intrinsics.checkNotNullExpressionValue(node1, "node1");
                f = node1.zIndex;
                Intrinsics.checkNotNullExpressionValue(node2, "node2");
                f2 = node2.zIndex;
                if (!(f == f2)) {
                    f3 = node1.zIndex;
                    f4 = node2.zIndex;
                    return Float.compare(f3, f4);
                }
                return Intrinsics.compare(node1.getPlaceOrder$ui_release(), node2.getPlaceOrder$ui_release());
            }
        };
        this.isVirtual = z;
    }

    public final List<LayoutNode> getFoldedChildren$ui_release() {
        return this._foldedChildren.asMutableList();
    }

    private final void recreateUnfoldedChildrenIfDirty() {
        if (this.unfoldedVirtualChildrenListDirty) {
            int i = 0;
            this.unfoldedVirtualChildrenListDirty = false;
            MutableVector<LayoutNode> mutableVector = this._unfoldedChildren;
            if (mutableVector == null) {
                mutableVector = new MutableVector<>(new LayoutNode[16], 0);
                this._unfoldedChildren = mutableVector;
            }
            mutableVector.clear();
            MutableVector<LayoutNode> mutableVector2 = this._foldedChildren;
            int size = mutableVector2.getSize();
            if (size > 0) {
                LayoutNode[] content = mutableVector2.getContent();
                do {
                    LayoutNode layoutNode = content[i];
                    if (layoutNode.isVirtual) {
                        mutableVector.addAll(mutableVector.getSize(), layoutNode.get_children$ui_release());
                    } else {
                        mutableVector.add(layoutNode);
                    }
                    i++;
                } while (i < size);
            }
        }
    }

    private final void invalidateUnfoldedVirtualChildren() {
        LayoutNode parent$ui_release;
        if (this.virtualChildrenCount > 0) {
            this.unfoldedVirtualChildrenListDirty = true;
        }
        if (!this.isVirtual || (parent$ui_release = getParent$ui_release()) == null) {
            return;
        }
        parent$ui_release.unfoldedVirtualChildrenListDirty = true;
    }

    public final MutableVector<LayoutNode> get_children$ui_release() {
        if (this.virtualChildrenCount == 0) {
            return this._foldedChildren;
        }
        recreateUnfoldedChildrenIfDirty();
        MutableVector<LayoutNode> mutableVector = this._unfoldedChildren;
        Intrinsics.checkNotNull(mutableVector);
        return mutableVector;
    }

    public final List<LayoutNode> getChildren$ui_release() {
        return get_children$ui_release().asMutableList();
    }

    public final LayoutNode getParent$ui_release() {
        LayoutNode layoutNode = this._foldedParent;
        if (Intrinsics.areEqual((Object) (layoutNode == null ? null : Boolean.valueOf(layoutNode.isVirtual)), (Object) true)) {
            LayoutNode layoutNode2 = this._foldedParent;
            if (layoutNode2 == null) {
                return null;
            }
            return layoutNode2.getParent$ui_release();
        }
        return this._foldedParent;
    }

    public final Owner getOwner$ui_release() {
        return this.owner;
    }

    @Override // androidx.compose.ui.layout.LayoutInfo
    public boolean isAttached() {
        return this.owner != null;
    }

    public final int getDepth$ui_release() {
        return this.depth;
    }

    public final void setDepth$ui_release(int i) {
        this.depth = i;
    }

    public final LayoutState getLayoutState$ui_release() {
        return this.layoutState;
    }

    public final void setLayoutState$ui_release(LayoutState layoutState) {
        Intrinsics.checkNotNullParameter(layoutState, "<set-?>");
        this.layoutState = layoutState;
    }

    public final boolean getWasMeasuredDuringThisIteration$ui_release() {
        return LayoutNodeKt.requireOwner(this).getMeasureIteration() == this.outerMeasurablePlaceable.getMeasureIteration();
    }

    public final void insertAt$ui_release(int i, LayoutNode instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        if (!(instance._foldedParent == null)) {
            StringBuilder append = new StringBuilder("Cannot insert ").append(instance).append(" because it already has a parent. This tree: ").append(debugTreeToString$default(this, 0, 1, null)).append(" Other tree: ");
            LayoutNode layoutNode = instance._foldedParent;
            throw new IllegalStateException(append.append((Object) (layoutNode != null ? debugTreeToString$default(layoutNode, 0, 1, null) : null)).toString().toString());
        }
        if (!(instance.owner == null)) {
            throw new IllegalStateException(("Cannot insert " + instance + " because it already has an owner. This tree: " + debugTreeToString$default(this, 0, 1, null) + " Other tree: " + debugTreeToString$default(instance, 0, 1, null)).toString());
        }
        instance._foldedParent = this;
        this._foldedChildren.add(i, instance);
        onZSortedChildrenInvalidated();
        if (instance.isVirtual) {
            if (!(!this.isVirtual)) {
                throw new IllegalArgumentException("Virtual LayoutNode can't be added into a virtual parent".toString());
            }
            this.virtualChildrenCount++;
        }
        invalidateUnfoldedVirtualChildren();
        instance.getOuterLayoutNodeWrapper$ui_release().setWrappedBy$ui_release(this.innerLayoutNodeWrapper);
        Owner owner = this.owner;
        if (owner != null) {
            instance.attach$ui_release(owner);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onZSortedChildrenInvalidated() {
        if (this.isVirtual) {
            LayoutNode parent$ui_release = getParent$ui_release();
            if (parent$ui_release == null) {
                return;
            }
            parent$ui_release.onZSortedChildrenInvalidated();
            return;
        }
        this.zSortedChildrenInvalidated = true;
    }

    public final void removeAt$ui_release(int i, int i2) {
        if (!(i2 >= 0)) {
            throw new IllegalArgumentException(("count (" + i2 + ") must be greater than 0").toString());
        }
        boolean z = this.owner != null;
        int i3 = (i2 + i) - 1;
        if (i > i3) {
            return;
        }
        while (true) {
            int i4 = i3 - 1;
            LayoutNode removeAt = this._foldedChildren.removeAt(i3);
            onZSortedChildrenInvalidated();
            if (z) {
                removeAt.detach$ui_release();
            }
            removeAt._foldedParent = null;
            if (removeAt.isVirtual) {
                this.virtualChildrenCount--;
            }
            invalidateUnfoldedVirtualChildren();
            if (i3 == i) {
                return;
            }
            i3 = i4;
        }
    }

    public final void removeAll$ui_release() {
        boolean z = this.owner != null;
        int size = this._foldedChildren.getSize() - 1;
        if (size >= 0) {
            while (true) {
                int i = size - 1;
                LayoutNode layoutNode = this._foldedChildren.getContent()[size];
                if (z) {
                    layoutNode.detach$ui_release();
                }
                layoutNode._foldedParent = null;
                if (i < 0) {
                    break;
                }
                size = i;
            }
        }
        this._foldedChildren.clear();
        onZSortedChildrenInvalidated();
        this.virtualChildrenCount = 0;
        invalidateUnfoldedVirtualChildren();
    }

    public final void move$ui_release(int i, int i2, int i3) {
        if (i == i2) {
            return;
        }
        if (i3 > 0) {
            int i4 = 0;
            while (true) {
                int i5 = i4 + 1;
                int i6 = i > i2 ? i + i4 : i;
                this._foldedChildren.add(i > i2 ? i4 + i2 : (i2 + i3) - 2, this._foldedChildren.removeAt(i6));
                if (i5 >= i3) {
                    break;
                }
                i4 = i5;
            }
        }
        onZSortedChildrenInvalidated();
        invalidateUnfoldedVirtualChildren();
        requestRemeasure$ui_release();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00cb A[LOOP:1: B:49:0x00c5->B:51:0x00cb, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:61:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void attach$ui_release(androidx.compose.ui.node.Owner r7) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.LayoutNode.attach$ui_release(androidx.compose.ui.node.Owner):void");
    }

    public final void detach$ui_release() {
        Owner owner = this.owner;
        if (owner == null) {
            LayoutNode parent$ui_release = getParent$ui_release();
            throw new IllegalStateException(Intrinsics.stringPlus("Cannot detach node that is already detached!  Tree: ", parent$ui_release != null ? debugTreeToString$default(parent$ui_release, 0, 1, null) : null).toString());
        }
        LayoutNode parent$ui_release2 = getParent$ui_release();
        if (parent$ui_release2 != null) {
            parent$ui_release2.invalidateLayer$ui_release();
            parent$ui_release2.requestRemeasure$ui_release();
        }
        this.alignmentLines.reset$ui_release();
        Function1<? super Owner, Unit> function1 = this.onDetach;
        if (function1 != null) {
            function1.invoke(owner);
        }
        LayoutNodeWrapper outerLayoutNodeWrapper$ui_release = getOuterLayoutNodeWrapper$ui_release();
        LayoutNodeWrapper innerLayoutNodeWrapper$ui_release = getInnerLayoutNodeWrapper$ui_release();
        while (!Intrinsics.areEqual(outerLayoutNodeWrapper$ui_release, innerLayoutNodeWrapper$ui_release)) {
            outerLayoutNodeWrapper$ui_release.detach();
            outerLayoutNodeWrapper$ui_release = outerLayoutNodeWrapper$ui_release.getWrapped$ui_release();
            Intrinsics.checkNotNull(outerLayoutNodeWrapper$ui_release);
        }
        this.innerLayoutNodeWrapper.detach();
        if (SemanticsNodeKt.getOuterSemantics(this) != null) {
            owner.onSemanticsChange();
        }
        owner.onDetach(this);
        this.owner = null;
        this.depth = 0;
        MutableVector<LayoutNode> mutableVector = this._foldedChildren;
        int size = mutableVector.getSize();
        if (size <= 0) {
            this.placeOrder = Integer.MAX_VALUE;
            this.previousPlaceOrder = Integer.MAX_VALUE;
            this.isPlaced = false;
        }
        LayoutNode[] content = mutableVector.getContent();
        int i = 0;
        do {
            content[i].detach$ui_release();
            i++;
        } while (i < size);
        this.placeOrder = Integer.MAX_VALUE;
        this.previousPlaceOrder = Integer.MAX_VALUE;
        this.isPlaced = false;
    }

    public final MutableVector<LayoutNode> getZSortedChildren() {
        if (this.zSortedChildrenInvalidated) {
            this._zSortedChildren.clear();
            MutableVector<LayoutNode> mutableVector = this._zSortedChildren;
            mutableVector.addAll(mutableVector.getSize(), get_children$ui_release());
            this._zSortedChildren.sortWith(this.ZComparator);
            this.zSortedChildrenInvalidated = false;
        }
        return this._zSortedChildren;
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public boolean isValid() {
        return isAttached();
    }

    public String toString() {
        return JvmActuals_jvmKt.simpleIdentityToString(this, null) + " children: " + getChildren$ui_release().size() + " measurePolicy: " + getMeasurePolicy();
    }

    static /* synthetic */ String debugTreeToString$default(LayoutNode layoutNode, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return layoutNode.debugTreeToString(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String debugTreeToString(int r8) {
        /*
            r7 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r1 = 0
            if (r8 <= 0) goto L12
            r2 = r1
        L9:
            int r2 = r2 + 1
            java.lang.String r3 = "  "
            r0.append(r3)
            if (r2 < r8) goto L9
        L12:
            java.lang.String r2 = "|-"
            r0.append(r2)
            java.lang.String r2 = r7.toString()
            r0.append(r2)
            r2 = 10
            r0.append(r2)
            androidx.compose.runtime.collection.MutableVector r2 = r7.get_children$ui_release()
            int r3 = r2.getSize()
            if (r3 <= 0) goto L44
            java.lang.Object[] r2 = r2.getContent()
            r4 = r1
        L33:
            r5 = r2[r4]
            androidx.compose.ui.node.LayoutNode r5 = (androidx.compose.ui.node.LayoutNode) r5
            int r6 = r8 + 1
            java.lang.String r5 = r5.debugTreeToString(r6)
            r0.append(r5)
            int r4 = r4 + 1
            if (r4 < r3) goto L33
        L44:
            java.lang.String r0 = r0.toString()
            java.lang.String r2 = "tree.toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)
            if (r8 != 0) goto L5f
            int r8 = r0.length()
            int r8 = r8 + (-1)
            java.lang.String r0 = r0.substring(r1, r8)
            java.lang.String r8 = "(this as java.lang.Strin…ing(startIndex, endIndex)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r8)
        L5f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.LayoutNode.debugTreeToString(int):java.lang.String");
    }

    /* compiled from: LayoutNode.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b \u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\"\u0010\u0005\u001a\u00020\u0006*\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\"\u0010\r\u001a\u00020\u0006*\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000e\u001a\u00020\fH\u0016J\"\u0010\u000f\u001a\u00020\u0006*\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\fH\u0016J\"\u0010\u0010\u001a\u00020\u0006*\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000e\u001a\u00020\fH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Landroidx/compose/ui/node/LayoutNode$NoIntrinsicsMeasurePolicy;", "Landroidx/compose/ui/layout/MeasurePolicy;", "error", "", "(Ljava/lang/String;)V", "maxIntrinsicHeight", "", "Landroidx/compose/ui/layout/IntrinsicMeasureScope;", "measurables", "", "Landroidx/compose/ui/layout/IntrinsicMeasurable;", "width", "", "maxIntrinsicWidth", "height", "minIntrinsicHeight", "minIntrinsicWidth", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static abstract class NoIntrinsicsMeasurePolicy implements MeasurePolicy {
        private final String error;

        public NoIntrinsicsMeasurePolicy(String error) {
            Intrinsics.checkNotNullParameter(error, "error");
            this.error = error;
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        public /* bridge */ /* synthetic */ int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
            return ((Number) m1702maxIntrinsicHeight(intrinsicMeasureScope, (List<? extends IntrinsicMeasurable>) list, i)).intValue();
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        public /* bridge */ /* synthetic */ int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
            return ((Number) m1703maxIntrinsicWidth(intrinsicMeasureScope, (List<? extends IntrinsicMeasurable>) list, i)).intValue();
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        public /* bridge */ /* synthetic */ int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
            return ((Number) m1704minIntrinsicHeight(intrinsicMeasureScope, (List<? extends IntrinsicMeasurable>) list, i)).intValue();
        }

        @Override // androidx.compose.ui.layout.MeasurePolicy
        public /* bridge */ /* synthetic */ int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
            return ((Number) m1705minIntrinsicWidth(intrinsicMeasureScope, (List<? extends IntrinsicMeasurable>) list, i)).intValue();
        }

        /* renamed from: minIntrinsicWidth  reason: collision with other method in class */
        public Void m1705minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> measurables, int i) {
            Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
            Intrinsics.checkNotNullParameter(measurables, "measurables");
            throw new IllegalStateException(this.error.toString());
        }

        /* renamed from: minIntrinsicHeight  reason: collision with other method in class */
        public Void m1704minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> measurables, int i) {
            Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
            Intrinsics.checkNotNullParameter(measurables, "measurables");
            throw new IllegalStateException(this.error.toString());
        }

        /* renamed from: maxIntrinsicWidth  reason: collision with other method in class */
        public Void m1703maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> measurables, int i) {
            Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
            Intrinsics.checkNotNullParameter(measurables, "measurables");
            throw new IllegalStateException(this.error.toString());
        }

        /* renamed from: maxIntrinsicHeight  reason: collision with other method in class */
        public Void m1702maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> measurables, int i) {
            Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
            Intrinsics.checkNotNullParameter(measurables, "measurables");
            throw new IllegalStateException(this.error.toString());
        }
    }

    @Override // androidx.compose.ui.node.ComposeUiNode
    public MeasurePolicy getMeasurePolicy() {
        return this.measurePolicy;
    }

    @Override // androidx.compose.ui.node.ComposeUiNode
    public void setMeasurePolicy(MeasurePolicy value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (Intrinsics.areEqual(this.measurePolicy, value)) {
            return;
        }
        this.measurePolicy = value;
        this.intrinsicsPolicy.updateFrom(getMeasurePolicy());
        requestRemeasure$ui_release();
    }

    public final IntrinsicsPolicy getIntrinsicsPolicy$ui_release() {
        return this.intrinsicsPolicy;
    }

    @Override // androidx.compose.ui.node.ComposeUiNode
    public Density getDensity() {
        return this.density;
    }

    @Override // androidx.compose.ui.node.ComposeUiNode
    public void setDensity(Density value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (Intrinsics.areEqual(this.density, value)) {
            return;
        }
        this.density = value;
        onDensityOrLayoutDirectionChanged();
    }

    public final MeasureScope getMeasureScope$ui_release() {
        return this.measureScope;
    }

    @Override // androidx.compose.ui.node.ComposeUiNode
    public LayoutDirection getLayoutDirection() {
        return this.layoutDirection;
    }

    @Override // androidx.compose.ui.node.ComposeUiNode
    public void setLayoutDirection(LayoutDirection value) {
        Intrinsics.checkNotNullParameter(value, "value");
        if (this.layoutDirection != value) {
            this.layoutDirection = value;
            onDensityOrLayoutDirectionChanged();
        }
    }

    private final void onDensityOrLayoutDirectionChanged() {
        requestRemeasure$ui_release();
        LayoutNode parent$ui_release = getParent$ui_release();
        if (parent$ui_release != null) {
            parent$ui_release.invalidateLayer$ui_release();
        }
        invalidateLayers$ui_release();
    }

    @Override // androidx.compose.ui.layout.LayoutInfo
    public int getWidth() {
        return this.outerMeasurablePlaceable.getWidth();
    }

    @Override // androidx.compose.ui.layout.LayoutInfo
    public int getHeight() {
        return this.outerMeasurablePlaceable.getHeight();
    }

    public final LayoutNodeAlignmentLines getAlignmentLines$ui_release() {
        return this.alignmentLines;
    }

    public final LayoutNodeDrawScope getMDrawScope$ui_release() {
        return this.mDrawScope;
    }

    @Override // androidx.compose.ui.layout.LayoutInfo
    public boolean isPlaced() {
        return this.isPlaced;
    }

    public final int getPlaceOrder$ui_release() {
        return this.placeOrder;
    }

    public final UsageByParent getMeasuredByParent$ui_release() {
        return this.measuredByParent;
    }

    public final void setMeasuredByParent$ui_release(UsageByParent usageByParent) {
        Intrinsics.checkNotNullParameter(usageByParent, "<set-?>");
        this.measuredByParent = usageByParent;
    }

    public final boolean getCanMultiMeasure$ui_release() {
        return this.canMultiMeasure;
    }

    public final void setCanMultiMeasure$ui_release(boolean z) {
        this.canMultiMeasure = z;
    }

    public final LayoutNodeWrapper getInnerLayoutNodeWrapper$ui_release() {
        return this.innerLayoutNodeWrapper;
    }

    public final LayoutNodeWrapper getOuterLayoutNodeWrapper$ui_release() {
        return this.outerMeasurablePlaceable.getOuterWrapper();
    }

    public final boolean getInnerLayerWrapperIsDirty$ui_release() {
        return this.innerLayerWrapperIsDirty;
    }

    public final void setInnerLayerWrapperIsDirty$ui_release(boolean z) {
        this.innerLayerWrapperIsDirty = z;
    }

    public final LayoutNodeWrapper getInnerLayerWrapper$ui_release() {
        if (this.innerLayerWrapperIsDirty) {
            LayoutNodeWrapper layoutNodeWrapper = this.innerLayoutNodeWrapper;
            LayoutNodeWrapper wrappedBy$ui_release = getOuterLayoutNodeWrapper$ui_release().getWrappedBy$ui_release();
            this._innerLayerWrapper = null;
            while (true) {
                if (Intrinsics.areEqual(layoutNodeWrapper, wrappedBy$ui_release)) {
                    break;
                }
                if ((layoutNodeWrapper == null ? null : layoutNodeWrapper.getLayer()) != null) {
                    this._innerLayerWrapper = layoutNodeWrapper;
                    break;
                }
                layoutNodeWrapper = layoutNodeWrapper == null ? null : layoutNodeWrapper.getWrappedBy$ui_release();
            }
        }
        LayoutNodeWrapper layoutNodeWrapper2 = this._innerLayerWrapper;
        if (layoutNodeWrapper2 == null || layoutNodeWrapper2.getLayer() != null) {
            return layoutNodeWrapper2;
        }
        throw new IllegalArgumentException("Required value was null.".toString());
    }

    public final void invalidateLayer$ui_release() {
        LayoutNodeWrapper innerLayerWrapper$ui_release = getInnerLayerWrapper$ui_release();
        if (innerLayerWrapper$ui_release != null) {
            innerLayerWrapper$ui_release.invalidateLayer();
            return;
        }
        LayoutNode parent$ui_release = getParent$ui_release();
        if (parent$ui_release == null) {
            return;
        }
        parent$ui_release.invalidateLayer$ui_release();
    }

    @Override // androidx.compose.ui.node.ComposeUiNode
    public Modifier getModifier() {
        return this.modifier;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00b3  */
    @Override // androidx.compose.ui.node.ComposeUiNode
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setModifier(androidx.compose.ui.Modifier r8) {
        /*
            Method dump skipped, instructions count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.LayoutNode.setModifier(androidx.compose.ui.Modifier):void");
    }

    @Override // androidx.compose.ui.layout.LayoutInfo
    public LayoutCoordinates getCoordinates() {
        return this.innerLayoutNodeWrapper;
    }

    public final Function1<Owner, Unit> getOnAttach$ui_release() {
        return this.onAttach;
    }

    public final void setOnAttach$ui_release(Function1<? super Owner, Unit> function1) {
        this.onAttach = function1;
    }

    public final Function1<Owner, Unit> getOnDetach$ui_release() {
        return this.onDetach;
    }

    public final void setOnDetach$ui_release(Function1<? super Owner, Unit> function1) {
        this.onDetach = function1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final MutableVector<OnGloballyPositionedModifierWrapper> getOrCreateOnPositionedCallbacks() {
        MutableVector<OnGloballyPositionedModifierWrapper> mutableVector = this.onPositionedCallbacks;
        if (mutableVector == null) {
            MutableVector<OnGloballyPositionedModifierWrapper> mutableVector2 = new MutableVector<>(new OnGloballyPositionedModifierWrapper[16], 0);
            this.onPositionedCallbacks = mutableVector2;
            return mutableVector2;
        }
        return mutableVector;
    }

    public final boolean getNeedsOnPositionedDispatch$ui_release() {
        return this.needsOnPositionedDispatch;
    }

    public final void setNeedsOnPositionedDispatch$ui_release(boolean z) {
        this.needsOnPositionedDispatch = z;
    }

    public final void place$ui_release(int i, int i2) {
        Placeable.PlacementScope.Companion companion = Placeable.PlacementScope.Companion;
        int measuredWidth = this.outerMeasurablePlaceable.getMeasuredWidth();
        LayoutDirection layoutDirection = getLayoutDirection();
        int parentWidth = Placeable.PlacementScope.Companion.getParentWidth();
        LayoutDirection parentLayoutDirection = Placeable.PlacementScope.Companion.getParentLayoutDirection();
        Placeable.PlacementScope.Companion companion2 = Placeable.PlacementScope.Companion;
        Placeable.PlacementScope.parentWidth = measuredWidth;
        Placeable.PlacementScope.Companion companion3 = Placeable.PlacementScope.Companion;
        Placeable.PlacementScope.parentLayoutDirection = layoutDirection;
        Placeable.PlacementScope.placeRelative$default(companion, this.outerMeasurablePlaceable, i, i2, 0.0f, 4, null);
        Placeable.PlacementScope.Companion companion4 = Placeable.PlacementScope.Companion;
        Placeable.PlacementScope.parentWidth = parentWidth;
        Placeable.PlacementScope.Companion companion5 = Placeable.PlacementScope.Companion;
        Placeable.PlacementScope.parentLayoutDirection = parentLayoutDirection;
    }

    public final void replace$ui_release() {
        this.outerMeasurablePlaceable.replace();
    }

    public final void draw$ui_release(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        getOuterLayoutNodeWrapper$ui_release().draw(canvas);
    }

    /* renamed from: hitTest-3MmeM6k$ui_release  reason: not valid java name */
    public final void m1698hitTest3MmeM6k$ui_release(long j, List<PointerInputFilter> hitPointerInputFilters) {
        Intrinsics.checkNotNullParameter(hitPointerInputFilters, "hitPointerInputFilters");
        getOuterLayoutNodeWrapper$ui_release().mo1693hitTest3MmeM6k(getOuterLayoutNodeWrapper$ui_release().m1710fromParentPositionMKHz9U(j), hitPointerInputFilters);
    }

    /* renamed from: hitTestSemantics-3MmeM6k$ui_release  reason: not valid java name */
    public final void m1699hitTestSemantics3MmeM6k$ui_release(long j, List<SemanticsWrapper> hitSemanticsWrappers) {
        Intrinsics.checkNotNullParameter(hitSemanticsWrappers, "hitSemanticsWrappers");
        getOuterLayoutNodeWrapper$ui_release().mo1694hitTestSemantics3MmeM6k(getOuterLayoutNodeWrapper$ui_release().m1710fromParentPositionMKHz9U(j), hitSemanticsWrappers);
    }

    private final boolean hasNewPositioningCallback() {
        final MutableVector<OnGloballyPositionedModifierWrapper> mutableVector = this.onPositionedCallbacks;
        return ((Boolean) getModifier().foldOut(false, new Function2<Modifier.Element, Boolean, Boolean>() { // from class: androidx.compose.ui.node.LayoutNode$hasNewPositioningCallback$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Boolean invoke(Modifier.Element element, Boolean bool) {
                return Boolean.valueOf(invoke(element, bool.booleanValue()));
            }

            public final boolean invoke(Modifier.Element mod, boolean z) {
                Intrinsics.checkNotNullParameter(mod, "mod");
                if (!z) {
                    if (!(mod instanceof OnGloballyPositionedModifier)) {
                        return false;
                    }
                    MutableVector<OnGloballyPositionedModifierWrapper> mutableVector2 = mutableVector;
                    OnGloballyPositionedModifierWrapper onGloballyPositionedModifierWrapper = null;
                    if (mutableVector2 != null) {
                        int size = mutableVector2.getSize();
                        if (size > 0) {
                            OnGloballyPositionedModifierWrapper[] content = mutableVector2.getContent();
                            int i = 0;
                            while (true) {
                                OnGloballyPositionedModifierWrapper onGloballyPositionedModifierWrapper2 = content[i];
                                if (!Intrinsics.areEqual(mod, onGloballyPositionedModifierWrapper2.getModifier())) {
                                    i++;
                                    if (i >= size) {
                                        break;
                                    }
                                } else {
                                    onGloballyPositionedModifierWrapper = onGloballyPositionedModifierWrapper2;
                                    break;
                                }
                            }
                        }
                        onGloballyPositionedModifierWrapper = onGloballyPositionedModifierWrapper;
                    }
                    if (onGloballyPositionedModifierWrapper != null) {
                        return false;
                    }
                }
                return true;
            }
        })).booleanValue();
    }

    public final void onNodePlaced$ui_release() {
        LayoutNode parent$ui_release = getParent$ui_release();
        float zIndex = this.innerLayoutNodeWrapper.getZIndex();
        LayoutNodeWrapper outerLayoutNodeWrapper$ui_release = getOuterLayoutNodeWrapper$ui_release();
        LayoutNodeWrapper innerLayoutNodeWrapper$ui_release = getInnerLayoutNodeWrapper$ui_release();
        while (!Intrinsics.areEqual(outerLayoutNodeWrapper$ui_release, innerLayoutNodeWrapper$ui_release)) {
            zIndex += outerLayoutNodeWrapper$ui_release.getZIndex();
            outerLayoutNodeWrapper$ui_release = outerLayoutNodeWrapper$ui_release.getWrapped$ui_release();
            Intrinsics.checkNotNull(outerLayoutNodeWrapper$ui_release);
        }
        if (!(zIndex == this.zIndex)) {
            this.zIndex = zIndex;
            if (parent$ui_release != null) {
                parent$ui_release.onZSortedChildrenInvalidated();
            }
            if (parent$ui_release != null) {
                parent$ui_release.invalidateLayer$ui_release();
            }
        }
        if (!isPlaced()) {
            if (parent$ui_release != null) {
                parent$ui_release.invalidateLayer$ui_release();
            }
            markNodeAndSubtreeAsPlaced();
        }
        if (parent$ui_release != null) {
            if (parent$ui_release.layoutState == LayoutState.LayingOut) {
                if (!(this.placeOrder == Integer.MAX_VALUE)) {
                    throw new IllegalStateException("Place was called on a node which was placed already".toString());
                }
                int i = parent$ui_release.nextChildPlaceOrder;
                this.placeOrder = i;
                parent$ui_release.nextChildPlaceOrder = i + 1;
            }
        } else {
            this.placeOrder = 0;
        }
        layoutChildren$ui_release();
    }

    public final void layoutChildren$ui_release() {
        this.alignmentLines.recalculateQueryOwner$ui_release();
        if (this.layoutState == LayoutState.NeedsRelayout) {
            onBeforeLayoutChildren();
        }
        if (this.layoutState == LayoutState.NeedsRelayout) {
            this.layoutState = LayoutState.LayingOut;
            LayoutNodeKt.requireOwner(this).getSnapshotObserver().observeLayoutSnapshotReads$ui_release(this, new Function0<Unit>() { // from class: androidx.compose.ui.node.LayoutNode$layoutChildren$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* JADX WARN: Removed duplicated region for block: B:17:0x0082 A[ORIG_RETURN, RETURN] */
                /* JADX WARN: Removed duplicated region for block: B:9:0x004e  */
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void invoke2() {
                    /*
                        r8 = this;
                        androidx.compose.ui.node.LayoutNode r0 = androidx.compose.ui.node.LayoutNode.this
                        r1 = 0
                        androidx.compose.ui.node.LayoutNode.access$setNextChildPlaceOrder$p(r0, r1)
                        androidx.compose.ui.node.LayoutNode r0 = androidx.compose.ui.node.LayoutNode.this
                        androidx.compose.runtime.collection.MutableVector r0 = r0.get_children$ui_release()
                        int r2 = r0.getSize()
                        r3 = 2147483647(0x7fffffff, float:NaN)
                        if (r2 <= 0) goto L33
                        java.lang.Object[] r0 = r0.getContent()
                        r4 = r1
                    L1a:
                        r5 = r0[r4]
                        androidx.compose.ui.node.LayoutNode r5 = (androidx.compose.ui.node.LayoutNode) r5
                        int r6 = r5.getPlaceOrder$ui_release()
                        androidx.compose.ui.node.LayoutNode.access$setPreviousPlaceOrder$p(r5, r6)
                        androidx.compose.ui.node.LayoutNode.access$setPlaceOrder$p(r5, r3)
                        androidx.compose.ui.node.LayoutNodeAlignmentLines r5 = r5.getAlignmentLines$ui_release()
                        r5.setUsedDuringParentLayout$ui_release(r1)
                        int r4 = r4 + 1
                        if (r4 < r2) goto L1a
                    L33:
                        androidx.compose.ui.node.LayoutNode r0 = androidx.compose.ui.node.LayoutNode.this
                        androidx.compose.ui.node.LayoutNodeWrapper r0 = r0.getInnerLayoutNodeWrapper$ui_release()
                        androidx.compose.ui.layout.MeasureResult r0 = r0.getMeasureResult()
                        r0.placeChildren()
                        androidx.compose.ui.node.LayoutNode r0 = androidx.compose.ui.node.LayoutNode.this
                        androidx.compose.runtime.collection.MutableVector r0 = r0.get_children$ui_release()
                        androidx.compose.ui.node.LayoutNode r2 = androidx.compose.ui.node.LayoutNode.this
                        int r4 = r0.getSize()
                        if (r4 <= 0) goto L82
                        java.lang.Object[] r0 = r0.getContent()
                    L52:
                        r5 = r0[r1]
                        androidx.compose.ui.node.LayoutNode r5 = (androidx.compose.ui.node.LayoutNode) r5
                        int r6 = androidx.compose.ui.node.LayoutNode.access$getPreviousPlaceOrder$p(r5)
                        int r7 = r5.getPlaceOrder$ui_release()
                        if (r6 == r7) goto L6f
                        androidx.compose.ui.node.LayoutNode.access$onZSortedChildrenInvalidated(r2)
                        r2.invalidateLayer$ui_release()
                        int r6 = r5.getPlaceOrder$ui_release()
                        if (r6 != r3) goto L6f
                        androidx.compose.ui.node.LayoutNode.access$markSubtreeAsNotPlaced(r5)
                    L6f:
                        androidx.compose.ui.node.LayoutNodeAlignmentLines r6 = r5.getAlignmentLines$ui_release()
                        androidx.compose.ui.node.LayoutNodeAlignmentLines r5 = r5.getAlignmentLines$ui_release()
                        boolean r5 = r5.getUsedDuringParentLayout$ui_release()
                        r6.setPreviousUsedDuringParentLayout$ui_release(r5)
                        int r1 = r1 + 1
                        if (r1 < r4) goto L52
                    L82:
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.LayoutNode$layoutChildren$1.invoke2():void");
                }
            });
            this.layoutState = LayoutState.Ready;
        }
        if (this.alignmentLines.getUsedDuringParentLayout$ui_release()) {
            this.alignmentLines.setPreviousUsedDuringParentLayout$ui_release(true);
        }
        if (this.alignmentLines.getDirty$ui_release() && this.alignmentLines.getRequired$ui_release()) {
            this.alignmentLines.recalculate();
        }
    }

    private final void markNodeAndSubtreeAsPlaced() {
        this.isPlaced = true;
        LayoutNodeWrapper wrapped$ui_release = getInnerLayoutNodeWrapper$ui_release().getWrapped$ui_release();
        for (LayoutNodeWrapper outerLayoutNodeWrapper$ui_release = getOuterLayoutNodeWrapper$ui_release(); !Intrinsics.areEqual(outerLayoutNodeWrapper$ui_release, wrapped$ui_release) && outerLayoutNodeWrapper$ui_release != null; outerLayoutNodeWrapper$ui_release = outerLayoutNodeWrapper$ui_release.getWrapped$ui_release()) {
            if (outerLayoutNodeWrapper$ui_release.getLastLayerDrawingWasSkipped$ui_release()) {
                outerLayoutNodeWrapper$ui_release.invalidateLayer();
            }
        }
        MutableVector<LayoutNode> mutableVector = get_children$ui_release();
        int size = mutableVector.getSize();
        if (size > 0) {
            LayoutNode[] content = mutableVector.getContent();
            int i = 0;
            do {
                LayoutNode layoutNode = content[i];
                if (layoutNode.getPlaceOrder$ui_release() != Integer.MAX_VALUE) {
                    layoutNode.markNodeAndSubtreeAsPlaced();
                    rescheduleRemeasureOrRelayout(layoutNode);
                }
                i++;
            } while (i < size);
        }
    }

    private final void rescheduleRemeasureOrRelayout(LayoutNode layoutNode) {
        int i = WhenMappings.$EnumSwitchMapping$0[layoutNode.layoutState.ordinal()];
        if (i != 1 && i != 2) {
            if (i != 3) {
                throw new IllegalStateException(Intrinsics.stringPlus("Unexpected state ", layoutNode.layoutState));
            }
            return;
        }
        layoutNode.layoutState = LayoutState.Ready;
        if (i == 1) {
            layoutNode.requestRemeasure$ui_release();
        } else {
            layoutNode.requestRelayout$ui_release();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void markSubtreeAsNotPlaced() {
        if (isPlaced()) {
            int i = 0;
            this.isPlaced = false;
            MutableVector<LayoutNode> mutableVector = get_children$ui_release();
            int size = mutableVector.getSize();
            if (size > 0) {
                LayoutNode[] content = mutableVector.getContent();
                do {
                    content[i].markSubtreeAsNotPlaced();
                    i++;
                } while (i < size);
            }
        }
    }

    private final void onBeforeLayoutChildren() {
        MutableVector<LayoutNode> mutableVector = get_children$ui_release();
        int size = mutableVector.getSize();
        if (size > 0) {
            LayoutNode[] content = mutableVector.getContent();
            int i = 0;
            do {
                LayoutNode layoutNode = content[i];
                if (layoutNode.getLayoutState$ui_release() == LayoutState.NeedsRemeasure && layoutNode.getMeasuredByParent$ui_release() == UsageByParent.InMeasureBlock && m1697remeasure_Sx5XlM$ui_release$default(layoutNode, null, 1, null)) {
                    requestRemeasure$ui_release();
                }
                i++;
            } while (i < size);
        }
    }

    public final void onAlignmentsChanged$ui_release() {
        if (this.alignmentLines.getDirty$ui_release()) {
            return;
        }
        this.alignmentLines.setDirty$ui_release(true);
        LayoutNode parent$ui_release = getParent$ui_release();
        if (parent$ui_release == null) {
            return;
        }
        if (this.alignmentLines.getUsedDuringParentMeasurement$ui_release()) {
            parent$ui_release.requestRemeasure$ui_release();
        } else if (this.alignmentLines.getPreviousUsedDuringParentLayout$ui_release()) {
            parent$ui_release.requestRelayout$ui_release();
        }
        if (this.alignmentLines.getUsedByModifierMeasurement$ui_release()) {
            requestRemeasure$ui_release();
        }
        if (this.alignmentLines.getUsedByModifierLayout$ui_release()) {
            parent$ui_release.requestRelayout$ui_release();
        }
        parent$ui_release.onAlignmentsChanged$ui_release();
    }

    public final Map<AlignmentLine, Integer> calculateAlignmentLines$ui_release() {
        if (!this.outerMeasurablePlaceable.getDuringAlignmentLinesQuery$ui_release()) {
            alignmentLinesQueriedByModifier();
        }
        layoutChildren$ui_release();
        return this.alignmentLines.getLastCalculation();
    }

    private final void alignmentLinesQueriedByModifier() {
        if (this.layoutState == LayoutState.Measuring) {
            this.alignmentLines.setUsedByModifierMeasurement$ui_release(true);
            if (this.alignmentLines.getDirty$ui_release()) {
                this.layoutState = LayoutState.NeedsRelayout;
                return;
            }
            return;
        }
        this.alignmentLines.setUsedByModifierLayout$ui_release(true);
    }

    public final void handleMeasureResult$ui_release(MeasureResult measureResult) {
        Intrinsics.checkNotNullParameter(measureResult, "measureResult");
        this.innerLayoutNodeWrapper.setMeasureResult$ui_release(measureResult);
    }

    public final void requestRemeasure$ui_release() {
        Owner owner = this.owner;
        if (owner == null || this.ignoreRemeasureRequests || this.isVirtual) {
            return;
        }
        owner.onRequestMeasure(this);
    }

    public final void ignoreRemeasureRequests$ui_release(Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        this.ignoreRemeasureRequests = true;
        block.invoke();
        this.ignoreRemeasureRequests = false;
    }

    public final void requestRelayout$ui_release() {
        Owner owner;
        if (this.isVirtual || (owner = this.owner) == null) {
            return;
        }
        owner.onRequestRelayout(this);
    }

    public final void withNoSnapshotReadObservation$ui_release(Function0<Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        LayoutNodeKt.requireOwner(this).getSnapshotObserver().withNoSnapshotReadObservation$ui_release(block);
    }

    public final void dispatchOnPositionedCallbacks$ui_release() {
        MutableVector<OnGloballyPositionedModifierWrapper> mutableVector;
        int size;
        if (this.layoutState == LayoutState.Ready && isPlaced() && (mutableVector = this.onPositionedCallbacks) != null && (size = mutableVector.getSize()) > 0) {
            OnGloballyPositionedModifierWrapper[] content = mutableVector.getContent();
            int i = 0;
            do {
                OnGloballyPositionedModifierWrapper onGloballyPositionedModifierWrapper = content[i];
                onGloballyPositionedModifierWrapper.getModifier().onGloballyPositioned(onGloballyPositionedModifierWrapper);
                i++;
            } while (i < size);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DelegatingLayoutNodeWrapper<?> reuseLayoutNodeWrapper(Modifier.Element element, LayoutNodeWrapper layoutNodeWrapper) {
        int i;
        if (this.wrapperCache.isEmpty()) {
            return null;
        }
        MutableVector<DelegatingLayoutNodeWrapper<?>> mutableVector = this.wrapperCache;
        int size = mutableVector.getSize();
        int i2 = -1;
        if (size > 0) {
            i = size - 1;
            DelegatingLayoutNodeWrapper<?>[] content = mutableVector.getContent();
            do {
                DelegatingLayoutNodeWrapper<?> delegatingLayoutNodeWrapper = content[i];
                if (delegatingLayoutNodeWrapper.getToBeReusedForSameModifier() && delegatingLayoutNodeWrapper.getModifier() == element) {
                    break;
                }
                i--;
            } while (i >= 0);
            i = -1;
        } else {
            i = -1;
        }
        if (i < 0) {
            MutableVector<DelegatingLayoutNodeWrapper<?>> mutableVector2 = this.wrapperCache;
            int size2 = mutableVector2.getSize();
            if (size2 > 0) {
                int i3 = size2 - 1;
                DelegatingLayoutNodeWrapper<?>[] content2 = mutableVector2.getContent();
                while (true) {
                    DelegatingLayoutNodeWrapper<?> delegatingLayoutNodeWrapper2 = content2[i3];
                    if (!(!delegatingLayoutNodeWrapper2.getToBeReusedForSameModifier() && Intrinsics.areEqual(JvmActuals_jvmKt.nativeClass(delegatingLayoutNodeWrapper2.getModifier()), JvmActuals_jvmKt.nativeClass(element)))) {
                        i3--;
                        if (i3 < 0) {
                            break;
                        }
                    } else {
                        i2 = i3;
                        break;
                    }
                }
            }
            i = i2;
        }
        if (i < 0) {
            return null;
        }
        DelegatingLayoutNodeWrapper<?> delegatingLayoutNodeWrapper3 = this.wrapperCache.getContent()[i];
        delegatingLayoutNodeWrapper3.setModifierTo(element);
        DelegatingLayoutNodeWrapper<?> delegatingLayoutNodeWrapper4 = delegatingLayoutNodeWrapper3;
        int i4 = i;
        while (delegatingLayoutNodeWrapper4.isChained()) {
            i4--;
            delegatingLayoutNodeWrapper4 = this.wrapperCache.getContent()[i4];
            delegatingLayoutNodeWrapper4.setModifierTo(element);
        }
        this.wrapperCache.removeRange(i4, i + 1);
        delegatingLayoutNodeWrapper3.setWrapped(layoutNodeWrapper);
        layoutNodeWrapper.setWrappedBy$ui_release(delegatingLayoutNodeWrapper3);
        return delegatingLayoutNodeWrapper4;
    }

    private final void markReusedModifiers(Modifier modifier) {
        MutableVector<DelegatingLayoutNodeWrapper<?>> mutableVector = this.wrapperCache;
        int size = mutableVector.getSize();
        if (size <= 0) {
            modifier.foldIn(Unit.INSTANCE, new Function2<Unit, Modifier.Element, Unit>() { // from class: androidx.compose.ui.node.LayoutNode$markReusedModifiers$2
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Unit unit, Modifier.Element element) {
                    invoke2(unit, element);
                    return Unit.INSTANCE;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r3v7 */
                /* JADX WARN: Type inference failed for: r7v7, types: [java.lang.Object[]] */
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(Unit noName_0, Modifier.Element mod) {
                    MutableVector mutableVector2;
                    DelegatingLayoutNodeWrapper delegatingLayoutNodeWrapper;
                    Intrinsics.checkNotNullParameter(noName_0, "$noName_0");
                    Intrinsics.checkNotNullParameter(mod, "mod");
                    mutableVector2 = LayoutNode.this.wrapperCache;
                    int size2 = mutableVector2.getSize();
                    if (size2 > 0) {
                        int i = size2 - 1;
                        ?? content = mutableVector2.getContent();
                        do {
                            delegatingLayoutNodeWrapper = content[i];
                            DelegatingLayoutNodeWrapper delegatingLayoutNodeWrapper2 = (DelegatingLayoutNodeWrapper) delegatingLayoutNodeWrapper;
                            if (delegatingLayoutNodeWrapper2.getModifier() == mod && !delegatingLayoutNodeWrapper2.getToBeReusedForSameModifier()) {
                                break;
                            }
                            i--;
                        } while (i >= 0);
                        delegatingLayoutNodeWrapper = null;
                    } else {
                        delegatingLayoutNodeWrapper = null;
                    }
                    DelegatingLayoutNodeWrapper delegatingLayoutNodeWrapper3 = delegatingLayoutNodeWrapper;
                    while (delegatingLayoutNodeWrapper3 != null) {
                        delegatingLayoutNodeWrapper3.setToBeReusedForSameModifier(true);
                        if (delegatingLayoutNodeWrapper3.isChained()) {
                            LayoutNodeWrapper wrappedBy$ui_release = delegatingLayoutNodeWrapper3.getWrappedBy$ui_release();
                            if (wrappedBy$ui_release instanceof DelegatingLayoutNodeWrapper) {
                                delegatingLayoutNodeWrapper3 = (DelegatingLayoutNodeWrapper) wrappedBy$ui_release;
                            }
                        }
                        delegatingLayoutNodeWrapper3 = null;
                    }
                }
            });
        }
        DelegatingLayoutNodeWrapper<?>[] content = mutableVector.getContent();
        int i = 0;
        do {
            content[i].setToBeReusedForSameModifier(false);
            i++;
        } while (i < size);
        modifier.foldIn(Unit.INSTANCE, new Function2<Unit, Modifier.Element, Unit>() { // from class: androidx.compose.ui.node.LayoutNode$markReusedModifiers$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Unit unit, Modifier.Element element) {
                invoke2(unit, element);
                return Unit.INSTANCE;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r3v7 */
            /* JADX WARN: Type inference failed for: r7v7, types: [java.lang.Object[]] */
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Unit noName_0, Modifier.Element mod) {
                MutableVector mutableVector2;
                DelegatingLayoutNodeWrapper delegatingLayoutNodeWrapper;
                Intrinsics.checkNotNullParameter(noName_0, "$noName_0");
                Intrinsics.checkNotNullParameter(mod, "mod");
                mutableVector2 = LayoutNode.this.wrapperCache;
                int size2 = mutableVector2.getSize();
                if (size2 > 0) {
                    int i2 = size2 - 1;
                    ?? content2 = mutableVector2.getContent();
                    do {
                        delegatingLayoutNodeWrapper = content2[i2];
                        DelegatingLayoutNodeWrapper delegatingLayoutNodeWrapper2 = (DelegatingLayoutNodeWrapper) delegatingLayoutNodeWrapper;
                        if (delegatingLayoutNodeWrapper2.getModifier() == mod && !delegatingLayoutNodeWrapper2.getToBeReusedForSameModifier()) {
                            break;
                        }
                        i2--;
                    } while (i2 >= 0);
                    delegatingLayoutNodeWrapper = null;
                } else {
                    delegatingLayoutNodeWrapper = null;
                }
                DelegatingLayoutNodeWrapper delegatingLayoutNodeWrapper3 = delegatingLayoutNodeWrapper;
                while (delegatingLayoutNodeWrapper3 != null) {
                    delegatingLayoutNodeWrapper3.setToBeReusedForSameModifier(true);
                    if (delegatingLayoutNodeWrapper3.isChained()) {
                        LayoutNodeWrapper wrappedBy$ui_release = delegatingLayoutNodeWrapper3.getWrappedBy$ui_release();
                        if (wrappedBy$ui_release instanceof DelegatingLayoutNodeWrapper) {
                            delegatingLayoutNodeWrapper3 = (DelegatingLayoutNodeWrapper) wrappedBy$ui_release;
                        }
                    }
                    delegatingLayoutNodeWrapper3 = null;
                }
            }
        });
    }

    @Override // androidx.compose.ui.layout.Measurable
    /* renamed from: measure-BRTryo0 */
    public Placeable mo1607measureBRTryo0(long j) {
        return this.outerMeasurablePlaceable.mo1607measureBRTryo0(j);
    }

    /* renamed from: remeasure-_Sx5XlM$ui_release$default  reason: not valid java name */
    public static /* synthetic */ boolean m1697remeasure_Sx5XlM$ui_release$default(LayoutNode layoutNode, Constraints constraints, int i, Object obj) {
        if ((i & 1) != 0) {
            constraints = layoutNode.outerMeasurablePlaceable.m1722getLastConstraintsDWUhwKw();
        }
        return layoutNode.m1700remeasure_Sx5XlM$ui_release(constraints);
    }

    /* renamed from: remeasure-_Sx5XlM$ui_release  reason: not valid java name */
    public final boolean m1700remeasure_Sx5XlM$ui_release(Constraints constraints) {
        if (constraints != null) {
            return this.outerMeasurablePlaceable.m1723remeasureBRTryo0(constraints.m2081unboximpl());
        }
        return false;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public Object getParentData() {
        return this.outerMeasurablePlaceable.getParentData();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int minIntrinsicWidth(int i) {
        return this.outerMeasurablePlaceable.minIntrinsicWidth(i);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int maxIntrinsicWidth(int i) {
        return this.outerMeasurablePlaceable.maxIntrinsicWidth(i);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int minIntrinsicHeight(int i) {
        return this.outerMeasurablePlaceable.minIntrinsicHeight(i);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public int maxIntrinsicHeight(int i) {
        return this.outerMeasurablePlaceable.maxIntrinsicHeight(i);
    }

    @Override // androidx.compose.ui.layout.Remeasurement
    public void forceRemeasure() {
        requestRemeasure$ui_release();
        Owner owner = this.owner;
        if (owner == null) {
            return;
        }
        owner.measureAndLayout();
    }

    private final void forEachDelegate(Function1<? super LayoutNodeWrapper, Unit> function1) {
        LayoutNodeWrapper outerLayoutNodeWrapper$ui_release = getOuterLayoutNodeWrapper$ui_release();
        LayoutNodeWrapper innerLayoutNodeWrapper$ui_release = getInnerLayoutNodeWrapper$ui_release();
        while (!Intrinsics.areEqual(outerLayoutNodeWrapper$ui_release, innerLayoutNodeWrapper$ui_release)) {
            function1.invoke(outerLayoutNodeWrapper$ui_release);
            outerLayoutNodeWrapper$ui_release = outerLayoutNodeWrapper$ui_release.getWrapped$ui_release();
            Intrinsics.checkNotNull(outerLayoutNodeWrapper$ui_release);
        }
    }

    private final void forEachDelegateIncludingInner(Function1<? super LayoutNodeWrapper, Unit> function1) {
        LayoutNodeWrapper wrapped$ui_release = getInnerLayoutNodeWrapper$ui_release().getWrapped$ui_release();
        for (LayoutNodeWrapper outerLayoutNodeWrapper$ui_release = getOuterLayoutNodeWrapper$ui_release(); !Intrinsics.areEqual(outerLayoutNodeWrapper$ui_release, wrapped$ui_release) && outerLayoutNodeWrapper$ui_release != null; outerLayoutNodeWrapper$ui_release = outerLayoutNodeWrapper$ui_release.getWrapped$ui_release()) {
            function1.invoke(outerLayoutNodeWrapper$ui_release);
        }
    }

    @Override // androidx.compose.ui.layout.LayoutInfo
    public LayoutInfo getParentInfo() {
        return getParent$ui_release();
    }

    /* compiled from: LayoutNode.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0080T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Landroidx/compose/ui/node/LayoutNode$Companion;", "", "()V", "Constructor", "Lkotlin/Function0;", "Landroidx/compose/ui/node/LayoutNode;", "getConstructor$ui_release", "()Lkotlin/jvm/functions/Function0;", "ErrorMeasurePolicy", "Landroidx/compose/ui/node/LayoutNode$NoIntrinsicsMeasurePolicy;", "NotPlacedPlaceOrder", "", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Function0<LayoutNode> getConstructor$ui_release() {
            return LayoutNode.Constructor;
        }
    }

    /* compiled from: LayoutNode.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0080\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/ui/node/LayoutNode$LayoutState;", "", "(Ljava/lang/String;I)V", "NeedsRemeasure", "Measuring", "NeedsRelayout", "LayingOut", "Ready", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public enum LayoutState {
        NeedsRemeasure,
        Measuring,
        NeedsRelayout,
        LayingOut,
        Ready;

        /* renamed from: values  reason: to resolve conflict with enum method */
        public static LayoutState[] valuesCustom() {
            LayoutState[] valuesCustom = values();
            return (LayoutState[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }
    }

    /* compiled from: LayoutNode.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0080\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/node/LayoutNode$UsageByParent;", "", "(Ljava/lang/String;I)V", "InMeasureBlock", "InLayoutBlock", "NotUsed", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public enum UsageByParent {
        InMeasureBlock,
        InLayoutBlock,
        NotUsed;

        /* renamed from: values  reason: to resolve conflict with enum method */
        public static UsageByParent[] valuesCustom() {
            UsageByParent[] valuesCustom = values();
            return (UsageByParent[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }
    }

    @Override // androidx.compose.ui.layout.LayoutInfo
    public List<ModifierInfo> getModifierInfo() {
        MutableVector mutableVector = new MutableVector(new ModifierInfo[16], 0);
        LayoutNodeWrapper outerLayoutNodeWrapper$ui_release = getOuterLayoutNodeWrapper$ui_release();
        LayoutNodeWrapper innerLayoutNodeWrapper$ui_release = getInnerLayoutNodeWrapper$ui_release();
        while (!Intrinsics.areEqual(outerLayoutNodeWrapper$ui_release, innerLayoutNodeWrapper$ui_release)) {
            mutableVector.add(new ModifierInfo(((DelegatingLayoutNodeWrapper) outerLayoutNodeWrapper$ui_release).getModifier(), outerLayoutNodeWrapper$ui_release, outerLayoutNodeWrapper$ui_release.getLayer()));
            outerLayoutNodeWrapper$ui_release = outerLayoutNodeWrapper$ui_release.getWrapped$ui_release();
            Intrinsics.checkNotNull(outerLayoutNodeWrapper$ui_release);
        }
        return mutableVector.asMutableList();
    }

    public final void invalidateLayers$ui_release() {
        LayoutNodeWrapper outerLayoutNodeWrapper$ui_release = getOuterLayoutNodeWrapper$ui_release();
        LayoutNodeWrapper innerLayoutNodeWrapper$ui_release = getInnerLayoutNodeWrapper$ui_release();
        while (!Intrinsics.areEqual(outerLayoutNodeWrapper$ui_release, innerLayoutNodeWrapper$ui_release)) {
            OwnedLayer layer = outerLayoutNodeWrapper$ui_release.getLayer();
            if (layer != null) {
                layer.invalidate();
            }
            outerLayoutNodeWrapper$ui_release = outerLayoutNodeWrapper$ui_release.getWrapped$ui_release();
            Intrinsics.checkNotNull(outerLayoutNodeWrapper$ui_release);
        }
        OwnedLayer layer2 = this.innerLayoutNodeWrapper.getLayer();
        if (layer2 == null) {
            return;
        }
        layer2.invalidate();
    }

    private final void copyWrappersToCache() {
        LayoutNodeWrapper outerLayoutNodeWrapper$ui_release = getOuterLayoutNodeWrapper$ui_release();
        LayoutNodeWrapper innerLayoutNodeWrapper$ui_release = getInnerLayoutNodeWrapper$ui_release();
        while (!Intrinsics.areEqual(outerLayoutNodeWrapper$ui_release, innerLayoutNodeWrapper$ui_release)) {
            this.wrapperCache.add((DelegatingLayoutNodeWrapper) outerLayoutNodeWrapper$ui_release);
            outerLayoutNodeWrapper$ui_release = outerLayoutNodeWrapper$ui_release.getWrapped$ui_release();
            Intrinsics.checkNotNull(outerLayoutNodeWrapper$ui_release);
        }
    }

    private final boolean shouldInvalidateParentLayer() {
        LayoutNodeWrapper wrapped$ui_release = getInnerLayoutNodeWrapper$ui_release().getWrapped$ui_release();
        for (LayoutNodeWrapper outerLayoutNodeWrapper$ui_release = getOuterLayoutNodeWrapper$ui_release(); !Intrinsics.areEqual(outerLayoutNodeWrapper$ui_release, wrapped$ui_release) && outerLayoutNodeWrapper$ui_release != null; outerLayoutNodeWrapper$ui_release = outerLayoutNodeWrapper$ui_release.getWrapped$ui_release()) {
            if (outerLayoutNodeWrapper$ui_release.getLayer() != null) {
                return false;
            }
            if (outerLayoutNodeWrapper$ui_release instanceof ModifiedDrawNode) {
                return true;
            }
        }
        return true;
    }
}
