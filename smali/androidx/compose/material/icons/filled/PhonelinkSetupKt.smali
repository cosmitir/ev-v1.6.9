.class public final Landroidx/compose/material/icons/filled/PhonelinkSetupKt;
.super Ljava/lang/Object;
.source "PhonelinkSetup.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPhonelinkSetup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhonelinkSetup.kt\nandroidx/compose/material/icons/filled/PhonelinkSetupKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,101:1\n122#2:102\n116#2,3:103\n119#2,3:107\n132#2,18:110\n152#2:147\n175#3:106\n622#4,2:128\n634#4,2:130\n636#4,11:136\n50#5,4:132\n*S KotlinDebug\n*F\n+ 1 PhonelinkSetup.kt\nandroidx/compose/material/icons/filled/PhonelinkSetupKt\n*L\n29#1:102\n29#1:103,3\n29#1:107,3\n30#1:110,18\n30#1:147\n29#1:106\n30#1:128,2\n30#1:130,2\n30#1:136,11\n30#1:132,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_phonelinkSetup",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "PhonelinkSetup",
        "Landroidx/compose/material/icons/Icons$Filled;",
        "getPhonelinkSetup",
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
.field private static _phonelinkSetup:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getPhonelinkSetup(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 29

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/filled/PhonelinkSetupKt;->_phonelinkSetup:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "Filled.PhonelinkSetup"

    .line 103
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object v12, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 106
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

    .line 103
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    .line 113
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v14

    .line 120
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

    .line 125
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v21

    .line 126
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    const-string v15, ""

    .line 132
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v0, 0x412d1eb8    # 10.82f

    const v1, 0x4147d70a    # 12.49f

    .line 31
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3ca3d70a    # 0.02f

    const v2, -0x41dc28f6    # -0.16f

    const v3, 0x3d23d70a    # 0.04f

    const v4, -0x415c28f6    # -0.32f

    const v5, 0x3d23d70a    # 0.04f

    const v6, -0x41051eb8    # -0.49f

    move-object v0, v7

    .line 32
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x41d1eb85    # -0.17f

    const v3, -0x435c28f6    # -0.02f

    const v4, -0x41570a3d    # -0.33f

    const v5, -0x42dc28f6    # -0.04f

    .line 33
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40ae147b    # -0.82f

    const v8, 0x3f8a3d71    # 1.08f

    .line 34
    invoke-virtual {v7, v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3dcccccd    # 0.1f

    const v2, -0x4270a3d7    # -0.07f

    const v3, 0x3df5c28f    # 0.12f

    const v4, -0x41a8f5c3    # -0.21f

    const v5, 0x3d75c28f    # 0.06f

    const v6, -0x415c28f6    # -0.32f

    move-object v0, v7

    .line 35
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v9, -0x407c28f6    # -1.03f

    const v10, -0x40228f5c    # -1.73f

    .line 36
    invoke-virtual {v7, v9, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x428a3d71    # -0.06f

    const v2, -0x421eb852    # -0.11f

    const v3, -0x41b33333    # -0.2f

    const v4, -0x41e66666    # -0.15f

    const v5, -0x416147ae    # -0.31f

    const v6, -0x421eb852    # -0.11f

    .line 37
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v11, -0x405c28f6    # -1.28f

    const/high16 v13, 0x3f000000    # 0.5f

    .line 38
    invoke-virtual {v7, v11, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4175c28f    # -0.27f

    const v2, -0x41b33333    # -0.2f

    const v3, -0x40f0a3d7    # -0.56f

    const v4, -0x4147ae14    # -0.36f

    const v5, -0x40a147ae    # -0.87f

    const v6, -0x41051eb8    # -0.49f

    .line 39
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4055c28f    # -1.33f

    const v6, -0x41b33333    # -0.2f

    .line 40
    invoke-virtual {v7, v6, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x420a3d71    # -0.12f

    const v3, -0x421eb852    # -0.11f

    const v4, -0x41a8f5c3    # -0.21f

    const v5, -0x418a3d71    # -0.24f

    const v24, -0x41a8f5c3    # -0.21f

    move-object v0, v7

    move v10, v6

    move/from16 v6, v24

    .line 41
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40bf5c29    # 5.98f

    .line 42
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41fae148    # -0.13f

    const/4 v2, 0x0

    const v3, -0x418a3d71    # -0.24f

    const v4, 0x3db851ec    # 0.09f

    const v5, -0x417ae148    # -0.26f

    const v6, 0x3e570a3d    # 0.21f

    move-object v0, v7

    .line 43
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3fa8f5c3    # 1.32f

    .line 44
    invoke-virtual {v7, v10, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x416147ae    # -0.31f

    const v2, 0x3df5c28f    # 0.12f

    const v3, -0x40e66666    # -0.6f

    const v4, 0x3e99999a    # 0.3f

    const v5, -0x40a147ae    # -0.87f

    const v10, 0x3efae148    # 0.49f

    move v13, v6

    move v6, v10

    .line 45
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v10, -0x41000000    # -0.5f

    .line 46
    invoke-virtual {v7, v11, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x420a3d71    # -0.12f

    const v2, -0x42b33333    # -0.05f

    const/high16 v3, -0x41800000    # -0.25f

    const/4 v4, 0x0

    const v5, -0x416147ae    # -0.31f

    const v6, 0x3de147ae    # 0.11f

    .line 47
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v11, 0x3fdd70a4    # 1.73f

    .line 48
    invoke-virtual {v7, v9, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x428a3d71    # -0.06f

    const v2, 0x3df5c28f    # 0.12f

    const v3, -0x430a3d71    # -0.03f

    const/high16 v4, 0x3e800000    # 0.25f

    const v5, 0x3d8f5c29    # 0.07f

    const v6, 0x3ea8f5c3    # 0.33f

    .line 49
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f51eb85    # 0.82f

    .line 50
    invoke-virtual {v7, v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x435c28f6    # -0.02f

    const v2, 0x3e23d70a    # 0.16f

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, -0x430a3d71    # -0.03f

    const v6, 0x3efae148    # 0.49f

    move-object v0, v7

    .line 51
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3e2e147b    # 0.17f

    const v3, 0x3ca3d70a    # 0.02f

    const v5, 0x3d23d70a    # 0.04f

    .line 52
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40747ae1    # -1.09f

    const v1, 0x3f547ae1    # 0.83f

    .line 53
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x42333333    # -0.1f

    const v2, 0x3d8f5c29    # 0.07f

    const v3, -0x420a3d71    # -0.12f

    const v4, 0x3e570a3d    # 0.21f

    const v5, -0x428a3d71    # -0.06f

    const v6, 0x3ea3d70a    # 0.32f

    move-object v0, v7

    .line 54
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v8, 0x3f83d70a    # 1.03f

    .line 55
    invoke-virtual {v7, v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3d75c28f    # 0.06f

    const v2, 0x3de147ae    # 0.11f

    const v3, 0x3e4ccccd    # 0.2f

    const v4, 0x3e19999a    # 0.15f

    const v5, 0x3e9eb852    # 0.31f

    const v6, 0x3de147ae    # 0.11f

    .line 56
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v9, 0x3fa3d70a    # 1.28f

    .line 57
    invoke-virtual {v7, v9, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e8a3d71    # 0.27f

    const v2, 0x3e4ccccd    # 0.2f

    const v3, 0x3f0f5c29    # 0.56f

    const v4, 0x3eb851ec    # 0.36f

    const v5, 0x3f5eb852    # 0.87f

    const v6, 0x3efae148    # 0.49f

    .line 58
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v10, 0x3e4ccccd    # 0.2f

    .line 59
    invoke-virtual {v7, v10, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3c23d70a    # 0.01f

    const v2, 0x3df5c28f    # 0.12f

    const v3, 0x3df5c28f    # 0.12f

    const v4, 0x3e570a3d    # 0.21f

    const/high16 v5, 0x3e800000    # 0.25f

    const v6, 0x3e570a3d    # 0.21f

    .line 60
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4003d70a    # 2.06f

    .line 61
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e051eb8    # 0.13f

    const/4 v2, 0x0

    const v3, 0x3e75c28f    # 0.24f

    const v4, -0x4247ae14    # -0.09f

    const v6, -0x41a8f5c3    # -0.21f

    move-object v0, v7

    .line 62
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40570a3d    # -1.32f

    .line 63
    invoke-virtual {v7, v10, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e9eb852    # 0.31f

    const v2, -0x420a3d71    # -0.12f

    const v3, 0x3f19999a    # 0.6f

    const v4, -0x41666666    # -0.3f

    const v5, 0x3f5eb852    # 0.87f

    const v6, -0x41051eb8    # -0.49f

    move-object v0, v7

    .line 64
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x3f000000    # 0.5f

    .line 65
    invoke-virtual {v7, v9, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3df5c28f    # 0.12f

    const v2, 0x3d4ccccd    # 0.05f

    const/high16 v3, 0x3e800000    # 0.25f

    const/4 v4, 0x0

    const v5, 0x3e9eb852    # 0.31f

    const v6, -0x421eb852    # -0.11f

    move-object v0, v7

    .line 66
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40228f5c    # -1.73f

    .line 67
    invoke-virtual {v7, v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3d75c28f    # 0.06f

    const v2, -0x421eb852    # -0.11f

    const v3, 0x3d23d70a    # 0.04f

    const v4, -0x418a3d71    # -0.24f

    const v5, -0x428a3d71    # -0.06f

    const v6, -0x415c28f6    # -0.32f

    move-object v0, v7

    .line 68
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40733333    # -1.1f

    const v1, -0x40ab851f    # -0.83f

    .line 69
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v8, 0x40e00000    # 7.0f

    const/high16 v9, 0x415c0000    # 13.75f

    .line 71
    invoke-virtual {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40828f5c    # -0.99f

    const/4 v2, 0x0

    const v3, -0x4019999a    # -1.8f

    const v4, -0x40b851ec    # -0.78f

    const v5, -0x4019999a    # -1.8f

    const/high16 v6, -0x40200000    # -1.75f

    move-object v0, v7

    .line 72
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f4f5c29    # 0.81f

    const/high16 v1, -0x40200000    # -1.75f

    const v2, 0x3fe66666    # 1.8f

    .line 73
    invoke-virtual {v7, v0, v1, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f47ae14    # 0.78f

    const/high16 v1, 0x3fe00000    # 1.75f

    .line 74
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v10, 0x41000000    # 8.0f

    .line 75
    invoke-virtual {v7, v10, v9, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41900000    # 18.0f

    const v1, 0x3f8147ae    # 1.01f

    .line 77
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 78
    invoke-virtual {v7, v10, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40733333    # -1.1f

    const/4 v2, 0x0

    const/high16 v3, -0x40000000    # -2.0f

    const v4, 0x3f666666    # 0.9f

    const/high16 v5, -0x40000000    # -2.0f

    const/high16 v6, 0x40000000    # 2.0f

    move-object v0, v7

    .line 79
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v8, 0x40400000    # 3.0f

    .line 80
    invoke-virtual {v7, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40000000    # 2.0f

    .line 81
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40a00000    # 5.0f

    .line 82
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v9, 0x41200000    # 10.0f

    .line 83
    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41600000    # 14.0f

    .line 84
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    invoke-virtual {v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, -0x40800000    # -1.0f

    .line 86
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40c00000    # 6.0f

    .line 87
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    invoke-virtual {v7, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3f8ccccd    # 1.1f

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x40000000    # 2.0f

    move-object v0, v7

    .line 89
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f8ccccd    # 1.1f

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    const v4, -0x4099999a    # -0.9f

    const/high16 v6, -0x40000000    # -2.0f

    .line 91
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    invoke-virtual {v7, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x40733333    # -1.1f

    const v3, -0x4099999a    # -0.9f

    const v4, -0x400147ae    # -1.99f

    const/high16 v5, -0x40000000    # -2.0f

    const v6, -0x400147ae    # -1.99f

    .line 93
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 134
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v13

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3800

    const/16 v28, 0x0

    .line 130
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/filled/PhonelinkSetupKt;->_phonelinkSetup:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 97
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
