.class public final Landroidx/compose/material/icons/outlined/PestControlKt;
.super Ljava/lang/Object;
.source "PestControl.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPestControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PestControl.kt\nandroidx/compose/material/icons/outlined/PestControlKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,93:1\n122#2:94\n116#2,3:95\n119#2,3:99\n132#2,18:102\n152#2:139\n132#2,18:140\n152#2:177\n175#3:98\n622#4,2:120\n634#4,2:122\n636#4,11:128\n622#4,2:158\n634#4,2:160\n636#4,11:166\n50#5,4:124\n50#5,4:162\n*S KotlinDebug\n*F\n+ 1 PestControl.kt\nandroidx/compose/material/icons/outlined/PestControlKt\n*L\n29#1:94\n29#1:95,3\n29#1:99,3\n30#1:102,18\n30#1:139\n81#1:140,18\n81#1:177\n29#1:98\n30#1:120,2\n30#1:122,2\n30#1:128,11\n81#1:158,2\n81#1:160,2\n81#1:166,11\n30#1:124,4\n81#1:162,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_pestControl",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "PestControl",
        "Landroidx/compose/material/icons/Icons$Outlined;",
        "getPestControl",
        "(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;",
        "material-icons-extended-outlined_release"
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
.field private static _pestControl:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getPestControl(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 46

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/outlined/PestControlKt;->_pestControl:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "Outlined.PestControl"

    .line 95
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object/from16 v29, v1

    move-object v12, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 98
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

    .line 95
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    .line 105
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v14

    .line 112
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

    .line 117
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v21

    .line 118
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    const-string v15, ""

    .line 124
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v1, 0x41700000    # 15.0f

    const/high16 v2, 0x41a80000    # 21.0f

    .line 31
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, -0x40000000    # -2.0f

    .line 32
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x3fbb851f    # -3.07f

    .line 33
    invoke-virtual {v0, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x42b33333    # -0.05f

    const v6, -0x413851ec    # -0.39f

    const v7, -0x420a3d71    # -0.12f

    const v8, -0x40bae148    # -0.77f

    const v9, -0x419eb852    # -0.22f

    const v10, -0x406e147b    # -1.14f

    move-object v4, v0

    .line 34
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v11, 0x40251eb8    # 2.58f

    const v13, -0x404147ae    # -1.49f

    .line 35
    invoke-virtual {v0, v11, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v10, -0x40800000    # -1.0f

    const v9, -0x40228f5c    # -1.73f

    .line 36
    invoke-virtual {v0, v10, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x41875c29    # 16.92f

    const/high16 v5, 0x41200000    # 10.0f

    .line 37
    invoke-virtual {v0, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4170a3d7    # -0.28f

    const v6, -0x410a3d71    # -0.48f

    const v7, -0x40e147ae    # -0.62f

    const v8, -0x40970a3d    # -0.91f

    const v24, -0x40828f5c    # -0.99f

    const v25, -0x405ae148    # -1.29f

    move-object v4, v0

    move v1, v9

    move/from16 v9, v24

    move v3, v10

    move/from16 v10, v25

    .line 38
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3dcccccd    # 0.1f

    const v6, -0x40f0a3d7    # -0.56f

    const v7, 0x3e4ccccd    # 0.2f

    const v8, -0x4027ae14    # -1.69f

    const v9, -0x40eb851f    # -0.58f

    const v10, -0x3fc70a3d    # -2.89f

    .line 39
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v4, 0x41880000    # 17.0f

    const v10, 0x408570a4    # 4.17f

    .line 40
    invoke-virtual {v0, v4, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x404b851f    # -1.41f

    .line 41
    invoke-virtual {v0, v4, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x4023d70a    # -1.72f

    const v5, 0x3fdc28f6    # 1.72f

    .line 42
    invoke-virtual {v0, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4028f5c3    # -1.68f

    const v6, -0x409c28f6    # -0.89f

    const v7, -0x3fb9999a    # -3.1f

    const v8, -0x41570a3d    # -0.33f

    const v9, -0x3f9147ae    # -3.73f

    const/16 v24, 0x0

    move-object v4, v0

    move v2, v10

    move/from16 v10, v24

    .line 43
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x41068f5c    # 8.41f

    const v5, 0x4030a3d7    # 2.76f

    .line 44
    invoke-virtual {v0, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v4, 0x40e00000    # 7.0f

    .line 45
    invoke-virtual {v0, v4, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x3fd33333    # 1.65f

    .line 46
    invoke-virtual {v0, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40b851ec    # -0.78f

    const v6, 0x3f99999a    # 1.2f

    const v7, -0x40d1eb85    # -0.68f

    const v8, 0x4015c28f    # 2.34f

    const v9, -0x40eb851f    # -0.58f

    const v10, 0x4038f5c3    # 2.89f

    move-object v4, v0

    .line 47
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40f66666    # 7.7f

    const v6, 0x4111999a    # 9.1f

    const v7, 0x40eb851f    # 7.36f

    const v8, 0x41187ae1    # 9.53f

    const v9, 0x40e28f5c    # 7.08f

    const/high16 v10, 0x41200000    # 10.0f

    .line 48
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x4096b852    # 4.71f

    const v4, 0x410a147b    # 8.63f

    .line 49
    invoke-virtual {v0, v2, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x3fdd70a4    # 1.73f

    .line 50
    invoke-virtual {v0, v3, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x3fbeb852    # 1.49f

    .line 51
    invoke-virtual {v0, v11, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x42333333    # -0.1f

    const v6, 0x3ebd70a4    # 0.37f

    const v7, -0x41d1eb85    # -0.17f

    const/high16 v8, 0x3f400000    # 0.75f

    const v9, -0x419eb852    # -0.22f

    const v10, 0x3f91eb85    # 1.14f

    move-object v4, v0

    .line 52
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v4, 0x40400000    # 3.0f

    .line 53
    invoke-virtual {v0, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v11, 0x40000000    # 2.0f

    .line 54
    invoke-virtual {v0, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x40447ae1    # 3.07f

    .line 55
    invoke-virtual {v0, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3d4ccccd    # 0.05f

    const v6, 0x3ec7ae14    # 0.39f

    const v7, 0x3df5c28f    # 0.12f

    const v8, 0x3f451eb8    # 0.77f

    const v9, 0x3e6147ae    # 0.22f

    move-object v4, v0

    .line 56
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v10, -0x3fdae148    # -2.58f

    .line 57
    invoke-virtual {v0, v10, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 58
    invoke-virtual {v0, v3, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x40e28f5c    # 7.08f

    const/high16 v4, 0x41900000    # 18.0f

    .line 59
    invoke-virtual {v0, v2, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f8a3d71    # 1.08f

    const v6, 0x3fe7ae14    # 1.81f

    const v7, 0x403851ec    # 2.88f

    const/high16 v8, 0x40400000    # 3.0f

    const v9, 0x409d70a4    # 4.92f

    const/high16 v2, 0x40400000    # 3.0f

    move-object v4, v0

    move v11, v10

    move v10, v2

    .line 60
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x409d70a4    # 4.92f

    const/high16 v4, -0x3fc00000    # -3.0f

    const v5, 0x4075c28f    # 3.84f

    const v6, -0x4067ae14    # -1.19f

    .line 61
    invoke-virtual {v0, v5, v6, v2, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x4017ae14    # 2.37f

    const v4, 0x3faf5c29    # 1.37f

    .line 62
    invoke-virtual {v0, v2, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    invoke-virtual {v0, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    invoke-virtual {v0, v11, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3dcccccd    # 0.1f

    const v6, -0x41428f5c    # -0.37f

    const v7, 0x3e2e147b    # 0.17f

    const/high16 v8, -0x40c00000    # -0.75f

    const v9, 0x3e6147ae    # 0.22f

    const v10, -0x406e147b    # -1.14f

    move-object v4, v0

    .line 65
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x41a80000    # 21.0f

    .line 66
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x41400000    # 12.0f

    const/high16 v2, 0x40c00000    # 6.0f

    .line 68
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f6147ae    # 0.88f

    const/4 v6, 0x0

    const v7, 0x3fcf5c29    # 1.62f

    const v8, 0x3f11eb85    # 0.57f

    const v9, 0x3ff0a3d7    # 1.88f

    const v10, 0x3fae147b    # 1.36f

    .line 69
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4154a3d7    # 13.29f

    const v6, 0x40e428f6    # 7.13f

    const v7, 0x414a8f5c    # 12.66f

    const/high16 v8, 0x40e00000    # 7.0f

    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v10, 0x40e00000    # 7.0f

    .line 70
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, -0x400f5c29    # -1.88f

    const v4, 0x3eb851ec    # 0.36f

    const v5, -0x405ae148    # -1.29f

    const v6, 0x3e051eb8    # 0.13f

    .line 71
    invoke-virtual {v0, v5, v6, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4126147b    # 10.38f

    const v6, 0x40d23d71    # 6.57f

    const v7, 0x4131eb85    # 11.12f

    const/high16 v8, 0x40c00000    # 6.0f

    const/high16 v10, 0x40c00000    # 6.0f

    move-object v4, v0

    .line 72
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v3, 0x41980000    # 19.0f

    .line 74
    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ff28f5c    # -2.21f

    const/4 v6, 0x0

    const/high16 v7, -0x3f800000    # -4.0f

    const v8, -0x3ff0a3d7    # -2.24f

    const/high16 v9, -0x3f800000    # -4.0f

    const/high16 v10, -0x3f600000    # -5.0f

    .line 75
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3fe51eb8    # 1.79f

    const/high16 v5, -0x3f600000    # -5.0f

    const/high16 v6, 0x40800000    # 4.0f

    .line 76
    invoke-virtual {v0, v4, v5, v6, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x400f5c29    # 2.24f

    const/high16 v5, 0x40a00000    # 5.0f

    .line 77
    invoke-virtual {v0, v6, v4, v6, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x41635c29    # 14.21f

    .line 78
    invoke-virtual {v0, v4, v3, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 126
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v13

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3800

    const/16 v28, 0x0

    .line 122
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/high16 v34, 0x3f800000    # 1.0f

    const/high16 v36, 0x3f800000    # 1.0f

    .line 143
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v31

    .line 150
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v3

    const/4 v1, 0x0

    invoke-direct {v0, v3, v4, v1}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v33, v0

    check-cast v33, Landroidx/compose/ui/graphics/Brush;

    const/16 v35, 0x0

    const/high16 v37, 0x3f800000    # 1.0f

    .line 155
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v38

    .line 156
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v39

    const/high16 v40, 0x3f800000    # 1.0f

    const-string v32, ""

    .line 162
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v1, 0x41300000    # 11.0f

    .line 82
    invoke-virtual {v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x40000000    # 2.0f

    .line 83
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, -0x40000000    # -2.0f

    .line 85
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 164
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v30

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x3800

    const/16 v45, 0x0

    .line 160
    invoke-static/range {v29 .. v45}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/outlined/PestControlKt;->_pestControl:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 89
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
