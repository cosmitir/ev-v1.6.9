.class public final Landroidx/compose/material/icons/twotone/Forward30Kt;
.super Ljava/lang/Object;
.source "Forward30.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nForward30.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Forward30.kt\nandroidx/compose/material/icons/twotone/Forward30Kt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,141:1\n122#2:142\n116#2,3:143\n119#2,3:147\n132#2,18:150\n152#2:187\n175#3:146\n622#4,2:168\n634#4,2:170\n636#4,11:176\n50#5,4:172\n*S KotlinDebug\n*F\n+ 1 Forward30.kt\nandroidx/compose/material/icons/twotone/Forward30Kt\n*L\n29#1:142\n29#1:143,3\n29#1:147,3\n30#1:150,18\n30#1:187\n29#1:146\n30#1:168,2\n30#1:170,2\n30#1:176,11\n30#1:172,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_forward30",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Forward30",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getForward30",
        "(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;",
        "material-icons-extended-twotone_release"
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
.field private static _forward30:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getForward30(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 34

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/twotone/Forward30Kt;->_forward30:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "TwoTone.Forward30"

    .line 143
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object v12, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 146
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

    .line 143
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    .line 153
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v14

    .line 160
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

    .line 165
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v21

    .line 166
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    const-string v15, ""

    .line 172
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v0, 0x41900000    # 18.0f

    const/high16 v1, 0x41500000    # 13.0f

    .line 31
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x4053d70a    # 3.31f

    const v3, -0x3fd3d70a    # -2.69f

    const/high16 v4, 0x40c00000    # 6.0f

    const/high16 v5, -0x3f400000    # -6.0f

    const/high16 v6, 0x40c00000    # 6.0f

    move-object v0, v7

    .line 32
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3fd3d70a    # -2.69f

    const/high16 v1, -0x3f400000    # -6.0f

    .line 33
    invoke-virtual {v7, v1, v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x402c28f6    # 2.69f

    const/high16 v2, 0x40c00000    # 6.0f

    .line 34
    invoke-virtual {v7, v0, v1, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40800000    # 4.0f

    .line 35
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40a00000    # 5.0f

    const/high16 v1, -0x3f600000    # -5.0f

    .line 36
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, -0x3f600000    # -5.0f

    .line 37
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40800000    # 4.0f

    .line 38
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x3f728f5c    # -4.42f

    const/4 v2, 0x0

    const/high16 v3, -0x3f000000    # -8.0f

    const v4, 0x40651eb8    # 3.58f

    const/high16 v5, -0x3f000000    # -8.0f

    const/high16 v6, 0x41000000    # 8.0f

    move-object v0, v7

    .line 39
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40651eb8    # 3.58f

    const/high16 v1, 0x41000000    # 8.0f

    .line 40
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3f9ae148    # -3.58f

    const/high16 v2, -0x3f000000    # -8.0f

    .line 41
    invoke-virtual {v7, v1, v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, -0x40000000    # -2.0f

    .line 42
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4128a3d7    # 10.54f

    const v1, 0x4173851f    # 15.22f

    .line 44
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x428a3d71    # -0.06f

    const v2, 0x3d4ccccd    # 0.05f

    const v3, -0x420a3d71    # -0.12f

    const v4, 0x3db851ec    # 0.09f

    const v5, -0x41b33333    # -0.2f

    const v6, 0x3df5c28f    # 0.12f

    move-object v0, v7

    .line 45
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4175c28f    # -0.27f

    const v8, -0x41d1eb85    # -0.17f

    const v9, 0x3d23d70a    # 0.04f

    .line 46
    invoke-virtual {v7, v8, v9, v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4247ae14    # -0.09f

    const/4 v2, 0x0

    const v3, -0x41d1eb85    # -0.17f

    const v4, -0x43dc28f6    # -0.01f

    const/high16 v5, -0x41800000    # -0.25f

    const v6, -0x42dc28f6    # -0.04f

    move-object v0, v7

    .line 47
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x428a3d71    # -0.06f

    const v1, -0x41b33333    # -0.2f

    const v10, -0x41f0a3d7    # -0.14f

    const v11, -0x421eb852    # -0.11f

    .line 48
    invoke-virtual {v7, v10, v0, v1, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x41fae148    # -0.13f

    const v13, -0x42333333    # -0.1f

    .line 49
    invoke-virtual {v7, v13, v13, v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x419eb852    # -0.22f

    const v6, -0x42b33333    # -0.05f

    .line 50
    invoke-virtual {v7, v6, v10, v6, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40a66666    # -0.85f

    .line 51
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3e570a3d    # 0.21f

    const v3, 0x3d23d70a    # 0.04f

    const v4, 0x3ec7ae14    # 0.39f

    const v5, 0x3df5c28f    # 0.12f

    const v24, 0x3f0ccccd    # 0.55f

    move-object v0, v7

    move/from16 v6, v24

    .line 52
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3e8f5c29    # 0.28f

    const v1, 0x3ec28f5c    # 0.38f

    const v2, 0x3e428f5c    # 0.19f

    const v6, 0x3ea8f5c3    # 0.33f

    .line 53
    invoke-virtual {v7, v2, v0, v6, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3eeb851f    # 0.46f

    const v1, 0x3e6b851f    # 0.23f

    const v5, 0x3e947ae1    # 0.29f

    const v4, 0x3e3851ec    # 0.18f

    .line 54
    invoke-virtual {v7, v5, v4, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f07ae14    # 0.53f

    const v1, 0x3d8f5c29    # 0.07f

    const v2, 0x3eb33333    # 0.35f

    const v3, 0x3d8f5c29    # 0.07f

    .line 55
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e570a3d    # 0.21f

    const/4 v2, 0x0

    const v3, 0x3ed1eb85    # 0.41f

    const v24, -0x430a3d71    # -0.03f

    const v25, 0x3f19999a    # 0.6f

    const v26, -0x425c28f6    # -0.08f

    move-object v0, v7

    move/from16 v4, v24

    move/from16 v5, v25

    move/from16 v6, v26

    .line 56
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ef5c28f    # 0.48f

    const v1, -0x418a3d71    # -0.24f

    const v2, 0x3eae147b    # 0.34f

    .line 57
    invoke-virtual {v7, v2, v10, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ea3d70a    # 0.32f

    const v1, -0x413851ec    # -0.39f

    const v2, 0x3e75c28f    # 0.24f

    const v3, -0x418a3d71    # -0.24f

    .line 58
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40f851ec    # -0.53f

    const v6, 0x3df5c28f    # 0.12f

    const v5, -0x41570a3d    # -0.33f

    .line 59
    invoke-virtual {v7, v6, v5, v6, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x41947ae1    # -0.23f

    const v3, -0x428a3d71    # -0.06f

    const v4, -0x411eb852    # -0.44f

    const v24, -0x41c7ae14    # -0.18f

    const v25, -0x40e3d70a    # -0.61f

    move-object v0, v7

    move/from16 v5, v24

    move v13, v6

    move/from16 v6, v25

    .line 60
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40f5c28f    # -0.54f

    const v1, -0x413851ec    # -0.39f

    const v6, -0x41666666    # -0.3f

    .line 61
    invoke-virtual {v7, v6, v6, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3dcccccd    # 0.1f

    const v2, -0x42b33333    # -0.05f

    const v3, 0x3e4ccccd    # 0.2f

    const v4, -0x42333333    # -0.1f

    const v5, 0x3e8f5c29    # 0.28f

    const v24, -0x41d1eb85    # -0.17f

    move-object v0, v7

    move v13, v6

    move/from16 v6, v24

    .line 62
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3e4ccccd    # 0.2f

    const v1, -0x419eb852    # -0.22f

    const v2, 0x3e19999a    # 0.15f

    .line 63
    invoke-virtual {v7, v2, v10, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3e051eb8    # 0.13f

    const/high16 v1, -0x41800000    # -0.25f

    const v6, 0x3dcccccd    # 0.1f

    const v2, -0x41dc28f6    # -0.16f

    .line 64
    invoke-virtual {v7, v6, v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4175c28f    # -0.27f

    const v5, -0x41c7ae14    # -0.18f

    .line 65
    invoke-virtual {v7, v9, v5, v9, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x41b33333    # -0.2f

    const v3, -0x42dc28f6    # -0.04f

    const v4, -0x41428f5c    # -0.37f

    const v24, -0x421eb852    # -0.11f

    const v26, -0x40f851ec    # -0.53f

    move-object v0, v7

    move v10, v5

    move/from16 v5, v24

    move/from16 v6, v26

    .line 66
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4170a3d7    # -0.28f

    const v1, -0x413d70a4    # -0.38f

    .line 67
    invoke-virtual {v7, v8, v0, v13, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41147ae1    # -0.46f

    const v6, -0x41947ae1    # -0.23f

    .line 68
    invoke-virtual {v7, v0, v10, v1, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40e8f5c3    # -0.59f

    const v1, -0x425c28f6    # -0.08f

    const v2, -0x41428f5c    # -0.37f

    const v3, -0x425c28f6    # -0.08f

    .line 69
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41bd70a4    # -0.19f

    const/4 v2, 0x0

    const v3, -0x413d70a4    # -0.38f

    const v4, 0x3cf5c28f    # 0.03f

    const v5, -0x40f5c28f    # -0.54f

    const v24, 0x3da3d70a    # 0.08f

    move-object v0, v7

    move v8, v6

    move/from16 v6, v24

    .line 70
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x411eb852    # -0.44f

    const v1, 0x3e6b851f    # 0.23f

    const v2, -0x415c28f6    # -0.32f

    const v3, 0x3e051eb8    # 0.13f

    .line 71
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ebd70a4    # 0.37f

    const v6, 0x3e6147ae    # 0.22f

    .line 72
    invoke-virtual {v7, v8, v6, v13, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3e99999a    # 0.3f

    const v1, 0x3ef5c28f    # 0.48f

    .line 73
    invoke-virtual {v7, v11, v0, v11, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f59999a    # 0.85f

    .line 74
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x4270a3d7    # -0.07f

    const v3, 0x3ca3d70a    # 0.02f

    const v4, -0x41f0a3d7    # -0.14f

    const v5, 0x3d4ccccd    # 0.05f

    const v24, -0x41b33333    # -0.2f

    move-object v0, v7

    move v13, v6

    move/from16 v6, v24

    .line 75
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3d8f5c29    # 0.07f

    const v1, -0x41e66666    # -0.15f

    const v2, 0x3df5c28f    # 0.12f

    .line 76
    invoke-virtual {v7, v0, v11, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4270a3d7    # -0.07f

    const v6, 0x3de147ae    # 0.11f

    const v1, -0x42333333    # -0.1f

    const v5, 0x3e3851ec    # 0.18f

    .line 77
    invoke-virtual {v7, v6, v0, v5, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x430a3d71    # -0.03f

    const v1, -0x430a3d71    # -0.03f

    const v4, 0x3e0f5c29    # 0.14f

    .line 78
    invoke-virtual {v7, v4, v0, v13, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3dcccccd    # 0.1f

    const/4 v2, 0x0

    const v3, 0x3e3851ec    # 0.18f

    const v24, 0x3c23d70a    # 0.01f

    const/high16 v29, 0x3e800000    # 0.25f

    const v33, 0x3d23d70a    # 0.04f

    move-object v0, v7

    move v11, v4

    move/from16 v4, v24

    move v10, v5

    move/from16 v5, v29

    move v8, v6

    move/from16 v6, v33

    .line 79
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3e051eb8    # 0.13f

    const v1, 0x3d75c28f    # 0.06f

    .line 80
    invoke-virtual {v7, v0, v1, v10, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3da3d70a    # 0.08f

    const v6, 0x3e2e147b    # 0.17f

    .line 81
    invoke-virtual {v7, v0, v8, v8, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    invoke-virtual {v7, v9, v11, v9, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3e3851ec    # 0.18f

    const v3, -0x42b33333    # -0.05f

    const v4, 0x3ea3d70a    # 0.32f

    const v5, -0x41dc28f6    # -0.16f

    const v33, 0x3edc28f6    # 0.43f

    move-object v0, v7

    move v9, v6

    move/from16 v6, v33

    .line 83
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x410a3d71    # -0.48f

    const v1, 0x3e23d70a    # 0.16f

    const v2, -0x417ae148    # -0.26f

    const v3, 0x3e23d70a    # 0.16f

    .line 84
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4123d70a    # -0.43f

    .line 85
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f28f5c3    # 0.66f

    .line 86
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ee66666    # 0.45f

    .line 87
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3de147ae    # 0.11f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const v4, 0x3c23d70a    # 0.01f

    const v5, 0x3e947ae1    # 0.29f

    const v6, 0x3d23d70a    # 0.04f

    move-object v0, v7

    .line 88
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3e23d70a    # 0.16f

    const v1, 0x3d75c28f    # 0.06f

    .line 89
    invoke-virtual {v7, v0, v1, v13, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3e4ccccd    # 0.2f

    const v1, 0x3df5c28f    # 0.12f

    .line 90
    invoke-virtual {v7, v8, v1, v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3d4ccccd    # 0.05f

    const v5, 0x3e947ae1    # 0.29f

    .line 91
    invoke-virtual {v7, v6, v10, v6, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3db851ec    # 0.09f

    const v3, -0x43dc28f6    # -0.01f

    const v4, 0x3e2e147b    # 0.17f

    const v30, -0x42dc28f6    # -0.04f

    const v33, 0x3e75c28f    # 0.24f

    move-object v0, v7

    move v11, v5

    move/from16 v5, v30

    move/from16 v6, v33

    .line 92
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x425c28f6    # -0.08f

    const v1, -0x41fae148    # -0.13f

    .line 93
    invoke-virtual {v7, v0, v8, v1, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41670a3d    # 14.44f

    const v1, 0x413c7ae1    # 11.78f

    .line 95
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41c7ae14    # -0.18f

    const v2, -0x4270a3d7    # -0.07f

    const v3, -0x41428f5c    # -0.37f

    const v4, -0x42333333    # -0.1f

    const v5, -0x40e8f5c3    # -0.59f

    const v6, -0x42333333    # -0.1f

    move-object v0, v7

    .line 96
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3cf5c28f    # 0.03f

    const v1, -0x40e8f5c3    # -0.59f

    const v2, -0x412e147b    # -0.41f

    const v6, 0x3dcccccd    # 0.1f

    .line 97
    invoke-virtual {v7, v2, v0, v1, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4119999a    # -0.45f

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, -0x41570a3d    # -0.33f

    .line 98
    invoke-virtual {v7, v5, v10, v0, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x416b851f    # -0.29f

    const v1, 0x3f11eb85    # 0.57f

    const v2, 0x3eae147b    # 0.34f

    const v3, -0x41947ae1    # -0.23f

    .line 99
    invoke-virtual {v7, v3, v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x3f000000    # 0.5f

    const v1, 0x3f51eb85    # 0.82f

    const v2, -0x42333333    # -0.1f

    .line 100
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f3d70a4    # 0.74f

    .line 101
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3ea3d70a    # 0.32f

    const v3, 0x3d23d70a    # 0.04f

    const v30, 0x3f19999a    # 0.6f

    const v31, 0x3de147ae    # 0.11f

    const v32, 0x3f51eb85    # 0.82f

    move-object v0, v7

    move v10, v4

    move/from16 v4, v30

    move v8, v5

    move/from16 v5, v31

    move v11, v6

    move/from16 v6, v32

    .line 102
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3e99999a    # 0.3f

    const v1, 0x3f11eb85    # 0.57f

    const v2, 0x3ed70a3d    # 0.42f

    .line 103
    invoke-virtual {v7, v9, v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3e851eb8    # 0.26f

    const v1, 0x3eeb851f    # 0.46f

    const v2, 0x3e8f5c29    # 0.28f

    .line 104
    invoke-virtual {v7, v2, v0, v1, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ebd70a4    # 0.37f

    const v1, 0x3f170a3d    # 0.59f

    .line 105
    invoke-virtual {v7, v0, v11, v1, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x430a3d71    # -0.03f

    const v2, 0x3ed1eb85    # 0.41f

    const v3, -0x42333333    # -0.1f

    .line 106
    invoke-virtual {v7, v2, v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ee66666    # 0.45f

    const v1, -0x41c7ae14    # -0.18f

    .line 107
    invoke-virtual {v7, v10, v1, v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4151eb85    # -0.34f

    const v1, -0x40ee147b    # -0.57f

    const v2, 0x3e947ae1    # 0.29f

    .line 108
    invoke-virtual {v7, v13, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, -0x41000000    # -0.5f

    const v1, -0x40ae147b    # -0.82f

    .line 109
    invoke-virtual {v7, v11, v0, v11, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40c28f5c    # -0.74f

    .line 110
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x415c28f6    # -0.32f

    const v3, -0x42dc28f6    # -0.04f

    const v4, -0x40e66666    # -0.6f

    const v5, -0x421eb852    # -0.11f

    const v6, -0x40ae147b    # -0.82f

    move-object v0, v7

    .line 111
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4128f5c3    # -0.42f

    const v1, -0x40ee147b    # -0.57f

    const v2, -0x41666666    # -0.3f

    const v3, -0x41d1eb85    # -0.17f

    .line 112
    invoke-virtual {v7, v3, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x417ae148    # -0.26f

    const v1, -0x41147ae1    # -0.46f

    const v2, -0x4170a3d7    # -0.28f

    .line 113
    invoke-virtual {v7, v2, v0, v1, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 114
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41673333    # 14.45f

    const v1, 0x4165999a    # 14.35f

    .line 115
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3e428f5c    # 0.19f

    const v3, -0x43dc28f6    # -0.01f

    const v4, 0x3eb33333    # 0.35f

    const v5, -0x42dc28f6    # -0.04f

    const v6, 0x3ef5c28f    # 0.48f

    move-object v0, v7

    .line 116
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3e75c28f    # 0.24f

    const v1, 0x3ea3d70a    # 0.32f

    const v2, -0x428a3d71    # -0.06f

    const v3, -0x421eb852    # -0.11f

    .line 117
    invoke-virtual {v7, v2, v0, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x41bd70a4    # -0.19f

    const v1, 0x3e0f5c29    # 0.14f

    .line 118
    invoke-virtual {v7, v3, v1, v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x41dc28f6    # -0.16f

    const/high16 v1, -0x41800000    # -0.25f

    const v8, 0x3d4ccccd    # 0.05f

    .line 119
    invoke-virtual {v7, v0, v8, v1, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x435c28f6    # -0.02f

    const v2, -0x41c7ae14    # -0.18f

    const v10, -0x42b33333    # -0.05f

    .line 120
    invoke-virtual {v7, v2, v0, v1, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4247ae14    # -0.09f

    const v1, -0x41bd70a4    # -0.19f

    const v2, -0x41f0a3d7    # -0.14f

    const v3, -0x41d1eb85    # -0.17f

    .line 121
    invoke-virtual {v7, v2, v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x420a3d71    # -0.12f

    const v1, -0x415c28f6    # -0.32f

    const v2, -0x4247ae14    # -0.09f

    const v3, -0x41bd70a4    # -0.19f

    .line 122
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x42dc28f6    # -0.04f

    const v1, -0x410a3d71    # -0.48f

    const v2, -0x42dc28f6    # -0.04f

    const v3, -0x416b851f    # -0.29f

    .line 123
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4087ae14    # -0.97f

    .line 124
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x41bd70a4    # -0.19f

    const v3, 0x3c23d70a    # 0.01f

    const v4, -0x414ccccd    # -0.35f

    const v5, 0x3d23d70a    # 0.04f

    const v6, -0x410a3d71    # -0.48f

    move-object v0, v7

    .line 125
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3d75c28f    # 0.06f

    const v1, -0x416147ae    # -0.31f

    const v2, -0x41947ae1    # -0.23f

    const v3, 0x3df5c28f    # 0.12f

    .line 126
    invoke-virtual {v7, v0, v2, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3e428f5c    # 0.19f

    const v1, -0x41f0a3d7    # -0.14f

    const v2, -0x41d1eb85    # -0.17f

    const v3, 0x3de147ae    # 0.11f

    .line 127
    invoke-virtual {v7, v3, v1, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3e23d70a    # 0.16f

    const/high16 v1, 0x3e800000    # 0.25f

    .line 128
    invoke-virtual {v7, v0, v10, v1, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ca3d70a    # 0.02f

    const v2, 0x3e3851ec    # 0.18f

    .line 129
    invoke-virtual {v7, v2, v0, v1, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3db851ec    # 0.09f

    const v1, 0x3e428f5c    # 0.19f

    const v3, 0x3e0f5c29    # 0.14f

    .line 130
    invoke-virtual {v7, v3, v0, v1, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e9eb852    # 0.31f

    const v3, 0x3df5c28f    # 0.12f

    .line 131
    invoke-virtual {v7, v0, v2, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ef5c28f    # 0.48f

    const v1, 0x3e947ae1    # 0.29f

    const v2, 0x3d23d70a    # 0.04f

    .line 132
    invoke-virtual {v7, v2, v1, v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f7851ec    # 0.97f

    .line 133
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 134
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 174
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v13

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3800

    const/16 v28, 0x0

    .line 170
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/twotone/Forward30Kt;->_forward30:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 137
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
