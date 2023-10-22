package androidx.compose.ui.node;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathEffect;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DpRect;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: LayoutNodeDrawScope.kt */
@Metadata(d1 = {"\u0000ì\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005JJ\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010!\u001a\u00020\u001c2\u0017\u0010\"\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u001e0#¢\u0006\u0002\b$H\u0080\bø\u0001\u0000ø\u0001\u0003ø\u0001\u0001¢\u0006\u0004\b%\u0010&Jt\u0010'\u001a\u00020\u001e2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020\u000b2\u0006\u0010,\u001a\u00020-2\b\b\u0002\u0010.\u001a\u00020\u00072\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010/\u001a\u00020\u000b2\b\b\u0002\u00100\u001a\u0002012\n\b\u0002\u00102\u001a\u0004\u0018\u0001032\b\b\u0002\u00104\u001a\u000205H\u0096\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b6\u00107Jt\u0010'\u001a\u00020\u001e2\u0006\u00108\u001a\u0002092\u0006\u0010*\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020\u000b2\u0006\u0010,\u001a\u00020-2\b\b\u0002\u0010.\u001a\u00020\u00072\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010/\u001a\u00020\u000b2\b\b\u0002\u00100\u001a\u0002012\n\b\u0002\u00102\u001a\u0004\u0018\u0001032\b\b\u0002\u00104\u001a\u000205H\u0096\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b:\u0010;J\\\u0010<\u001a\u00020\u001e2\u0006\u0010(\u001a\u00020)2\b\b\u0002\u0010=\u001a\u00020\u000b2\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010/\u001a\u00020\u000b2\b\b\u0002\u00100\u001a\u0002012\n\b\u0002\u00102\u001a\u0004\u0018\u0001032\b\b\u0002\u00104\u001a\u000205H\u0096\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b>\u0010?J\\\u0010<\u001a\u00020\u001e2\u0006\u00108\u001a\u0002092\b\b\u0002\u0010=\u001a\u00020\u000b2\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010/\u001a\u00020\u000b2\b\b\u0002\u00100\u001a\u0002012\n\b\u0002\u00102\u001a\u0004\u0018\u0001032\b\b\u0002\u00104\u001a\u000205H\u0096\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b@\u0010AJ\b\u0010B\u001a\u00020\u001eH\u0016JR\u0010C\u001a\u00020\u001e2\u0006\u0010D\u001a\u00020E2\b\b\u0002\u0010.\u001a\u00020\u00072\b\b\u0002\u0010/\u001a\u00020\u000b2\b\b\u0002\u00100\u001a\u0002012\n\b\u0002\u00102\u001a\u0004\u0018\u0001032\b\b\u0002\u00104\u001a\u000205H\u0096\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bF\u0010GJp\u0010C\u001a\u00020\u001e2\u0006\u0010D\u001a\u00020E2\b\b\u0002\u0010H\u001a\u00020I2\b\b\u0002\u0010J\u001a\u00020K2\b\b\u0002\u0010L\u001a\u00020I2\b\b\u0002\u0010M\u001a\u00020K2\b\b\u0002\u0010/\u001a\u00020\u000b2\b\b\u0002\u00100\u001a\u0002012\n\b\u0002\u00102\u001a\u0004\u0018\u0001032\b\b\u0002\u00104\u001a\u000205H\u0096\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bN\u0010OJn\u0010P\u001a\u00020\u001e2\u0006\u0010(\u001a\u00020)2\u0006\u0010Q\u001a\u00020\u00072\u0006\u0010R\u001a\u00020\u00072\b\b\u0002\u0010S\u001a\u00020\u000b2\b\b\u0002\u0010T\u001a\u00020U2\n\b\u0002\u0010V\u001a\u0004\u0018\u00010W2\b\b\u0002\u0010/\u001a\u00020\u000b2\n\b\u0002\u00102\u001a\u0004\u0018\u0001032\b\b\u0002\u00104\u001a\u000205H\u0096\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bX\u0010YJn\u0010P\u001a\u00020\u001e2\u0006\u00108\u001a\u0002092\u0006\u0010Q\u001a\u00020\u00072\u0006\u0010R\u001a\u00020\u00072\b\b\u0002\u0010S\u001a\u00020\u000b2\b\b\u0002\u0010T\u001a\u00020U2\n\b\u0002\u0010V\u001a\u0004\u0018\u00010W2\b\b\u0002\u0010/\u001a\u00020\u000b2\n\b\u0002\u00102\u001a\u0004\u0018\u0001032\b\b\u0002\u00104\u001a\u000205H\u0096\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bZ\u0010[J\\\u0010\\\u001a\u00020\u001e2\u0006\u0010(\u001a\u00020)2\b\b\u0002\u0010.\u001a\u00020\u00072\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010/\u001a\u00020\u000b2\b\b\u0002\u00100\u001a\u0002012\n\b\u0002\u00102\u001a\u0004\u0018\u0001032\b\b\u0002\u00104\u001a\u000205H\u0096\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b]\u0010^J\\\u0010\\\u001a\u00020\u001e2\u0006\u00108\u001a\u0002092\b\b\u0002\u0010.\u001a\u00020\u00072\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010/\u001a\u00020\u000b2\b\b\u0002\u00100\u001a\u0002012\n\b\u0002\u00102\u001a\u0004\u0018\u0001032\b\b\u0002\u00104\u001a\u000205H\u0096\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b_\u0010`JP\u0010a\u001a\u00020\u001e2\u0006\u0010b\u001a\u00020c2\u0006\u0010(\u001a\u00020)2\b\b\u0002\u0010/\u001a\u00020\u000b2\b\b\u0002\u00100\u001a\u0002012\n\b\u0002\u00102\u001a\u0004\u0018\u0001032\b\b\u0002\u00104\u001a\u000205H\u0096\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bd\u0010eJP\u0010a\u001a\u00020\u001e2\u0006\u0010b\u001a\u00020c2\u0006\u00108\u001a\u0002092\b\b\u0002\u0010/\u001a\u00020\u000b2\b\b\u0002\u00100\u001a\u0002012\n\b\u0002\u00102\u001a\u0004\u0018\u0001032\b\b\u0002\u00104\u001a\u000205H\u0096\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bf\u0010gJt\u0010h\u001a\u00020\u001e2\f\u0010i\u001a\b\u0012\u0004\u0012\u00020\u00070j2\u0006\u0010k\u001a\u00020l2\u0006\u0010(\u001a\u00020)2\b\b\u0002\u0010S\u001a\u00020\u000b2\b\b\u0002\u0010T\u001a\u00020U2\n\b\u0002\u0010V\u001a\u0004\u0018\u00010W2\b\b\u0002\u0010/\u001a\u00020\u000b2\n\b\u0002\u00102\u001a\u0004\u0018\u0001032\b\b\u0002\u00104\u001a\u000205H\u0096\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bm\u0010nJt\u0010h\u001a\u00020\u001e2\f\u0010i\u001a\b\u0012\u0004\u0012\u00020\u00070j2\u0006\u0010k\u001a\u00020l2\u0006\u00108\u001a\u0002092\b\b\u0002\u0010S\u001a\u00020\u000b2\b\b\u0002\u0010T\u001a\u00020U2\n\b\u0002\u0010V\u001a\u0004\u0018\u00010W2\b\b\u0002\u0010/\u001a\u00020\u000b2\n\b\u0002\u00102\u001a\u0004\u0018\u0001032\b\b\u0002\u00104\u001a\u000205H\u0096\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bo\u0010pJ\\\u0010q\u001a\u00020\u001e2\u0006\u0010(\u001a\u00020)2\b\b\u0002\u0010.\u001a\u00020\u00072\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010/\u001a\u00020\u000b2\b\b\u0002\u00100\u001a\u0002012\n\b\u0002\u00102\u001a\u0004\u0018\u0001032\b\b\u0002\u00104\u001a\u000205H\u0096\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\br\u0010^J\\\u0010q\u001a\u00020\u001e2\u0006\u00108\u001a\u0002092\b\b\u0002\u0010.\u001a\u00020\u00072\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010/\u001a\u00020\u000b2\b\b\u0002\u00100\u001a\u0002012\n\b\u0002\u00102\u001a\u0004\u0018\u0001032\b\b\u0002\u00104\u001a\u000205H\u0096\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bs\u0010`Jf\u0010t\u001a\u00020\u001e2\u0006\u0010(\u001a\u00020)2\b\b\u0002\u0010.\u001a\u00020\u00072\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010u\u001a\u00020v2\b\b\u0002\u0010/\u001a\u00020\u000b2\b\b\u0002\u00100\u001a\u0002012\n\b\u0002\u00102\u001a\u0004\u0018\u0001032\b\b\u0002\u00104\u001a\u000205H\u0096\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bw\u0010xJf\u0010t\u001a\u00020\u001e2\u0006\u00108\u001a\u0002092\b\b\u0002\u0010.\u001a\u00020\u00072\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010u\u001a\u00020v2\b\b\u0002\u00100\u001a\u0002012\b\b\u0002\u0010/\u001a\u00020\u000b2\n\b\u0002\u00102\u001a\u0004\u0018\u0001032\b\b\u0002\u00104\u001a\u000205H\u0096\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\by\u0010zJ\u001a\u0010{\u001a\u00020|*\u00020}H\u0097\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b~\u0010\u007fJ\u001d\u0010{\u001a\u00020|*\u00030\u0080\u0001H\u0097\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\b\u0081\u0001\u0010\u0082\u0001J\u001e\u0010\u0083\u0001\u001a\u00020}*\u00030\u0080\u0001H\u0097\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\b\u0084\u0001\u0010\u0085\u0001J \u0010\u0083\u0001\u001a\u00020}*\u00020\u000bH\u0097\u0001ø\u0001\u0000ø\u0001\u0002ø\u0001\u0001¢\u0006\u0006\b\u0086\u0001\u0010\u0087\u0001J \u0010\u0083\u0001\u001a\u00020}*\u00020|H\u0097\u0001ø\u0001\u0000ø\u0001\u0002ø\u0001\u0001¢\u0006\u0006\b\u0086\u0001\u0010\u0088\u0001J\u001d\u0010\u0089\u0001\u001a\u00020\u000b*\u00020}H\u0097\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\b\u008a\u0001\u0010\u0087\u0001J\u001e\u0010\u0089\u0001\u001a\u00020\u000b*\u00030\u0080\u0001H\u0097\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\b\u008b\u0001\u0010\u0085\u0001J\u0010\u0010\u008c\u0001\u001a\u00030\u008d\u0001*\u00030\u008e\u0001H\u0097\u0001J\u001e\u0010\u008f\u0001\u001a\u00030\u0080\u0001*\u00020}H\u0097\u0001ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\b\u0090\u0001\u0010\u0091\u0001J!\u0010\u008f\u0001\u001a\u00030\u0080\u0001*\u00020\u000bH\u0097\u0001ø\u0001\u0000ø\u0001\u0002ø\u0001\u0001¢\u0006\u0006\b\u0092\u0001\u0010\u0091\u0001J!\u0010\u008f\u0001\u001a\u00030\u0080\u0001*\u00020|H\u0097\u0001ø\u0001\u0000ø\u0001\u0002ø\u0001\u0001¢\u0006\u0006\b\u0092\u0001\u0010\u0093\u0001R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0006\u001a\u00020\u00078VX\u0096\u0005ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u000b8\u0016X\u0097\u0005¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0012\u0010\u000e\u001a\u00020\u000fX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u000b8\u0016X\u0097\u0005¢\u0006\u0006\u001a\u0004\b\u0013\u0010\rR\u0012\u0010\u0014\u001a\u00020\u0015X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017R\u001d\u0010\u0018\u001a\u00020\u00198VX\u0096\u0005ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\u001a\u0010\tR\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u0016\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!\n\u0005\b\u009920\u0001¨\u0006\u0094\u0001"}, d2 = {"Landroidx/compose/ui/node/LayoutNodeDrawScope;", "Landroidx/compose/ui/graphics/drawscope/DrawScope;", "Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;", "canvasDrawScope", "Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;", "(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;)V", "center", "Landroidx/compose/ui/geometry/Offset;", "getCenter-F1C5BW0", "()J", "density", "", "getDensity", "()F", "drawContext", "Landroidx/compose/ui/graphics/drawscope/DrawContext;", "getDrawContext", "()Landroidx/compose/ui/graphics/drawscope/DrawContext;", "fontScale", "getFontScale", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "getLayoutDirection", "()Landroidx/compose/ui/unit/LayoutDirection;", "size", "Landroidx/compose/ui/geometry/Size;", "getSize-NH-jbRc", "wrapped", "Landroidx/compose/ui/node/LayoutNodeWrapper;", "draw", "", "canvas", "Landroidx/compose/ui/graphics/Canvas;", "LayoutNodeWrapper", "block", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "draw-x_KDEd0$ui_release", "(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/node/LayoutNodeWrapper;Lkotlin/jvm/functions/Function1;)V", "drawArc", "brush", "Landroidx/compose/ui/graphics/Brush;", "startAngle", "sweepAngle", "useCenter", "", "topLeft", "alpha", "style", "Landroidx/compose/ui/graphics/drawscope/DrawStyle;", "colorFilter", "Landroidx/compose/ui/graphics/ColorFilter;", "blendMode", "Landroidx/compose/ui/graphics/BlendMode;", "drawArc-illE91I", "(Landroidx/compose/ui/graphics/Brush;FFZJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V", TypedValues.Custom.S_COLOR, "Landroidx/compose/ui/graphics/Color;", "drawArc-yD3GUKo", "(JFFZJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V", "drawCircle", "radius", "drawCircle-V9BoPsw", "(Landroidx/compose/ui/graphics/Brush;FJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V", "drawCircle-VaOC9Bg", "(JFJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V", "drawContent", "drawImage", "image", "Landroidx/compose/ui/graphics/ImageBitmap;", "drawImage-gbVJVH8", "(Landroidx/compose/ui/graphics/ImageBitmap;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V", "srcOffset", "Landroidx/compose/ui/unit/IntOffset;", "srcSize", "Landroidx/compose/ui/unit/IntSize;", "dstOffset", "dstSize", "drawImage-9jGpkUE", "(Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V", "drawLine", "start", "end", "strokeWidth", "cap", "Landroidx/compose/ui/graphics/StrokeCap;", "pathEffect", "Landroidx/compose/ui/graphics/PathEffect;", "drawLine-1RTmtNc", "(Landroidx/compose/ui/graphics/Brush;JJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V", "drawLine-NGM6Ib0", "(JJJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V", "drawOval", "drawOval-AsUm42w", "(Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V", "drawOval-n-J9OG0", "(JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V", "drawPath", "path", "Landroidx/compose/ui/graphics/Path;", "drawPath-GBMwjPU", "(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V", "drawPath-LG529CI", "(Landroidx/compose/ui/graphics/Path;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V", "drawPoints", "points", "", "pointMode", "Landroidx/compose/ui/graphics/PointMode;", "drawPoints-Gsft0Ws", "(Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V", "drawPoints-F8ZwMP8", "(Ljava/util/List;IJFILandroidx/compose/ui/graphics/PathEffect;FLandroidx/compose/ui/graphics/ColorFilter;I)V", "drawRect", "drawRect-AsUm42w", "drawRect-n-J9OG0", "drawRoundRect", "cornerRadius", "Landroidx/compose/ui/geometry/CornerRadius;", "drawRoundRect-ZuiqVtQ", "(Landroidx/compose/ui/graphics/Brush;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V", "drawRoundRect-u-Aw5IA", "(JJJJLandroidx/compose/ui/graphics/drawscope/DrawStyle;FLandroidx/compose/ui/graphics/ColorFilter;I)V", "roundToPx", "", "Landroidx/compose/ui/unit/Dp;", "roundToPx-0680j_4", "(F)I", "Landroidx/compose/ui/unit/TextUnit;", "roundToPx--R2X_6o", "(J)I", "toDp", "toDp-GaN1DYA", "(J)F", "toDp-u2uoSUM", "(F)F", "(I)F", "toPx", "toPx-0680j_4", "toPx--R2X_6o", "toRect", "Landroidx/compose/ui/geometry/Rect;", "Landroidx/compose/ui/unit/DpRect;", "toSp", "toSp-0xMU5do", "(F)J", "toSp-kPz2Gy4", "(I)J", "ui_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class LayoutNodeDrawScope implements DrawScope, ContentDrawScope {
    private final CanvasDrawScope canvasDrawScope;
    private LayoutNodeWrapper wrapped;

    public LayoutNodeDrawScope() {
        this(null, 1, null);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawArc-illE91I */
    public void mo701drawArcillE91I(Brush brush, float f, float f2, boolean z, long j, long j2, float f3, DrawStyle style, ColorFilter colorFilter, int i) {
        Intrinsics.checkNotNullParameter(brush, "brush");
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo701drawArcillE91I(brush, f, f2, z, j, j2, f3, style, colorFilter, i);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawArc-yD3GUKo */
    public void mo702drawArcyD3GUKo(long j, float f, float f2, boolean z, long j2, long j3, float f3, DrawStyle style, ColorFilter colorFilter, int i) {
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo702drawArcyD3GUKo(j, f, f2, z, j2, j3, f3, style, colorFilter, i);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawCircle-V9BoPsw */
    public void mo703drawCircleV9BoPsw(Brush brush, float f, long j, float f2, DrawStyle style, ColorFilter colorFilter, int i) {
        Intrinsics.checkNotNullParameter(brush, "brush");
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo703drawCircleV9BoPsw(brush, f, j, f2, style, colorFilter, i);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawCircle-VaOC9Bg */
    public void mo704drawCircleVaOC9Bg(long j, float f, long j2, float f2, DrawStyle style, ColorFilter colorFilter, int i) {
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo704drawCircleVaOC9Bg(j, f, j2, f2, style, colorFilter, i);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawImage-9jGpkUE */
    public void mo705drawImage9jGpkUE(ImageBitmap image, long j, long j2, long j3, long j4, float f, DrawStyle style, ColorFilter colorFilter, int i) {
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo705drawImage9jGpkUE(image, j, j2, j3, j4, f, style, colorFilter, i);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawImage-gbVJVH8 */
    public void mo706drawImagegbVJVH8(ImageBitmap image, long j, float f, DrawStyle style, ColorFilter colorFilter, int i) {
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo706drawImagegbVJVH8(image, j, f, style, colorFilter, i);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawLine-1RTmtNc */
    public void mo707drawLine1RTmtNc(Brush brush, long j, long j2, float f, int i, PathEffect pathEffect, float f2, ColorFilter colorFilter, int i2) {
        Intrinsics.checkNotNullParameter(brush, "brush");
        this.canvasDrawScope.mo707drawLine1RTmtNc(brush, j, j2, f, i, pathEffect, f2, colorFilter, i2);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawLine-NGM6Ib0 */
    public void mo708drawLineNGM6Ib0(long j, long j2, long j3, float f, int i, PathEffect pathEffect, float f2, ColorFilter colorFilter, int i2) {
        this.canvasDrawScope.mo708drawLineNGM6Ib0(j, j2, j3, f, i, pathEffect, f2, colorFilter, i2);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawOval-AsUm42w */
    public void mo709drawOvalAsUm42w(Brush brush, long j, long j2, float f, DrawStyle style, ColorFilter colorFilter, int i) {
        Intrinsics.checkNotNullParameter(brush, "brush");
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo709drawOvalAsUm42w(brush, j, j2, f, style, colorFilter, i);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawOval-n-J9OG0 */
    public void mo710drawOvalnJ9OG0(long j, long j2, long j3, float f, DrawStyle style, ColorFilter colorFilter, int i) {
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo710drawOvalnJ9OG0(j, j2, j3, f, style, colorFilter, i);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawPath-GBMwjPU */
    public void mo711drawPathGBMwjPU(Path path, Brush brush, float f, DrawStyle style, ColorFilter colorFilter, int i) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(brush, "brush");
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo711drawPathGBMwjPU(path, brush, f, style, colorFilter, i);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawPath-LG529CI */
    public void mo712drawPathLG529CI(Path path, long j, float f, DrawStyle style, ColorFilter colorFilter, int i) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo712drawPathLG529CI(path, j, f, style, colorFilter, i);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawPoints-F8ZwMP8 */
    public void mo713drawPointsF8ZwMP8(List<Offset> points, int i, long j, float f, int i2, PathEffect pathEffect, float f2, ColorFilter colorFilter, int i3) {
        Intrinsics.checkNotNullParameter(points, "points");
        this.canvasDrawScope.mo713drawPointsF8ZwMP8(points, i, j, f, i2, pathEffect, f2, colorFilter, i3);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawPoints-Gsft0Ws */
    public void mo714drawPointsGsft0Ws(List<Offset> points, int i, Brush brush, float f, int i2, PathEffect pathEffect, float f2, ColorFilter colorFilter, int i3) {
        Intrinsics.checkNotNullParameter(points, "points");
        Intrinsics.checkNotNullParameter(brush, "brush");
        this.canvasDrawScope.mo714drawPointsGsft0Ws(points, i, brush, f, i2, pathEffect, f2, colorFilter, i3);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawRect-AsUm42w */
    public void mo715drawRectAsUm42w(Brush brush, long j, long j2, float f, DrawStyle style, ColorFilter colorFilter, int i) {
        Intrinsics.checkNotNullParameter(brush, "brush");
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo715drawRectAsUm42w(brush, j, j2, f, style, colorFilter, i);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawRect-n-J9OG0 */
    public void mo716drawRectnJ9OG0(long j, long j2, long j3, float f, DrawStyle style, ColorFilter colorFilter, int i) {
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo716drawRectnJ9OG0(j, j2, j3, f, style, colorFilter, i);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawRoundRect-ZuiqVtQ */
    public void mo717drawRoundRectZuiqVtQ(Brush brush, long j, long j2, long j3, float f, DrawStyle style, ColorFilter colorFilter, int i) {
        Intrinsics.checkNotNullParameter(brush, "brush");
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo717drawRoundRectZuiqVtQ(brush, j, j2, j3, f, style, colorFilter, i);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: drawRoundRect-u-Aw5IA */
    public void mo718drawRoundRectuAw5IA(long j, long j2, long j3, long j4, DrawStyle style, float f, ColorFilter colorFilter, int i) {
        Intrinsics.checkNotNullParameter(style, "style");
        this.canvasDrawScope.mo718drawRoundRectuAw5IA(j, j2, j3, j4, style, f, colorFilter, i);
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: getCenter-F1C5BW0 */
    public long mo719getCenterF1C5BW0() {
        return this.canvasDrawScope.mo719getCenterF1C5BW0();
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.canvasDrawScope.getDensity();
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public DrawContext getDrawContext() {
        return this.canvasDrawScope.getDrawContext();
    }

    @Override // androidx.compose.ui.unit.Density
    public float getFontScale() {
        return this.canvasDrawScope.getFontScale();
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    public LayoutDirection getLayoutDirection() {
        return this.canvasDrawScope.getLayoutDirection();
    }

    @Override // androidx.compose.ui.graphics.drawscope.DrawScope
    /* renamed from: getSize-NH-jbRc */
    public long mo720getSizeNHjbRc() {
        return this.canvasDrawScope.mo720getSizeNHjbRc();
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: roundToPx--R2X_6o */
    public int mo42roundToPxR2X_6o(long j) {
        return this.canvasDrawScope.mo42roundToPxR2X_6o(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: roundToPx-0680j_4 */
    public int mo43roundToPx0680j_4(float f) {
        return this.canvasDrawScope.mo43roundToPx0680j_4(f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-GaN1DYA */
    public float mo44toDpGaN1DYA(long j) {
        return this.canvasDrawScope.mo44toDpGaN1DYA(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public float mo45toDpu2uoSUM(float f) {
        return this.canvasDrawScope.mo45toDpu2uoSUM(f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public float mo46toDpu2uoSUM(int i) {
        return this.canvasDrawScope.mo46toDpu2uoSUM(i);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx--R2X_6o */
    public float mo47toPxR2X_6o(long j) {
        return this.canvasDrawScope.mo47toPxR2X_6o(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx-0680j_4 */
    public float mo48toPx0680j_4(float f) {
        return this.canvasDrawScope.mo48toPx0680j_4(f);
    }

    @Override // androidx.compose.ui.unit.Density
    public Rect toRect(DpRect dpRect) {
        Intrinsics.checkNotNullParameter(dpRect, "<this>");
        return this.canvasDrawScope.toRect(dpRect);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSp-0xMU5do */
    public long mo49toSp0xMU5do(float f) {
        return this.canvasDrawScope.mo49toSp0xMU5do(f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSp-kPz2Gy4 */
    public long mo50toSpkPz2Gy4(float f) {
        return this.canvasDrawScope.mo50toSpkPz2Gy4(f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSp-kPz2Gy4 */
    public long mo51toSpkPz2Gy4(int i) {
        return this.canvasDrawScope.mo51toSpkPz2Gy4(i);
    }

    public LayoutNodeDrawScope(CanvasDrawScope canvasDrawScope) {
        Intrinsics.checkNotNullParameter(canvasDrawScope, "canvasDrawScope");
        this.canvasDrawScope = canvasDrawScope;
    }

    public /* synthetic */ LayoutNodeDrawScope(CanvasDrawScope canvasDrawScope, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new CanvasDrawScope() : canvasDrawScope);
    }

    @Override // androidx.compose.ui.graphics.drawscope.ContentDrawScope
    public void drawContent() {
        Canvas canvas = getDrawContext().getCanvas();
        LayoutNodeWrapper layoutNodeWrapper = this.wrapped;
        if (layoutNodeWrapper == null) {
            return;
        }
        layoutNodeWrapper.draw(canvas);
    }

    /* renamed from: draw-x_KDEd0$ui_release  reason: not valid java name */
    public final void m1706drawx_KDEd0$ui_release(Canvas canvas, long j, LayoutNodeWrapper LayoutNodeWrapper, Function1<? super DrawScope, Unit> block) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(LayoutNodeWrapper, "LayoutNodeWrapper");
        Intrinsics.checkNotNullParameter(block, "block");
        LayoutNodeWrapper layoutNodeWrapper = this.wrapped;
        this.wrapped = LayoutNodeWrapper;
        CanvasDrawScope canvasDrawScope = this.canvasDrawScope;
        LayoutDirection layoutDirection = LayoutNodeWrapper.getMeasureScope().getLayoutDirection();
        CanvasDrawScope.DrawParams drawParams = canvasDrawScope.getDrawParams();
        Density component1 = drawParams.component1();
        LayoutDirection component2 = drawParams.component2();
        Canvas component3 = drawParams.component3();
        long m722component4NHjbRc = drawParams.m722component4NHjbRc();
        CanvasDrawScope.DrawParams drawParams2 = canvasDrawScope.getDrawParams();
        drawParams2.setDensity(LayoutNodeWrapper.getMeasureScope());
        drawParams2.setLayoutDirection(layoutDirection);
        drawParams2.setCanvas(canvas);
        drawParams2.m725setSizeuvyYCjk(j);
        canvas.save();
        block.invoke(canvasDrawScope);
        canvas.restore();
        CanvasDrawScope.DrawParams drawParams3 = canvasDrawScope.getDrawParams();
        drawParams3.setDensity(component1);
        drawParams3.setLayoutDirection(component2);
        drawParams3.setCanvas(component3);
        drawParams3.m725setSizeuvyYCjk(m722component4NHjbRc);
        this.wrapped = layoutNodeWrapper;
    }
}
