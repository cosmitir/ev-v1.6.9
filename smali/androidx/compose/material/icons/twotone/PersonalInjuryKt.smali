.class public final Landroidx/compose/material/icons/twotone/PersonalInjuryKt;
.super Ljava/lang/Object;
.source "PersonalInjury.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPersonalInjury.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PersonalInjury.kt\nandroidx/compose/material/icons/twotone/PersonalInjuryKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,116:1\n122#2:117\n116#2,3:118\n119#2,3:122\n132#2,18:125\n152#2:162\n132#2,18:163\n152#2:200\n175#3:121\n622#4,2:143\n634#4,2:145\n636#4,11:151\n622#4,2:181\n634#4,2:183\n636#4,11:189\n50#5,4:147\n50#5,4:185\n*S KotlinDebug\n*F\n+ 1 PersonalInjury.kt\nandroidx/compose/material/icons/twotone/PersonalInjuryKt\n*L\n29#1:117\n29#1:118,3\n29#1:122,3\n30#1:125,18\n30#1:162\n63#1:163,18\n63#1:200\n29#1:121\n30#1:143,2\n30#1:145,2\n30#1:151,11\n63#1:181,2\n63#1:183,2\n63#1:189,11\n30#1:147,4\n63#1:185,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_personalInjury",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "PersonalInjury",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getPersonalInjury",
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
.field private static _personalInjury:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getPersonalInjury(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 46

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/twotone/PersonalInjuryKt;->_personalInjury:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "TwoTone.PersonalInjury"

    .line 118
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object/from16 v29, v1

    move-object v12, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 121
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

    .line 118
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v17, 0x3e99999a    # 0.3f

    const v19, 0x3e99999a    # 0.3f

    .line 128
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v14

    .line 135
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

    .line 140
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v21

    .line 141
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    const-string v15, ""

    .line 147
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v1, 0x41400000    # 12.0f

    const/high16 v2, 0x40800000    # 4.0f

    .line 31
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f8ccccd    # 1.1f

    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const v8, 0x3f666666    # 0.9f

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v10, 0x40000000    # 2.0f

    move-object v4, v0

    .line 32
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, 0x3f8ccccd    # 1.1f

    const v7, -0x4099999a    # -0.9f

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v9, -0x40000000    # -2.0f

    .line 33
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v11, -0x40000000    # -2.0f

    const v13, -0x4099999a    # -0.9f

    .line 34
    invoke-virtual {v0, v11, v13, v11, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41200000    # 10.0f

    const v6, 0x409ccccd    # 4.9f

    const v7, 0x412e6666    # 10.9f

    const/high16 v8, 0x40800000    # 4.0f

    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v10, 0x40800000    # 4.0f

    .line 35
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v10, 0x412f0a3d    # 10.94f

    const/high16 v9, 0x41a00000    # 20.0f

    .line 37
    invoke-virtual {v0, v10, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v8, 0x411c0000    # 9.75f

    .line 38
    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x411570a4    # 9.34f

    const/high16 v6, 0x41a00000    # 20.0f

    const/high16 v7, 0x41100000    # 9.0f

    const v24, 0x419d47ae    # 19.66f

    const/high16 v25, 0x41100000    # 9.0f

    const/high16 v26, 0x419a0000    # 19.25f

    move v11, v8

    move/from16 v8, v24

    move v2, v9

    move/from16 v9, v25

    move v1, v10

    move/from16 v10, v26

    .line 39
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, -0x412e147b    # -0.41f

    const v7, 0x3eae147b    # 0.34f

    const/high16 v8, -0x40c00000    # -0.75f

    const/high16 v9, 0x3f400000    # 0.75f

    const/high16 v10, -0x40c00000    # -0.75f

    .line 40
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v10, 0x3ff1eb85    # 1.89f

    .line 41
    invoke-virtual {v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v9, 0x41900000    # 18.0f

    .line 44
    invoke-virtual {v0, v9, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v8, -0x3f64cccd    # -4.85f

    .line 45
    invoke-virtual {v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v7, 0x403c28f6    # 2.94f

    const v6, -0x3f375c29    # -6.27f

    .line 46
    invoke-virtual {v0, v7, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f0a3d71    # 0.54f

    const v24, 0x3e4ccccd    # 0.2f

    const v25, 0x3f8147ae    # 1.01f

    const v26, 0x3ed1eb85    # 0.41f

    const v27, 0x3fb33333    # 1.4f

    const v28, 0x3f1c28f6    # 0.61f

    move/from16 v6, v24

    move/from16 v7, v25

    move/from16 v8, v26

    move v1, v9

    move/from16 v9, v27

    move/from16 v10, v28

    .line 47
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x418e6666    # 17.8f

    const/high16 v6, 0x41680000    # 14.5f

    const/high16 v7, 0x41900000    # 18.0f

    const v8, 0x416d70a4    # 14.84f

    const/high16 v9, 0x41900000    # 18.0f

    const v10, 0x4173851f    # 15.22f

    .line 48
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v10, 0x41b00000    # 22.0f

    .line 51
    invoke-virtual {v0, v11, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4103ae14    # 8.23f

    const/high16 v6, 0x41b00000    # 22.0f

    const/high16 v7, 0x40e00000    # 7.0f

    const v8, 0x41a628f6    # 20.77f

    const/high16 v9, 0x40e00000    # 7.0f

    const/high16 v24, 0x419a0000    # 19.25f

    move v2, v10

    move/from16 v10, v24

    .line 52
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, -0x403d70a4    # -1.52f

    const v7, 0x3f9d70a4    # 1.23f

    const/high16 v8, -0x3fd00000    # -2.75f

    const/high16 v9, 0x40300000    # 2.75f

    const/high16 v10, -0x3fd00000    # -2.75f

    .line 53
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x40351eb8    # 2.83f

    .line 54
    invoke-virtual {v0, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3fc66666    # 1.55f

    const v5, -0x3faccccd    # -3.3f

    .line 55
    invoke-virtual {v0, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4157851f    # 13.47f

    const v6, 0x41511eb8    # 13.07f

    const v7, 0x414c28f6    # 12.76f

    const/high16 v8, 0x41500000    # 13.0f

    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v10, 0x41500000    # 13.0f

    move-object v4, v0

    .line 56
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3fe851ec    # -2.37f

    const/4 v6, 0x0

    const v7, -0x3f76b852    # -4.29f

    const v8, 0x3f3ae148    # 0.73f

    const v9, -0x3f50a3d7    # -5.48f

    const v10, 0x3fab851f    # 1.34f

    .line 57
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40c66666    # 6.2f

    const/high16 v6, 0x41680000    # 14.5f

    const/high16 v7, 0x40c00000    # 6.0f

    const v8, 0x416d70a4    # 14.84f

    const/high16 v9, 0x40c00000    # 6.0f

    const v10, 0x4173851f    # 15.22f

    .line 58
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    invoke-virtual {v0, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 149
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v0

    move v4, v13

    move-object v13, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3800

    const/16 v28, 0x0

    .line 145
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/high16 v34, 0x3f800000    # 1.0f

    const/high16 v36, 0x3f800000    # 1.0f

    .line 166
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v31

    .line 173
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v5

    invoke-direct {v0, v5, v6, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v33, v0

    check-cast v33, Landroidx/compose/ui/graphics/Brush;

    const/16 v35, 0x0

    const/high16 v37, 0x3f800000    # 1.0f

    .line 178
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v38

    .line 179
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v39

    const/high16 v40, 0x3f800000    # 1.0f

    const-string v32, ""

    .line 185
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v5, 0x41400000    # 12.0f

    .line 64
    invoke-virtual {v0, v5, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, 0x400d70a4    # 2.21f

    const/4 v14, 0x0

    const/high16 v15, 0x40800000    # 4.0f

    const v16, -0x401ae148    # -1.79f

    const/high16 v17, 0x40800000    # 4.0f

    const/high16 v18, -0x3f800000    # -4.0f

    move-object v12, v0

    .line 65
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v13, 0x0

    const v14, -0x3ff28f5c    # -2.21f

    const v15, -0x401ae148    # -1.79f

    const/high16 v16, -0x3f800000    # -4.0f

    const/high16 v17, -0x3f800000    # -4.0f

    .line 66
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x40728f5c    # 3.79f

    const/high16 v5, 0x40c00000    # 6.0f

    const/high16 v6, 0x41000000    # 8.0f

    .line 67
    invoke-virtual {v0, v6, v3, v6, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v13, 0x41000000    # 8.0f

    const v14, 0x41035c29    # 8.21f

    const v15, 0x411ca3d7    # 9.79f

    const/high16 v16, 0x41200000    # 10.0f

    const/high16 v17, 0x41400000    # 12.0f

    const/high16 v18, 0x41200000    # 10.0f

    .line 68
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v5, 0x41400000    # 12.0f

    .line 70
    invoke-virtual {v0, v5, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, 0x3f8ccccd    # 1.1f

    const/4 v14, 0x0

    const/high16 v15, 0x40000000    # 2.0f

    const v16, 0x3f666666    # 0.9f

    const/high16 v17, 0x40000000    # 2.0f

    const/high16 v18, 0x40000000    # 2.0f

    .line 71
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v13, 0x0

    const v14, 0x3f8ccccd    # 1.1f

    const v15, -0x4099999a    # -0.9f

    const/high16 v16, 0x40000000    # 2.0f

    const/high16 v17, -0x40000000    # -2.0f

    .line 72
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v3, -0x40000000    # -2.0f

    .line 73
    invoke-virtual {v0, v3, v4, v3, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v13, 0x41200000    # 10.0f

    const v14, 0x409ccccd    # 4.9f

    const v15, 0x412e6666    # 10.9f

    const/high16 v16, 0x40800000    # 4.0f

    const/high16 v17, 0x41400000    # 12.0f

    const/high16 v18, 0x40800000    # 4.0f

    .line 74
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x41931eb8    # 18.39f

    const v4, 0x4148f5c3    # 12.56f

    .line 76
    invoke-virtual {v0, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, 0x4185ae14    # 16.71f

    const v14, 0x413b3333    # 11.7f

    const v15, 0x41687ae1    # 14.53f

    const/high16 v16, 0x41300000    # 11.0f

    const/high16 v18, 0x41300000    # 11.0f

    .line 77
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, -0x3fde147b    # -2.53f

    const/4 v14, 0x0

    const v15, -0x3f6947ae    # -4.71f

    const v16, 0x3f333333    # 0.7f

    const v17, -0x3f33851f    # -6.39f

    const v18, 0x3fc7ae14    # 1.56f

    .line 78
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, 0x4093851f    # 4.61f

    const v14, 0x41511eb8    # 13.07f

    const/high16 v15, 0x40800000    # 4.0f

    const v16, 0x4161999a    # 14.1f

    const/high16 v17, 0x40800000    # 4.0f

    const v18, 0x4173851f    # 15.22f

    .line 79
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v2, 0x40000000    # 2.0f

    .line 81
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, -0x3f270a3d    # -6.78f

    .line 82
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v13, 0x0

    const v14, -0x413d70a4    # -0.38f

    const v15, 0x3e4ccccd    # 0.2f

    const v16, -0x40c7ae14    # -0.72f

    const v17, 0x3f051eb8    # 0.52f

    const v18, -0x409eb852    # -0.88f

    .line 83
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, 0x40f6b852    # 7.71f

    const v14, 0x415bae14    # 13.73f

    const v15, 0x411a147b    # 9.63f

    const/high16 v16, 0x41500000    # 13.0f

    const/high16 v17, 0x41400000    # 12.0f

    const/high16 v18, 0x41500000    # 13.0f

    .line 84
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, 0x3f428f5c    # 0.76f

    const/4 v14, 0x0

    const v15, 0x3fbc28f6    # 1.47f

    const v16, 0x3d8f5c29    # 0.07f

    const v17, 0x400851ec    # 2.13f

    const v18, 0x3e4ccccd    # 0.2f

    .line 85
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, -0x4039999a    # -1.55f

    const v3, 0x40533333    # 3.3f

    .line 86
    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    invoke-virtual {v0, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, 0x4103ae14    # 8.23f

    const/high16 v14, 0x41840000    # 16.5f

    const/high16 v15, 0x40e00000    # 7.0f

    const v16, 0x418dd70a    # 17.73f

    const/high16 v17, 0x40e00000    # 7.0f

    const/high16 v18, 0x419a0000    # 19.25f

    .line 88
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v13, 0x40e00000    # 7.0f

    const v14, 0x41a628f6    # 20.77f

    const v15, 0x4103ae14    # 8.23f

    const/high16 v16, 0x41b00000    # 22.0f

    const/high16 v17, 0x411c0000    # 9.75f

    const/high16 v18, 0x41b00000    # 22.0f

    .line 89
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x400b851f    # 2.18f

    .line 90
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, 0x3f8ccccd    # 1.1f

    const/4 v14, 0x0

    const/high16 v15, 0x40000000    # 2.0f

    const v16, -0x4099999a    # -0.9f

    const/high16 v17, 0x40000000    # 2.0f

    const/high16 v18, -0x40000000    # -2.0f

    .line 92
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, -0x3f670a3d    # -4.78f

    .line 93
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v13, 0x41a00000    # 20.0f

    const v14, 0x4161999a    # 14.1f

    const v15, 0x419b1eb8    # 19.39f

    const v16, 0x41511eb8    # 13.07f

    const v17, 0x41931eb8    # 18.39f

    const v18, 0x4148f5c3    # 12.56f

    .line 94
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x412f0a3d    # 10.94f

    const/high16 v3, 0x41a00000    # 20.0f

    .line 96
    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    invoke-virtual {v0, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, 0x411570a4    # 9.34f

    const/high16 v14, 0x41a00000    # 20.0f

    const/high16 v15, 0x41100000    # 9.0f

    const v16, 0x419d47ae    # 19.66f

    const/high16 v17, 0x41100000    # 9.0f

    const/high16 v18, 0x419a0000    # 19.25f

    .line 98
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v13, 0x0

    const v14, -0x412e147b    # -0.41f

    const v15, 0x3eae147b    # 0.34f

    const/high16 v16, -0x40c00000    # -0.75f

    const/high16 v17, 0x3f400000    # 0.75f

    const/high16 v18, -0x40c00000    # -0.75f

    .line 99
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x3ff1eb85    # 1.89f

    .line 100
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x412f0a3d    # 10.94f

    const/high16 v3, 0x41a00000    # 20.0f

    .line 101
    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 102
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x3f64cccd    # -4.85f

    .line 104
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x3f375c29    # -6.27f

    const v2, 0x403c28f6    # 2.94f

    .line 105
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, 0x3f0a3d71    # 0.54f

    const v14, 0x3e4ccccd    # 0.2f

    const v15, 0x3f8147ae    # 1.01f

    const v16, 0x3ed1eb85    # 0.41f

    const v17, 0x3fb33333    # 1.4f

    const v18, 0x3f1c28f6    # 0.61f

    .line 106
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, 0x418e6666    # 17.8f

    const/high16 v14, 0x41680000    # 14.5f

    const/high16 v15, 0x41900000    # 18.0f

    const v16, 0x416d70a4    # 14.84f

    const/high16 v17, 0x41900000    # 18.0f

    const v18, 0x4173851f    # 15.22f

    .line 107
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x41a00000    # 20.0f

    .line 108
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 109
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 187
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v30

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x3800

    const/16 v45, 0x0

    .line 183
    invoke-static/range {v29 .. v45}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/twotone/PersonalInjuryKt;->_personalInjury:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 112
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
