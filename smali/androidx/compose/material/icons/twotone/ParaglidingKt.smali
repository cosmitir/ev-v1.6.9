.class public final Landroidx/compose/material/icons/twotone/ParaglidingKt;
.super Ljava/lang/Object;
.source "Paragliding.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nParagliding.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Paragliding.kt\nandroidx/compose/material/icons/twotone/ParaglidingKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,104:1\n122#2:105\n116#2,3:106\n119#2,3:110\n132#2,18:113\n152#2:150\n132#2,18:151\n152#2:188\n175#3:109\n622#4,2:131\n634#4,2:133\n636#4,11:139\n622#4,2:169\n634#4,2:171\n636#4,11:177\n50#5,4:135\n50#5,4:173\n*S KotlinDebug\n*F\n+ 1 Paragliding.kt\nandroidx/compose/material/icons/twotone/ParaglidingKt\n*L\n29#1:105\n29#1:106,3\n29#1:110,3\n30#1:113,18\n30#1:150\n40#1:151,18\n40#1:188\n29#1:109\n30#1:131,2\n30#1:133,2\n30#1:139,11\n40#1:169,2\n40#1:171,2\n40#1:177,11\n30#1:135,4\n40#1:173,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_paragliding",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Paragliding",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getParagliding",
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
.field private static _paragliding:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getParagliding(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 46

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/twotone/ParaglidingKt;->_paragliding:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "TwoTone.Paragliding"

    .line 106
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object/from16 v29, v1

    move-object v12, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 109
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

    .line 106
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v17, 0x3e99999a    # 0.3f

    const v19, 0x3e99999a    # 0.3f

    .line 116
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v14

    .line 123
    new-instance v1, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v16, v1

    check-cast v16, Landroidx/compose/ui/graphics/Brush;

    const/16 v18, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    .line 128
    sget-object v1, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v21

    .line 129
    sget-object v1, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    const-string v15, ""

    .line 135
    new-instance v1, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v2, 0x41a80000    # 21.0f

    const v3, 0x4089eb85    # 4.31f

    .line 31
    invoke-virtual {v1, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x41a53333    # 20.65f

    const v7, 0x406851ec    # 3.63f

    const v8, 0x418c8f5c    # 17.57f

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v10, 0x41400000    # 12.0f

    const/high16 v11, 0x40000000    # 2.0f

    move-object v5, v1

    .line 32
    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, 0x40566666    # 3.35f

    const v11, 0x406851ec    # 3.63f

    const/high16 v10, 0x40400000    # 3.0f

    .line 33
    invoke-virtual {v1, v13, v11, v10, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v9, 0x3fe28f5c    # 1.77f

    .line 34
    invoke-virtual {v1, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x40aae148    # 5.34f

    const v7, 0x40a23d71    # 5.07f

    const v8, 0x4108f5c3    # 8.56f

    const/high16 v24, 0x40900000    # 4.5f

    const/high16 v25, 0x41400000    # 12.0f

    const/high16 v26, 0x40900000    # 4.5f

    move/from16 v9, v24

    move v2, v10

    move/from16 v10, v25

    move/from16 v11, v26

    .line 35
    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40d51eb8    # 6.66f

    const v6, 0x3f11eb85    # 0.57f

    const/high16 v7, 0x41100000    # 9.0f

    const v8, 0x3fca3d71    # 1.58f

    .line 36
    invoke-virtual {v1, v5, v6, v7, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    invoke-virtual {v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 137
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v1

    move v9, v13

    move-object v13, v1

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3800

    const/16 v28, 0x0

    .line 133
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/high16 v34, 0x3f800000    # 1.0f

    const/high16 v36, 0x3f800000    # 1.0f

    .line 154
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v31

    .line 161
    new-instance v1, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v10, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v10}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v10

    invoke-direct {v1, v10, v11, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v33, v1

    check-cast v33, Landroidx/compose/ui/graphics/Brush;

    const/16 v35, 0x0

    const/high16 v37, 0x3f800000    # 1.0f

    .line 166
    sget-object v1, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v38

    .line 167
    sget-object v1, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v39

    const/high16 v40, 0x3f800000    # 1.0f

    const-string v32, ""

    .line 173
    new-instance v1, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v4, 0x41400000    # 12.0f

    const/high16 v10, 0x41880000    # 17.0f

    .line 41
    invoke-virtual {v1, v4, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v11, -0x40733333    # -1.1f

    const/4 v12, 0x0

    const/high16 v13, -0x40000000    # -2.0f

    const v14, -0x4099999a    # -0.9f

    const/high16 v15, -0x40000000    # -2.0f

    const/high16 v16, -0x40000000    # -2.0f

    move-object v10, v1

    .line 42
    invoke-virtual/range {v10 .. v16}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v11, 0x0

    const v12, -0x40733333    # -1.1f

    const v13, 0x3f666666    # 0.9f

    const/high16 v14, -0x40000000    # -2.0f

    const/high16 v15, 0x40000000    # 2.0f

    .line 43
    invoke-virtual/range {v10 .. v16}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3f666666    # 0.9f

    const/high16 v10, 0x40000000    # 2.0f

    .line 44
    invoke-virtual {v1, v10, v4, v10, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v11, 0x41600000    # 14.0f

    const v12, 0x4180cccd    # 16.1f

    const v13, 0x4151999a    # 13.1f

    const/high16 v14, 0x41880000    # 17.0f

    const/high16 v15, 0x41400000    # 12.0f

    const/high16 v16, 0x41880000    # 17.0f

    move-object v10, v1

    .line 45
    invoke-virtual/range {v10 .. v16}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x4177ae14    # 15.48f

    const v10, 0x418f851f    # 17.94f

    .line 47
    invoke-virtual {v1, v4, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v11, 0x416ae148    # 14.68f

    const v12, 0x419451ec    # 18.54f

    const/high16 v13, 0x41600000    # 14.0f

    const/high16 v14, 0x41980000    # 19.0f

    const/high16 v16, 0x41980000    # 19.0f

    move-object v10, v1

    .line 48
    invoke-virtual/range {v10 .. v16}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x3fa147ae    # -3.48f

    const v10, -0x407851ec    # -1.06f

    const v11, -0x3fd47ae1    # -2.68f

    const v12, -0x41147ae1    # -0.46f

    .line 49
    invoke-virtual {v1, v11, v12, v4, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v11, 0x4100a3d7    # 8.04f

    const v12, 0x418c6666    # 17.55f

    const/high16 v13, 0x40e00000    # 7.0f

    const v14, 0x4186147b    # 16.76f

    const/high16 v15, 0x40e00000    # 7.0f

    const/high16 v16, 0x41600000    # 14.0f

    move-object v10, v1

    .line 50
    invoke-virtual/range {v10 .. v16}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v4, 0x40a00000    # 5.0f

    .line 51
    invoke-virtual {v1, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v11, 0x0

    const v12, 0x402ccccd    # 2.7f

    const v13, 0x3f6e147b    # 0.93f

    const v14, 0x408d1eb8    # 4.41f

    const v15, 0x40133333    # 2.3f

    const/high16 v16, 0x40b00000    # 5.5f

    .line 52
    invoke-virtual/range {v10 .. v16}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v11, 0x3f000000    # 0.5f

    const v12, 0x3ecccccd    # 0.4f

    const v13, 0x3f8ccccd    # 1.1f

    const v14, 0x3f333333    # 0.7f

    const v15, 0x3fd9999a    # 1.7f

    const v16, 0x3f666666    # 0.9f

    .line 53
    invoke-virtual/range {v10 .. v16}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40c00000    # 6.0f

    .line 55
    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3f99999a    # -3.6f

    .line 56
    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v11, 0x3f19999a    # 0.6f

    const v12, -0x41b33333    # -0.2f

    const v13, 0x3f99999a    # 1.2f

    const/high16 v14, -0x41000000    # -0.5f

    const v16, -0x4099999a    # -0.9f

    .line 57
    invoke-virtual/range {v10 .. v16}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v11, 0x3faf5c29    # 1.37f

    const v12, -0x40747ae1    # -1.09f

    const v13, 0x40133333    # 2.3f

    const v14, -0x3fcccccd    # -2.8f

    const v15, 0x40133333    # 2.3f

    const/high16 v16, -0x3f500000    # -5.5f

    .line 58
    invoke-virtual/range {v10 .. v16}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, -0x40000000    # -2.0f

    .line 59
    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v11, 0x41880000    # 17.0f

    const v12, 0x4186147b    # 16.76f

    const v13, 0x417f5c29    # 15.96f

    const v14, 0x418c6666    # 17.55f

    const v15, 0x4177ae14    # 15.48f

    const v16, 0x418f851f    # 17.94f

    .line 60
    invoke-virtual/range {v10 .. v16}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v15, 0x41b80000    # 23.0f

    const/high16 v14, 0x40880000    # 4.25f

    .line 62
    invoke-virtual {v1, v15, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v10, 0x405f5c29    # 3.49f

    .line 63
    invoke-virtual {v1, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v11, 0x0

    const v12, 0x3f4ccccd    # 0.8f

    const v13, -0x409eb852    # -0.88f

    const v16, 0x3fa147ae    # 1.26f

    const v17, -0x403851ec    # -1.56f

    const v18, 0x3f547ae1    # 0.83f

    move-object v10, v1

    move v5, v14

    move/from16 v14, v16

    move v6, v15

    move/from16 v15, v17

    move/from16 v16, v18

    .line 64
    invoke-virtual/range {v10 .. v16}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v11, 0x41aa6666    # 21.3f

    const v12, 0x4107ae14    # 8.48f

    const v13, 0x41a947ae    # 21.16f

    const v14, 0x41063d71    # 8.39f

    const/high16 v15, 0x41a80000    # 21.0f

    const v16, 0x4104f5c3    # 8.31f

    .line 65
    invoke-virtual/range {v10 .. v16}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v10, 0x41980000    # 19.0f

    const/high16 v15, 0x41500000    # 13.0f

    .line 66
    invoke-virtual {v1, v10, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, -0x40400000    # -1.5f

    const v10, -0x3f370a3d    # -6.28f

    .line 68
    invoke-virtual {v1, v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v11, 0x41666666    # 14.4f

    const v12, 0x40d28f5c    # 6.58f

    const v13, 0x4153851f    # 13.22f

    const/high16 v14, 0x40d00000    # 6.5f

    const/high16 v0, 0x41400000    # 12.0f

    const/high16 v16, 0x40d00000    # 6.5f

    move-object v10, v1

    move v7, v15

    move v15, v0

    .line 69
    invoke-virtual/range {v10 .. v16}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41080000    # 8.5f

    const v10, 0x40d70a3d    # 6.72f

    const v11, 0x4119999a    # 9.6f

    .line 70
    invoke-virtual {v1, v11, v12, v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40e00000    # 7.0f

    .line 71
    invoke-virtual {v1, v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    invoke-virtual {v1, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4104f5c3    # 8.31f

    .line 73
    invoke-virtual {v1, v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v11, 0x4035c28f    # 2.84f

    const v12, 0x41063d71    # 8.39f

    const v13, 0x402ccccd    # 2.7f

    const v14, 0x4107ae14    # 8.48f

    const v15, 0x4023d70a    # 2.56f

    const v16, 0x41091eb8    # 8.57f

    move-object v10, v1

    .line 74
    invoke-virtual/range {v10 .. v16}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v11, 0x3ff0a3d7    # 1.88f

    const/high16 v12, 0x41100000    # 9.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const v14, 0x4108cccd    # 8.55f

    const/high16 v15, 0x3f800000    # 1.0f

    const v16, 0x40f7ae14    # 7.74f

    .line 75
    invoke-virtual/range {v10 .. v16}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    invoke-virtual {v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3ff33333    # 1.9f

    const v13, 0x40bd70a4    # 5.92f

    const/4 v14, 0x0

    const/high16 v15, 0x41400000    # 12.0f

    const/16 v16, 0x0

    .line 77
    invoke-virtual/range {v10 .. v16}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ff33333    # 1.9f

    .line 78
    invoke-virtual {v1, v6, v0, v6, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40dccccd    # 6.9f

    const v4, 0x40df5c29    # 6.98f

    .line 80
    invoke-virtual {v1, v0, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v11, 0x40bf0a3d    # 5.97f

    const v12, 0x40e570a4    # 7.17f

    const v13, 0x40a3d70a    # 5.12f

    const v14, 0x40ed1eb8    # 7.41f

    const v15, 0x408bd70a    # 4.37f

    const v16, 0x40f6147b    # 7.69f

    .line 81
    invoke-virtual/range {v10 .. v16}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3fc147ae    # 1.51f

    const v7, 0x40633333    # 3.55f

    .line 82
    invoke-virtual {v1, v6, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    invoke-virtual {v1, v0, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x419d0a3d    # 19.63f

    const v4, 0x40f6147b    # 7.69f

    .line 85
    invoke-virtual {v1, v0, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v11, -0x40c00000    # -0.75f

    const v12, -0x4170a3d7    # -0.28f

    const v13, -0x40333333    # -1.6f

    const v14, -0x40fae148    # -0.52f

    const v15, -0x3fde147b    # -2.53f

    const v16, -0x40ca3d71    # -0.71f

    .line 86
    invoke-virtual/range {v10 .. v16}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3f828f5c    # 1.02f

    .line 87
    invoke-virtual {v1, v6, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    invoke-virtual {v1, v0, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41a80000    # 21.0f

    .line 90
    invoke-virtual {v1, v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v11, 0x41a53333    # 20.65f

    const v12, 0x406851ec    # 3.63f

    const v13, 0x418c8f5c    # 17.57f

    const/high16 v14, 0x40000000    # 2.0f

    const/high16 v15, 0x41400000    # 12.0f

    const/high16 v16, 0x40000000    # 2.0f

    .line 91
    invoke-virtual/range {v10 .. v16}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x406851ec    # 3.63f

    .line 92
    invoke-virtual {v1, v9, v0, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3fe28f5c    # 1.77f

    .line 93
    invoke-virtual {v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v11, 0x40aae148    # 5.34f

    const v12, 0x40a23d71    # 5.07f

    const v13, 0x4108f5c3    # 8.56f

    const/high16 v14, 0x40900000    # 4.5f

    const/high16 v16, 0x40900000    # 4.5f

    .line 94
    invoke-virtual/range {v10 .. v16}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41100000    # 9.0f

    const v2, 0x3f11eb85    # 0.57f

    const v4, 0x40d51eb8    # 6.66f

    .line 95
    invoke-virtual {v1, v4, v2, v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 96
    invoke-virtual {v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 175
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v30

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x3800

    const/16 v45, 0x0

    .line 171
    invoke-static/range {v29 .. v45}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/twotone/ParaglidingKt;->_paragliding:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 100
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method