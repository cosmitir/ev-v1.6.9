.class public final Landroidx/compose/material/icons/twotone/PersonAddAltKt;
.super Ljava/lang/Object;
.source "PersonAddAlt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPersonAddAlt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PersonAddAlt.kt\nandroidx/compose/material/icons/twotone/PersonAddAltKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,101:1\n122#2:102\n116#2,3:103\n119#2,3:107\n132#2,18:110\n152#2:147\n132#2,18:148\n152#2:185\n132#2,18:186\n152#2:223\n132#2,18:224\n152#2:261\n132#2,18:262\n152#2:299\n175#3:106\n622#4,2:128\n634#4,2:130\n636#4,11:136\n622#4,2:166\n634#4,2:168\n636#4,11:174\n622#4,2:204\n634#4,2:206\n636#4,11:212\n622#4,2:242\n634#4,2:244\n636#4,11:250\n622#4,2:280\n634#4,2:282\n636#4,11:288\n50#5,4:132\n50#5,4:170\n50#5,4:208\n50#5,4:246\n50#5,4:284\n*S KotlinDebug\n*F\n+ 1 PersonAddAlt.kt\nandroidx/compose/material/icons/twotone/PersonAddAltKt\n*L\n29#1:102\n29#1:103,3\n29#1:107,3\n30#1:110,18\n30#1:147\n36#1:148,18\n36#1:185\n47#1:186,18\n47#1:223\n61#1:224,18\n61#1:261\n76#1:262,18\n76#1:299\n29#1:106\n30#1:128,2\n30#1:130,2\n30#1:136,11\n36#1:166,2\n36#1:168,2\n36#1:174,11\n47#1:204,2\n47#1:206,2\n47#1:212,11\n61#1:242,2\n61#1:244,2\n61#1:250,11\n76#1:280,2\n76#1:282,2\n76#1:288,11\n30#1:132,4\n36#1:170,4\n47#1:208,4\n61#1:246,4\n76#1:284,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_personAddAlt",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "PersonAddAlt",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getPersonAddAlt",
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
.field private static _personAddAlt:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getPersonAddAlt(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 97

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/twotone/PersonAddAltKt;->_personAddAlt:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "TwoTone.PersonAddAlt"

    .line 103
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object/from16 v80, v1

    move-object/from16 v63, v1

    move-object/from16 v46, v1

    move-object/from16 v29, v1

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

    const v17, 0x3e99999a    # 0.3f

    const v19, 0x3e99999a    # 0.3f

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
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v1, 0x41100000    # 9.0f

    const/high16 v2, 0x41000000    # 8.0f

    .line 31
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v13, -0x40000000    # -2.0f

    const/4 v11, 0x0

    .line 32
    invoke-virtual {v0, v13, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/high16 v10, 0x40800000    # 4.0f

    const/16 v24, 0x0

    move-object v4, v0

    move/from16 v11, v24

    .line 33
    invoke-virtual/range {v4 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v10, -0x3f800000    # -4.0f

    const/4 v11, 0x0

    .line 34
    invoke-virtual/range {v4 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->arcToRelative(FFFZZFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 134
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v0

    move v4, v13

    move-object v13, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3800

    const/16 v28, 0x0

    .line 130
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const v34, 0x3e99999a    # 0.3f

    const v36, 0x3e99999a    # 0.3f

    .line 151
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v31

    .line 158
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v5

    invoke-direct {v0, v5, v6, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v33, v0

    check-cast v33, Landroidx/compose/ui/graphics/Brush;

    const/16 v35, 0x0

    const/high16 v37, 0x3f800000    # 1.0f

    .line 163
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v38

    .line 164
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v39

    const/high16 v40, 0x3f800000    # 1.0f

    const-string v32, ""

    .line 170
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v5, 0x4167ae14    # 14.48f

    const v6, 0x4182b852    # 16.34f

    .line 37
    invoke-virtual {v0, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x4154a3d7    # 13.29f

    const v7, 0x417bae14    # 15.73f

    const v8, 0x4135eb85    # 11.37f

    const/high16 v9, 0x41700000    # 15.0f

    const/high16 v10, 0x41100000    # 9.0f

    const/high16 v11, 0x41700000    # 15.0f

    move-object v5, v0

    .line 38
    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, -0x3fe851ec    # -2.37f

    const/4 v7, 0x0

    const v8, -0x3f76b852    # -4.29f

    const v9, 0x3f3ae148    # 0.73f

    const v10, -0x3f50a3d7    # -5.48f

    const v11, 0x3fab851f    # 1.34f

    .line 39
    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x404ccccd    # 3.2f

    const/high16 v7, 0x41840000    # 16.5f

    const/high16 v8, 0x40400000    # 3.0f

    const v9, 0x4186b852    # 16.84f

    const/high16 v10, 0x40400000    # 3.0f

    const v11, 0x4189c28f    # 17.22f

    .line 40
    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v12, 0x41900000    # 18.0f

    .line 41
    invoke-virtual {v0, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v13, 0x41400000    # 12.0f

    .line 42
    invoke-virtual {v0, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, -0x40b851ec    # -0.78f

    .line 43
    invoke-virtual {v0, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v6, 0x41700000    # 15.0f

    const v7, 0x4186b852    # 16.84f

    const v8, 0x416ccccd    # 14.8f

    const/high16 v9, 0x41840000    # 16.5f

    const v10, 0x4167ae14    # 14.48f

    const v11, 0x4182b852    # 16.34f

    .line 44
    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 172
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v30

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x3800

    const/16 v45, 0x0

    .line 168
    invoke-static/range {v29 .. v45}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/high16 v51, 0x3f800000    # 1.0f

    const/high16 v53, 0x3f800000    # 1.0f

    .line 189
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v48

    .line 196
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v5

    invoke-direct {v0, v5, v6, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v50, v0

    check-cast v50, Landroidx/compose/ui/graphics/Brush;

    const/16 v52, 0x0

    const/high16 v54, 0x3f800000    # 1.0f

    .line 201
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v55

    .line 202
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v56

    const/high16 v57, 0x3f800000    # 1.0f

    const-string v49, ""

    .line 208
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 48
    invoke-virtual {v0, v1, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x400d70a4    # 2.21f

    const/4 v7, 0x0

    const/high16 v8, 0x40800000    # 4.0f

    const v9, -0x401ae148    # -1.79f

    const/high16 v10, 0x40800000    # 4.0f

    const/high16 v11, -0x3f800000    # -4.0f

    move-object v5, v0

    .line 49
    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v6, 0x0

    const v7, -0x3ff28f5c    # -2.21f

    const v8, -0x401ae148    # -1.79f

    const/high16 v9, -0x3f800000    # -4.0f

    const/high16 v10, -0x3f800000    # -4.0f

    .line 50
    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40b947ae    # 5.79f

    const/high16 v6, 0x40a00000    # 5.0f

    .line 51
    invoke-virtual {v0, v6, v5, v6, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v7, 0x41235c29    # 10.21f

    const v8, 0x40d947ae    # 6.79f

    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v10, 0x41100000    # 9.0f

    const/high16 v11, 0x41400000    # 12.0f

    move-object v5, v0

    .line 52
    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40c00000    # 6.0f

    .line 54
    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3f8ccccd    # 1.1f

    const/4 v7, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const v9, 0x3f666666    # 0.9f

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v11, 0x40000000    # 2.0f

    move-object v5, v0

    .line 55
    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v6, 0x0

    const v7, 0x3f8ccccd    # 1.1f

    const v8, -0x4099999a    # -0.9f

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v10, -0x40000000    # -2.0f

    .line 56
    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4111999a    # 9.1f

    const/high16 v6, 0x40e00000    # 7.0f

    .line 57
    invoke-virtual {v0, v6, v5, v6, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v7, 0x40dccccd    # 6.9f

    const v8, 0x40fccccd    # 7.9f

    const/high16 v9, 0x40c00000    # 6.0f

    const/high16 v10, 0x41100000    # 9.0f

    const/high16 v11, 0x40c00000    # 6.0f

    move-object v5, v0

    .line 58
    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 210
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v47

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x3800

    const/16 v62, 0x0

    .line 206
    invoke-static/range {v46 .. v62}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/high16 v68, 0x3f800000    # 1.0f

    const/high16 v70, 0x3f800000    # 1.0f

    .line 227
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v65

    .line 234
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v5

    invoke-direct {v0, v5, v6, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v67, v0

    check-cast v67, Landroidx/compose/ui/graphics/Brush;

    const/16 v69, 0x0

    const/high16 v71, 0x3f800000    # 1.0f

    .line 239
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v72

    .line 240
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v73

    const/high16 v74, 0x3f800000    # 1.0f

    const-string v66, ""

    .line 246
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v2, 0x41a00000    # 20.0f

    .line 62
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, -0x3fc00000    # -3.0f

    const/4 v5, 0x0

    .line 63
    invoke-virtual {v0, v5, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 64
    invoke-virtual {v0, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v6, 0x40400000    # 3.0f

    .line 65
    invoke-virtual {v0, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v7, 0x40000000    # 2.0f

    .line 67
    invoke-virtual {v0, v5, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    invoke-virtual {v0, v6, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    invoke-virtual {v0, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    invoke-virtual {v0, v7, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    invoke-virtual {v0, v5, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    invoke-virtual {v0, v6, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    invoke-virtual {v0, v5, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 248
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v64

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x3800

    const/16 v79, 0x0

    .line 244
    invoke-static/range {v63 .. v79}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/high16 v85, 0x3f800000    # 1.0f

    const/high16 v87, 0x3f800000    # 1.0f

    .line 265
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v82

    .line 272
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v4

    invoke-direct {v0, v4, v5, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v84, v0

    check-cast v84, Landroidx/compose/ui/graphics/Brush;

    const/16 v86, 0x0

    const/high16 v88, 0x3f800000    # 1.0f

    .line 277
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v89

    .line 278
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v90

    const/high16 v91, 0x3f800000    # 1.0f

    const-string v83, ""

    .line 284
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v1, 0x41763d71    # 15.39f

    const v3, 0x4168f5c3    # 14.56f

    .line 77
    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v16, 0x415b5c29    # 13.71f

    const v17, 0x415b3333    # 13.7f

    const v18, 0x41387ae1    # 11.53f

    const/high16 v19, 0x41500000    # 13.0f

    const/high16 v20, 0x41100000    # 9.0f

    const/high16 v21, 0x41500000    # 13.0f

    move-object v15, v0

    .line 78
    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v16, -0x3fde147b    # -2.53f

    const/16 v17, 0x0

    const v18, -0x3f6947ae    # -4.71f

    const v19, 0x3f333333    # 0.7f

    const v20, -0x3f33851f    # -6.39f

    const v21, 0x3fc7ae14    # 1.56f

    .line 79
    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v16, 0x3fce147b    # 1.61f

    const v17, 0x41711eb8    # 15.07f

    const/high16 v18, 0x3f800000    # 1.0f

    const v19, 0x4180cccd    # 16.1f

    const/high16 v20, 0x3f800000    # 1.0f

    const v21, 0x4189c28f    # 17.22f

    .line 80
    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x41800000    # 16.0f

    .line 82
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x3fce147b    # -2.78f

    .line 83
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v16, 0x41880000    # 17.0f

    const v17, 0x4180cccd    # 16.1f

    const v18, 0x41831eb8    # 16.39f

    const v19, 0x41711eb8    # 15.07f

    const v20, 0x41763d71    # 15.39f

    const v21, 0x4168f5c3    # 14.56f

    .line 84
    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x41700000    # 15.0f

    .line 86
    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    invoke-virtual {v0, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    invoke-virtual {v0, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/16 v16, 0x0

    const v17, -0x413d70a4    # -0.38f

    const v18, 0x3e4ccccd    # 0.2f

    const v19, -0x40c7ae14    # -0.72f

    const v20, 0x3f051eb8    # 0.52f

    const v21, -0x409eb852    # -0.88f

    .line 89
    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v16, 0x4096b852    # 4.71f

    const v17, 0x417bae14    # 15.73f

    const v18, 0x40d428f6    # 6.63f

    const/high16 v19, 0x41700000    # 15.0f

    const/high16 v20, 0x41100000    # 9.0f

    const/high16 v21, 0x41700000    # 15.0f

    .line 90
    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v16, 0x4017ae14    # 2.37f

    const/16 v17, 0x0

    const v18, 0x408947ae    # 4.29f

    const v19, 0x3f3ae148    # 0.73f

    const v20, 0x40af5c29    # 5.48f

    const v21, 0x3fab851f    # 1.34f

    .line 91
    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v16, 0x416ccccd    # 14.8f

    const/high16 v17, 0x41840000    # 16.5f

    const/high16 v18, 0x41700000    # 15.0f

    const v19, 0x4186b852    # 16.84f

    const/high16 v20, 0x41700000    # 15.0f

    const v21, 0x4189c28f    # 17.22f

    .line 92
    invoke-virtual/range {v15 .. v21}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    invoke-virtual {v0, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 286
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v81

    const/16 v92, 0x0

    const/16 v93, 0x0

    const/16 v94, 0x0

    const/16 v95, 0x3800

    const/16 v96, 0x0

    .line 282
    invoke-static/range {v80 .. v96}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/twotone/PersonAddAltKt;->_personAddAlt:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 97
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
