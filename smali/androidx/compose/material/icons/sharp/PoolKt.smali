.class public final Landroidx/compose/material/icons/sharp/PoolKt;
.super Ljava/lang/Object;
.source "Pool.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pool.kt\nandroidx/compose/material/icons/sharp/PoolKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,119:1\n122#2:120\n116#2,3:121\n119#2,3:125\n132#2,18:128\n152#2:165\n132#2,18:166\n152#2:203\n175#3:124\n622#4,2:146\n634#4,2:148\n636#4,11:154\n622#4,2:184\n634#4,2:186\n636#4,11:192\n50#5,4:150\n50#5,4:188\n*S KotlinDebug\n*F\n+ 1 Pool.kt\nandroidx/compose/material/icons/sharp/PoolKt\n*L\n29#1:120\n29#1:121,3\n29#1:125,3\n30#1:128,18\n30#1:165\n108#1:166,18\n108#1:203\n29#1:124\n30#1:146,2\n30#1:148,2\n30#1:154,11\n108#1:184,2\n108#1:186,2\n108#1:192,11\n30#1:150,4\n108#1:188,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_pool",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Pool",
        "Landroidx/compose/material/icons/Icons$Sharp;",
        "getPool",
        "(Landroidx/compose/material/icons/Icons$Sharp;)Landroidx/compose/ui/graphics/vector/ImageVector;",
        "material-icons-extended-sharp_release"
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
.field private static _pool:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getPool(Landroidx/compose/material/icons/Icons$Sharp;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 46

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/sharp/PoolKt;->_pool:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "Sharp.Pool"

    .line 121
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object/from16 v29, v1

    move-object v12, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 124
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

    .line 121
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    .line 131
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v14

    .line 138
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

    .line 143
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v21

    .line 144
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    const-string v15, ""

    .line 150
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, 0x41000000    # 8.0f

    .line 31
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, -0x3fb00000    # -3.25f

    const/high16 v2, 0x40500000    # 3.25f

    .line 32
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3e9eb852    # 0.31f

    const v6, 0x3df5c28f    # 0.12f

    const v7, 0x3f0f5c29    # 0.56f

    const v8, 0x3e8a3d71    # 0.27f

    const v9, 0x3f451eb8    # 0.77f

    const v10, 0x3ec7ae14    # 0.39f

    move-object v4, v0

    .line 33
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ebd70a4    # 0.37f

    const v6, 0x3e6b851f    # 0.23f

    const v7, 0x3f170a3d    # 0.59f

    const v8, 0x3eb851ec    # 0.36f

    const v9, 0x3f933333    # 1.15f

    const v10, 0x3eb851ec    # 0.36f

    .line 34
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f47ae14    # 0.78f

    const v2, 0x3f933333    # 1.15f

    const v11, -0x41fae148    # -0.13f

    const v13, -0x4147ae14    # -0.36f

    .line 35
    invoke-virtual {v0, v1, v11, v2, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3eeb851f    # 0.46f

    const v6, -0x4175c28f    # -0.27f

    const v7, 0x3f8a3d71    # 1.08f

    const v8, -0x40dc28f6    # -0.64f

    const v9, 0x400c28f6    # 2.19f

    const v10, -0x40dc28f6    # -0.64f

    .line 36
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3fdd70a4    # 1.73f

    const v2, 0x3ebd70a4    # 0.37f

    const v10, 0x400b851f    # 2.18f

    const v9, 0x3f23d70a    # 0.64f

    .line 37
    invoke-virtual {v0, v1, v2, v10, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ebd70a4    # 0.37f

    const v6, 0x3e6147ae    # 0.22f

    const v7, 0x3f19999a    # 0.6f

    const v8, 0x3eb851ec    # 0.36f

    const v24, 0x3f933333    # 1.15f

    const v25, 0x3eb851ec    # 0.36f

    move v3, v9

    move/from16 v9, v24

    move v11, v10

    move/from16 v10, v25

    .line 38
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f0ccccd    # 0.55f

    const/4 v6, 0x0

    const v7, 0x3f47ae14    # 0.78f

    const v8, -0x41fae148    # -0.13f

    const v9, 0x3f933333    # 1.15f

    const v10, -0x4147ae14    # -0.36f

    .line 39
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3df5c28f    # 0.12f

    const v6, -0x4270a3d7    # -0.07f

    const v7, 0x3e851eb8    # 0.26f

    const v8, -0x41e66666    # -0.15f

    const v9, 0x3ed1eb85    # 0.41f

    const v10, -0x41947ae1    # -0.23f

    .line 40
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x4127ae14    # 10.48f

    const/high16 v5, 0x40a00000    # 5.0f

    .line 41
    invoke-virtual {v0, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v4, 0x40400000    # 3.0f

    .line 42
    invoke-virtual {v0, v5, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v4, 0x40200000    # 2.5f

    .line 43
    invoke-virtual {v0, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v4, 0x41100000    # 9.0f

    const/high16 v5, 0x40e00000    # 7.0f

    .line 44
    invoke-virtual {v0, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v4, 0x3f800000    # 1.0f

    .line 45
    invoke-virtual {v0, v4, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v4, 0x41b00000    # 22.0f

    const/high16 v10, 0x41840000    # 16.5f

    .line 47
    invoke-virtual {v0, v4, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x435c28f6    # -0.02f

    .line 48
    invoke-virtual {v0, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3ca3d70a    # 0.02f

    .line 49
    invoke-virtual {v0, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x40ab3333    # 5.35f

    const/high16 v5, 0x41780000    # 15.5f

    .line 51
    invoke-virtual {v0, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f0ccccd    # 0.55f

    const/4 v6, 0x0

    const v7, 0x3f47ae14    # 0.78f

    const v8, 0x3e0f5c29    # 0.14f

    const v9, 0x3f933333    # 1.15f

    move-object v4, v0

    move/from16 v10, v25

    .line 52
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ee66666    # 0.45f

    const v6, 0x3e8a3d71    # 0.27f

    const v7, 0x3f88f5c3    # 1.07f

    const v8, 0x3f23d70a    # 0.64f

    const v9, 0x400b851f    # 2.18f

    const v10, 0x3f23d70a    # 0.64f

    .line 53
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v10, -0x41428f5c    # -0.37f

    const v9, -0x40dc28f6    # -0.64f

    .line 54
    invoke-virtual {v0, v1, v10, v11, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ebd70a4    # 0.37f

    const v6, -0x41947ae1    # -0.23f

    const v7, 0x3f170a3d    # 0.59f

    const v8, -0x4147ae14    # -0.36f

    const v25, 0x3f933333    # 1.15f

    const v26, -0x4147ae14    # -0.36f

    move v13, v9

    move/from16 v9, v25

    move v2, v10

    move/from16 v10, v26

    .line 55
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f0ccccd    # 0.55f

    const/4 v6, 0x0

    const v7, 0x3f47ae14    # 0.78f

    const v8, 0x3e0f5c29    # 0.14f

    const v9, 0x3f933333    # 1.15f

    const v10, 0x3eb851ec    # 0.36f

    .line 56
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ee66666    # 0.45f

    const v6, 0x3e8a3d71    # 0.27f

    const v7, 0x3f88f5c3    # 1.07f

    const v8, 0x3f23d70a    # 0.64f

    const v9, 0x400b851f    # 2.18f

    const v10, 0x3f23d70a    # 0.64f

    .line 57
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    invoke-virtual {v0, v1, v2, v11, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ebd70a4    # 0.37f

    const v6, -0x41947ae1    # -0.23f

    const v7, 0x3f170a3d    # 0.59f

    const v8, -0x4147ae14    # -0.36f

    const v9, 0x3f933333    # 1.15f

    const v10, -0x4147ae14    # -0.36f

    .line 59
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f0ccccd    # 0.55f

    const/4 v6, 0x0

    const v7, 0x3f47ae14    # 0.78f

    const v8, 0x3e0f5c29    # 0.14f

    const v10, 0x3eb851ec    # 0.36f

    .line 60
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ee66666    # 0.45f

    const v6, 0x3e8a3d71    # 0.27f

    const v7, 0x3f87ae14    # 1.06f

    const v8, 0x3f2147ae    # 0.63f

    const v9, 0x400a3d71    # 2.16f

    const v10, 0x3f23d70a    # 0.64f

    .line 61
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v10, -0x40000000    # -2.0f

    .line 62
    invoke-virtual {v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40f33333    # -0.55f

    const/4 v6, 0x0

    const v7, -0x40b851ec    # -0.78f

    const v8, -0x41f0a3d7    # -0.14f

    const v9, -0x406ccccd    # -1.15f

    move/from16 v10, v26

    .line 63
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4119999a    # -0.45f

    const v6, -0x4175c28f    # -0.27f

    const v7, -0x40770a3d    # -1.07f

    const v8, -0x40dc28f6    # -0.64f

    const v9, -0x3ff47ae1    # -2.18f

    const v10, -0x40dc28f6    # -0.64f

    .line 64
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v10, -0x40228f5c    # -1.73f

    const v4, 0x3ebd70a4    # 0.37f

    .line 65
    invoke-virtual {v0, v10, v4, v9, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41428f5c    # -0.37f

    const v6, 0x3e6b851f    # 0.23f

    const v7, -0x40e66666    # -0.6f

    const v8, 0x3eb851ec    # 0.36f

    const v26, -0x406ccccd    # -1.15f

    const v28, 0x3eb851ec    # 0.36f

    move-object v4, v0

    move v11, v9

    move/from16 v9, v26

    move v1, v10

    move/from16 v10, v28

    .line 66
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x41f0a3d7    # -0.14f

    const v10, -0x40b851ec    # -0.78f

    const v9, -0x406ccccd    # -1.15f

    const v5, -0x4147ae14    # -0.36f

    .line 67
    invoke-virtual {v0, v10, v4, v9, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4119999a    # -0.45f

    const v6, -0x4175c28f    # -0.27f

    const v7, -0x40770a3d    # -1.07f

    const v8, -0x40dc28f6    # -0.64f

    const v28, -0x3ff47ae1    # -2.18f

    const v31, -0x40dc28f6    # -0.64f

    move-object v4, v0

    move v2, v9

    move/from16 v9, v28

    move v13, v10

    move/from16 v10, v31

    .line 68
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3ebd70a4    # 0.37f

    .line 69
    invoke-virtual {v0, v1, v4, v11, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41428f5c    # -0.37f

    const v6, 0x3e6b851f    # 0.23f

    const v7, -0x40e8f5c3    # -0.59f

    const v8, 0x3eb851ec    # 0.36f

    const v9, -0x406ccccd    # -1.15f

    const v10, 0x3eb851ec    # 0.36f

    move-object v4, v0

    .line 70
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40f33333    # -0.55f

    const/4 v6, 0x0

    const v7, -0x40b851ec    # -0.78f

    const v8, -0x41f0a3d7    # -0.14f

    const v10, -0x4147ae14    # -0.36f

    .line 71
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4119999a    # -0.45f

    const v6, -0x4175c28f    # -0.27f

    const v7, -0x40770a3d    # -1.07f

    const v8, -0x40dc28f6    # -0.64f

    const v9, -0x3ff47ae1    # -2.18f

    const v10, -0x40dc28f6    # -0.64f

    .line 72
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3ebd70a4    # 0.37f

    .line 73
    invoke-virtual {v0, v1, v4, v11, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41428f5c    # -0.37f

    const v6, 0x3e6b851f    # 0.23f

    const v7, -0x40e8f5c3    # -0.59f

    const v8, 0x3eb851ec    # 0.36f

    const v9, -0x406ccccd    # -1.15f

    const v10, 0x3eb851ec    # 0.36f

    move-object v4, v0

    .line 74
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v11, 0x40000000    # 2.0f

    .line 75
    invoke-virtual {v0, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f8e147b    # 1.11f

    const/4 v6, 0x0

    const v7, 0x3fdd70a4    # 1.73f

    const v8, -0x41428f5c    # -0.37f

    const v9, 0x400ccccd    # 2.2f

    const v10, -0x40dc28f6    # -0.64f

    .line 76
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ebd70a4    # 0.37f

    const v6, -0x41947ae1    # -0.23f

    const v7, 0x3f19999a    # 0.6f

    const v8, -0x4147ae14    # -0.36f

    const v9, 0x3f933333    # 1.15f

    const v10, -0x4147ae14    # -0.36f

    .line 77
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x41955c29    # 18.67f

    const/high16 v5, 0x41900000    # 18.0f

    .line 79
    invoke-virtual {v0, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4071eb85    # -1.11f

    const/4 v6, 0x0

    const v7, -0x40228f5c    # -1.73f

    const v8, 0x3ebd70a4    # 0.37f

    const v9, -0x3ff47ae1    # -2.18f

    const v10, 0x3f23d70a    # 0.64f

    move-object v4, v0

    .line 80
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41428f5c    # -0.37f

    const v6, 0x3e6b851f    # 0.23f

    const v7, -0x40e66666    # -0.6f

    const v8, 0x3eb851ec    # 0.36f

    const v9, -0x406ccccd    # -1.15f

    const v10, 0x3eb851ec    # 0.36f

    .line 81
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40f33333    # -0.55f

    const/4 v6, 0x0

    const v7, -0x40b851ec    # -0.78f

    const v8, -0x41f0a3d7    # -0.14f

    const v10, -0x4147ae14    # -0.36f

    .line 82
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4119999a    # -0.45f

    const v6, -0x4175c28f    # -0.27f

    const v7, -0x40770a3d    # -1.07f

    const v8, -0x40dc28f6    # -0.64f

    const v9, -0x3ff47ae1    # -2.18f

    const v10, -0x40dc28f6    # -0.64f

    .line 83
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v10, -0x3ff3d70a    # -2.19f

    const v4, 0x3ebd70a4    # 0.37f

    .line 84
    invoke-virtual {v0, v1, v4, v10, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41428f5c    # -0.37f

    const v6, 0x3e6b851f    # 0.23f

    const v7, -0x40e8f5c3    # -0.59f

    const v8, 0x3eb851ec    # 0.36f

    const v9, -0x406ccccd    # -1.15f

    const v31, 0x3eb851ec    # 0.36f

    move-object v4, v0

    move v11, v10

    move/from16 v10, v31

    .line 85
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x41fae148    # -0.13f

    const v5, -0x4147ae14    # -0.36f

    .line 86
    invoke-virtual {v0, v13, v4, v2, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4119999a    # -0.45f

    const v6, -0x4175c28f    # -0.27f

    const v7, -0x40770a3d    # -1.07f

    const v8, -0x40dc28f6    # -0.64f

    const v9, -0x3ff47ae1    # -2.18f

    const v10, -0x40dc28f6    # -0.64f

    move-object v4, v0

    .line 87
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x3ebd70a4    # 0.37f

    .line 88
    invoke-virtual {v0, v1, v2, v11, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41428f5c    # -0.37f

    const v6, 0x3e6b851f    # 0.23f

    const v7, -0x40e8f5c3    # -0.59f

    const v8, 0x3eb851ec    # 0.36f

    const v9, -0x406ccccd    # -1.15f

    const v10, 0x3eb851ec    # 0.36f

    .line 89
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x40000000    # 2.0f

    .line 90
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f8e147b    # 1.11f

    const/4 v6, 0x0

    const v7, 0x3fdd70a4    # 1.73f

    const v8, -0x41428f5c    # -0.37f

    const v9, 0x400c28f6    # 2.19f

    const v10, -0x40dc28f6    # -0.64f

    .line 91
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ebd70a4    # 0.37f

    const v6, -0x41947ae1    # -0.23f

    const v7, 0x3f19999a    # 0.6f

    const v8, -0x4147ae14    # -0.36f

    const v9, 0x3f933333    # 1.15f

    const v10, -0x4147ae14    # -0.36f

    .line 92
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f0ccccd    # 0.55f

    const/4 v6, 0x0

    const v7, 0x3f47ae14    # 0.78f

    const v8, 0x3e051eb8    # 0.13f

    const v10, 0x3eb851ec    # 0.36f

    .line 93
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ee66666    # 0.45f

    const v6, 0x3e8a3d71    # 0.27f

    const v7, 0x3f88f5c3    # 1.07f

    const v8, 0x3f23d70a    # 0.64f

    const v9, 0x400b851f    # 2.18f

    const v10, 0x3f23d70a    # 0.64f

    .line 94
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x400c28f6    # 2.19f

    const v2, -0x40dc28f6    # -0.64f

    const v3, -0x41428f5c    # -0.37f

    const v4, 0x3fdd70a4    # 1.73f

    .line 95
    invoke-virtual {v0, v4, v3, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ebd70a4    # 0.37f

    const v6, -0x41947ae1    # -0.23f

    const v7, 0x3f170a3d    # 0.59f

    const v8, -0x4147ae14    # -0.36f

    const v9, 0x3f933333    # 1.15f

    const v10, -0x4147ae14    # -0.36f

    move-object v4, v0

    .line 96
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f0ccccd    # 0.55f

    const/4 v6, 0x0

    const v7, 0x3f47ae14    # 0.78f

    const v8, 0x3e0f5c29    # 0.14f

    const v10, 0x3eb851ec    # 0.36f

    .line 97
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ee66666    # 0.45f

    const v6, 0x3e8a3d71    # 0.27f

    const v7, 0x3f88f5c3    # 1.07f

    const v8, 0x3f23d70a    # 0.64f

    const v9, 0x400b851f    # 2.18f

    const v10, 0x3f23d70a    # 0.64f

    .line 98
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3fdc28f6    # 1.72f

    const v2, -0x40dc28f6    # -0.64f

    const v3, -0x41428f5c    # -0.37f

    const v4, 0x400b851f    # 2.18f

    .line 99
    invoke-virtual {v0, v1, v3, v4, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ebd70a4    # 0.37f

    const v6, -0x41947ae1    # -0.23f

    const v7, 0x3f170a3d    # 0.59f

    const v8, -0x4147ae14    # -0.36f

    const v9, 0x3f933333    # 1.15f

    const v10, -0x4147ae14    # -0.36f

    move-object v4, v0

    .line 100
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f0ccccd    # 0.55f

    const/4 v6, 0x0

    const v7, 0x3f47ae14    # 0.78f

    const v8, 0x3e0f5c29    # 0.14f

    const v10, 0x3eb851ec    # 0.36f

    .line 101
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ee66666    # 0.45f

    const v6, 0x3e8a3d71    # 0.27f

    const v7, 0x3f88f5c3    # 1.07f

    const v8, 0x3f23d70a    # 0.64f

    const v9, 0x400b851f    # 2.18f

    const v10, 0x3f23d70a    # 0.64f

    .line 102
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, -0x40000000    # -2.0f

    .line 103
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40f0a3d7    # -0.56f

    const/4 v6, 0x0

    const v7, -0x40b851ec    # -0.78f

    const v8, -0x41fae148    # -0.13f

    const v9, -0x406ccccd    # -1.15f

    const v10, -0x4147ae14    # -0.36f

    .line 104
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4119999a    # -0.45f

    const v6, -0x4175c28f    # -0.27f

    const v7, -0x40770a3d    # -1.07f

    const v8, -0x40dc28f6    # -0.64f

    const v9, -0x3ff47ae1    # -2.18f

    const v10, -0x40dc28f6    # -0.64f

    .line 105
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 106
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 152
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v13

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3800

    const/16 v28, 0x0

    .line 148
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/high16 v34, 0x3f800000    # 1.0f

    const/high16 v36, 0x3f800000    # 1.0f

    .line 169
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v31

    .line 176
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v33, v0

    check-cast v33, Landroidx/compose/ui/graphics/Brush;

    const/16 v35, 0x0

    const/high16 v37, 0x3f800000    # 1.0f

    .line 181
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v38

    .line 182
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v39

    const/high16 v40, 0x3f800000    # 1.0f

    const-string v32, ""

    .line 188
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v0, 0x40b00000    # 5.5f

    const/high16 v1, 0x41840000    # 16.5f

    .line 109
    invoke-virtual {v8, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, -0x3fe00000    # -2.5f

    const/4 v1, 0x0

    .line 110
    invoke-virtual {v8, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x40200000    # 2.5f

    const/high16 v2, 0x40200000    # 2.5f

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/high16 v6, 0x40a00000    # 5.0f

    const/4 v7, 0x0

    move-object v0, v8

    .line 111
    invoke-virtual/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v6, -0x3f600000    # -5.0f

    .line 112
    invoke-virtual/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 190
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v30

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x3800

    const/16 v45, 0x0

    .line 186
    invoke-static/range {v29 .. v45}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/sharp/PoolKt;->_pool:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 115
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
