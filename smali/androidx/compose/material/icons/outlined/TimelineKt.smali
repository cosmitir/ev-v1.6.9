.class public final Landroidx/compose/material/icons/outlined/TimelineKt;
.super Ljava/lang/Object;
.source "Timeline.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimeline.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timeline.kt\nandroidx/compose/material/icons/outlined/TimelineKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,67:1\n122#2:68\n116#2,3:69\n119#2,3:73\n132#2,18:76\n152#2:113\n175#3:72\n622#4,2:94\n634#4,2:96\n636#4,11:102\n50#5,4:98\n*S KotlinDebug\n*F\n+ 1 Timeline.kt\nandroidx/compose/material/icons/outlined/TimelineKt\n*L\n29#1:68\n29#1:69,3\n29#1:73,3\n30#1:76,18\n30#1:113\n29#1:72\n30#1:94,2\n30#1:96,2\n30#1:102,11\n30#1:98,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_timeline",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Timeline",
        "Landroidx/compose/material/icons/Icons$Outlined;",
        "getTimeline",
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
.field private static _timeline:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getTimeline(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 29

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/outlined/TimelineKt;->_timeline:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "Outlined.Timeline"

    .line 69
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object v12, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 72
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

    .line 69
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    .line 79
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v14

    .line 86
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

    .line 91
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v21

    .line 92
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    const-string v15, ""

    .line 98
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v8, 0x41b80000    # 23.0f

    const/high16 v9, 0x41000000    # 8.0f

    .line 31
    invoke-virtual {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3f8ccccd    # 1.1f

    const v3, -0x4099999a    # -0.9f

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x40000000    # -2.0f

    const/high16 v6, 0x40000000    # 2.0f

    move-object v0, v7

    .line 32
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41c7ae14    # -0.18f

    const/4 v2, 0x0

    const v3, -0x414ccccd    # -0.35f

    const v4, -0x435c28f6    # -0.02f

    const v5, -0x40fd70a4    # -0.51f

    const v6, -0x4270a3d7    # -0.07f

    .line 33
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v10, -0x3f9c28f6    # -3.56f

    const v11, 0x40633333    # 3.55f

    .line 34
    invoke-virtual {v7, v10, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x4187d70a    # 16.98f

    const v2, 0x415a3d71    # 13.64f

    const/high16 v3, 0x41880000    # 17.0f

    const v4, 0x415d1eb8    # 13.82f

    const/high16 v5, 0x41880000    # 17.0f

    const/high16 v6, 0x41600000    # 14.0f

    .line 35
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3f8ccccd    # 1.1f

    const v3, -0x4099999a    # -0.9f

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x40000000    # -2.0f

    const/high16 v6, 0x40000000    # 2.0f

    .line 36
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v13, -0x40000000    # -2.0f

    const v6, -0x4099999a    # -0.9f

    .line 37
    invoke-virtual {v7, v13, v6, v13, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, -0x41c7ae14    # -0.18f

    const v3, 0x3ca3d70a    # 0.02f

    const v4, -0x4147ae14    # -0.36f

    const v5, 0x3d8f5c29    # 0.07f

    const v24, -0x40fae148    # -0.52f

    move v8, v6

    move/from16 v6, v24

    .line 38
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3fdccccd    # -2.55f

    .line 39
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x4125c28f    # 10.36f

    const v2, 0x412fae14    # 10.98f

    const v3, 0x4122e148    # 10.18f

    const/high16 v4, 0x41300000    # 11.0f

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v6, 0x41300000    # 11.0f

    move-object v0, v7

    .line 40
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41c7ae14    # -0.18f

    const/4 v2, 0x0

    const v3, -0x4147ae14    # -0.36f

    const v4, -0x435c28f6    # -0.02f

    const v5, -0x40fae148    # -0.52f

    const v6, -0x4270a3d7    # -0.07f

    .line 41
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, -0x3f6e6666    # -4.55f

    const v5, 0x4091eb85    # 4.56f

    .line 42
    invoke-virtual {v7, v6, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x409f5c29    # 4.98f

    const v2, 0x417a6666    # 15.65f

    const/high16 v3, 0x40a00000    # 5.0f

    const v4, 0x417d1eb8    # 15.82f

    const/high16 v24, 0x40a00000    # 5.0f

    const/high16 v25, 0x41800000    # 16.0f

    move v9, v5

    move/from16 v5, v24

    move v10, v6

    move/from16 v6, v25

    .line 43
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3f8ccccd    # 1.1f

    const v3, -0x4099999a    # -0.9f

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x40000000    # -2.0f

    const/high16 v6, 0x40000000    # 2.0f

    .line 44
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    invoke-virtual {v7, v13, v8, v13, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v8, 0x3f666666    # 0.9f

    .line 46
    invoke-virtual {v7, v8, v13, v6, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e3851ec    # 0.18f

    const/4 v2, 0x0

    const v3, 0x3eb33333    # 0.35f

    const v4, 0x3ca3d70a    # 0.02f

    const v5, 0x3f028f5c    # 0.51f

    const v13, 0x3d8f5c29    # 0.07f

    move v11, v6

    move v6, v13

    .line 47
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    invoke-virtual {v7, v9, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x410051ec    # 8.02f

    const v2, 0x4115c28f    # 9.36f

    const/high16 v3, 0x41000000    # 8.0f

    const v4, 0x4112e148    # 9.18f

    const/high16 v5, 0x41000000    # 8.0f

    const/high16 v6, 0x41100000    # 9.0f

    .line 49
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x40733333    # -1.1f

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, -0x40000000    # -2.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, -0x40000000    # -2.0f

    .line 50
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    invoke-virtual {v7, v11, v8, v11, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x3e3851ec    # 0.18f

    const v3, -0x435c28f6    # -0.02f

    const v4, 0x3eb851ec    # 0.36f

    const v5, -0x4270a3d7    # -0.07f

    const v6, 0x3f051eb8    # 0.52f

    .line 52
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40233333    # 2.55f

    .line 53
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x416a3d71    # 14.64f

    const v2, 0x414051ec    # 12.02f

    const v3, 0x416d1eb8    # 14.82f

    const/high16 v4, 0x41400000    # 12.0f

    const/high16 v5, 0x41700000    # 15.0f

    const/high16 v6, 0x41400000    # 12.0f

    move-object v0, v7

    .line 54
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e3851ec    # 0.18f

    const/4 v2, 0x0

    const v3, 0x3eb851ec    # 0.36f

    const v4, 0x3ca3d70a    # 0.02f

    const v5, 0x3f051eb8    # 0.52f

    const v6, 0x3d8f5c29    # 0.07f

    .line 55
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40633333    # 3.55f

    const v1, -0x3f9c28f6    # -3.56f

    .line 56
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x419828f6    # 19.02f

    const v2, 0x4105999a    # 8.35f

    const/high16 v3, 0x41980000    # 19.0f

    const v4, 0x4102e148    # 8.18f

    const/high16 v5, 0x41980000    # 19.0f

    const/high16 v6, 0x41000000    # 8.0f

    move-object v0, v7

    .line 57
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x40733333    # -1.1f

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, -0x40000000    # -2.0f

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, -0x40000000    # -2.0f

    .line 58
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40dccccd    # 6.9f

    const/high16 v1, 0x41000000    # 8.0f

    const/high16 v2, 0x41b80000    # 23.0f

    .line 59
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 100
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v13

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3800

    const/16 v28, 0x0

    .line 96
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/outlined/TimelineKt;->_timeline:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 63
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
