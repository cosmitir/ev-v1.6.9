.class public final Landroidx/compose/material/icons/twotone/PointOfSaleKt;
.super Ljava/lang/Object;
.source "PointOfSale.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPointOfSale.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PointOfSale.kt\nandroidx/compose/material/icons/twotone/PointOfSaleKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,221:1\n122#2:222\n116#2,3:223\n119#2,3:227\n132#2,18:230\n152#2:267\n132#2,18:268\n152#2:305\n175#3:226\n622#4,2:248\n634#4,2:250\n636#4,11:256\n622#4,2:286\n634#4,2:288\n636#4,11:294\n50#5,4:252\n50#5,4:290\n*S KotlinDebug\n*F\n+ 1 PointOfSale.kt\nandroidx/compose/material/icons/twotone/PointOfSaleKt\n*L\n29#1:222\n29#1:223,3\n29#1:227,3\n30#1:230,18\n30#1:267\n110#1:268,18\n110#1:305\n29#1:226\n30#1:248,2\n30#1:250,2\n30#1:256,11\n110#1:286,2\n110#1:288,2\n110#1:294,11\n30#1:252,4\n110#1:290,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_pointOfSale",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "PointOfSale",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getPointOfSale",
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
.field private static _pointOfSale:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getPointOfSale(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 46

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/twotone/PointOfSaleKt;->_pointOfSale:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "TwoTone.PointOfSale"

    .line 223
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object/from16 v29, v1

    move-object v12, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 226
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

    .line 223
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v17, 0x3e99999a    # 0.3f

    const v19, 0x3e99999a    # 0.3f

    .line 233
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v14

    .line 240
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

    .line 245
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v21

    .line 246
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    const-string v15, ""

    .line 252
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v1, 0x41180000    # 9.5f

    const/high16 v2, 0x41800000    # 16.0f

    .line 31
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v11, -0x40800000    # -1.0f

    .line 32
    invoke-virtual {v0, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4103851f    # 8.22f

    const/high16 v6, 0x41800000    # 16.0f

    const/high16 v7, 0x41000000    # 8.0f

    const v8, 0x417c7ae1    # 15.78f

    const/high16 v9, 0x41000000    # 8.0f

    const/high16 v10, 0x41780000    # 15.5f

    move-object v4, v0

    .line 33
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41000000    # 8.0f

    const v6, 0x4173851f    # 15.22f

    const v7, 0x4103851f    # 8.22f

    const/high16 v8, 0x41700000    # 15.0f

    const/high16 v9, 0x41080000    # 8.5f

    const/high16 v10, 0x41700000    # 15.0f

    .line 34
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v13, 0x3f800000    # 1.0f

    .line 35
    invoke-virtual {v0, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3e8f5c29    # 0.28f

    const/4 v6, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    const v8, 0x3e6147ae    # 0.22f

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v10, 0x3f000000    # 0.5f

    .line 36
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41200000    # 10.0f

    const v6, 0x417c7ae1    # 15.78f

    const v7, 0x411c7ae1    # 9.78f

    const/high16 v8, 0x41800000    # 16.0f

    const/high16 v9, 0x41180000    # 9.5f

    const/high16 v10, 0x41800000    # 16.0f

    .line 37
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v10, 0x41200000    # 10.0f

    const/high16 v9, 0x41580000    # 13.5f

    .line 39
    invoke-virtual {v0, v10, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, -0x4170a3d7    # -0.28f

    const v7, -0x419eb852    # -0.22f

    const/high16 v8, -0x41000000    # -0.5f

    const/high16 v24, -0x41000000    # -0.5f

    const/high16 v25, -0x41000000    # -0.5f

    move v1, v9

    move/from16 v9, v24

    move v3, v10

    move/from16 v10, v25

    .line 40
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    invoke-virtual {v0, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4103851f    # 8.22f

    const/high16 v6, 0x41500000    # 13.0f

    const/high16 v7, 0x41000000    # 8.0f

    const v8, 0x4153851f    # 13.22f

    const/high16 v9, 0x41000000    # 8.0f

    const/high16 v10, 0x41580000    # 13.5f

    .line 42
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41000000    # 8.0f

    const v6, 0x415c7ae1    # 13.78f

    const v7, 0x4103851f    # 8.22f

    const/high16 v8, 0x41600000    # 14.0f

    const/high16 v9, 0x41080000    # 8.5f

    const/high16 v10, 0x41600000    # 14.0f

    .line 43
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    invoke-virtual {v0, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x411c7ae1    # 9.78f

    const/high16 v6, 0x41600000    # 14.0f

    const/high16 v7, 0x41200000    # 10.0f

    const v8, 0x415c7ae1    # 13.78f

    const/high16 v9, 0x41200000    # 10.0f

    const/high16 v10, 0x41580000    # 13.5f

    .line 45
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v10, 0x41380000    # 11.5f

    .line 47
    invoke-virtual {v0, v3, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, -0x4170a3d7    # -0.28f

    const v7, -0x419eb852    # -0.22f

    const/high16 v8, -0x41000000    # -0.5f

    const/high16 v9, -0x41000000    # -0.5f

    move v3, v10

    move/from16 v10, v24

    .line 48
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    invoke-virtual {v0, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4103851f    # 8.22f

    const/high16 v6, 0x41300000    # 11.0f

    const/high16 v7, 0x41000000    # 8.0f

    const v8, 0x4133851f    # 11.22f

    const/high16 v9, 0x41000000    # 8.0f

    const/high16 v10, 0x41380000    # 11.5f

    .line 50
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41000000    # 8.0f

    const v6, 0x413c7ae1    # 11.78f

    const v7, 0x4103851f    # 8.22f

    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v9, 0x41080000    # 8.5f

    const/high16 v10, 0x41400000    # 12.0f

    .line 51
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    invoke-virtual {v0, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x411c7ae1    # 9.78f

    const/high16 v6, 0x41400000    # 12.0f

    const/high16 v7, 0x41200000    # 10.0f

    const v8, 0x413c7ae1    # 11.78f

    const/high16 v9, 0x41200000    # 10.0f

    const/high16 v10, 0x41380000    # 11.5f

    .line 53
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v10, 0x41500000    # 13.0f

    const/high16 v9, 0x41780000    # 15.5f

    .line 55
    invoke-virtual {v0, v10, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, -0x4170a3d7    # -0.28f

    const v7, -0x419eb852    # -0.22f

    const/high16 v8, -0x41000000    # -0.5f

    move/from16 v9, v24

    move v2, v10

    move/from16 v10, v25

    .line 56
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    invoke-virtual {v0, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4170a3d7    # -0.28f

    const/4 v6, 0x0

    const/high16 v7, -0x41000000    # -0.5f

    const v8, 0x3e6147ae    # 0.22f

    const/high16 v9, -0x41000000    # -0.5f

    const/high16 v10, 0x3f000000    # 0.5f

    .line 58
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, 0x3e8f5c29    # 0.28f

    const v7, 0x3e6147ae    # 0.22f

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f000000    # 0.5f

    .line 59
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    invoke-virtual {v0, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x414c7ae1    # 12.78f

    const/high16 v6, 0x41800000    # 16.0f

    const/high16 v7, 0x41500000    # 13.0f

    const v8, 0x417c7ae1    # 15.78f

    const/high16 v9, 0x41500000    # 13.0f

    const/high16 v10, 0x41780000    # 15.5f

    .line 61
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, -0x4170a3d7    # -0.28f

    const v7, -0x419eb852    # -0.22f

    const/high16 v8, -0x41000000    # -0.5f

    const/high16 v9, -0x41000000    # -0.5f

    const/high16 v10, -0x41000000    # -0.5f

    .line 64
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    invoke-virtual {v0, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4170a3d7    # -0.28f

    const/4 v6, 0x0

    const/high16 v7, -0x41000000    # -0.5f

    const v8, 0x3e6147ae    # 0.22f

    const/high16 v10, 0x3f000000    # 0.5f

    .line 66
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, 0x3e8f5c29    # 0.28f

    const v7, 0x3e6147ae    # 0.22f

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f000000    # 0.5f

    .line 67
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    invoke-virtual {v0, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x414c7ae1    # 12.78f

    const/high16 v6, 0x41600000    # 14.0f

    const/high16 v7, 0x41500000    # 13.0f

    const v8, 0x415c7ae1    # 13.78f

    const/high16 v9, 0x41500000    # 13.0f

    const/high16 v10, 0x41580000    # 13.5f

    .line 69
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, -0x4170a3d7    # -0.28f

    const v7, -0x419eb852    # -0.22f

    const/high16 v8, -0x41000000    # -0.5f

    const/high16 v9, -0x41000000    # -0.5f

    const/high16 v10, -0x41000000    # -0.5f

    .line 72
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    invoke-virtual {v0, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4170a3d7    # -0.28f

    const/4 v6, 0x0

    const/high16 v7, -0x41000000    # -0.5f

    const v8, 0x3e6147ae    # 0.22f

    const/high16 v10, 0x3f000000    # 0.5f

    .line 74
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, 0x3e8f5c29    # 0.28f

    const v7, 0x3e6147ae    # 0.22f

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f000000    # 0.5f

    .line 75
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    invoke-virtual {v0, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x414c7ae1    # 12.78f

    const/high16 v6, 0x41400000    # 12.0f

    const/high16 v7, 0x41500000    # 13.0f

    const v8, 0x413c7ae1    # 11.78f

    const/high16 v9, 0x41500000    # 13.0f

    const/high16 v10, 0x41380000    # 11.5f

    .line 77
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v2, 0x41780000    # 15.5f

    const/high16 v4, 0x41800000    # 16.0f

    .line 79
    invoke-virtual {v0, v4, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, -0x4170a3d7    # -0.28f

    const v7, -0x419eb852    # -0.22f

    const/high16 v8, -0x41000000    # -0.5f

    const/high16 v9, -0x41000000    # -0.5f

    const/high16 v10, -0x41000000    # -0.5f

    move-object v4, v0

    .line 80
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    invoke-virtual {v0, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4170a3d7    # -0.28f

    const/4 v6, 0x0

    const/high16 v7, -0x41000000    # -0.5f

    const v8, 0x3e6147ae    # 0.22f

    const/high16 v10, 0x3f000000    # 0.5f

    .line 82
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, 0x3e8f5c29    # 0.28f

    const v7, 0x3e6147ae    # 0.22f

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f000000    # 0.5f

    .line 83
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    invoke-virtual {v0, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x417c7ae1    # 15.78f

    const/high16 v6, 0x41800000    # 16.0f

    const/high16 v7, 0x41800000    # 16.0f

    const v8, 0x417c7ae1    # 15.78f

    const/high16 v9, 0x41800000    # 16.0f

    const/high16 v10, 0x41780000    # 15.5f

    .line 85
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v4, 0x41800000    # 16.0f

    .line 87
    invoke-virtual {v0, v4, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, -0x4170a3d7    # -0.28f

    const v7, -0x419eb852    # -0.22f

    const/high16 v8, -0x41000000    # -0.5f

    const/high16 v9, -0x41000000    # -0.5f

    const/high16 v10, -0x41000000    # -0.5f

    move-object v4, v0

    .line 88
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    invoke-virtual {v0, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4170a3d7    # -0.28f

    const/4 v6, 0x0

    const/high16 v7, -0x41000000    # -0.5f

    const v8, 0x3e6147ae    # 0.22f

    const/high16 v10, 0x3f000000    # 0.5f

    .line 90
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, 0x3e8f5c29    # 0.28f

    const v7, 0x3e6147ae    # 0.22f

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f000000    # 0.5f

    .line 91
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    invoke-virtual {v0, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x417c7ae1    # 15.78f

    const/high16 v6, 0x41600000    # 14.0f

    const/high16 v7, 0x41800000    # 16.0f

    const v8, 0x415c7ae1    # 13.78f

    const/high16 v9, 0x41800000    # 16.0f

    const/high16 v10, 0x41580000    # 13.5f

    .line 93
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x41800000    # 16.0f

    .line 95
    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, -0x4170a3d7    # -0.28f

    const v7, -0x419eb852    # -0.22f

    const/high16 v8, -0x41000000    # -0.5f

    const/high16 v9, -0x41000000    # -0.5f

    const/high16 v10, -0x41000000    # -0.5f

    .line 96
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 97
    invoke-virtual {v0, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4170a3d7    # -0.28f

    const/4 v6, 0x0

    const/high16 v7, -0x41000000    # -0.5f

    const v8, 0x3e6147ae    # 0.22f

    const/high16 v10, 0x3f000000    # 0.5f

    .line 98
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, 0x3e8f5c29    # 0.28f

    const v7, 0x3e6147ae    # 0.22f

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f000000    # 0.5f

    .line 99
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 100
    invoke-virtual {v0, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x417c7ae1    # 15.78f

    const/high16 v6, 0x41400000    # 12.0f

    const/high16 v7, 0x41800000    # 16.0f

    const v8, 0x413c7ae1    # 11.78f

    const/high16 v9, 0x41800000    # 16.0f

    const/high16 v10, 0x41380000    # 11.5f

    .line 101
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 102
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x41880000    # 17.0f

    const/high16 v3, 0x40800000    # 4.0f

    .line 103
    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v4, 0x40e00000    # 7.0f

    .line 104
    invoke-virtual {v0, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40000000    # 2.0f

    .line 105
    invoke-virtual {v0, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v6, 0x41200000    # 10.0f

    .line 106
    invoke-virtual {v0, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 107
    invoke-virtual {v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 108
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 254
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v0

    move v6, v13

    move-object v13, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3800

    const/16 v28, 0x0

    .line 250
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/high16 v34, 0x3f800000    # 1.0f

    const/high16 v36, 0x3f800000    # 1.0f

    .line 271
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v31

    .line 278
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct {v0, v7, v8, v9}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v33, v0

    check-cast v33, Landroidx/compose/ui/graphics/Brush;

    const/16 v35, 0x0

    const/high16 v37, 0x3f800000    # 1.0f

    .line 283
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v38

    .line 284
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v39

    const/high16 v40, 0x3f800000    # 1.0f

    const-string v32, ""

    .line 290
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 111
    invoke-virtual {v0, v1, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 112
    invoke-virtual {v0, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, 0x40bccccd    # 5.9f

    const/high16 v14, 0x40000000    # 2.0f

    const/high16 v15, 0x40a00000    # 5.0f

    const v16, 0x4039999a    # 2.9f

    const/high16 v17, 0x40a00000    # 5.0f

    const/high16 v18, 0x40800000    # 4.0f

    move-object v12, v0

    .line 113
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 114
    invoke-virtual {v0, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v13, 0x0

    const v14, 0x3f8ccccd    # 1.1f

    const v15, 0x3f666666    # 0.9f

    const/high16 v16, 0x40000000    # 2.0f

    const/high16 v17, 0x40000000    # 2.0f

    const/high16 v18, 0x40000000    # 2.0f

    .line 115
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v7, 0x41200000    # 10.0f

    .line 116
    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, 0x3f8ccccd    # 1.1f

    const/4 v14, 0x0

    const/high16 v15, 0x40000000    # 2.0f

    const v16, -0x4099999a    # -0.9f

    const/high16 v18, -0x40000000    # -2.0f

    .line 117
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 118
    invoke-virtual {v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v13, 0x41980000    # 19.0f

    const v14, 0x4039999a    # 2.9f

    const v15, 0x4190cccd    # 18.1f

    const/high16 v16, 0x40000000    # 2.0f

    const/high16 v17, 0x41880000    # 17.0f

    const/high16 v18, 0x40000000    # 2.0f

    .line 119
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 120
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v7, 0x40c00000    # 6.0f

    .line 121
    invoke-virtual {v0, v1, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 122
    invoke-virtual {v0, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 123
    invoke-virtual {v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x41200000    # 10.0f

    .line 124
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 125
    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 126
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x41b00000    # 22.0f

    const/high16 v4, 0x41a00000    # 20.0f

    .line 127
    invoke-virtual {v0, v4, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 128
    invoke-virtual {v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, -0x40733333    # -1.1f

    const/4 v14, 0x0

    const/high16 v15, -0x40000000    # -2.0f

    const v16, -0x4099999a    # -0.9f

    const/high16 v17, -0x40000000    # -2.0f

    const/high16 v18, -0x40000000    # -2.0f

    .line 129
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 130
    invoke-virtual {v0, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 131
    invoke-virtual {v0, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 132
    invoke-virtual {v0, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v13, 0x41b00000    # 22.0f

    const v14, 0x41a8cccd    # 21.1f

    const v15, 0x41a8cccd    # 21.1f

    const/high16 v16, 0x41b00000    # 22.0f

    const/high16 v17, 0x41a00000    # 20.0f

    const/high16 v18, 0x41b00000    # 22.0f

    .line 133
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 134
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x41943d71    # 18.53f

    const v3, 0x41230a3d    # 10.19f

    .line 135
    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, 0x4191ae14    # 18.21f

    const v14, 0x4117851f    # 9.47f

    const v15, 0x418beb85    # 17.49f

    const/high16 v16, 0x41100000    # 9.0f

    const v17, 0x4185999a    # 16.7f

    const/high16 v18, 0x41100000    # 9.0f

    .line 136
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v7, 0x40e9999a    # 7.3f

    .line 137
    invoke-virtual {v0, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, -0x40b5c28f    # -0.79f

    const/4 v14, 0x0

    const v15, -0x403eb852    # -1.51f

    const v16, 0x3ef0a3d7    # 0.47f

    const v17, -0x4015c28f    # -1.83f

    const v18, 0x3f9851ec    # 1.19f

    .line 138
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v7, 0x41900000    # 18.0f

    .line 139
    invoke-virtual {v0, v5, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 140
    invoke-virtual {v0, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 141
    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 142
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x41180000    # 9.5f

    const/high16 v3, 0x41800000    # 16.0f

    .line 143
    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 144
    invoke-virtual {v0, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, 0x4103851f    # 8.22f

    const/high16 v14, 0x41800000    # 16.0f

    const/high16 v15, 0x41000000    # 8.0f

    const v16, 0x417c7ae1    # 15.78f

    const/high16 v17, 0x41000000    # 8.0f

    const/high16 v18, 0x41780000    # 15.5f

    .line 145
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v13, 0x41000000    # 8.0f

    const v14, 0x4173851f    # 15.22f

    const v15, 0x4103851f    # 8.22f

    const/high16 v16, 0x41700000    # 15.0f

    const/high16 v17, 0x41080000    # 8.5f

    const/high16 v18, 0x41700000    # 15.0f

    .line 146
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 147
    invoke-virtual {v0, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, 0x3e8f5c29    # 0.28f

    const/4 v14, 0x0

    const/high16 v15, 0x3f000000    # 0.5f

    const v16, 0x3e6147ae    # 0.22f

    const/high16 v17, 0x3f000000    # 0.5f

    const/high16 v18, 0x3f000000    # 0.5f

    .line 148
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v13, 0x41200000    # 10.0f

    const v14, 0x417c7ae1    # 15.78f

    const v15, 0x411c7ae1    # 9.78f

    const/high16 v16, 0x41800000    # 16.0f

    const/high16 v17, 0x41180000    # 9.5f

    const/high16 v18, 0x41800000    # 16.0f

    .line 149
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 150
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x41600000    # 14.0f

    const/high16 v3, 0x41180000    # 9.5f

    .line 151
    invoke-virtual {v0, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 152
    invoke-virtual {v0, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, 0x4103851f    # 8.22f

    const/high16 v14, 0x41600000    # 14.0f

    const/high16 v15, 0x41000000    # 8.0f

    const v16, 0x415c7ae1    # 13.78f

    const/high16 v17, 0x41000000    # 8.0f

    const/high16 v18, 0x41580000    # 13.5f

    .line 153
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v13, 0x41000000    # 8.0f

    const v14, 0x4153851f    # 13.22f

    const v15, 0x4103851f    # 8.22f

    const/high16 v16, 0x41500000    # 13.0f

    const/high16 v17, 0x41080000    # 8.5f

    const/high16 v18, 0x41500000    # 13.0f

    .line 154
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 155
    invoke-virtual {v0, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, 0x3e8f5c29    # 0.28f

    const/4 v14, 0x0

    const/high16 v15, 0x3f000000    # 0.5f

    const v16, 0x3e6147ae    # 0.22f

    const/high16 v17, 0x3f000000    # 0.5f

    const/high16 v18, 0x3f000000    # 0.5f

    .line 156
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v13, 0x41200000    # 10.0f

    const v14, 0x415c7ae1    # 13.78f

    const v15, 0x411c7ae1    # 9.78f

    const/high16 v16, 0x41600000    # 14.0f

    const/high16 v17, 0x41180000    # 9.5f

    const/high16 v18, 0x41600000    # 14.0f

    .line 157
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 158
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v3, 0x41400000    # 12.0f

    const/high16 v4, 0x41180000    # 9.5f

    .line 159
    invoke-virtual {v0, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 160
    invoke-virtual {v0, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, 0x4103851f    # 8.22f

    const/high16 v14, 0x41400000    # 12.0f

    const/high16 v15, 0x41000000    # 8.0f

    const v16, 0x413c7ae1    # 11.78f

    const/high16 v17, 0x41000000    # 8.0f

    const/high16 v18, 0x41380000    # 11.5f

    .line 161
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v13, 0x41000000    # 8.0f

    const v14, 0x4133851f    # 11.22f

    const v15, 0x4103851f    # 8.22f

    const/high16 v16, 0x41300000    # 11.0f

    const/high16 v17, 0x41080000    # 8.5f

    const/high16 v18, 0x41300000    # 11.0f

    .line 162
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 163
    invoke-virtual {v0, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, 0x3e8f5c29    # 0.28f

    const/4 v14, 0x0

    const/high16 v15, 0x3f000000    # 0.5f

    const v16, 0x3e6147ae    # 0.22f

    const/high16 v17, 0x3f000000    # 0.5f

    const/high16 v18, 0x3f000000    # 0.5f

    .line 164
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v13, 0x41200000    # 10.0f

    const v14, 0x413c7ae1    # 11.78f

    const v15, 0x411c7ae1    # 9.78f

    const/high16 v16, 0x41400000    # 12.0f

    const/high16 v17, 0x41180000    # 9.5f

    const/high16 v18, 0x41400000    # 12.0f

    .line 165
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 166
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v4, 0x41480000    # 12.5f

    const/high16 v5, 0x41800000    # 16.0f

    .line 167
    invoke-virtual {v0, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 168
    invoke-virtual {v0, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, -0x4170a3d7    # -0.28f

    const/4 v14, 0x0

    const/high16 v15, -0x41000000    # -0.5f

    const v16, -0x419eb852    # -0.22f

    const/high16 v17, -0x41000000    # -0.5f

    const/high16 v18, -0x41000000    # -0.5f

    .line 169
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v13, 0x0

    const v14, -0x4170a3d7    # -0.28f

    const v15, 0x3e6147ae    # 0.22f

    const/high16 v16, -0x41000000    # -0.5f

    const/high16 v17, 0x3f000000    # 0.5f

    .line 170
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 171
    invoke-virtual {v0, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, 0x3e8f5c29    # 0.28f

    const/4 v14, 0x0

    const/high16 v15, 0x3f000000    # 0.5f

    const v16, 0x3e6147ae    # 0.22f

    const/high16 v18, 0x3f000000    # 0.5f

    .line 172
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v13, 0x41500000    # 13.0f

    const v14, 0x417c7ae1    # 15.78f

    const v15, 0x414c7ae1    # 12.78f

    const/high16 v16, 0x41800000    # 16.0f

    const/high16 v17, 0x41480000    # 12.5f

    const/high16 v18, 0x41800000    # 16.0f

    .line 173
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 174
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 175
    invoke-virtual {v0, v4, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 176
    invoke-virtual {v0, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, -0x4170a3d7    # -0.28f

    const/4 v14, 0x0

    const/high16 v15, -0x41000000    # -0.5f

    const v16, -0x419eb852    # -0.22f

    const/high16 v17, -0x41000000    # -0.5f

    const/high16 v18, -0x41000000    # -0.5f

    .line 177
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v13, 0x0

    const v14, -0x4170a3d7    # -0.28f

    const v15, 0x3e6147ae    # 0.22f

    const/high16 v16, -0x41000000    # -0.5f

    const/high16 v17, 0x3f000000    # 0.5f

    .line 178
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 179
    invoke-virtual {v0, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, 0x3e8f5c29    # 0.28f

    const/4 v14, 0x0

    const/high16 v15, 0x3f000000    # 0.5f

    const v16, 0x3e6147ae    # 0.22f

    const/high16 v18, 0x3f000000    # 0.5f

    .line 180
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v13, 0x41500000    # 13.0f

    const v14, 0x415c7ae1    # 13.78f

    const v15, 0x414c7ae1    # 12.78f

    const/high16 v16, 0x41600000    # 14.0f

    const/high16 v17, 0x41480000    # 12.5f

    const/high16 v18, 0x41600000    # 14.0f

    .line 181
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 182
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 183
    invoke-virtual {v0, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 184
    invoke-virtual {v0, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, -0x4170a3d7    # -0.28f

    const/4 v14, 0x0

    const/high16 v15, -0x41000000    # -0.5f

    const v16, -0x419eb852    # -0.22f

    const/high16 v17, -0x41000000    # -0.5f

    const/high16 v18, -0x41000000    # -0.5f

    .line 185
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v13, 0x0

    const v14, -0x4170a3d7    # -0.28f

    const v15, 0x3e6147ae    # 0.22f

    const/high16 v16, -0x41000000    # -0.5f

    const/high16 v17, 0x3f000000    # 0.5f

    .line 186
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 187
    invoke-virtual {v0, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, 0x3e8f5c29    # 0.28f

    const/4 v14, 0x0

    const/high16 v15, 0x3f000000    # 0.5f

    const v16, 0x3e6147ae    # 0.22f

    const/high16 v18, 0x3f000000    # 0.5f

    .line 188
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v13, 0x41500000    # 13.0f

    const v14, 0x413c7ae1    # 11.78f

    const v15, 0x414c7ae1    # 12.78f

    const/high16 v16, 0x41400000    # 12.0f

    const/high16 v17, 0x41480000    # 12.5f

    const/high16 v18, 0x41400000    # 12.0f

    .line 189
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 190
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v4, 0x41800000    # 16.0f

    .line 191
    invoke-virtual {v0, v2, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 192
    invoke-virtual {v0, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, -0x4170a3d7    # -0.28f

    const/4 v14, 0x0

    const/high16 v15, -0x41000000    # -0.5f

    const v16, -0x419eb852    # -0.22f

    const/high16 v17, -0x41000000    # -0.5f

    const/high16 v18, -0x41000000    # -0.5f

    .line 193
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v13, 0x0

    const v14, -0x4170a3d7    # -0.28f

    const v15, 0x3e6147ae    # 0.22f

    const/high16 v16, -0x41000000    # -0.5f

    const/high16 v17, 0x3f000000    # 0.5f

    .line 194
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 195
    invoke-virtual {v0, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, 0x3e8f5c29    # 0.28f

    const/4 v14, 0x0

    const/high16 v15, 0x3f000000    # 0.5f

    const v16, 0x3e6147ae    # 0.22f

    const/high16 v18, 0x3f000000    # 0.5f

    .line 196
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v13, 0x41800000    # 16.0f

    const v14, 0x417c7ae1    # 15.78f

    const v15, 0x417c7ae1    # 15.78f

    const/high16 v16, 0x41800000    # 16.0f

    const/high16 v17, 0x41780000    # 15.5f

    const/high16 v18, 0x41800000    # 16.0f

    .line 197
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 198
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 199
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 200
    invoke-virtual {v0, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, -0x4170a3d7    # -0.28f

    const/4 v14, 0x0

    const/high16 v15, -0x41000000    # -0.5f

    const v16, -0x419eb852    # -0.22f

    const/high16 v17, -0x41000000    # -0.5f

    const/high16 v18, -0x41000000    # -0.5f

    .line 201
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v13, 0x0

    const v14, -0x4170a3d7    # -0.28f

    const v15, 0x3e6147ae    # 0.22f

    const/high16 v16, -0x41000000    # -0.5f

    const/high16 v17, 0x3f000000    # 0.5f

    .line 202
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 203
    invoke-virtual {v0, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, 0x3e8f5c29    # 0.28f

    const/4 v14, 0x0

    const/high16 v15, 0x3f000000    # 0.5f

    const v16, 0x3e6147ae    # 0.22f

    const/high16 v18, 0x3f000000    # 0.5f

    .line 204
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v13, 0x41800000    # 16.0f

    const v14, 0x415c7ae1    # 13.78f

    const v15, 0x417c7ae1    # 15.78f

    const/high16 v16, 0x41600000    # 14.0f

    const/high16 v17, 0x41780000    # 15.5f

    const/high16 v18, 0x41600000    # 14.0f

    .line 205
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 206
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 207
    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 208
    invoke-virtual {v0, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, -0x4170a3d7    # -0.28f

    const/4 v14, 0x0

    const/high16 v15, -0x41000000    # -0.5f

    const v16, -0x419eb852    # -0.22f

    const/high16 v17, -0x41000000    # -0.5f

    const/high16 v18, -0x41000000    # -0.5f

    .line 209
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v13, 0x0

    const v14, -0x4170a3d7    # -0.28f

    const v15, 0x3e6147ae    # 0.22f

    const/high16 v16, -0x41000000    # -0.5f

    const/high16 v17, 0x3f000000    # 0.5f

    .line 210
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 211
    invoke-virtual {v0, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, 0x3e8f5c29    # 0.28f

    const/4 v14, 0x0

    const/high16 v15, 0x3f000000    # 0.5f

    const v16, 0x3e6147ae    # 0.22f

    const/high16 v18, 0x3f000000    # 0.5f

    .line 212
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v13, 0x41800000    # 16.0f

    const v14, 0x413c7ae1    # 11.78f

    const v15, 0x417c7ae1    # 15.78f

    const/high16 v16, 0x41400000    # 12.0f

    const/high16 v17, 0x41780000    # 15.5f

    const/high16 v18, 0x41400000    # 12.0f

    .line 213
    invoke-virtual/range {v12 .. v18}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 214
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 292
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v30

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x3800

    const/16 v45, 0x0

    .line 288
    invoke-static/range {v29 .. v45}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/twotone/PointOfSaleKt;->_pointOfSale:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 217
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
