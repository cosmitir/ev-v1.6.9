.class public final Landroidx/compose/material/icons/outlined/PeopleOutlineKt;
.super Ljava/lang/Object;
.source "PeopleOutline.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPeopleOutline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PeopleOutline.kt\nandroidx/compose/material/icons/outlined/PeopleOutlineKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,76:1\n122#2:77\n116#2,3:78\n119#2,3:82\n132#2,18:85\n152#2:122\n175#3:81\n622#4,2:103\n634#4,2:105\n636#4,11:111\n50#5,4:107\n*S KotlinDebug\n*F\n+ 1 PeopleOutline.kt\nandroidx/compose/material/icons/outlined/PeopleOutlineKt\n*L\n29#1:77\n29#1:78,3\n29#1:82,3\n30#1:85,18\n30#1:122\n29#1:81\n30#1:103,2\n30#1:105,2\n30#1:111,11\n30#1:107,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_peopleOutline",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "PeopleOutline",
        "Landroidx/compose/material/icons/Icons$Outlined;",
        "getPeopleOutline",
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
.field private static _peopleOutline:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getPeopleOutline(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 29

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/outlined/PeopleOutlineKt;->_peopleOutline:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "Outlined.PeopleOutline"

    .line 78
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object v12, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 81
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

    .line 78
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    .line 88
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v14

    .line 95
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

    .line 100
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v21

    .line 101
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    const-string v15, ""

    .line 107
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v0, 0x415c0000    # 13.75f

    const/high16 v8, 0x41100000    # 9.0f

    .line 31
    invoke-virtual {v7, v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x3fea3d71    # -2.34f

    const/4 v2, 0x0

    const/high16 v3, -0x3f200000    # -7.0f

    const v4, 0x3f95c28f    # 1.17f

    const/high16 v5, -0x3f200000    # -7.0f

    const/high16 v6, 0x40600000    # 3.5f

    move-object v0, v7

    .line 32
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v9, 0x41980000    # 19.0f

    .line 33
    invoke-virtual {v7, v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41600000    # 14.0f

    .line 34
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v10, -0x40200000    # -1.75f

    .line 35
    invoke-virtual {v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x3feae148    # -2.33f

    const v3, -0x3f6ae148    # -4.66f

    const/high16 v4, -0x3fa00000    # -3.5f

    const/high16 v6, -0x3fa00000    # -3.5f

    move-object v0, v7

    .line 36
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v11, 0x408ae148    # 4.34f

    const/high16 v13, 0x41880000    # 17.0f

    .line 38
    invoke-virtual {v7, v11, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f570a3d    # 0.84f

    const v2, -0x40eb851f    # -0.58f

    const v3, 0x4037ae14    # 2.87f

    const/high16 v4, -0x40600000    # -1.25f

    const v5, 0x40951eb8    # 4.66f

    const/high16 v6, -0x40600000    # -1.25f

    .line 39
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40951eb8    # 4.66f

    const/high16 v1, 0x3fa00000    # 1.25f

    const v2, 0x40747ae1    # 3.82f

    const v3, 0x3f2b851f    # 0.67f

    .line 40
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    invoke-virtual {v7, v11, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v11, 0x41400000    # 12.0f

    .line 43
    invoke-virtual {v7, v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3ff70a3d    # 1.93f

    const/4 v2, 0x0

    const/high16 v3, 0x40600000    # 3.5f

    const v4, -0x40370a3d    # -1.57f

    const/high16 v5, 0x40600000    # 3.5f

    const/high16 v6, -0x3fa00000    # -3.5f

    move-object v0, v7

    .line 44
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x412ee148    # 10.93f

    const/high16 v13, 0x40a00000    # 5.0f

    .line 45
    invoke-virtual {v7, v0, v13, v8, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40d23d71    # 6.57f

    const/high16 v1, 0x41080000    # 8.5f

    const/high16 v2, 0x40b00000    # 5.5f

    .line 46
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40e23d71    # 7.07f

    .line 47
    invoke-virtual {v7, v0, v11, v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v6, 0x40e00000    # 7.0f

    .line 49
    invoke-virtual {v7, v8, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f547ae1    # 0.83f

    const/4 v2, 0x0

    const/high16 v3, 0x3fc00000    # 1.5f

    const v4, 0x3f2b851f    # 0.67f

    const/high16 v5, 0x3fc00000    # 1.5f

    const/high16 v24, 0x3fc00000    # 1.5f

    move-object v0, v7

    move v13, v6

    move/from16 v6, v24

    .line 50
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x411d47ae    # 9.83f

    const/high16 v1, 0x41200000    # 10.0f

    .line 51
    invoke-virtual {v7, v0, v1, v8, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40d47ae1    # -0.67f

    const/high16 v1, -0x40400000    # -1.5f

    .line 52
    invoke-virtual {v7, v1, v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4102b852    # 8.17f

    .line 53
    invoke-virtual {v7, v0, v13, v8, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x418051ec    # 16.04f

    const v1, 0x415cf5c3    # 13.81f

    .line 55
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f947ae1    # 1.16f

    const v2, 0x3f570a3d    # 0.84f

    const v3, 0x3ffae148    # 1.96f

    const v4, 0x3ffae148    # 1.96f

    const v5, 0x3ffae148    # 1.96f

    const v6, 0x405c28f6    # 3.44f

    move-object v0, v7

    .line 56
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41900000    # 18.0f

    .line 57
    invoke-virtual {v7, v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40800000    # 4.0f

    .line 58
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    invoke-virtual {v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x3ffeb852    # -2.02f

    const/high16 v3, -0x3fa00000    # -3.5f

    const v4, -0x3fb51eb8    # -3.17f

    const v5, -0x3f4147ae    # -5.96f

    const v6, -0x3fa3d70a    # -3.44f

    move-object v0, v7

    .line 60
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v8, 0x41700000    # 15.0f

    .line 62
    invoke-virtual {v7, v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3ff70a3d    # 1.93f

    const/4 v2, 0x0

    const/high16 v3, 0x40600000    # 3.5f

    const v4, -0x40370a3d    # -1.57f

    const/high16 v5, 0x40600000    # 3.5f

    const/high16 v6, -0x3fa00000    # -3.5f

    .line 63
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x418770a4    # 16.93f

    const/high16 v1, 0x40a00000    # 5.0f

    .line 64
    invoke-virtual {v7, v0, v1, v8, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40f5c28f    # -0.54f

    const v3, -0x407ae148    # -1.04f

    const v4, 0x3e051eb8    # 0.13f

    const/high16 v5, -0x40400000    # -1.5f

    const v6, 0x3eb33333    # 0.35f

    move-object v0, v7

    .line 65
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f2147ae    # 0.63f

    const v2, 0x3f63d70a    # 0.89f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ffd70a4    # 1.98f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x4049999a    # 3.15f

    .line 66
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, -0x40800000    # -1.0f

    const v1, 0x4049999a    # 3.15f

    const v2, -0x41428f5c    # -0.37f

    const v3, 0x4010a3d7    # 2.26f

    .line 67
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3eeb851f    # 0.46f

    const v2, 0x3e6147ae    # 0.22f

    const v3, 0x3f75c28f    # 0.96f

    const v4, 0x3eb33333    # 0.35f

    const/high16 v5, 0x3fc00000    # 1.5f

    const v6, 0x3eb33333    # 0.35f

    move-object v0, v7

    .line 68
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 109
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v13

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3800

    const/16 v28, 0x0

    .line 105
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/outlined/PeopleOutlineKt;->_peopleOutline:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 72
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
