.class public final Landroidx/compose/material/icons/twotone/SportsMotorsportsKt;
.super Ljava/lang/Object;
.source "SportsMotorsports.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSportsMotorsports.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SportsMotorsports.kt\nandroidx/compose/material/icons/twotone/SportsMotorsportsKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,84:1\n122#2:85\n116#2,3:86\n119#2,3:90\n132#2,18:93\n152#2:130\n132#2,18:131\n152#2:168\n175#3:89\n622#4,2:111\n634#4,2:113\n636#4,11:119\n622#4,2:149\n634#4,2:151\n636#4,11:157\n50#5,4:115\n50#5,4:153\n*S KotlinDebug\n*F\n+ 1 SportsMotorsports.kt\nandroidx/compose/material/icons/twotone/SportsMotorsportsKt\n*L\n29#1:85\n29#1:86,3\n29#1:90,3\n30#1:93,18\n30#1:130\n46#1:131,18\n46#1:168\n29#1:89\n30#1:111,2\n30#1:113,2\n30#1:119,11\n46#1:149,2\n46#1:151,2\n46#1:157,11\n30#1:115,4\n46#1:153,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_sportsMotorsports",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "SportsMotorsports",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getSportsMotorsports",
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
.field private static _sportsMotorsports:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getSportsMotorsports(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 46

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/twotone/SportsMotorsportsKt;->_sportsMotorsports:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "TwoTone.SportsMotorsports"

    .line 86
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object/from16 v29, v1

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

    const v17, 0x3e99999a    # 0.3f

    const v19, 0x3e99999a    # 0.3f

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
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v1, 0x4158f5c3    # 13.56f

    const/high16 v2, 0x40c00000    # 6.0f

    .line 31
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41e66666    # -0.15f

    const/4 v6, 0x0

    const v7, -0x416b851f    # -0.29f

    const/4 v8, 0x0

    const v9, -0x411eb852    # -0.44f

    const v10, 0x3c23d70a    # 0.01f

    move-object v4, v0

    .line 32
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40466666    # -1.45f

    const v6, 0x3dcccccd    # 0.1f

    const v7, -0x3fd1eb85    # -2.72f

    const v8, 0x3edc28f6    # 0.43f

    const v9, -0x3f8b851f    # -3.82f

    const v10, 0x3f7d70a4    # 0.99f

    .line 33
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x40200000    # 2.5f

    const v2, 0x3f87ae14    # 1.06f

    .line 34
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3faa3d71    # 1.33f

    const v6, 0x3f11eb85    # 0.57f

    const v7, 0x400ccccd    # 2.2f

    const v8, 0x3fef5c29    # 1.87f

    const v9, 0x400ccccd    # 2.2f

    const v10, 0x40547ae1    # 3.32f

    .line 35
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, 0x3ffeb852    # 1.99f

    const v7, -0x4030a3d7    # -1.62f

    const v8, 0x40670a3d    # 3.61f

    const v9, -0x3f98f5c3    # -3.61f

    const v10, 0x40670a3d    # 3.61f

    .line 36
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x4087ae14    # 4.24f

    .line 37
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x408051ec    # 4.01f

    const v6, 0x41823d71    # 16.28f

    const/high16 v7, 0x40800000    # 4.0f

    const v8, 0x4189851f    # 17.19f

    const/high16 v9, 0x40800000    # 4.0f

    const v10, 0x4189999a    # 17.2f

    .line 38
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x41900000    # 18.0f

    .line 39
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v2, 0x41200000    # 10.0f

    .line 40
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3fd70a3d    # 1.68f

    const/4 v6, 0x0

    const v7, 0x40533333    # 3.3f

    const v8, -0x40ca3d71    # -0.71f

    const v9, 0x408e147b    # 4.44f

    const v10, -0x40051eb8    # -1.96f

    .line 41
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f933333    # 1.15f

    const v6, -0x405d70a4    # -1.27f

    const v7, 0x3fd9999a    # 1.7f

    const v8, -0x3fc5c28f    # -2.91f

    const v9, 0x3fc51eb8    # 1.54f

    const v10, -0x3f6bd70a    # -4.63f

    .line 42
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x419d851f    # 19.69f

    const v6, 0x4105eb85    # 8.37f

    const v7, 0x4186f5c3    # 16.87f

    const/high16 v8, 0x40c00000    # 6.0f

    const v9, 0x4158f5c3    # 13.56f

    const/high16 v10, 0x40c00000    # 6.0f

    .line 43
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 117
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v13

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3800

    const/16 v28, 0x0

    .line 113
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/high16 v34, 0x3f800000    # 1.0f

    const/high16 v36, 0x3f800000    # 1.0f

    .line 134
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v31

    .line 141
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v4

    invoke-direct {v0, v4, v5, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v33, v0

    check-cast v33, Landroidx/compose/ui/graphics/Brush;

    const/16 v35, 0x0

    const/high16 v37, 0x3f800000    # 1.0f

    .line 146
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v38

    .line 147
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v39

    const/high16 v40, 0x3f800000    # 1.0f

    const-string v32, ""

    .line 153
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v3, 0x41afae14    # 21.96f

    const v4, 0x4133851f    # 11.22f

    .line 47
    invoke-virtual {v0, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x41ac8f5c    # 21.57f

    const v5, 0x40e051ec    # 7.01f

    const v6, 0x418e147b    # 17.76f

    const/high16 v7, 0x40800000    # 4.0f

    const v8, 0x4158f5c3    # 13.56f

    const/high16 v9, 0x40800000    # 4.0f

    move-object v3, v0

    .line 48
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x41bd70a4    # -0.19f

    const/4 v5, 0x0

    const v6, -0x413d70a4    # -0.38f

    const v7, 0x3c23d70a    # 0.01f

    const v8, -0x40ee147b    # -0.57f

    const v9, 0x3ca3d70a    # 0.02f

    .line 49
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v4, 0x40000000    # 2.0f

    const v5, 0x4097ae14    # 4.74f

    const/high16 v6, 0x40000000    # 2.0f

    const v7, 0x4189999a    # 17.2f

    const/high16 v8, 0x40000000    # 2.0f

    const v9, 0x4189999a    # 17.2f

    .line 50
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, 0x3f8ccccd    # 1.1f

    const v6, 0x3f666666    # 0.9f

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v9, 0x40000000    # 2.0f

    .line 52
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x41955c29    # 18.67f

    const/high16 v5, 0x41a00000    # 20.0f

    const v6, 0x41b347ae    # 22.41f

    const v7, 0x417fd70a    # 15.99f

    const v8, 0x41afae14    # 21.96f

    const v9, 0x4133851f    # 11.22f

    .line 54
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x40a851ec    # 5.26f

    const v2, 0x4138f5c3    # 11.56f

    .line 56
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3f11eb85    # 0.57f

    const v5, -0x405ae148    # -1.29f

    const v6, 0x3fa3d70a    # 1.28f

    const v7, -0x3fe9999a    # -2.35f

    const v8, 0x4008f5c3    # 2.14f

    const v9, -0x3fb3d70a    # -3.19f

    .line 57
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x4067ae14    # 3.62f

    const v2, 0x3fc3d70a    # 1.53f

    .line 58
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3f19999a    # 0.6f

    const/high16 v5, 0x3e800000    # 0.25f

    const v6, 0x3f7ae148    # 0.98f

    const v7, 0x3f547ae1    # 0.83f

    const v8, 0x3f7ae148    # 0.98f

    const v9, 0x3fbd70a4    # 1.48f

    .line 59
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, 0x3f63d70a    # 0.89f

    const v6, -0x40c7ae14    # -0.72f

    const v7, 0x3fce147b    # 1.61f

    const v8, -0x4031eb85    # -1.61f

    const v9, 0x3fce147b    # 1.61f

    .line 60
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x40970a3d    # 4.72f

    .line 61
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x409bd70a    # 4.87f

    const v5, 0x41487ae1    # 12.53f

    const v6, 0x40a147ae    # 5.04f

    const v7, 0x4140cccd    # 12.05f

    const v8, 0x40a851ec    # 5.26f

    const v9, 0x4138f5c3    # 11.56f

    .line 62
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x4193851f    # 18.44f

    const v2, 0x418051ec    # 16.04f

    .line 64
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x418a6666    # 17.3f

    const v5, 0x418a51ec    # 17.29f

    const v6, 0x417ae148    # 15.68f

    const/high16 v7, 0x41900000    # 18.0f

    const/high16 v8, 0x41600000    # 14.0f

    const/high16 v9, 0x41900000    # 18.0f

    .line 65
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x40800000    # 4.0f

    .line 66
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40b33333    # -0.8f

    .line 67
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, -0x435c28f6    # -0.02f

    const v6, 0x3c23d70a    # 0.01f

    const v7, -0x40947ae1    # -0.92f

    const v8, 0x3e75c28f    # 0.24f

    const v9, -0x3ff33333    # -2.2f

    .line 68
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x40c4cccd    # 6.15f

    .line 69
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3ffeb852    # 1.99f

    const/4 v5, 0x0

    const v6, 0x40670a3d    # 3.61f

    const v7, -0x4030a3d7    # -1.62f

    const v8, 0x40670a3d    # 3.61f

    const v9, -0x3f98f5c3    # -3.61f

    .line 70
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, -0x40466666    # -1.45f

    const v6, -0x40a147ae    # -0.87f

    const v7, -0x3fcf5c29    # -2.76f

    const v8, -0x3ff33333    # -2.2f

    const v9, -0x3fab851f    # -3.32f

    .line 71
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x4114cccd    # 9.3f

    const v2, 0x40e051ec    # 7.01f

    .line 72
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3f8ccccd    # 1.1f

    const v5, -0x40ee147b    # -0.57f

    const v6, 0x4017ae14    # 2.37f

    const v7, -0x4099999a    # -0.9f

    const v8, 0x40747ae1    # 3.82f

    const v9, -0x40828f5c    # -0.99f

    .line 73
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x415451ec    # 13.27f

    const/high16 v5, 0x40c00000    # 6.0f

    const v6, 0x4156b852    # 13.42f

    const/high16 v7, 0x40c00000    # 6.0f

    const v8, 0x4158f5c3    # 13.56f

    const/high16 v9, 0x40c00000    # 6.0f

    .line 74
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x4053d70a    # 3.31f

    const/4 v5, 0x0

    const v6, 0x40c428f6    # 6.13f

    const v7, 0x4017ae14    # 2.37f

    const v8, 0x40cd1eb8    # 6.41f

    const v9, 0x40ad1eb8    # 5.41f

    .line 75
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x41a10a3d    # 20.13f

    const v5, 0x4152147b    # 13.13f

    const v6, 0x419cb852    # 19.59f

    const v7, 0x416c51ec    # 14.77f

    const v8, 0x4193851f    # 18.44f

    const v9, 0x418051ec    # 16.04f

    .line 76
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 155
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v30

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x3800

    const/16 v45, 0x0

    .line 151
    invoke-static/range {v29 .. v45}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/twotone/SportsMotorsportsKt;->_sportsMotorsports:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 80
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
