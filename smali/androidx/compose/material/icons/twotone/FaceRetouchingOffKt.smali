.class public final Landroidx/compose/material/icons/twotone/FaceRetouchingOffKt;
.super Ljava/lang/Object;
.source "FaceRetouchingOff.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFaceRetouchingOff.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FaceRetouchingOff.kt\nandroidx/compose/material/icons/twotone/FaceRetouchingOffKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,95:1\n122#2:96\n116#2,3:97\n119#2,3:101\n132#2,18:104\n152#2:141\n132#2,18:142\n152#2:179\n175#3:100\n622#4,2:122\n634#4,2:124\n636#4,11:130\n622#4,2:160\n634#4,2:162\n636#4,11:168\n50#5,4:126\n50#5,4:164\n*S KotlinDebug\n*F\n+ 1 FaceRetouchingOff.kt\nandroidx/compose/material/icons/twotone/FaceRetouchingOffKt\n*L\n29#1:96\n29#1:97,3\n29#1:101,3\n30#1:104,18\n30#1:141\n43#1:142,18\n43#1:179\n29#1:100\n30#1:122,2\n30#1:124,2\n30#1:130,11\n43#1:160,2\n43#1:162,2\n43#1:168,11\n30#1:126,4\n43#1:164,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_faceRetouchingOff",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "FaceRetouchingOff",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getFaceRetouchingOff",
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
.field private static _faceRetouchingOff:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getFaceRetouchingOff(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 46

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/twotone/FaceRetouchingOffKt;->_faceRetouchingOff:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "TwoTone.FaceRetouchingOff"

    .line 97
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object/from16 v29, v1

    move-object v12, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 100
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

    .line 97
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v17, 0x3e99999a    # 0.3f

    const v19, 0x3e99999a    # 0.3f

    .line 107
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v14

    .line 114
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

    .line 119
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v21

    .line 120
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    const-string v15, ""

    .line 126
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v1, 0x41400000    # 12.0f

    const/high16 v2, 0x40800000    # 4.0f

    .line 31
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41147ae1    # -0.46f

    const/4 v6, 0x0

    const v7, -0x40970a3d    # -0.91f

    const v8, 0x3d4ccccd    # 0.05f

    const v9, -0x40547ae1    # -1.34f

    const v10, 0x3df5c28f    # 0.12f

    move-object v4, v0

    .line 32
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4140f5c3    # 12.06f

    const v6, 0x40ce147b    # 6.44f

    const v7, 0x4169999a    # 14.6f

    const/high16 v8, 0x41000000    # 8.0f

    const/high16 v9, 0x418c0000    # 17.5f

    const/high16 v10, 0x41000000    # 8.0f

    .line 33
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3eeb851f    # 0.46f

    const/4 v6, 0x0

    const v7, 0x3f68f5c3    # 0.91f

    const v8, -0x42b33333    # -0.05f

    const v9, 0x3fab851f    # 1.34f

    const v10, -0x420a3d71    # -0.12f

    .line 34
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x418b851f    # 17.44f

    const v6, 0x40b1eb85    # 5.56f

    const v7, 0x416e6666    # 14.9f

    const/high16 v8, 0x40800000    # 4.0f

    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v10, 0x40800000    # 4.0f

    .line 35
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x408d70a4    # 4.42f

    const v2, 0x4117851f    # 9.47f

    .line 37
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40a2e148    # 5.09f

    const v6, 0x411170a4    # 9.09f

    const v7, 0x40b66666    # 5.7f

    const v8, 0x4109c28f    # 8.61f

    const v9, 0x40c75c29    # 6.23f

    const v10, 0x4100f5c3    # 8.06f

    .line 38
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x40b051ec    # 5.51f

    const v2, 0x40eae148    # 7.34f

    .line 39
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40a1999a    # 5.05f

    const v6, 0x40ffae14    # 7.99f

    const v7, 0x4095c28f    # 4.68f

    const v8, 0x410b3333    # 8.7f

    const v9, 0x408d70a4    # 4.42f

    const v10, 0x4117851f    # 9.47f

    .line 40
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 128
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v13

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3800

    const/16 v28, 0x0

    .line 124
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/high16 v34, 0x3f800000    # 1.0f

    const/high16 v36, 0x3f800000    # 1.0f

    .line 145
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v31

    .line 152
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v4

    invoke-direct {v0, v4, v5, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v33, v0

    check-cast v33, Landroidx/compose/ui/graphics/Brush;

    const/16 v35, 0x0

    const/high16 v37, 0x3f800000    # 1.0f

    .line 157
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v38

    .line 158
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v39

    const/high16 v40, 0x3f800000    # 1.0f

    const-string v32, ""

    .line 164
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v10, 0x41100000    # 9.0f

    const/high16 v11, 0x41640000    # 14.25f

    .line 44
    invoke-virtual {v0, v10, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3f30a3d7    # 0.69f

    const/4 v5, 0x0

    const/high16 v6, 0x3fa00000    # 1.25f

    const v7, -0x40f0a3d7    # -0.56f

    const/high16 v8, 0x3fa00000    # 1.25f

    const/high16 v9, -0x40600000    # -1.25f

    move-object v3, v0

    .line 45
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x411b0a3d    # 9.69f

    const/high16 v4, 0x413c0000    # 11.75f

    .line 46
    invoke-virtual {v0, v3, v4, v10, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x4144f5c3    # 12.31f

    const/high16 v4, 0x41500000    # 13.0f

    const/high16 v5, 0x40f80000    # 7.75f

    .line 47
    invoke-virtual {v0, v5, v3, v5, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x4104f5c3    # 8.31f

    .line 48
    invoke-virtual {v0, v3, v11, v10, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v3, 0x418c0000    # 17.5f

    const/high16 v4, 0x41200000    # 10.0f

    .line 50
    invoke-virtual {v0, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x0

    const v6, 0x3fbc28f6    # 1.47f

    const v7, -0x4247ae14    # -0.09f

    const v8, 0x400ae148    # 2.17f

    const v9, -0x418a3d71    # -0.24f

    move-object v3, v0

    .line 51
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x419f0a3d    # 19.88f

    const v5, 0x4127851f    # 10.47f

    const/high16 v6, 0x41a00000    # 20.0f

    const v7, 0x4133851f    # 11.22f

    const/high16 v8, 0x41a00000    # 20.0f

    const/high16 v9, 0x41400000    # 12.0f

    .line 52
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, 0x3f9c28f6    # 1.22f

    const v6, -0x4170a3d7    # -0.28f

    const v7, 0x4017ae14    # 2.37f

    const v8, -0x40bae148    # -0.77f

    const v9, 0x4059999a    # 3.4f

    .line 53
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x3fbeb852    # 1.49f

    .line 54
    invoke-virtual {v0, v3, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x41ac3d71    # 21.53f

    const v5, 0x41770a3d    # 15.44f

    const/high16 v6, 0x41b00000    # 22.0f

    const v7, 0x415c7ae1    # 13.78f

    const/high16 v8, 0x41b00000    # 22.0f

    const/high16 v9, 0x41400000    # 12.0f

    move-object v3, v0

    .line 55
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, -0x3f4f5c29    # -5.52f

    const v6, -0x3f70a3d7    # -4.48f

    const/high16 v7, -0x3ee00000    # -10.0f

    const/high16 v8, -0x3ee00000    # -10.0f

    const/high16 v9, -0x3ee00000    # -10.0f

    .line 56
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x401c28f6    # -1.78f

    const/4 v5, 0x0

    const v6, -0x3fa3d70a    # -3.44f

    const v7, 0x3ef0a3d7    # 0.47f

    const v8, -0x3f63851f    # -4.89f

    const v9, 0x3fa3d70a    # 1.28f

    .line 57
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x40aa8f5c    # 5.33f

    .line 58
    invoke-virtual {v0, v3, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x415ee148    # 13.93f

    const v5, 0x4117d70a    # 9.49f

    const v6, 0x417a6666    # 15.65f

    const/high16 v7, 0x41200000    # 10.0f

    const/high16 v8, 0x418c0000    # 17.5f

    const/high16 v9, 0x41200000    # 10.0f

    move-object v3, v0

    .line 59
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x412a8f5c    # 10.66f

    const v4, 0x4083d70a    # 4.12f

    .line 61
    invoke-virtual {v0, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x413170a4    # 11.09f

    const v5, 0x4081999a    # 4.05f

    const v6, 0x4138a3d7    # 11.54f

    const/high16 v7, 0x40800000    # 4.0f

    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v9, 0x40800000    # 4.0f

    move-object v3, v0

    .line 62
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x4039999a    # 2.9f

    const/4 v5, 0x0

    const v6, 0x40ae147b    # 5.44f

    const v7, 0x3fc7ae14    # 1.56f

    const v8, 0x40dae148    # 6.84f

    const v9, 0x407851ec    # 3.88f

    .line 63
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x419347ae    # 18.41f

    const v5, 0x40fe6666    # 7.95f

    const v6, 0x418fae14    # 17.96f

    const/high16 v7, 0x41000000    # 8.0f

    const/high16 v8, 0x418c0000    # 17.5f

    const/high16 v9, 0x41000000    # 8.0f

    .line 64
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x4169999a    # 14.6f

    const/high16 v5, 0x41000000    # 8.0f

    const v6, 0x4140f5c3    # 12.06f

    const v7, 0x40ce147b    # 6.44f

    const v8, 0x412a8f5c    # 10.66f

    const v9, 0x4083d70a    # 4.12f

    .line 65
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v10, 0x3ff1eb85    # 1.89f

    const v11, 0x406e147b    # 3.72f

    .line 67
    invoke-virtual {v0, v10, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v12, 0x400c28f6    # 2.19f

    .line 68
    invoke-virtual {v0, v12, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x4031eb85    # 2.78f

    const v5, 0x40f33333    # 7.6f

    const/high16 v6, 0x40000000    # 2.0f

    const v7, 0x411b5c29    # 9.71f

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v9, 0x41400000    # 12.0f

    .line 69
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, 0x40b0a3d7    # 5.52f

    const v6, 0x408f5c29    # 4.48f

    const/high16 v7, 0x41200000    # 10.0f

    const/high16 v8, 0x41200000    # 10.0f

    const/high16 v9, 0x41200000    # 10.0f

    .line 70
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x40128f5c    # 2.29f

    const/4 v5, 0x0

    const v6, 0x408ccccd    # 4.4f

    const v7, -0x40b851ec    # -0.78f

    const v8, 0x40c2e148    # 6.09f

    const v9, -0x3ffae148    # -2.08f

    .line 71
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    invoke-virtual {v0, v12, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x3fb47ae1    # 1.41f

    const v4, -0x404b851f    # -1.41f

    .line 73
    invoke-virtual {v0, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x4053d70a    # 3.31f

    const v4, 0x4013d70a    # 2.31f

    .line 74
    invoke-virtual {v0, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    invoke-virtual {v0, v10, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v10, 0x418547ae    # 16.66f

    const v11, 0x4193eb85    # 18.49f

    .line 77
    invoke-virtual {v0, v10, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x4175999a    # 15.35f

    const v5, 0x419b851f    # 19.44f

    const v6, 0x415bd70a    # 13.74f

    const/high16 v7, 0x41a00000    # 20.0f

    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v9, 0x41a00000    # 20.0f

    move-object v3, v0

    .line 78
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x3f72e148    # -4.41f

    const/4 v5, 0x0

    const/high16 v6, -0x3f000000    # -8.0f

    const v7, -0x3f9a3d71    # -3.59f

    const/high16 v8, -0x3f000000    # -8.0f

    const/high16 v9, -0x3f000000    # -8.0f

    .line 79
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, -0x42b33333    # -0.05f

    const v6, 0x3c23d70a    # 0.01f

    const v7, -0x42333333    # -0.1f

    const/4 v8, 0x0

    const v9, -0x41f0a3d7    # -0.14f

    .line 80
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3fb1eb85    # 1.39f

    const v5, -0x40fae148    # -0.52f

    const v6, 0x402851ec    # 2.63f

    const v7, -0x40533333    # -1.35f

    const v8, 0x4068f5c3    # 3.64f

    const v9, -0x3fe70a3d    # -2.39f

    .line 81
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    invoke-virtual {v0, v10, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f3851ec    # 0.72f

    .line 85
    invoke-virtual {v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x40b66666    # 5.7f

    const v5, 0x4109c28f    # 8.61f

    const v6, 0x40a2e148    # 5.09f

    const v7, 0x411170a4    # 9.09f

    const v8, 0x408d70a4    # 4.42f

    const v9, 0x4117851f    # 9.47f

    .line 86
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x4095c28f    # 4.68f

    const v5, 0x410b3333    # 8.7f

    const v6, 0x40a1999a    # 5.05f

    const v7, 0x40ffae14    # 7.99f

    const v8, 0x40b051ec    # 5.51f

    const v9, 0x40eae148    # 7.34f

    .line 87
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 166
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v30

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x3800

    const/16 v45, 0x0

    .line 162
    invoke-static/range {v29 .. v45}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/twotone/FaceRetouchingOffKt;->_faceRetouchingOff:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 91
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
