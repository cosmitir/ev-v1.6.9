.class public final Landroidx/compose/material/icons/rounded/GestureKt;
.super Ljava/lang/Object;
.source "Gesture.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGesture.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Gesture.kt\nandroidx/compose/material/icons/rounded/GestureKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,70:1\n122#2:71\n116#2,3:72\n119#2,3:76\n132#2,18:79\n152#2:116\n175#3:75\n622#4,2:97\n634#4,2:99\n636#4,11:105\n50#5,4:101\n*S KotlinDebug\n*F\n+ 1 Gesture.kt\nandroidx/compose/material/icons/rounded/GestureKt\n*L\n29#1:71\n29#1:72,3\n29#1:76,3\n30#1:79,18\n30#1:116\n29#1:75\n30#1:97,2\n30#1:99,2\n30#1:105,11\n30#1:101,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_gesture",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Gesture",
        "Landroidx/compose/material/icons/Icons$Rounded;",
        "getGesture",
        "(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;",
        "material-icons-extended-rounded_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static _gesture:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getGesture(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 29

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/rounded/GestureKt;->_gesture:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "Rounded.Gesture"

    .line 72
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object v12, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 75
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v6, 0x41c00000    # 24.0f

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x60

    const/4 v11, 0x0

    .line 72
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    .line 82
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v14

    .line 89
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v16, v0

    check-cast v16, Landroidx/compose/ui/graphics/Brush;

    const/16 v18, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    .line 94
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v21

    .line 95
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    const-string v15, ""

    .line 101
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v0, 0x406e147b    # 3.72f

    const v1, 0x40c147ae    # 6.04f

    .line 31
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3ef0a3d7    # 0.47f

    const v2, 0x3eeb851f    # 0.46f

    const v3, 0x3f9ae148    # 1.21f

    const v4, 0x3ef5c28f    # 0.48f

    const v5, 0x3fdae148    # 1.71f

    const v6, 0x3d75c28f    # 0.06f

    move-object v0, v7

    .line 32
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3ebd70a4    # 0.37f

    const v2, -0x415c28f6    # -0.32f

    const v3, 0x3f30a3d7    # 0.69f

    const v4, -0x40fd70a4    # -0.51f

    const v5, 0x3f5eb852    # 0.87f

    const v6, -0x4123d70a    # -0.43f

    .line 33
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x3e4ccccd    # 0.2f

    const/4 v3, 0x0

    const v4, 0x3f83d70a    # 1.03f

    const v5, -0x41666666    # -0.3f

    const v6, 0x3fc28f5c    # 1.52f

    .line 34
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, -0x41800000    # -0.25f

    const v2, 0x3ed70a3d    # 0.42f

    const v3, -0x3fc8f5c3    # -2.86f

    const v4, 0x4078f5c3    # 3.89f

    const v5, -0x3fc8f5c3    # -2.86f

    const v6, 0x40c9eb85    # 6.31f

    .line 35
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3fa3d70a    # 1.28f

    const v3, 0x3ef5c28f    # 0.48f

    const v4, 0x4015c28f    # 2.34f

    const v5, 0x3fab851f    # 1.34f

    const v6, 0x403eb852    # 2.98f

    .line 36
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x3f400000    # 0.75f

    const v2, 0x3f0f5c29    # 0.56f

    const v3, 0x3fdeb852    # 1.74f

    const v4, 0x3f3ae148    # 0.73f

    const v5, 0x4028f5c3    # 2.64f

    const v6, 0x3eeb851f    # 0.46f

    .line 37
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f88f5c3    # 1.07f

    const v2, -0x416147ae    # -0.31f

    const v3, 0x3ff9999a    # 1.95f

    const v4, -0x404ccccd    # -1.4f

    const v5, 0x4043d70a    # 3.06f

    const v6, -0x3fceb852    # -2.77f

    .line 38
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f9ae148    # 1.21f

    const v2, -0x404147ae    # -1.49f

    const v3, 0x40351eb8    # 2.83f

    const v4, -0x3fa3d70a    # -3.44f

    const v5, 0x40828f5c    # 4.08f

    const v6, -0x3fa3d70a    # -3.44f

    .line 39
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3fd0a3d7    # 1.63f

    const/4 v2, 0x0

    const v3, 0x3fd33333    # 1.65f

    const v4, 0x3f8147ae    # 1.01f

    const v5, 0x3fe147ae    # 1.76f

    const v6, 0x3fe51eb8    # 1.79f

    .line 40
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x3f8e147b    # -3.78f

    const v2, 0x3f23d70a    # 0.64f

    const v3, -0x3f53d70a    # -5.38f

    const v4, 0x406ae148    # 3.67f

    const v5, -0x3f53d70a    # -5.38f

    const v6, 0x40abd70a    # 5.37f

    .line 41
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3fd9999a    # 1.7f

    const v3, 0x3fb851ec    # 1.44f

    const v4, 0x4045c28f    # 3.09f

    const v5, 0x404d70a4    # 3.21f

    const v6, 0x4045c28f    # 3.09f

    .line 42
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3fd0a3d7    # 1.63f

    const/4 v2, 0x0

    const v3, 0x408947ae    # 4.29f

    const v4, -0x4055c28f    # -1.33f

    const v5, 0x4096147b    # 4.69f

    const v6, -0x3f3ccccd    # -6.1f

    .line 43
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f9ae148    # 1.21f

    .line 44
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f30a3d7    # 0.69f

    const/high16 v3, 0x3fa00000    # 1.25f

    const v4, -0x40f0a3d7    # -0.56f

    const/high16 v5, 0x3fa00000    # 1.25f

    const/high16 v6, -0x40600000    # -1.25f

    move-object v0, v7

    .line 45
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40f0a3d7    # -0.56f

    const/high16 v1, -0x40600000    # -1.25f

    .line 46
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4063d70a    # -1.22f

    .line 47
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41e66666    # -0.15f

    const v2, -0x402ccccd    # -1.65f

    const v3, -0x40747ae1    # -1.09f

    const v4, -0x3f79999a    # -4.2f

    const v5, -0x3f7f0a3d    # -4.03f

    const v6, -0x3f79999a    # -4.2f

    move-object v0, v7

    .line 48
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, -0x3ff00000    # -2.25f

    const/4 v2, 0x0

    const v3, -0x3f7a3d71    # -4.18f

    const v4, 0x3ff47ae1    # 1.91f

    const v5, -0x3f61eb85    # -4.94f

    const v6, 0x4035c28f    # 2.84f

    .line 49
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40eb851f    # -0.58f

    const v2, 0x3f3ae148    # 0.73f

    const v3, -0x3ffc28f6    # -2.06f

    const v4, 0x401eb852    # 2.48f

    const v5, -0x3fed70a4    # -2.29f

    const v6, 0x402e147b    # 2.72f

    .line 50
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, -0x41800000    # -0.25f

    const v2, 0x3e99999a    # 0.3f

    const v3, -0x40d1eb85    # -0.68f

    const v4, 0x3f570a3d    # 0.84f

    const v5, -0x4071eb85    # -1.11f

    const v6, 0x3f570a3d    # 0.84f

    .line 51
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4119999a    # -0.45f

    const/4 v2, 0x0

    const v3, -0x40c7ae14    # -0.72f

    const v4, -0x40ab851f    # -0.83f

    const v5, -0x4147ae14    # -0.36f

    const v6, -0x400a3d71    # -1.92f

    .line 52
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3eb33333    # 0.35f

    const v2, -0x40747ae1    # -1.09f

    const v3, 0x3fb33333    # 1.4f

    const v4, -0x3fc8f5c3    # -2.86f

    const v5, 0x3feccccd    # 1.85f

    const v6, -0x3f9eb852    # -3.52f

    .line 53
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f47ae14    # 0.78f

    const v2, -0x406e147b    # -1.14f

    const v3, 0x3fa66666    # 1.3f

    const v4, -0x400a3d71    # -1.92f

    const v5, 0x3fa66666    # 1.3f

    const v6, -0x3fae147b    # -3.28f

    .line 54
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x410f3333    # 8.95f

    const v2, 0x406c28f6    # 3.69f

    const v3, 0x40e9eb85    # 7.31f

    const/high16 v4, 0x40400000    # 3.0f

    const v5, 0x40ce147b    # 6.44f

    const/high16 v6, 0x40400000    # 3.0f

    .line 55
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40747ae1    # -1.09f

    const/4 v2, 0x0

    const v3, -0x3ffd70a4    # -2.04f

    const v4, 0x3f2147ae    # 0.63f

    const v5, -0x3fd33333    # -2.7f

    const v6, 0x3f9c28f6    # 1.22f

    .line 56
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40f851ec    # -0.53f

    const v2, 0x3ef5c28f    # 0.48f

    const v3, -0x40f851ec    # -0.53f

    const v4, 0x3fa8f5c3    # 1.32f

    const v5, -0x435c28f6    # -0.02f

    const v6, 0x3fe8f5c3    # 1.82f

    .line 57
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x415e147b    # 13.88f

    const v1, 0x41946666    # 18.55f

    .line 59
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x416147ae    # -0.31f

    const/4 v2, 0x0

    const v3, -0x40c28f5c    # -0.74f

    const v4, -0x417ae148    # -0.26f

    const v5, -0x40c28f5c    # -0.74f

    const v6, -0x40c7ae14    # -0.72f

    move-object v0, v7

    .line 60
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x40e66666    # -0.6f

    const v3, 0x3f3ae148    # 0.73f

    const v4, -0x3ff33333    # -2.2f

    const v5, 0x4037ae14    # 2.87f

    const v6, -0x3fcf5c29    # -2.76f

    .line 61
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41666666    # -0.3f

    const v2, 0x402c28f6    # 2.69f

    const v3, -0x4048f5c3    # -1.43f

    const v4, 0x405eb852    # 3.48f

    const v5, -0x3ff7ae14    # -2.13f

    const v6, 0x405eb852    # 3.48f

    .line 62
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v13

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3800

    const/16 v28, 0x0

    .line 99
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/rounded/GestureKt;->_gesture:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 66
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
