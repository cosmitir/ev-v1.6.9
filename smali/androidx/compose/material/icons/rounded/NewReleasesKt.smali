.class public final Landroidx/compose/material/icons/rounded/NewReleasesKt;
.super Ljava/lang/Object;
.source "NewReleases.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNewReleases.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewReleases.kt\nandroidx/compose/material/icons/rounded/NewReleasesKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,83:1\n122#2:84\n116#2,3:85\n119#2,3:89\n132#2,18:92\n152#2:129\n175#3:88\n622#4,2:110\n634#4,2:112\n636#4,11:118\n50#5,4:114\n*S KotlinDebug\n*F\n+ 1 NewReleases.kt\nandroidx/compose/material/icons/rounded/NewReleasesKt\n*L\n29#1:84\n29#1:85,3\n29#1:89,3\n30#1:92,18\n30#1:129\n29#1:88\n30#1:110,2\n30#1:112,2\n30#1:118,11\n30#1:114,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_newReleases",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "NewReleases",
        "Landroidx/compose/material/icons/Icons$Rounded;",
        "getNewReleases",
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
.field private static _newReleases:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getNewReleases(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 29

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/rounded/NewReleasesKt;->_newReleases:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "Rounded.NewReleases"

    .line 85
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object v12, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 88
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

    .line 85
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    .line 95
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v14

    .line 102
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

    .line 107
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v21

    .line 108
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    const-string v15, ""

    .line 114
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v0, 0x41b35c29    # 22.42f

    const v1, 0x413570a4    # 11.34f

    .line 31
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v8, -0x4011eb85    # -1.86f

    const v9, -0x3ff851ec    # -2.12f

    .line 32
    invoke-virtual {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v10, 0x3e851eb8    # 0.26f

    const v11, -0x3fcc28f6    # -2.81f

    .line 33
    invoke-virtual {v7, v10, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3d4ccccd    # 0.05f

    const/high16 v2, -0x41000000    # -0.5f

    const v3, -0x416b851f    # -0.29f

    const v4, -0x408a3d71    # -0.96f

    const v5, -0x40bae148    # -0.77f

    const v6, -0x40770a3d    # -1.07f

    move-object v0, v7

    .line 34
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3fcf5c29    # -2.76f

    const v13, -0x40deb852    # -0.63f

    .line 35
    invoke-virtual {v7, v0, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4047ae14    # -1.44f

    const v6, -0x3fe47ae1    # -2.43f

    .line 36
    invoke-virtual {v7, v0, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x417ae148    # -0.26f

    const v2, -0x4123d70a    # -0.43f

    const v3, -0x40b5c28f    # -0.79f

    const v4, -0x40e3d70a    # -0.61f

    const/high16 v5, -0x40600000    # -1.25f

    const v24, -0x412e147b    # -0.41f

    move-object v0, v7

    move v9, v6

    move/from16 v6, v24

    .line 37
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40400000    # 3.0f

    const/high16 v6, 0x41400000    # 12.0f

    .line 38
    invoke-virtual {v7, v6, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41168f5c    # 9.41f

    const v1, 0x3ff1eb85    # 1.89f

    .line 39
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41147ae1    # -0.46f

    const v2, -0x41b33333    # -0.2f

    const/high16 v3, -0x40800000    # -1.0f

    const v4, -0x435c28f6    # -0.02f

    const v24, 0x3ed1eb85    # 0.41f

    move-object v0, v7

    move v11, v6

    move/from16 v6, v24

    .line 40
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40d6b852    # 6.71f

    const v1, 0x40970a3d    # 4.72f

    .line 41
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, -0x3fd00000    # -2.75f

    const v1, 0x3f1eb852    # 0.62f

    .line 42
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41051eb8    # -0.49f

    const v2, 0x3de147ae    # 0.11f

    const v3, -0x40ab851f    # -0.83f

    const v4, 0x3f0f5c29    # 0.56f

    const v5, -0x40b851ec    # -0.78f

    const v6, 0x3f88f5c3    # 1.07f

    move-object v0, v7

    .line 43
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40333333    # 2.8f

    .line 44
    invoke-virtual {v7, v10, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x400851ec    # 2.13f

    .line 45
    invoke-virtual {v7, v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41570a3d    # -0.33f

    const v2, 0x3ec28f5c    # 0.38f

    const v3, -0x41570a3d    # -0.33f

    const v4, 0x3f70a3d7    # 0.94f

    const/4 v5, 0x0

    const v6, 0x3fa8f5c3    # 1.32f

    move-object v0, v7

    .line 46
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4007ae14    # 2.12f

    const v8, 0x3fee147b    # 1.86f

    .line 47
    invoke-virtual {v7, v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40347ae1    # 2.82f

    const v10, -0x417ae148    # -0.26f

    .line 48
    invoke-virtual {v7, v10, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x42b33333    # -0.05f

    const/high16 v2, 0x3f000000    # 0.5f

    const v3, 0x3e947ae1    # 0.29f

    const v4, 0x3f75c28f    # 0.96f

    const v5, 0x3f451eb8    # 0.77f

    const v6, 0x3f88f5c3    # 1.07f

    move-object v0, v7

    .line 49
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f2147ae    # 0.63f

    const v6, 0x4030a3d7    # 2.76f

    .line 50
    invoke-virtual {v7, v6, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x401ae148    # 2.42f

    const v5, 0x3fb851ec    # 1.44f

    .line 51
    invoke-virtual {v7, v5, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e851eb8    # 0.26f

    const v2, 0x3edc28f6    # 0.43f

    const v3, 0x3f4a3d71    # 0.79f

    const v4, 0x3f1c28f6    # 0.61f

    const v24, 0x3fa147ae    # 1.26f

    const v26, 0x3ed1eb85    # 0.41f

    move-object v0, v7

    move v8, v5

    move/from16 v5, v24

    move v10, v6

    move/from16 v6, v26

    .line 52
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41a80000    # 21.0f

    .line 53
    invoke-virtual {v7, v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4025c28f    # 2.59f

    const v1, 0x3f8e147b    # 1.11f

    .line 54
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3eeb851f    # 0.46f

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ca3d70a    # 0.02f

    const/high16 v5, 0x3fa00000    # 1.25f

    const v6, -0x412e147b    # -0.41f

    move-object v0, v7

    .line 55
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    invoke-virtual {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    invoke-virtual {v7, v10, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3efae148    # 0.49f

    const v2, -0x421eb852    # -0.11f

    const v3, 0x3f51eb85    # 0.82f

    const v4, -0x40ee147b    # -0.57f

    const v5, 0x3f451eb8    # 0.77f

    const v6, -0x40770a3d    # -1.07f

    .line 58
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x417ae148    # -0.26f

    const v1, -0x3fcc28f6    # -2.81f

    .line 59
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3fee147b    # 1.86f

    const v1, -0x3ff851ec    # -2.12f

    .line 60
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3eae147b    # 0.34f

    const v2, -0x4147ae14    # -0.36f

    const v3, 0x3eae147b    # 0.34f

    const v4, -0x40947ae1    # -0.92f

    const v5, 0x3c23d70a    # 0.01f

    const v6, -0x4059999a    # -1.3f

    move-object v0, v7

    .line 61
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41880000    # 17.0f

    const/high16 v1, 0x41500000    # 13.0f

    .line 63
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, -0x40000000    # -2.0f

    .line 64
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40000000    # 2.0f

    .line 66
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    invoke-virtual {v7, v11, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40f33333    # -0.55f

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const v4, -0x4119999a    # -0.45f

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, -0x40800000    # -1.0f

    move-object v0, v7

    .line 70
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41300000    # 11.0f

    const/high16 v1, 0x41000000    # 8.0f

    .line 71
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x40f33333    # -0.55f

    const v3, 0x3ee66666    # 0.45f

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, v7

    .line 72
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ee66666    # 0.45f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 73
    invoke-virtual {v7, v1, v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40800000    # 4.0f

    .line 74
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3f0ccccd    # 0.55f

    const v3, -0x4119999a    # -0.45f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, v7

    .line 75
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 116
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v13

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3800

    const/16 v28, 0x0

    .line 112
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/rounded/NewReleasesKt;->_newReleases:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 79
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
