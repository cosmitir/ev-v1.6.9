.class public final Landroidx/compose/material/icons/filled/PoolKt;
.super Ljava/lang/Object;
.source "Pool.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pool.kt\nandroidx/compose/material/icons/filled/PoolKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,115:1\n122#2:116\n116#2,3:117\n119#2,3:121\n132#2,18:124\n152#2:161\n132#2,18:162\n152#2:199\n175#3:120\n622#4,2:142\n634#4,2:144\n636#4,11:150\n622#4,2:180\n634#4,2:182\n636#4,11:188\n50#5,4:146\n50#5,4:184\n*S KotlinDebug\n*F\n+ 1 Pool.kt\nandroidx/compose/material/icons/filled/PoolKt\n*L\n29#1:116\n29#1:117,3\n29#1:121,3\n30#1:124,18\n30#1:161\n104#1:162,18\n104#1:199\n29#1:120\n30#1:142,2\n30#1:144,2\n30#1:150,11\n104#1:180,2\n104#1:182,2\n104#1:188,11\n30#1:146,4\n104#1:184,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_pool",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Pool",
        "Landroidx/compose/material/icons/Icons$Filled;",
        "getPool",
        "(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;",
        "material-icons-extended-filled_release"
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

.method public static final getPool(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 46

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/filled/PoolKt;->_pool:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "Filled.Pool"

    .line 117
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object/from16 v29, v1

    move-object v12, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 120
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

    .line 117
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    .line 127
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v14

    .line 134
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

    .line 139
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v21

    .line 140
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    const-string v15, ""

    .line 146
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v1, 0x41a80000    # 21.0f

    const/high16 v2, 0x41b00000    # 22.0f

    .line 31
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4071eb85    # -1.11f

    const/4 v6, 0x0

    const v7, -0x40228f5c    # -1.73f

    const v8, -0x41428f5c    # -0.37f

    const v9, -0x3ff47ae1    # -2.18f

    const v10, -0x40dc28f6    # -0.64f

    move-object v4, v0

    .line 32
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41428f5c    # -0.37f

    const v6, -0x419eb852    # -0.22f

    const v7, -0x40e66666    # -0.6f

    const v8, -0x4147ae14    # -0.36f

    const v9, -0x406ccccd    # -1.15f

    const v10, -0x4147ae14    # -0.36f

    .line 33
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40f0a3d7    # -0.56f

    const/4 v6, 0x0

    const v7, -0x40b851ec    # -0.78f

    const v8, 0x3e051eb8    # 0.13f

    const v10, 0x3eb851ec    # 0.36f

    .line 34
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41147ae1    # -0.46f

    const v6, 0x3e8a3d71    # 0.27f

    const v7, -0x40770a3d    # -1.07f

    const v8, 0x3f23d70a    # 0.64f

    const v9, -0x3ff47ae1    # -2.18f

    const v10, 0x3f23d70a    # 0.64f

    .line 35
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40228f5c    # -1.73f

    const v11, -0x41428f5c    # -0.37f

    const v13, -0x3ff47ae1    # -2.18f

    const v10, -0x40dc28f6    # -0.64f

    .line 36
    invoke-virtual {v0, v1, v11, v13, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41428f5c    # -0.37f

    const v6, -0x419eb852    # -0.22f

    const v7, -0x40e66666    # -0.6f

    const v8, -0x4147ae14    # -0.36f

    const v9, -0x406ccccd    # -1.15f

    const v24, -0x4147ae14    # -0.36f

    move v3, v10

    move/from16 v10, v24

    .line 37
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40f0a3d7    # -0.56f

    const/4 v6, 0x0

    const v7, -0x40b851ec    # -0.78f

    const v8, 0x3e051eb8    # 0.13f

    const v10, 0x3eb851ec    # 0.36f

    .line 38
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41147ae1    # -0.46f

    const v6, 0x3e8a3d71    # 0.27f

    const v7, -0x4075c28f    # -1.08f

    const v8, 0x3f23d70a    # 0.64f

    const v9, -0x3ff3d70a    # -2.19f

    const v10, 0x3f23d70a    # 0.64f

    .line 39
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4071eb85    # -1.11f

    const/4 v6, 0x0

    const v7, -0x40228f5c    # -1.73f

    const v8, -0x41428f5c    # -0.37f

    const v9, -0x3ff47ae1    # -2.18f

    const v10, -0x40dc28f6    # -0.64f

    .line 40
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41428f5c    # -0.37f

    const v6, -0x41947ae1    # -0.23f

    const v7, -0x40e66666    # -0.6f

    const v8, -0x4147ae14    # -0.36f

    const v9, -0x406ccccd    # -1.15f

    const v10, -0x4147ae14    # -0.36f

    .line 41
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v10, -0x40b851ec    # -0.78f

    const v9, 0x3e051eb8    # 0.13f

    const v8, -0x406ccccd    # -1.15f

    const v7, 0x3eb851ec    # 0.36f

    .line 42
    invoke-virtual {v0, v10, v9, v8, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41147ae1    # -0.46f

    const v6, 0x3e8a3d71    # 0.27f

    const v24, -0x4075c28f    # -1.08f

    const v25, 0x3f23d70a    # 0.64f

    const v26, -0x3ff3d70a    # -2.19f

    const v27, 0x3f23d70a    # 0.64f

    move/from16 v7, v24

    move/from16 v8, v25

    move/from16 v9, v26

    move/from16 v10, v27

    .line 43
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v10, -0x40000000    # -2.0f

    .line 44
    invoke-virtual {v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f0f5c29    # 0.56f

    const/4 v6, 0x0

    const v7, 0x3f47ae14    # 0.78f

    const v8, -0x41fae148    # -0.13f

    const v9, 0x3f933333    # 1.15f

    const v24, -0x4147ae14    # -0.36f

    move/from16 v10, v24

    .line 45
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3eeb851f    # 0.46f

    const v6, -0x4175c28f    # -0.27f

    const v7, 0x3f8a3d71    # 1.08f

    const v8, -0x40dc28f6    # -0.64f

    const v9, 0x400c28f6    # 2.19f

    const v10, -0x40dc28f6    # -0.64f

    .line 46
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v10, 0x3fdd70a4    # 1.73f

    const v9, 0x3ebd70a4    # 0.37f

    const v8, 0x400b851f    # 2.18f

    const v7, 0x3f23d70a    # 0.64f

    .line 47
    invoke-virtual {v0, v10, v9, v8, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ebd70a4    # 0.37f

    const v6, 0x3e6b851f    # 0.23f

    const v24, 0x3f170a3d    # 0.59f

    const v25, 0x3eb851ec    # 0.36f

    const v26, 0x3f933333    # 1.15f

    const v27, 0x3eb851ec    # 0.36f

    move v1, v7

    move/from16 v7, v24

    move v3, v8

    move/from16 v8, v25

    move v11, v9

    move/from16 v9, v26

    move v13, v10

    move/from16 v10, v27

    .line 48
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f0f5c29    # 0.56f

    const/4 v6, 0x0

    const v7, 0x3f47ae14    # 0.78f

    const v8, -0x41fae148    # -0.13f

    const v9, 0x3f933333    # 1.15f

    const v10, -0x4147ae14    # -0.36f

    .line 49
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3eeb851f    # 0.46f

    const v6, -0x4175c28f    # -0.27f

    const v7, 0x3f8a3d71    # 1.08f

    const v8, -0x40dc28f6    # -0.64f

    const v9, 0x400c28f6    # 2.19f

    const v10, -0x40dc28f6    # -0.64f

    .line 50
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f8e147b    # 1.11f

    const/4 v6, 0x0

    const v7, 0x3fdd70a4    # 1.73f

    const v8, 0x3ebd70a4    # 0.37f

    const v9, 0x400b851f    # 2.18f

    const v10, 0x3f23d70a    # 0.64f

    .line 51
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ebd70a4    # 0.37f

    const v6, 0x3e6147ae    # 0.22f

    const v7, 0x3f19999a    # 0.6f

    const v8, 0x3eb851ec    # 0.36f

    const v9, 0x3f933333    # 1.15f

    const v10, 0x3eb851ec    # 0.36f

    .line 52
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v10, 0x3f47ae14    # 0.78f

    const v9, -0x41fae148    # -0.13f

    const v8, 0x3f933333    # 1.15f

    const v7, -0x4147ae14    # -0.36f

    .line 53
    invoke-virtual {v0, v10, v9, v8, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ee66666    # 0.45f

    const v6, -0x4175c28f    # -0.27f

    const v27, 0x3f88f5c3    # 1.07f

    const v30, -0x40dc28f6    # -0.64f

    const v31, 0x400b851f    # 2.18f

    const v32, -0x40dc28f6    # -0.64f

    move/from16 v7, v27

    move/from16 v8, v30

    move/from16 v9, v31

    move/from16 v10, v32

    .line 54
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    invoke-virtual {v0, v13, v11, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ebd70a4    # 0.37f

    const v6, 0x3e6b851f    # 0.23f

    const v7, 0x3f170a3d    # 0.59f

    const v8, 0x3eb851ec    # 0.36f

    const v9, 0x3f933333    # 1.15f

    const v10, 0x3eb851ec    # 0.36f

    .line 56
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v10, 0x40000000    # 2.0f

    .line 57
    invoke-virtual {v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v9, 0x41840000    # 16.5f

    .line 59
    invoke-virtual {v0, v2, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4071eb85    # -1.11f

    const/4 v6, 0x0

    const v7, -0x40228f5c    # -1.73f

    const v8, -0x41428f5c    # -0.37f

    const v2, -0x3ff47ae1    # -2.18f

    const v27, -0x40dc28f6    # -0.64f

    move v9, v2

    move v2, v10

    move/from16 v10, v27

    .line 60
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41428f5c    # -0.37f

    const v6, -0x419eb852    # -0.22f

    const v7, -0x40e66666    # -0.6f

    const v8, -0x4147ae14    # -0.36f

    const v9, -0x406ccccd    # -1.15f

    const v10, -0x4147ae14    # -0.36f

    .line 61
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40f0a3d7    # -0.56f

    const/4 v6, 0x0

    const v7, -0x40b851ec    # -0.78f

    const v8, 0x3e051eb8    # 0.13f

    const v10, 0x3eb851ec    # 0.36f

    .line 62
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4119999a    # -0.45f

    const v6, 0x3e8a3d71    # 0.27f

    const v7, -0x40770a3d    # -1.07f

    const v8, 0x3f23d70a    # 0.64f

    const v9, -0x3ff47ae1    # -2.18f

    const v10, 0x3f23d70a    # 0.64f

    .line 63
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x40dc28f6    # -0.64f

    const v5, -0x3ff47ae1    # -2.18f

    const v6, -0x41428f5c    # -0.37f

    const v7, -0x40228f5c    # -1.73f

    .line 64
    invoke-virtual {v0, v7, v6, v5, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41428f5c    # -0.37f

    const v6, -0x419eb852    # -0.22f

    const v7, -0x40e66666    # -0.6f

    const v8, -0x4147ae14    # -0.36f

    const v9, -0x406ccccd    # -1.15f

    const v10, -0x4147ae14    # -0.36f

    move-object v4, v0

    .line 65
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40f0a3d7    # -0.56f

    const/4 v6, 0x0

    const v7, -0x40b851ec    # -0.78f

    const v8, 0x3e051eb8    # 0.13f

    const v10, 0x3eb851ec    # 0.36f

    .line 66
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4119999a    # -0.45f

    const v6, 0x3e8a3d71    # 0.27f

    const v7, -0x40770a3d    # -1.07f

    const v8, 0x3f23d70a    # 0.64f

    const v9, -0x3ff47ae1    # -2.18f

    const v10, 0x3f23d70a    # 0.64f

    .line 67
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x40dc28f6    # -0.64f

    const v5, -0x3ff47ae1    # -2.18f

    const v6, -0x41428f5c    # -0.37f

    const v7, -0x40228f5c    # -1.73f

    .line 68
    invoke-virtual {v0, v7, v6, v5, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41428f5c    # -0.37f

    const v6, -0x419eb852    # -0.22f

    const v7, -0x40e66666    # -0.6f

    const v8, -0x4147ae14    # -0.36f

    const v9, -0x406ccccd    # -1.15f

    const v10, -0x4147ae14    # -0.36f

    move-object v4, v0

    .line 69
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3eb851ec    # 0.36f

    const v5, -0x406ccccd    # -1.15f

    const v6, 0x3e051eb8    # 0.13f

    const v7, -0x40b851ec    # -0.78f

    .line 70
    invoke-virtual {v0, v7, v6, v5, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x410f5c29    # -0.47f

    const v6, 0x3e8a3d71    # 0.27f

    const v7, -0x40747ae1    # -1.09f

    const v8, 0x3f23d70a    # 0.64f

    const v9, -0x3ff33333    # -2.2f

    const v10, 0x3f23d70a    # 0.64f

    move-object v4, v0

    .line 71
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v4, -0x40000000    # -2.0f

    .line 72
    invoke-virtual {v0, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f0f5c29    # 0.56f

    const/4 v6, 0x0

    const v7, 0x3f47ae14    # 0.78f

    const v8, -0x41fae148    # -0.13f

    const v9, 0x3f933333    # 1.15f

    const v10, -0x4147ae14    # -0.36f

    move-object v4, v0

    .line 73
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ee66666    # 0.45f

    const v6, -0x4175c28f    # -0.27f

    const v7, 0x3f88f5c3    # 1.07f

    const v8, -0x40dc28f6    # -0.64f

    const v9, 0x400b851f    # 2.18f

    const v10, -0x40dc28f6    # -0.64f

    .line 74
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    invoke-virtual {v0, v13, v11, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ebd70a4    # 0.37f

    const v6, 0x3e6147ae    # 0.22f

    const v7, 0x3f19999a    # 0.6f

    const v8, 0x3eb851ec    # 0.36f

    const v9, 0x3f933333    # 1.15f

    const v10, 0x3eb851ec    # 0.36f

    .line 76
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f0f5c29    # 0.56f

    const/4 v6, 0x0

    const v7, 0x3f47ae14    # 0.78f

    const v8, -0x41fae148    # -0.13f

    const v10, -0x4147ae14    # -0.36f

    .line 77
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ee66666    # 0.45f

    const v6, -0x4175c28f    # -0.27f

    const v7, 0x3f88f5c3    # 1.07f

    const v8, -0x40dc28f6    # -0.64f

    const v9, 0x400b851f    # 2.18f

    const v10, -0x40dc28f6    # -0.64f

    .line 78
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    invoke-virtual {v0, v13, v11, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ebd70a4    # 0.37f

    const v6, 0x3e6147ae    # 0.22f

    const v7, 0x3f19999a    # 0.6f

    const v8, 0x3eb851ec    # 0.36f

    const v9, 0x3f933333    # 1.15f

    const v10, 0x3eb851ec    # 0.36f

    .line 80
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v7, 0x3f47ae14    # 0.78f

    const v8, -0x41fae148    # -0.13f

    const v9, 0x3f933333    # 1.15f

    const v10, -0x4147ae14    # -0.36f

    .line 81
    invoke-virtual {v0, v7, v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ee66666    # 0.45f

    const v6, -0x4175c28f    # -0.27f

    const v24, 0x3f88f5c3    # 1.07f

    const v25, -0x40dc28f6    # -0.64f

    const v26, 0x400b851f    # 2.18f

    move/from16 v7, v24

    move/from16 v8, v25

    move/from16 v9, v26

    move/from16 v10, v27

    .line 82
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    invoke-virtual {v0, v13, v11, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ebd70a4    # 0.37f

    const v6, 0x3e6147ae    # 0.22f

    const v7, 0x3f19999a    # 0.6f

    const v8, 0x3eb851ec    # 0.36f

    const v9, 0x3f933333    # 1.15f

    const v10, 0x3eb851ec    # 0.36f

    .line 84
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x410ab852    # 8.67f

    const/high16 v2, 0x41400000    # 12.0f

    .line 87
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f0f5c29    # 0.56f

    const/4 v6, 0x0

    const v7, 0x3f47ae14    # 0.78f

    const v8, -0x41fae148    # -0.13f

    const v10, -0x4147ae14    # -0.36f

    .line 88
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3eeb851f    # 0.46f

    const v6, -0x4175c28f    # -0.27f

    const v7, 0x3f8a3d71    # 1.08f

    const v8, -0x40dc28f6    # -0.64f

    const v9, 0x400c28f6    # 2.19f

    const v10, -0x40dc28f6    # -0.64f

    .line 89
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f8e147b    # 1.11f

    const/4 v6, 0x0

    const v7, 0x3fdd70a4    # 1.73f

    const v8, 0x3ebd70a4    # 0.37f

    const v9, 0x400b851f    # 2.18f

    const v10, 0x3f23d70a    # 0.64f

    .line 90
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ebd70a4    # 0.37f

    const v6, 0x3e6147ae    # 0.22f

    const v7, 0x3f19999a    # 0.6f

    const v8, 0x3eb851ec    # 0.36f

    const v9, 0x3f933333    # 1.15f

    const v10, 0x3eb851ec    # 0.36f

    .line 91
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4147ae14    # -0.36f

    const v2, 0x3f933333    # 1.15f

    const v3, -0x41fae148    # -0.13f

    const v4, 0x3f47ae14    # 0.78f

    .line 92
    invoke-virtual {v0, v4, v3, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3df5c28f    # 0.12f

    const v6, -0x4270a3d7    # -0.07f

    const v7, 0x3e851eb8    # 0.26f

    const v8, -0x41e66666    # -0.15f

    const v9, 0x3ed1eb85    # 0.41f

    const v10, -0x41947ae1    # -0.23f

    move-object v4, v0

    .line 93
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x4127ae14    # 10.48f

    const/high16 v2, 0x40a00000    # 5.0f

    .line 94
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x410ee148    # 8.93f

    const v6, 0x405ccccd    # 3.45f

    const/high16 v7, 0x40f00000    # 7.5f

    const v8, 0x403f5c29    # 2.99f

    const/high16 v9, 0x40a00000    # 5.0f

    const/high16 v10, 0x40400000    # 3.0f

    .line 95
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x40200000    # 2.5f

    .line 96
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fe8f5c3    # 1.82f

    const v6, -0x43dc28f6    # -0.01f

    const v7, 0x4038f5c3    # 2.89f

    const v8, 0x3ec7ae14    # 0.39f

    const/high16 v9, 0x40800000    # 4.0f

    const/high16 v10, 0x3fc00000    # 1.5f

    .line 97
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 98
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, -0x3fb00000    # -3.25f

    const/high16 v2, 0x40500000    # 3.25f

    .line 99
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3e9eb852    # 0.31f

    const v6, 0x3df5c28f    # 0.12f

    const v7, 0x3f0f5c29    # 0.56f

    const v8, 0x3e8a3d71    # 0.27f

    const v9, 0x3f451eb8    # 0.77f

    const v10, 0x3ec7ae14    # 0.39f

    .line 100
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ebd70a4    # 0.37f

    const v6, 0x3e6b851f    # 0.23f

    const v7, 0x3f170a3d    # 0.59f

    const v8, 0x3eb851ec    # 0.36f

    const v9, 0x3f933333    # 1.15f

    const v10, 0x3eb851ec    # 0.36f

    .line 101
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 102
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 148
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v13

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3800

    const/16 v28, 0x0

    .line 144
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/high16 v34, 0x3f800000    # 1.0f

    const/high16 v36, 0x3f800000    # 1.0f

    .line 165
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v31

    .line 172
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

    .line 177
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v38

    .line 178
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v39

    const/high16 v40, 0x3f800000    # 1.0f

    const-string v32, ""

    .line 184
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v0, 0x40b00000    # 5.5f

    const/high16 v1, 0x41840000    # 16.5f

    .line 105
    invoke-virtual {v8, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, -0x3fe00000    # -2.5f

    const/4 v1, 0x0

    .line 106
    invoke-virtual {v8, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x40200000    # 2.5f

    const/high16 v2, 0x40200000    # 2.5f

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/high16 v6, 0x40a00000    # 5.0f

    const/4 v7, 0x0

    move-object v0, v8

    .line 107
    invoke-virtual/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v6, -0x3f600000    # -5.0f

    .line 108
    invoke-virtual/range {v0 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 186
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v30

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x3800

    const/16 v45, 0x0

    .line 182
    invoke-static/range {v29 .. v45}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/filled/PoolKt;->_pool:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 111
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
