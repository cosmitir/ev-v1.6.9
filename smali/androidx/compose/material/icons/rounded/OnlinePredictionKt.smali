.class public final Landroidx/compose/material/icons/rounded/OnlinePredictionKt;
.super Ljava/lang/Object;
.source "OnlinePrediction.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOnlinePrediction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnlinePrediction.kt\nandroidx/compose/material/icons/rounded/OnlinePredictionKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,100:1\n122#2:101\n116#2,3:102\n119#2,3:106\n132#2,18:109\n152#2:146\n175#3:105\n622#4,2:127\n634#4,2:129\n636#4,11:135\n50#5,4:131\n*S KotlinDebug\n*F\n+ 1 OnlinePrediction.kt\nandroidx/compose/material/icons/rounded/OnlinePredictionKt\n*L\n29#1:101\n29#1:102,3\n29#1:106,3\n30#1:109,18\n30#1:146\n29#1:105\n30#1:127,2\n30#1:129,2\n30#1:135,11\n30#1:131,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_onlinePrediction",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "OnlinePrediction",
        "Landroidx/compose/material/icons/Icons$Rounded;",
        "getOnlinePrediction",
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
.field private static _onlinePrediction:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getOnlinePrediction(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 29

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/rounded/OnlinePredictionKt;->_onlinePrediction:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "Rounded.OnlinePrediction"

    .line 102
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object v12, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 105
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

    .line 102
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    .line 112
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v14

    .line 119
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

    .line 124
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v21

    .line 125
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    const-string v15, ""

    .line 131
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v8, 0x41780000    # 15.5f

    const/high16 v9, 0x41380000    # 11.5f

    .line 31
    invoke-virtual {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x3fe00000    # -2.5f

    const/high16 v4, 0x40600000    # 3.5f

    const/high16 v5, -0x3fe00000    # -2.5f

    const/high16 v6, 0x40a00000    # 5.0f

    move-object v0, v7

    .line 32
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v10, -0x40000000    # -2.0f

    .line 33
    invoke-virtual {v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v2, -0x40400000    # -1.5f

    const/high16 v4, -0x3fc00000    # -3.0f

    const/high16 v6, -0x3f600000    # -5.0f

    .line 34
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x41080000    # 8.5f

    const v2, 0x41191eb8    # 9.57f

    const v3, 0x41211eb8    # 10.07f

    const/high16 v4, 0x41000000    # 8.0f

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v6, 0x41000000    # 8.0f

    .line 35
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41191eb8    # 9.57f

    .line 36
    invoke-virtual {v7, v8, v0, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41500000    # 13.0f

    const/high16 v8, 0x418c0000    # 17.5f

    .line 38
    invoke-virtual {v7, v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    invoke-virtual {v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41900000    # 18.0f

    .line 40
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3f0ccccd    # 0.55f

    const v3, 0x3ee66666    # 0.45f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, v7

    .line 41
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v9, 0x0

    .line 42
    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f0ccccd    # 0.55f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, -0x4119999a    # -0.45f

    const/high16 v6, -0x40800000    # -1.0f

    .line 43
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    invoke-virtual {v7, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41b00000    # 22.0f

    const/high16 v10, 0x41400000    # 12.0f

    .line 46
    invoke-virtual {v7, v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x3fe28f5c    # -2.46f

    const v3, -0x409c28f6    # -0.89f

    const v4, -0x3f6947ae    # -4.71f

    const v5, -0x3fe8f5c3    # -2.36f

    const v6, -0x3f31999a    # -6.45f

    move-object v0, v7

    .line 47
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x416b851f    # -0.29f

    const v2, -0x4151eb85    # -0.34f

    const v3, -0x40b33333    # -0.8f

    const v4, -0x413d70a4    # -0.38f

    const v5, -0x4070a3d7    # -1.12f

    const v6, -0x428a3d71    # -0.06f

    .line 48
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    invoke-virtual {v7, v9, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4175c28f    # -0.27f

    const v2, 0x3e8a3d71    # 0.27f

    const v3, -0x41666666    # -0.3f

    const v4, 0x3f35c28f    # 0.71f

    const v5, -0x428a3d71    # -0.06f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 50
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x419dd70a    # 19.73f

    const v2, 0x40ff0a3d    # 7.97f

    const/high16 v3, 0x41a40000    # 20.5f

    const v4, 0x411e6666    # 9.9f

    const/high16 v5, 0x41a40000    # 20.5f

    const/high16 v6, 0x41400000    # 12.0f

    .line 51
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x40066666    # 2.1f

    const v3, -0x40bae148    # -0.77f

    const v4, 0x4080f5c3    # 4.03f

    const v5, -0x3ffd70a4    # -2.04f

    const v6, 0x40b0a3d7    # 5.52f

    .line 52
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, -0x41800000    # -0.25f

    const v2, 0x3e947ae1    # 0.29f

    const v3, -0x41a8f5c3    # -0.21f

    const v4, 0x3f3ae148    # 0.73f

    const v5, 0x3d75c28f    # 0.06f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 53
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    invoke-virtual {v7, v9, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3ea3d70a    # 0.32f

    const v2, 0x3ea3d70a    # 0.32f

    const v3, 0x3f547ae1    # 0.83f

    const v4, 0x3e8f5c29    # 0.28f

    const v5, 0x3f8f5c29    # 1.12f

    const v6, -0x428a3d71    # -0.06f

    .line 55
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x41a8e148    # 21.11f

    const v2, 0x4185ae14    # 16.71f

    const/high16 v3, 0x41b00000    # 22.0f

    const v4, 0x41675c29    # 14.46f

    const/high16 v5, 0x41b00000    # 22.0f

    const/high16 v6, 0x41400000    # 12.0f

    .line 56
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40600000    # 3.5f

    .line 58
    invoke-virtual {v7, v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x3ff9999a    # -2.1f

    const v3, 0x3f451eb8    # 0.77f

    const v4, -0x3f7f0a3d    # -4.03f

    const v5, 0x40028f5c    # 2.04f

    const v6, -0x3f4f5c29    # -5.52f

    move-object v0, v7

    .line 59
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, -0x416b851f    # -0.29f

    const v3, 0x3e570a3d    # 0.21f

    const v4, -0x40c51eb8    # -0.73f

    const v5, -0x428a3d71    # -0.06f

    const/high16 v6, -0x40800000    # -1.0f

    .line 60
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    invoke-virtual {v7, v9, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x40a570a4    # 5.17f

    const v2, 0x40a570a4    # 5.17f

    const v3, 0x4094cccd    # 4.65f

    const v4, 0x40a66666    # 5.2f

    const v5, 0x408b851f    # 4.36f

    const v6, 0x40b147ae    # 5.54f

    .line 62
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x4038f5c3    # 2.89f

    const v2, 0x40e947ae    # 7.29f

    const/high16 v3, 0x40000000    # 2.0f

    const v4, 0x4118a3d7    # 9.54f

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x41400000    # 12.0f

    .line 63
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x401d70a4    # 2.46f

    const v3, 0x3f63d70a    # 0.89f

    const v4, 0x4096b852    # 4.71f

    const v5, 0x40170a3d    # 2.36f

    const v6, 0x40ceb852    # 6.46f

    .line 64
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e947ae1    # 0.29f

    const v2, 0x3eae147b    # 0.34f

    const v3, 0x3f4ccccd    # 0.8f

    const v4, 0x3ec28f5c    # 0.38f

    const v5, 0x3f8f5c29    # 1.12f

    const v6, 0x3d75c28f    # 0.06f

    .line 65
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    invoke-virtual {v7, v9, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e8a3d71    # 0.27f

    const v2, -0x4175c28f    # -0.27f

    const v3, 0x3e99999a    # 0.3f

    const v4, -0x40ca3d71    # -0.71f

    const v5, 0x3d75c28f    # 0.06f

    const/high16 v6, -0x40800000    # -1.0f

    .line 67
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x4088a3d7    # 4.27f

    const v2, 0x41803d71    # 16.03f

    const/high16 v3, 0x40600000    # 3.5f

    const v4, 0x4161999a    # 14.1f

    const/high16 v5, 0x40600000    # 3.5f

    const/high16 v6, 0x41400000    # 12.0f

    .line 68
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    invoke-virtual {v7, v8, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3fa3d70a    # 1.28f

    const v3, -0x411eb852    # -0.44f

    const v4, 0x401e147b    # 2.47f

    const v5, -0x4068f5c3    # -1.18f

    const v6, 0x405a3d71    # 3.41f

    .line 71
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41947ae1    # -0.23f

    const v2, 0x3e947ae1    # 0.29f

    const v3, -0x41b33333    # -0.2f

    const v4, 0x3f35c28f    # 0.71f

    const v5, 0x3d8f5c29    # 0.07f

    const v6, 0x3f7ae148    # 0.98f

    .line 72
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    invoke-virtual {v7, v9, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3ea3d70a    # 0.32f

    const v2, 0x3ea3d70a    # 0.32f

    const v3, 0x3f59999a    # 0.85f

    const v4, 0x3e947ae1    # 0.29f

    const v5, 0x3f90a3d7    # 1.13f

    const v6, -0x4270a3d7    # -0.07f

    .line 74
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x4193851f    # 18.44f

    const v2, 0x4172147b    # 15.13f

    const/high16 v3, 0x41980000    # 19.0f

    const v4, 0x415a147b    # 13.63f

    const/high16 v5, 0x41980000    # 19.0f

    const/high16 v6, 0x41400000    # 12.0f

    .line 75
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x402f5c29    # -1.63f

    const v3, -0x40f0a3d7    # -0.56f

    const v4, -0x3fb7ae14    # -3.13f

    const v5, -0x404147ae    # -1.49f

    const v6, -0x3f76147b    # -4.31f

    .line 76
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4170a3d7    # -0.28f

    const v2, -0x4147ae14    # -0.36f

    const v3, -0x40b0a3d7    # -0.81f

    const v4, -0x413851ec    # -0.39f

    const v5, -0x406f5c29    # -1.13f

    const v6, -0x4270a3d7    # -0.07f

    .line 77
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    invoke-virtual {v7, v9, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x417ae148    # -0.26f

    const v2, 0x3e851eb8    # 0.26f

    const v3, -0x41666666    # -0.3f

    const v4, 0x3f2e147b    # 0.68f

    const v5, -0x4270a3d7    # -0.07f

    const v6, 0x3f7ae148    # 0.98f

    .line 79
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x41887ae1    # 17.06f

    const v2, 0x41187ae1    # 9.53f

    const/high16 v3, 0x418c0000    # 17.5f

    const v4, 0x412b851f    # 10.72f

    const/high16 v5, 0x418c0000    # 17.5f

    const/high16 v6, 0x41400000    # 12.0f

    .line 80
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40f3d70a    # 7.62f

    const v1, 0x41830a3d    # 16.38f

    .line 82
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e851eb8    # 0.26f

    const v2, -0x417ae148    # -0.26f

    const v3, 0x3e99999a    # 0.3f

    const v4, -0x40d1eb85    # -0.68f

    const v5, 0x3d8f5c29    # 0.07f

    const v6, -0x40851eb8    # -0.98f

    move-object v0, v7

    .line 84
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x40de147b    # 6.94f

    const v2, 0x4167851f    # 14.47f

    const/high16 v3, 0x40d00000    # 6.5f

    const v4, 0x41547ae1    # 13.28f

    const/high16 v5, 0x40d00000    # 6.5f

    const/high16 v6, 0x41400000    # 12.0f

    .line 85
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x405c28f6    # -1.28f

    const v3, 0x3ee147ae    # 0.44f

    const v4, -0x3fe1eb85    # -2.47f

    const v5, 0x3f970a3d    # 1.18f

    const v6, -0x3fa5c28f    # -3.41f

    .line 86
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e6b851f    # 0.23f

    const v2, -0x416b851f    # -0.29f

    const v3, 0x3e4ccccd    # 0.2f

    const v4, -0x40ca3d71    # -0.71f

    const v5, -0x4270a3d7    # -0.07f

    const v6, -0x40851eb8    # -0.98f

    .line 87
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    invoke-virtual {v7, v9, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x40e9999a    # 7.3f

    const v2, 0x40e9999a    # 7.3f

    const v3, 0x40d8a3d7    # 6.77f

    const v4, 0x40ea8f5c    # 7.33f

    const v5, 0x40cfae14    # 6.49f

    const v6, 0x40f5c28f    # 7.68f

    .line 89
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x40b1eb85    # 5.56f

    const v2, 0x410deb85    # 8.87f

    const/high16 v3, 0x40a00000    # 5.0f

    const v4, 0x4125eb85    # 10.37f

    const/high16 v5, 0x40a00000    # 5.0f

    const/high16 v6, 0x41400000    # 12.0f

    .line 90
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3fd0a3d7    # 1.63f

    const v3, 0x3f0f5c29    # 0.56f

    const v4, 0x404851ec    # 3.13f

    const v5, 0x3fbeb852    # 1.49f

    const v6, 0x408a3d71    # 4.32f

    .line 91
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x40d8a3d7    # 6.77f

    const v2, 0x41855c29    # 16.67f

    const v3, 0x40e9999a    # 7.3f

    const v4, 0x4185999a    # 16.7f

    const v5, 0x40f3d70a    # 7.62f

    const v6, 0x41830a3d    # 16.38f

    .line 92
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 133
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v13

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3800

    const/16 v28, 0x0

    .line 129
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/rounded/OnlinePredictionKt;->_onlinePrediction:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 96
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
