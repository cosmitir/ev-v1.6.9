.class public final Landroidx/compose/material/icons/rounded/NordicWalkingKt;
.super Ljava/lang/Object;
.source "NordicWalking.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNordicWalking.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NordicWalking.kt\nandroidx/compose/material/icons/rounded/NordicWalkingKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,84:1\n122#2:85\n116#2,3:86\n119#2,3:90\n132#2,18:93\n152#2:130\n175#3:89\n622#4,2:111\n634#4,2:113\n636#4,11:119\n50#5,4:115\n*S KotlinDebug\n*F\n+ 1 NordicWalking.kt\nandroidx/compose/material/icons/rounded/NordicWalkingKt\n*L\n29#1:85\n29#1:86,3\n29#1:90,3\n30#1:93,18\n30#1:130\n29#1:89\n30#1:111,2\n30#1:113,2\n30#1:119,11\n30#1:115,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_nordicWalking",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "NordicWalking",
        "Landroidx/compose/material/icons/Icons$Rounded;",
        "getNordicWalking",
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
.field private static _nordicWalking:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getNordicWalking(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 29

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/rounded/NordicWalkingKt;->_nordicWalking:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "Rounded.NordicWalking"

    .line 86
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object v12, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 89
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

    .line 86
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    .line 96
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v14

    .line 103
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

    .line 108
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v21

    .line 109
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    const-string v15, ""

    .line 115
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v0, 0x41920000    # 18.25f

    const/high16 v8, 0x41b80000    # 23.0f

    .line 31
    invoke-virtual {v7, v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x412e147b    # -0.41f

    const/4 v2, 0x0

    const/high16 v3, -0x40c00000    # -0.75f

    const v4, -0x4151eb85    # -0.34f

    const/high16 v5, -0x40c00000    # -0.75f

    const/high16 v6, -0x40c00000    # -0.75f

    move-object v0, v7

    .line 32
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v9, 0x41600000    # 14.0f

    .line 33
    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41980000    # 19.0f

    .line 34
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41040000    # 8.25f

    .line 35
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x41980000    # 19.0f

    const v2, 0x41b547ae    # 22.66f

    const v3, 0x419547ae    # 18.66f

    const/high16 v4, 0x41b80000    # 23.0f

    const/high16 v5, 0x41920000    # 18.25f

    const/high16 v6, 0x41b80000    # 23.0f

    move-object v0, v7

    .line 36
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x409dc28f    # 4.93f

    .line 38
    invoke-virtual {v7, v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3eb33333    # 0.35f

    const/4 v2, 0x0

    const v3, 0x3f28f5c3    # 0.66f

    const v4, -0x418a3d71    # -0.24f

    const v5, 0x3f3ae148    # 0.73f

    const v6, -0x40e8f5c3    # -0.59f

    move-object v0, v7

    .line 39
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40f0f5c3    # 7.53f

    .line 40
    invoke-virtual {v7, v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40c00000    # 6.0f

    .line 41
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4019999a    # -1.8f

    const v1, 0x410170a4    # 8.09f

    .line 42
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x40833333    # 4.1f

    const v2, 0x41b47ae1    # 22.56f

    const v3, 0x408e6666    # 4.45f

    const/high16 v4, 0x41b80000    # 23.0f

    const v5, 0x409dc28f    # 4.93f

    const/high16 v6, 0x41b80000    # 23.0f

    move-object v0, v7

    .line 43
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v10, 0x41580000    # 13.5f

    const/high16 v11, 0x40b00000    # 5.5f

    .line 45
    invoke-virtual {v7, v10, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f8ccccd    # 1.1f

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    const v4, -0x4099999a    # -0.9f

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, -0x40000000    # -2.0f

    .line 46
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4099999a    # -0.9f

    const/high16 v1, -0x40000000    # -2.0f

    .line 47
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f666666    # 0.9f

    const/high16 v13, 0x40000000    # 2.0f

    .line 48
    invoke-virtual {v7, v1, v0, v1, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41466666    # 12.4f

    .line 49
    invoke-virtual {v7, v0, v11, v10, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    invoke-virtual {v7, v9, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f0ccccd    # 0.55f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, -0x4119999a    # -0.45f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    move-object v0, v7

    .line 52
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3f4b851f    # -5.64f

    .line 53
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x40f33333    # -0.55f

    const v3, -0x419eb852    # -0.22f

    const v4, -0x40770a3d    # -1.07f

    const v5, -0x40e147ae    # -0.62f

    const v6, -0x40466666    # -1.45f

    move-object v0, v7

    .line 54
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x414e6666    # 12.9f

    .line 55
    invoke-virtual {v7, v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f19999a    # 0.6f

    const/high16 v1, -0x3fc00000    # -3.0f

    .line 56
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f88f5c3    # 1.07f

    const v2, 0x3f9eb852    # 1.24f

    const v3, 0x4027ae14    # 2.62f

    const v4, 0x400851ec    # 2.13f

    const v5, 0x408b851f    # 4.36f

    const v6, 0x401a3d71    # 2.41f

    move-object v0, v7

    .line 57
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f19999a    # 0.6f

    const v2, 0x3dcccccd    # 0.1f

    const v3, 0x3f91eb85    # 1.14f

    const v4, -0x413d70a4    # -0.38f

    const v5, 0x3f91eb85    # 1.14f

    const v6, -0x40828f5c    # -0.99f

    .line 58
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x41051eb8    # -0.49f

    const v3, -0x414ccccd    # -0.35f

    const v4, -0x40970a3d    # -0.91f

    const v5, -0x40ab851f    # -0.83f

    const v6, -0x40851eb8    # -0.98f

    .line 59
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x403c28f6    # -1.53f

    const v2, -0x418a3d71    # -0.24f

    const v3, -0x3fcd70a4    # -2.79f

    const v4, -0x406e147b    # -1.14f

    const v5, -0x3fa1eb85    # -3.47f

    const v6, -0x3feae148    # -2.33f

    .line 60
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40333333    # -1.6f

    const/high16 v8, -0x40800000    # -1.0f

    .line 61
    invoke-virtual {v7, v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40f0a3d7    # -0.56f

    const v2, -0x409c28f6    # -0.89f

    const v3, -0x4028f5c3    # -1.68f

    const/high16 v4, -0x40600000    # -1.25f

    const v5, -0x3fd5c28f    # -2.66f

    const v6, -0x40a8f5c3    # -0.84f

    move-object v0, v7

    .line 62
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40e70a3d    # 7.22f

    const v1, 0x40f8f5c3    # 7.78f

    .line 63
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x40cf5c29    # 6.48f

    const v2, 0x4101999a    # 8.1f

    const/high16 v3, 0x40c00000    # 6.0f

    const v4, 0x410d1eb8    # 8.82f

    const/high16 v5, 0x40c00000    # 6.0f

    const v6, 0x4119eb85    # 9.62f

    move-object v0, v7

    .line 64
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41400000    # 12.0f

    .line 65
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3f0ccccd    # 0.55f

    const v3, 0x3ee66666    # 0.45f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, v7

    .line 66
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4119999a    # -0.45f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 67
    invoke-virtual {v7, v1, v0, v1, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4119999a    # 9.6f

    .line 68
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3fe66666    # 1.8f

    const v1, -0x40cccccd    # -0.7f

    .line 69
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40e80000    # 7.25f

    const v1, 0x41ae147b    # 21.76f

    .line 70
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x40e3d70a    # 7.12f

    const v2, 0x41b33333    # 22.4f

    const v3, 0x40f3851f    # 7.61f

    const/high16 v4, 0x41b80000    # 23.0f

    const v5, 0x410451ec    # 8.27f

    const/high16 v6, 0x41b80000    # 23.0f

    move-object v0, v7

    .line 71
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3efae148    # 0.49f

    const/4 v2, 0x0

    const v3, 0x3f68f5c3    # 0.91f

    const v4, -0x4151eb85    # -0.34f

    const v5, 0x3f828f5c    # 1.02f

    const v6, -0x40b0a3d7    # -0.81f

    .line 72
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x412e6666    # 10.9f

    const/high16 v1, 0x41700000    # 15.0f

    .line 73
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40066666    # 2.1f

    .line 74
    invoke-virtual {v7, v0, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40a00000    # 5.0f

    .line 75
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x41500000    # 13.0f

    const v2, 0x41b46666    # 22.55f

    const v3, 0x41573333    # 13.45f

    const/high16 v4, 0x41b80000    # 23.0f

    const/high16 v5, 0x41600000    # 14.0f

    const/high16 v6, 0x41b80000    # 23.0f

    move-object v0, v7

    .line 76
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 117
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v13

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3800

    const/16 v28, 0x0

    .line 113
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/rounded/NordicWalkingKt;->_nordicWalking:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 80
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
