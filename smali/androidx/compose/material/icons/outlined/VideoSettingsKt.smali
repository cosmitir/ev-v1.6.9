.class public final Landroidx/compose/material/icons/outlined/VideoSettingsKt;
.super Ljava/lang/Object;
.source "VideoSettings.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoSettings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoSettings.kt\nandroidx/compose/material/icons/outlined/VideoSettingsKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,104:1\n122#2:105\n116#2,3:106\n119#2,3:110\n132#2,18:113\n152#2:150\n132#2,18:151\n152#2:188\n132#2,18:189\n152#2:226\n175#3:109\n622#4,2:131\n634#4,2:133\n636#4,11:139\n622#4,2:169\n634#4,2:171\n636#4,11:177\n622#4,2:207\n634#4,2:209\n636#4,11:215\n50#5,4:135\n50#5,4:173\n50#5,4:211\n*S KotlinDebug\n*F\n+ 1 VideoSettings.kt\nandroidx/compose/material/icons/outlined/VideoSettingsKt\n*L\n29#1:105\n29#1:106,3\n29#1:110,3\n30#1:113,18\n30#1:150\n47#1:151,18\n47#1:188\n53#1:189,18\n53#1:226\n29#1:109\n30#1:131,2\n30#1:133,2\n30#1:139,11\n47#1:169,2\n47#1:171,2\n47#1:177,11\n53#1:207,2\n53#1:209,2\n53#1:215,11\n30#1:135,4\n47#1:173,4\n53#1:211,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_videoSettings",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "VideoSettings",
        "Landroidx/compose/material/icons/Icons$Outlined;",
        "getVideoSettings",
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
.field private static _videoSettings:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getVideoSettings(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 63

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/outlined/VideoSettingsKt;->_videoSettings:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "Outlined.VideoSettings"

    .line 106
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object/from16 v46, v1

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

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    .line 116
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v14

    .line 123
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

    .line 128
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v21

    .line 129
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    const-string v15, ""

    .line 135
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v2, 0x40c00000    # 6.0f

    .line 31
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v4, 0x41900000    # 18.0f

    .line 32
    invoke-virtual {v0, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v4, 0x40a00000    # 5.0f

    .line 33
    invoke-virtual {v0, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v4, 0x40000000    # 2.0f

    .line 34
    invoke-virtual {v0, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, -0x40733333    # -1.1f

    const v7, -0x4099999a    # -0.9f

    const/high16 v8, -0x40000000    # -2.0f

    const/high16 v9, -0x40000000    # -2.0f

    const/high16 v10, -0x40000000    # -2.0f

    move-object v4, v0

    .line 36
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 37
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ff33333    # 1.9f

    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x409ccccd    # 4.9f

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x40c00000    # 6.0f

    .line 38
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v11, 0x41400000    # 12.0f

    .line 39
    invoke-virtual {v0, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, 0x3f8ccccd    # 1.1f

    const v7, 0x3f666666    # 0.9f

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v10, 0x40000000    # 2.0f

    .line 40
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v4, 0x41100000    # 9.0f

    .line 41
    invoke-virtual {v0, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v4, -0x40000000    # -2.0f

    .line 42
    invoke-virtual {v0, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 137
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v13

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
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v33, v0

    check-cast v33, Landroidx/compose/ui/graphics/Brush;

    const/16 v35, 0x0

    const/high16 v37, 0x3f800000    # 1.0f

    .line 166
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v38

    .line 167
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v39

    const/high16 v40, 0x3f800000    # 1.0f

    const-string v32, ""

    .line 173
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v1, 0x41700000    # 15.0f

    .line 48
    invoke-virtual {v0, v1, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v2, -0x3f400000    # -6.0f

    const/high16 v4, -0x3f800000    # -4.0f

    .line 49
    invoke-virtual {v0, v2, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v2, 0x0

    const/high16 v4, 0x41000000    # 8.0f

    .line 50
    invoke-virtual {v0, v2, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 175
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v30

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x3800

    const/16 v45, 0x0

    .line 171
    invoke-static/range {v29 .. v45}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/high16 v51, 0x3f800000    # 1.0f

    const/high16 v53, 0x3f800000    # 1.0f

    .line 192
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v48

    .line 199
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v4

    invoke-direct {v0, v4, v5, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v50, v0

    check-cast v50, Landroidx/compose/ui/graphics/Brush;

    const/16 v52, 0x0

    const/high16 v54, 0x3f800000    # 1.0f

    .line 204
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v55

    .line 205
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v56

    const/high16 v57, 0x3f800000    # 1.0f

    const-string v49, ""

    .line 211
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v9, 0x41b5ae14    # 22.71f

    const v10, 0x419370a4    # 18.43f

    .line 54
    invoke-virtual {v0, v9, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x3cf5c28f    # 0.03f

    const v4, -0x416b851f    # -0.29f

    const v5, 0x3d23d70a    # 0.04f

    const v6, -0x40eb851f    # -0.58f

    const v7, 0x3c23d70a    # 0.01f

    const v8, -0x40a3d70a    # -0.86f

    move-object v2, v0

    .line 55
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, -0x40a66666    # -0.85f

    const v11, 0x3f88f5c3    # 1.07f

    .line 56
    invoke-virtual {v0, v11, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x3dcccccd    # 0.1f

    const v4, -0x425c28f6    # -0.08f

    const v5, 0x3df5c28f    # 0.12f

    const v6, -0x41a8f5c3    # -0.21f

    const v7, 0x3d75c28f    # 0.06f

    const v8, -0x415c28f6    # -0.32f

    move-object v2, v0

    .line 57
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v12, -0x407c28f6    # -1.03f

    const v13, -0x401ae148    # -1.79f

    .line 58
    invoke-virtual {v0, v12, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, -0x428a3d71    # -0.06f

    const v4, -0x421eb852    # -0.11f

    const v5, -0x41bd70a4    # -0.19f

    const v6, -0x41e66666    # -0.15f

    const v7, -0x416147ae    # -0.31f

    const v8, -0x421eb852    # -0.11f

    .line 59
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x41a9d70a    # 21.23f

    .line 60
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, -0x41947ae1    # -0.23f

    const v4, -0x41d1eb85    # -0.17f

    const v5, -0x410a3d71    # -0.48f

    const v6, -0x416147ae    # -0.31f

    const/high16 v7, -0x40c00000    # -0.75f

    const v8, -0x4128f5c3    # -0.42f

    move-object v2, v0

    .line 61
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41b33333    # -0.2f

    const v14, -0x4051eb85    # -1.36f

    .line 62
    invoke-virtual {v0, v1, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x41a2147b    # 20.26f

    const v4, 0x415170a4    # 13.09f

    const v5, 0x41a147ae    # 20.16f

    const/high16 v6, 0x41500000    # 13.0f

    const v7, 0x41a03d71    # 20.03f

    const/high16 v8, 0x41500000    # 13.0f

    .line 63
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, -0x3ffb851f    # -2.07f

    .line 64
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, -0x420a3d71    # -0.12f

    const/4 v4, 0x0

    const v5, -0x41947ae1    # -0.23f

    const v6, 0x3db851ec    # 0.09f

    const/high16 v7, -0x41800000    # -0.25f

    const v8, 0x3e570a3d    # 0.21f

    move-object v2, v0

    .line 65
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v15, 0x3fae147b    # 1.36f

    .line 66
    invoke-virtual {v0, v1, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, -0x417ae148    # -0.26f

    const v4, 0x3de147ae    # 0.11f

    const v5, -0x40fd70a4    # -0.51f

    const v6, 0x3e851eb8    # 0.26f

    const v7, -0x40c28f5c    # -0.74f

    const v8, 0x3ed70a3d    # 0.42f

    .line 67
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x405c28f6    # -1.28f

    const/high16 v8, -0x41000000    # -0.5f

    .line 68
    invoke-virtual {v0, v1, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, -0x420a3d71    # -0.12f

    const v4, -0x42b33333    # -0.05f

    const/high16 v5, -0x41800000    # -0.25f

    const/4 v6, 0x0

    const v7, -0x416147ae    # -0.31f

    const v1, 0x3de147ae    # 0.11f

    move v9, v8

    move v8, v1

    .line 69
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3fe51eb8    # 1.79f

    .line 70
    invoke-virtual {v0, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, -0x428a3d71    # -0.06f

    const v4, 0x3de147ae    # 0.11f

    const v5, -0x42dc28f6    # -0.04f

    const v6, 0x3e75c28f    # 0.24f

    const v7, 0x3d75c28f    # 0.06f

    const v8, 0x3ea3d70a    # 0.32f

    .line 71
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x3f5c28f6    # 0.86f

    .line 72
    invoke-virtual {v0, v11, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, -0x430a3d71    # -0.03f

    const v4, 0x3e947ae1    # 0.29f

    const v6, 0x3f147ae1    # 0.58f

    const v7, -0x43dc28f6    # -0.01f

    const v8, 0x3f5c28f6    # 0.86f

    move-object v2, v0

    .line 73
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, -0x40770a3d    # -1.07f

    const v3, 0x3f59999a    # 0.85f

    .line 74
    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, -0x42333333    # -0.1f

    const v4, 0x3da3d70a    # 0.08f

    const v5, -0x420a3d71    # -0.12f

    const v6, 0x3e570a3d    # 0.21f

    const v7, -0x428a3d71    # -0.06f

    const v8, 0x3ea3d70a    # 0.32f

    move-object v2, v0

    .line 75
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v11, 0x3f83d70a    # 1.03f

    .line 76
    invoke-virtual {v0, v11, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x3d75c28f    # 0.06f

    const v4, 0x3de147ae    # 0.11f

    const v5, 0x3e428f5c    # 0.19f

    const v6, 0x3e19999a    # 0.15f

    const v7, 0x3e9eb852    # 0.31f

    const v8, 0x3de147ae    # 0.11f

    .line 77
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3fa28f5c    # 1.27f

    .line 78
    invoke-virtual {v0, v1, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x3e6b851f    # 0.23f

    const v4, 0x3e2e147b    # 0.17f

    const v5, 0x3ef5c28f    # 0.48f

    const v6, 0x3e9eb852    # 0.31f

    const/high16 v7, 0x3f400000    # 0.75f

    const v8, 0x3ed70a3d    # 0.42f

    .line 79
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e4ccccd    # 0.2f

    .line 80
    invoke-virtual {v0, v1, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x3ca3d70a    # 0.02f

    const v4, 0x3df5c28f    # 0.12f

    const v5, 0x3df5c28f    # 0.12f

    const v6, 0x3e570a3d    # 0.21f

    const/high16 v7, 0x3e800000    # 0.25f

    const v8, 0x3e570a3d    # 0.21f

    .line 81
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x40047ae1    # 2.07f

    .line 82
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x3df5c28f    # 0.12f

    const/4 v4, 0x0

    const v5, 0x3e6b851f    # 0.23f

    const v6, -0x4247ae14    # -0.09f

    const v8, -0x41a8f5c3    # -0.21f

    move-object v2, v0

    .line 83
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    invoke-virtual {v0, v1, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x3e851eb8    # 0.26f

    const v4, -0x421eb852    # -0.11f

    const v5, 0x3f028f5c    # 0.51f

    const v6, -0x417ae148    # -0.26f

    const v7, 0x3f3d70a4    # 0.74f

    const v8, -0x4128f5c3    # -0.42f

    .line 85
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3fa3d70a    # 1.28f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 86
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x3df5c28f    # 0.12f

    const v4, 0x3d4ccccd    # 0.05f

    const/high16 v5, 0x3e800000    # 0.25f

    const/4 v6, 0x0

    const v7, 0x3e9eb852    # 0.31f

    const v8, -0x421eb852    # -0.11f

    move-object v2, v0

    .line 87
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    invoke-virtual {v0, v11, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x3d75c28f    # 0.06f

    const v4, -0x421eb852    # -0.11f

    const v5, 0x3d23d70a    # 0.04f

    const v6, -0x418a3d71    # -0.24f

    const v7, -0x428a3d71    # -0.06f

    const v8, -0x415c28f6    # -0.32f

    .line 89
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x41b5ae14    # 22.71f

    .line 90
    invoke-virtual {v0, v1, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x41980000    # 19.0f

    const/high16 v9, 0x419c0000    # 19.5f

    .line 92
    invoke-virtual {v0, v1, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, -0x40ab851f    # -0.83f

    const/4 v4, 0x0

    const/high16 v5, -0x40400000    # -1.5f

    const v6, -0x40d47ae1    # -0.67f

    const/high16 v7, -0x40400000    # -1.5f

    const/high16 v8, -0x40400000    # -1.5f

    .line 93
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v2, -0x40400000    # -1.5f

    const/high16 v3, -0x40400000    # -1.5f

    const v4, 0x3f2b851f    # 0.67f

    const/high16 v5, 0x3fc00000    # 1.5f

    .line 94
    invoke-virtual {v0, v4, v2, v5, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    invoke-virtual {v0, v5, v4, v5, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x419ea3d7    # 19.83f

    .line 96
    invoke-virtual {v0, v2, v9, v1, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 213
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v47

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x3800

    const/16 v62, 0x0

    .line 209
    invoke-static/range {v46 .. v62}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/outlined/VideoSettingsKt;->_videoSettings:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 100
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
