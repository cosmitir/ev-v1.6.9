.class public final Landroidx/compose/material/icons/filled/WifiCalling3Kt;
.super Ljava/lang/Object;
.source "WifiCalling3.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWifiCalling3.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WifiCalling3.kt\nandroidx/compose/material/icons/filled/WifiCalling3Kt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,83:1\n122#2:84\n116#2,3:85\n119#2,3:89\n132#2,18:92\n152#2:129\n132#2,18:130\n152#2:167\n132#2,18:168\n152#2:205\n132#2,18:206\n152#2:243\n175#3:88\n622#4,2:110\n634#4,2:112\n636#4,11:118\n622#4,2:148\n634#4,2:150\n636#4,11:156\n622#4,2:186\n634#4,2:188\n636#4,11:194\n622#4,2:224\n634#4,2:226\n636#4,11:232\n50#5,4:114\n50#5,4:152\n50#5,4:190\n50#5,4:228\n*S KotlinDebug\n*F\n+ 1 WifiCalling3.kt\nandroidx/compose/material/icons/filled/WifiCalling3Kt\n*L\n29#1:84\n29#1:85,3\n29#1:89,3\n30#1:92,18\n30#1:129\n40#1:130,18\n40#1:167\n50#1:168,18\n50#1:205\n58#1:206,18\n58#1:243\n29#1:88\n30#1:110,2\n30#1:112,2\n30#1:118,11\n40#1:148,2\n40#1:150,2\n40#1:156,11\n50#1:186,2\n50#1:188,2\n50#1:194,11\n58#1:224,2\n58#1:226,2\n58#1:232,11\n30#1:114,4\n40#1:152,4\n50#1:190,4\n58#1:228,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_wifiCalling3",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "WifiCalling3",
        "Landroidx/compose/material/icons/Icons$Filled;",
        "getWifiCalling3",
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
.field private static _wifiCalling3:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getWifiCalling3(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 80

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/filled/WifiCalling3Kt;->_wifiCalling3:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "Filled.WifiCalling3"

    .line 85
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object/from16 v63, v1

    move-object/from16 v46, v1

    move-object/from16 v29, v1

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
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v1, 0x4183eb85    # 16.49f

    const/high16 v2, 0x40400000    # 3.0f

    .line 31
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3ff28f5c    # -2.21f

    const/4 v6, 0x0

    const v7, -0x3f7947ae    # -4.21f

    const v8, 0x3f666666    # 0.9f

    const v9, -0x3f4ae148    # -5.66f

    const v10, 0x4015c28f    # 2.34f

    move-object v4, v0

    .line 32
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v11, 0x3f87ae14    # 1.06f

    .line 33
    invoke-virtual {v0, v11, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f970a3d    # 1.18f

    const v6, -0x4068f5c3    # -1.18f

    const v7, 0x40333333    # 2.8f

    const v8, -0x400b851f    # -1.91f

    const v9, 0x4092e148    # 4.59f

    const v10, -0x400b851f    # -1.91f

    .line 34
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x4092e148    # 4.59f

    const v5, 0x3ff47ae1    # 1.91f

    const v6, 0x405ae148    # 3.42f

    const v7, 0x3f3ae148    # 0.73f

    .line 35
    invoke-virtual {v0, v6, v7, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x407851ec    # -1.06f

    .line 36
    invoke-virtual {v0, v11, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x41a5999a    # 20.7f

    const v6, 0x4079999a    # 3.9f

    const v7, 0x4195999a    # 18.7f

    const/high16 v8, 0x40400000    # 3.0f

    const v9, 0x4183eb85    # 16.49f

    const/high16 v10, 0x40400000    # 3.0f

    move-object v4, v0

    .line 37
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 116
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v13

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3800

    const/16 v28, 0x0

    .line 112
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/high16 v34, 0x3f800000    # 1.0f

    const/high16 v36, 0x3f800000    # 1.0f

    .line 133
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v31

    .line 140
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v4

    invoke-direct {v0, v4, v5, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v33, v0

    check-cast v33, Landroidx/compose/ui/graphics/Brush;

    const/16 v35, 0x0

    const/high16 v37, 0x3f800000    # 1.0f

    .line 145
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v38

    .line 146
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v39

    const/high16 v40, 0x3f800000    # 1.0f

    const-string v32, ""

    .line 152
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v12, 0x41a03d71    # 20.03f

    const v13, 0x40eeb852    # 7.46f

    .line 41
    invoke-virtual {v0, v12, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4198f5c3    # 19.12f

    const v6, 0x40d1eb85    # 6.56f

    const v7, 0x418ef5c3    # 17.87f

    const/high16 v8, 0x40c00000    # 6.0f

    const/high16 v10, 0x40c00000    # 6.0f

    move-object v4, v0

    .line 42
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x3f9d70a4    # -3.54f

    const v5, 0x3fbae148    # 1.46f

    const v6, -0x3fd7ae14    # -2.63f

    const v7, 0x3f0f5c29    # 0.56f

    .line 43
    invoke-virtual {v0, v6, v7, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    invoke-virtual {v0, v11, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f2147ae    # 0.63f

    const v6, -0x40deb852    # -0.63f

    const v7, 0x3fc147ae    # 1.51f

    const v8, -0x407c28f6    # -1.03f

    const v9, 0x401e147b    # 2.47f

    const v10, -0x407c28f6    # -1.03f

    move-object v4, v0

    .line 45
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x401e147b    # 2.47f

    const v5, 0x3f83d70a    # 1.03f

    const v6, 0x3feb851f    # 1.84f

    const v7, 0x3ec7ae14    # 0.39f

    .line 46
    invoke-virtual {v0, v6, v7, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    invoke-virtual {v0, v12, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 154
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v30

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x3800

    const/16 v45, 0x0

    .line 150
    invoke-static/range {v29 .. v45}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/high16 v51, 0x3f800000    # 1.0f

    const/high16 v53, 0x3f800000    # 1.0f

    .line 171
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v48

    .line 178
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v4

    invoke-direct {v0, v4, v5, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v50, v0

    check-cast v50, Landroidx/compose/ui/graphics/Brush;

    const/16 v52, 0x0

    const/high16 v54, 0x3f800000    # 1.0f

    .line 183
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v55

    .line 184
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v56

    const/high16 v57, 0x3f800000    # 1.0f

    const-string v49, ""

    .line 190
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v11, 0x417147ae    # 15.08f

    const v12, 0x411970a4    # 9.59f

    .line 51
    invoke-virtual {v0, v11, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v4, 0x41300000    # 11.0f

    .line 52
    invoke-virtual {v0, v1, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3fb47ae1    # 1.41f

    const v4, -0x404b851f    # -1.41f

    .line 53
    invoke-virtual {v0, v1, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x418c51ec    # 17.54f

    const v6, 0x4113851f    # 9.22f

    const v7, 0x418851ec    # 17.04f

    const/high16 v8, 0x41100000    # 9.0f

    const v9, 0x4183eb85    # 16.49f

    const/high16 v10, 0x41100000    # 9.0f

    move-object v4, v0

    .line 54
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x41770a3d    # 15.44f

    const v4, 0x4113851f    # 9.22f

    .line 55
    invoke-virtual {v0, v1, v4, v11, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 192
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v47

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x3800

    const/16 v62, 0x0

    .line 188
    invoke-static/range {v46 .. v62}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/high16 v68, 0x3f800000    # 1.0f

    const/high16 v70, 0x3f800000    # 1.0f

    .line 209
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v65

    .line 216
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v4

    invoke-direct {v0, v4, v5, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v67, v0

    check-cast v67, Landroidx/compose/ui/graphics/Brush;

    const/16 v69, 0x0

    const/high16 v71, 0x3f800000    # 1.0f

    .line 221
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v72

    .line 222
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v73

    const/high16 v74, 0x3f800000    # 1.0f

    const-string v66, ""

    .line 228
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v1, 0x417a147b    # 15.63f

    const v3, 0x41666666    # 14.4f

    .line 59
    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x3fdeb852    # -2.52f

    const/high16 v10, 0x40200000    # 2.5f

    .line 60
    invoke-virtual {v0, v1, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v4, -0x3fe00000    # -2.5f

    const v5, -0x4048f5c3    # -1.43f

    const v6, -0x3f6dc28f    # -4.57f

    const/high16 v7, -0x3fa00000    # -3.5f

    const/high16 v8, -0x3f400000    # -6.0f

    const/high16 v9, -0x3f400000    # -6.0f

    move-object v3, v0

    .line 61
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    invoke-virtual {v0, v10, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3e6b851f    # 0.23f

    const v5, -0x418a3d71    # -0.24f

    const v6, 0x3ea8f5c3    # 0.33f

    const v7, -0x40ee147b    # -0.57f

    const v8, 0x3e8a3d71    # 0.27f

    const v9, -0x4099999a    # -0.9f

    .line 63
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x4112147b    # 9.13f

    const v3, 0x40733333    # 3.8f

    .line 64
    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x4110a3d7    # 9.04f

    const v5, 0x4055c28f    # 3.34f

    const v6, 0x410a147b    # 8.63f

    const/high16 v7, 0x40400000    # 3.0f

    const v8, 0x41026666    # 8.15f

    const/high16 v9, 0x40400000    # 3.0f

    move-object v3, v0

    .line 65
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x40800000    # 4.0f

    .line 66
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x405c28f6    # 3.44f

    const/high16 v5, 0x40400000    # 3.0f

    const v6, 0x403e147b    # 2.97f

    const v7, 0x405e147b    # 3.47f

    const/high16 v8, 0x40400000    # 3.0f

    const v9, 0x4080f5c3    # 4.03f

    .line 67
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x404ae148    # 3.17f

    const v5, 0x40dd70a4    # 6.92f

    const v6, 0x4081999a    # 4.05f

    const v7, 0x411a147b    # 9.63f

    const v8, 0x40adc28f    # 5.43f

    const/high16 v9, 0x41400000    # 12.0f

    .line 68
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3fca3d71    # 1.58f

    const v5, 0x402eb852    # 2.73f

    const v6, 0x40766666    # 3.85f

    const v7, 0x409fae14    # 4.99f

    const v8, 0x40d23d71    # 6.57f

    const v9, 0x40d23d71    # 6.57f

    .line 69
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x4017ae14    # 2.37f

    const v5, 0x3faf5c29    # 1.37f

    const v6, 0x40a28f5c    # 5.08f

    const v7, 0x4010a3d7    # 2.26f

    const v8, 0x40ff0a3d    # 7.97f

    const v9, 0x401b851f    # 2.43f

    .line 70
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3f0f5c29    # 0.56f

    const v5, 0x3cf5c28f    # 0.03f

    const v6, 0x3f83d70a    # 1.03f

    const v7, -0x411eb852    # -0.44f

    const v8, 0x3f83d70a    # 1.03f

    const/high16 v9, -0x40800000    # -1.0f

    .line 71
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x3f7b3333    # -4.15f

    .line 72
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, -0x410a3d71    # -0.48f

    const v6, -0x4151eb85    # -0.34f

    const v7, -0x409c28f6    # -0.89f

    const v8, -0x40b33333    # -0.8f

    const v9, -0x40851eb8    # -0.98f

    .line 73
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x3f951eb8    # -3.67f

    const v2, -0x40c51eb8    # -0.73f

    .line 74
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x4181999a    # 16.2f

    const v5, 0x41611eb8    # 14.07f

    const v6, 0x417dc28f    # 15.86f

    const v7, 0x4162b852    # 14.17f

    const v8, 0x417a147b    # 15.63f

    const v9, 0x41666666    # 14.4f

    .line 75
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 230
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v64

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x3800

    const/16 v79, 0x0

    .line 226
    invoke-static/range {v63 .. v79}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/filled/WifiCalling3Kt;->_wifiCalling3:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 79
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
