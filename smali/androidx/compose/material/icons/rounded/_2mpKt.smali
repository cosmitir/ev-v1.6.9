.class public final Landroidx/compose/material/icons/rounded/_2mpKt;
.super Ljava/lang/Object;
.source "_2mp.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\n_2mp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _2mp.kt\nandroidx/compose/material/icons/rounded/_2mpKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,105:1\n122#2:106\n116#2,3:107\n119#2,3:111\n132#2,18:114\n152#2:151\n132#2,18:152\n152#2:189\n175#3:110\n622#4,2:132\n634#4,2:134\n636#4,11:140\n622#4,2:170\n634#4,2:172\n636#4,11:178\n50#5,4:136\n50#5,4:174\n*S KotlinDebug\n*F\n+ 1 _2mp.kt\nandroidx/compose/material/icons/rounded/_2mpKt\n*L\n29#1:106\n29#1:107,3\n29#1:111,3\n30#1:114,18\n30#1:151\n37#1:152,18\n37#1:189\n29#1:110\n30#1:132,2\n30#1:134,2\n30#1:140,11\n37#1:170,2\n37#1:172,2\n37#1:178,11\n30#1:136,4\n37#1:174,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "__2mp",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "_2mp",
        "Landroidx/compose/material/icons/Icons$Rounded;",
        "get_2mp",
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
.field private static __2mp:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final get_2mp(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 46

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/rounded/_2mpKt;->__2mp:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "Rounded._2mp"

    .line 107
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object/from16 v29, v1

    move-object v12, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 110
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

    .line 107
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    .line 117
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v14

    .line 124
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

    .line 129
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v21

    .line 130
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    const-string v15, ""

    .line 136
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v1, 0x41700000    # 15.0f

    const/high16 v2, 0x41600000    # 14.0f

    .line 31
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 32
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 33
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, -0x40400000    # -1.5f

    .line 34
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 138
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v13

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3800

    const/16 v28, 0x0

    .line 134
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/high16 v34, 0x3f800000    # 1.0f

    const/high16 v36, 0x3f800000    # 1.0f

    .line 155
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v31

    .line 162
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v4

    invoke-direct {v0, v4, v5, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v33, v0

    check-cast v33, Landroidx/compose/ui/graphics/Brush;

    const/16 v35, 0x0

    const/high16 v37, 0x3f800000    # 1.0f

    .line 167
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v38

    .line 168
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v39

    const/high16 v40, 0x3f800000    # 1.0f

    const-string v32, ""

    .line 174
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v1, 0x41980000    # 19.0f

    const/high16 v3, 0x40400000    # 3.0f

    .line 38
    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x40a00000    # 5.0f

    .line 39
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x4079999a    # 3.9f

    const/high16 v5, 0x40400000    # 3.0f

    const/high16 v6, 0x40400000    # 3.0f

    const v7, 0x4079999a    # 3.9f

    const/high16 v8, 0x40400000    # 3.0f

    const/high16 v9, 0x40a00000    # 5.0f

    move-object v3, v0

    .line 40
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, 0x3f8ccccd    # 1.1f

    const v6, 0x3f666666    # 0.9f

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v9, 0x40000000    # 2.0f

    .line 42
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3f8ccccd    # 1.1f

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const v7, -0x4099999a    # -0.9f

    const/high16 v9, -0x40000000    # -2.0f

    .line 44
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v4, 0x41a80000    # 21.0f

    const v5, 0x4079999a    # 3.9f

    const v6, 0x41a0cccd    # 20.1f

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v8, 0x41980000    # 19.0f

    const/high16 v9, 0x40400000    # 3.0f

    .line 46
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v10, 0x41100000    # 9.0f

    .line 48
    invoke-virtual {v0, v1, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, -0x40f33333    # -0.55f

    const v6, 0x3ee66666    # 0.45f

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, -0x40800000    # -1.0f

    .line 49
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x40000000    # 2.0f

    .line 50
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x40e00000    # 7.0f

    .line 51
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, -0x3ff00000    # -2.25f

    .line 52
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x412570a4    # 10.34f

    const/high16 v5, 0x40e00000    # 7.0f

    const/high16 v6, 0x41200000    # 10.0f

    const v7, 0x40d51eb8    # 6.66f

    const/high16 v8, 0x41200000    # 10.0f

    const/high16 v9, 0x40c80000    # 6.25f

    .line 53
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3eae147b    # 0.34f

    const/high16 v11, -0x40c00000    # -0.75f

    const/high16 v12, 0x3f400000    # 0.75f

    .line 54
    invoke-virtual {v0, v1, v11, v12, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x40300000    # 2.75f

    .line 55
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3f0ccccd    # 0.55f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3ee66666    # 0.45f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 56
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x41000000    # 8.0f

    .line 57
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, 0x3f0ccccd    # 0.55f

    const v6, -0x4119999a    # -0.45f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, -0x40800000    # -1.0f

    .line 58
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, -0x40000000    # -2.0f

    .line 59
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 60
    invoke-virtual {v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v13, 0x40100000    # 2.25f

    .line 61
    invoke-virtual {v0, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3ed1eb85    # 0.41f

    const/4 v5, 0x0

    const/high16 v6, 0x3f400000    # 0.75f

    const v7, 0x3eae147b    # 0.34f

    const/high16 v8, 0x3f400000    # 0.75f

    const/high16 v9, 0x3f400000    # 0.75f

    move-object v3, v0

    .line 62
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, -0x4151eb85    # -0.34f

    .line 63
    invoke-virtual {v0, v14, v12, v11, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v15, 0x41300000    # 11.0f

    .line 64
    invoke-virtual {v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x40f33333    # -0.55f

    const/high16 v6, -0x40800000    # -1.0f

    const v7, -0x4119999a    # -0.45f

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, -0x40800000    # -1.0f

    .line 65
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    invoke-virtual {v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v3, 0x41480000    # 12.5f

    const/high16 v10, 0x418e0000    # 17.75f

    .line 68
    invoke-virtual {v0, v3, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, 0x3ed1eb85    # 0.41f

    const v6, -0x4151eb85    # -0.34f

    const/high16 v7, 0x3f400000    # 0.75f

    const/high16 v8, -0x40c00000    # -0.75f

    const/high16 v9, 0x3f400000    # 0.75f

    move-object v3, v0

    .line 69
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v9, 0x419147ae    # 18.16f

    .line 70
    invoke-virtual {v0, v15, v9, v15, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v15, -0x40800000    # -1.0f

    .line 72
    invoke-virtual {v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    invoke-virtual {v0, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v4, 0x41200000    # 10.0f

    const v5, 0x418547ae    # 16.66f

    const v6, 0x411a8f5c    # 9.66f

    const/high16 v7, 0x41880000    # 17.0f

    const/high16 v8, 0x41140000    # 9.25f

    const/high16 v13, 0x41880000    # 17.0f

    move v11, v9

    move v9, v13

    .line 74
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x418547ae    # 16.66f

    const/high16 v4, 0x41820000    # 16.25f

    const/high16 v5, 0x41080000    # 8.5f

    .line 75
    invoke-virtual {v0, v5, v3, v5, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    invoke-virtual {v0, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v2, 0x40700000    # 3.75f

    .line 78
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, 0x3ed1eb85    # 0.41f

    const v6, -0x4151eb85    # -0.34f

    const/high16 v7, 0x3f400000    # 0.75f

    const/high16 v8, -0x40c00000    # -0.75f

    const/high16 v9, 0x3f400000    # 0.75f

    move-object v3, v0

    .line 79
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v2, 0x40c00000    # 6.0f

    .line 80
    invoke-virtual {v0, v2, v11, v2, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v2, 0x41580000    # 13.5f

    .line 81
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40f33333    # -0.55f

    const v6, 0x3ee66666    # 0.45f

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, -0x40800000    # -1.0f

    .line 82
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v3, 0x40900000    # 4.5f

    .line 83
    invoke-virtual {v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3f0ccccd    # 0.55f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3ee66666    # 0.45f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v3, v0

    .line 84
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    invoke-virtual {v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v3, 0x41900000    # 18.0f

    const/high16 v10, 0x41800000    # 16.0f

    .line 87
    invoke-virtual {v0, v3, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, 0x3f0ccccd    # 0.55f

    const v6, -0x4119999a    # -0.45f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, -0x40800000    # -1.0f

    move-object v3, v0

    .line 88
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    invoke-virtual {v0, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ed1eb85    # 0.41f

    const v6, -0x4151eb85    # -0.34f

    const/high16 v7, 0x3f400000    # 0.75f

    const/high16 v8, -0x40c00000    # -0.75f

    const/high16 v9, 0x3f400000    # 0.75f

    .line 91
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, -0x40c00000    # -0.75f

    .line 92
    invoke-virtual {v0, v1, v14, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40f33333    # -0.55f

    const v6, 0x3ee66666    # 0.45f

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, -0x40800000    # -1.0f

    .line 94
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x41880000    # 17.0f

    .line 95
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3f0ccccd    # 0.55f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, 0x3ee66666    # 0.45f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 96
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    invoke-virtual {v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 98
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 176
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v30

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x3800

    const/16 v45, 0x0

    .line 172
    invoke-static/range {v29 .. v45}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/rounded/_2mpKt;->__2mp:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 101
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
