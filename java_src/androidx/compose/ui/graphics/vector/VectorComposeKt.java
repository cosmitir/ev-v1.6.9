package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.PathFillType;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import androidx.constraintlayout.motion.widget.Key;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: VectorCompose.kt */
@Metadata(d1 = {"\u0000H\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a\u0080\u0001\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00052\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u00052\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\u0011\u0010\u000f\u001a\r\u0012\u0004\u0012\u00020\u00010\u0010¢\u0006\u0002\b\u0011H\u0007¢\u0006\u0002\u0010\u0012\u001a©\u0001\u0010\u0013\u001a\u00020\u00012\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\b\b\u0002\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\b\b\u0002\u0010\u0019\u001a\u00020\u00052\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00182\b\b\u0002\u0010\u001b\u001a\u00020\u00052\b\b\u0002\u0010\u001c\u001a\u00020\u00052\b\b\u0002\u0010\u001d\u001a\u00020\u001e2\b\b\u0002\u0010\u001f\u001a\u00020 2\b\b\u0002\u0010!\u001a\u00020\u00052\b\b\u0002\u0010\"\u001a\u00020\u00052\b\b\u0002\u0010#\u001a\u00020\u00052\b\b\u0002\u0010$\u001a\u00020\u0005H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b%\u0010&\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006'"}, d2 = {"Group", "", "name", "", Key.ROTATION, "", "pivotX", "pivotY", "scaleX", "scaleY", "translationX", "translationY", "clipPathData", "", "Landroidx/compose/ui/graphics/vector/PathNode;", FirebaseAnalytics.Param.CONTENT, "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "(Ljava/lang/String;FFFFFFFLjava/util/List;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V", "Path", "pathData", "pathFillType", "Landroidx/compose/ui/graphics/PathFillType;", "fill", "Landroidx/compose/ui/graphics/Brush;", "fillAlpha", "stroke", "strokeAlpha", "strokeLineWidth", "strokeLineCap", "Landroidx/compose/ui/graphics/StrokeCap;", "strokeLineJoin", "Landroidx/compose/ui/graphics/StrokeJoin;", "strokeLineMiter", "trimPathStart", "trimPathEnd", "trimPathOffset", "Path-9cdaXJ4", "(Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFLandroidx/compose/runtime/Composer;III)V", "ui_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class VectorComposeKt {
    /* JADX WARN: Removed duplicated region for block: B:102:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0273  */
    /* JADX WARN: Removed duplicated region for block: B:159:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x011a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Group(java.lang.String r19, float r20, float r21, float r22, float r23, float r24, float r25, float r26, java.util.List<? extends androidx.compose.ui.graphics.vector.PathNode> r27, final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r28, androidx.compose.runtime.Composer r29, final int r30, final int r31) {
        /*
            Method dump skipped, instructions count: 645
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.graphics.vector.VectorComposeKt.Group(java.lang.String, float, float, float, float, float, float, float, java.util.List, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int):void");
    }

    /* renamed from: Path-9cdaXJ4  reason: not valid java name */
    public static final void m839Path9cdaXJ4(final List<? extends PathNode> pathData, int i, String str, Brush brush, float f, Brush brush2, float f2, float f3, int i2, int i3, float f4, float f5, float f6, float f7, Composer composer, final int i4, final int i5, final int i6) {
        Intrinsics.checkNotNullParameter(pathData, "pathData");
        Composer startRestartGroup = composer.startRestartGroup(435826864);
        ComposerKt.sourceInformation(startRestartGroup, "C(Path)P(3,4:c#ui.graphics.PathFillType,2!4,10,7:c#ui.graphics.StrokeCap,8:c#ui.graphics.StrokeJoin!1,13)74@2611L876:VectorCompose.kt#huu6hf");
        final int defaultFillType = (i6 & 2) != 0 ? VectorKt.getDefaultFillType() : i;
        final String str2 = (i6 & 4) != 0 ? "" : str;
        final Brush brush3 = (i6 & 8) != 0 ? null : brush;
        float f8 = (i6 & 16) != 0 ? 1.0f : f;
        Brush brush4 = (i6 & 32) != 0 ? null : brush2;
        float f9 = (i6 & 64) != 0 ? 1.0f : f2;
        float f10 = (i6 & 128) != 0 ? 0.0f : f3;
        int defaultStrokeLineCap = (i6 & 256) != 0 ? VectorKt.getDefaultStrokeLineCap() : i2;
        int defaultStrokeLineJoin = (i6 & 512) != 0 ? VectorKt.getDefaultStrokeLineJoin() : i3;
        float f11 = (i6 & 1024) != 0 ? 4.0f : f4;
        float f12 = (i6 & 2048) != 0 ? 0.0f : f5;
        float f13 = (i6 & 4096) != 0 ? 1.0f : f6;
        float f14 = (i6 & 8192) != 0 ? 0.0f : f7;
        final VectorComposeKt$Path$1 vectorComposeKt$Path$1 = new Function0<PathComponent>() { // from class: androidx.compose.ui.graphics.vector.VectorComposeKt$Path$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final PathComponent invoke() {
                return new PathComponent();
            }
        };
        startRestartGroup.startReplaceableGroup(-2103251527);
        ComposerKt.sourceInformation(startRestartGroup, "C(ComposeNode):Composables.kt#9igjgp");
        if (!(startRestartGroup.getApplier() instanceof VectorApplier)) {
            ComposablesKt.invalidApplier();
        }
        startRestartGroup.startNode();
        if (startRestartGroup.getInserting()) {
            startRestartGroup.createNode(new Function0<PathComponent>() { // from class: androidx.compose.ui.graphics.vector.VectorComposeKt$Path-9cdaXJ4$$inlined$ComposeNode$1
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, androidx.compose.ui.graphics.vector.PathComponent] */
                @Override // kotlin.jvm.functions.Function0
                public final PathComponent invoke() {
                    return Function0.this.invoke();
                }
            });
        } else {
            startRestartGroup.useNode();
        }
        Composer m21constructorimpl = Updater.m21constructorimpl(startRestartGroup);
        Updater.m28setimpl(m21constructorimpl, str2, new Function2<PathComponent, String, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComposeKt$Path$2$1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PathComponent pathComponent, String str3) {
                invoke2(pathComponent, str3);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(PathComponent set, String it) {
                Intrinsics.checkNotNullParameter(set, "$this$set");
                Intrinsics.checkNotNullParameter(it, "it");
                set.setName(it);
            }
        });
        Updater.m28setimpl(m21constructorimpl, pathData, new Function2<PathComponent, List<? extends PathNode>, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComposeKt$Path$2$2
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PathComponent pathComponent, List<? extends PathNode> list) {
                invoke2(pathComponent, list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(PathComponent set, List<? extends PathNode> it) {
                Intrinsics.checkNotNullParameter(set, "$this$set");
                Intrinsics.checkNotNullParameter(it, "it");
                set.setPathData(it);
            }
        });
        Updater.m28setimpl(m21constructorimpl, PathFillType.m551boximpl(defaultFillType), new Function2<PathComponent, PathFillType, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComposeKt$Path$2$3
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PathComponent pathComponent, PathFillType pathFillType) {
                m841invokepweu1eQ(pathComponent, pathFillType.m557unboximpl());
                return Unit.INSTANCE;
            }

            /* renamed from: invoke-pweu1eQ  reason: not valid java name */
            public final void m841invokepweu1eQ(PathComponent set, int i7) {
                Intrinsics.checkNotNullParameter(set, "$this$set");
                set.m821setPathFillTypeoQ8Xj4U(i7);
            }
        });
        Updater.m28setimpl(m21constructorimpl, brush3, new Function2<PathComponent, Brush, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComposeKt$Path$2$4
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PathComponent pathComponent, Brush brush5) {
                invoke2(pathComponent, brush5);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(PathComponent set, Brush brush5) {
                Intrinsics.checkNotNullParameter(set, "$this$set");
                set.setFill(brush5);
            }
        });
        Updater.m28setimpl(m21constructorimpl, Float.valueOf(f8), new Function2<PathComponent, Float, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComposeKt$Path$2$5
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PathComponent pathComponent, Float f15) {
                invoke(pathComponent, f15.floatValue());
                return Unit.INSTANCE;
            }

            public final void invoke(PathComponent set, float f15) {
                Intrinsics.checkNotNullParameter(set, "$this$set");
                set.setFillAlpha(f15);
            }
        });
        Updater.m28setimpl(m21constructorimpl, brush4, new Function2<PathComponent, Brush, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComposeKt$Path$2$6
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PathComponent pathComponent, Brush brush5) {
                invoke2(pathComponent, brush5);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(PathComponent set, Brush brush5) {
                Intrinsics.checkNotNullParameter(set, "$this$set");
                set.setStroke(brush5);
            }
        });
        Updater.m28setimpl(m21constructorimpl, Float.valueOf(f9), new Function2<PathComponent, Float, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComposeKt$Path$2$7
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PathComponent pathComponent, Float f15) {
                invoke(pathComponent, f15.floatValue());
                return Unit.INSTANCE;
            }

            public final void invoke(PathComponent set, float f15) {
                Intrinsics.checkNotNullParameter(set, "$this$set");
                set.setStrokeAlpha(f15);
            }
        });
        Updater.m28setimpl(m21constructorimpl, Float.valueOf(f10), new Function2<PathComponent, Float, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComposeKt$Path$2$8
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PathComponent pathComponent, Float f15) {
                invoke(pathComponent, f15.floatValue());
                return Unit.INSTANCE;
            }

            public final void invoke(PathComponent set, float f15) {
                Intrinsics.checkNotNullParameter(set, "$this$set");
                set.setStrokeLineWidth(f15);
            }
        });
        Updater.m28setimpl(m21constructorimpl, StrokeJoin.m619boximpl(defaultStrokeLineJoin), new Function2<PathComponent, StrokeJoin, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComposeKt$Path$2$9
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PathComponent pathComponent, StrokeJoin strokeJoin) {
                m842invokekLtJ_vA(pathComponent, strokeJoin.m625unboximpl());
                return Unit.INSTANCE;
            }

            /* renamed from: invoke-kLtJ_vA  reason: not valid java name */
            public final void m842invokekLtJ_vA(PathComponent set, int i7) {
                Intrinsics.checkNotNullParameter(set, "$this$set");
                set.m823setStrokeLineJoinWw9F2mQ(i7);
            }
        });
        Updater.m28setimpl(m21constructorimpl, StrokeCap.m609boximpl(defaultStrokeLineCap), new Function2<PathComponent, StrokeCap, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComposeKt$Path$2$10
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PathComponent pathComponent, StrokeCap strokeCap) {
                m840invokeCSYIeUk(pathComponent, strokeCap.m615unboximpl());
                return Unit.INSTANCE;
            }

            /* renamed from: invoke-CSYIeUk  reason: not valid java name */
            public final void m840invokeCSYIeUk(PathComponent set, int i7) {
                Intrinsics.checkNotNullParameter(set, "$this$set");
                set.m822setStrokeLineCapBeK7IIE(i7);
            }
        });
        Updater.m28setimpl(m21constructorimpl, Float.valueOf(f11), new Function2<PathComponent, Float, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComposeKt$Path$2$11
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PathComponent pathComponent, Float f15) {
                invoke(pathComponent, f15.floatValue());
                return Unit.INSTANCE;
            }

            public final void invoke(PathComponent set, float f15) {
                Intrinsics.checkNotNullParameter(set, "$this$set");
                set.setStrokeLineMiter(f15);
            }
        });
        Updater.m28setimpl(m21constructorimpl, Float.valueOf(f12), new Function2<PathComponent, Float, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComposeKt$Path$2$12
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PathComponent pathComponent, Float f15) {
                invoke(pathComponent, f15.floatValue());
                return Unit.INSTANCE;
            }

            public final void invoke(PathComponent set, float f15) {
                Intrinsics.checkNotNullParameter(set, "$this$set");
                set.setTrimPathStart(f15);
            }
        });
        Updater.m28setimpl(m21constructorimpl, Float.valueOf(f13), new Function2<PathComponent, Float, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComposeKt$Path$2$13
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PathComponent pathComponent, Float f15) {
                invoke(pathComponent, f15.floatValue());
                return Unit.INSTANCE;
            }

            public final void invoke(PathComponent set, float f15) {
                Intrinsics.checkNotNullParameter(set, "$this$set");
                set.setTrimPathEnd(f15);
            }
        });
        Updater.m28setimpl(m21constructorimpl, Float.valueOf(f14), new Function2<PathComponent, Float, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComposeKt$Path$2$14
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PathComponent pathComponent, Float f15) {
                invoke(pathComponent, f15.floatValue());
                return Unit.INSTANCE;
            }

            public final void invoke(PathComponent set, float f15) {
                Intrinsics.checkNotNullParameter(set, "$this$set");
                set.setTrimPathOffset(f15);
            }
        });
        startRestartGroup.endNode();
        startRestartGroup.endReplaceableGroup();
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        final float f15 = f8;
        final Brush brush5 = brush4;
        final float f16 = f9;
        final float f17 = f10;
        final int i7 = defaultStrokeLineCap;
        final int i8 = defaultStrokeLineJoin;
        final float f18 = f11;
        final float f19 = f12;
        final float f20 = f13;
        final float f21 = f14;
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.graphics.vector.VectorComposeKt$Path$3
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer2, int i9) {
                VectorComposeKt.m839Path9cdaXJ4(pathData, defaultFillType, str2, brush3, f15, brush5, f16, f17, i7, i8, f18, f19, f20, f21, composer2, i4 | 1, i5, i6);
            }
        });
    }
}
