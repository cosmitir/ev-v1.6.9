.class public final Landroidx/compose/material/icons/rounded/ConnectingAirportsKt;
.super Ljava/lang/Object;
.source "ConnectingAirports.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConnectingAirports.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectingAirports.kt\nandroidx/compose/material/icons/rounded/ConnectingAirportsKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,85:1\n122#2:86\n116#2,3:87\n119#2,3:91\n132#2,18:94\n152#2:131\n175#3:90\n622#4,2:112\n634#4,2:114\n636#4,11:120\n50#5,4:116\n*S KotlinDebug\n*F\n+ 1 ConnectingAirports.kt\nandroidx/compose/material/icons/rounded/ConnectingAirportsKt\n*L\n29#1:86\n29#1:87,3\n29#1:91,3\n30#1:94,18\n30#1:131\n29#1:90\n30#1:112,2\n30#1:114,2\n30#1:120,11\n30#1:116,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_connectingAirports",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "ConnectingAirports",
        "Landroidx/compose/material/icons/Icons$Rounded;",
        "getConnectingAirports",
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
.field private static _connectingAirports:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getConnectingAirports(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 29

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/rounded/ConnectingAirportsKt;->_connectingAirports:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "Rounded.ConnectingAirports"

    .line 87
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object v12, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 90
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

    .line 87
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    .line 97
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v14

    .line 104
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

    .line 109
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v21

    .line 110
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    const-string v15, ""

    .line 116
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v0, 0x417ee148    # 15.93f

    const v1, 0x4129999a    # 10.6f

    .line 31
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3ec7ae14    # 0.39f

    const/4 v2, 0x0

    const v3, 0x3f28f5c3    # 0.66f

    const v4, 0x3ebd70a4    # 0.37f

    const v5, 0x3f0ccccd    # 0.55f

    const v6, 0x3f3d70a4    # 0.74f

    move-object v0, v7

    .line 32
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41700000    # 15.0f

    const v8, 0x41766666    # 15.4f

    .line 33
    invoke-virtual {v7, v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40366666    # 2.85f

    .line 34
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f170a3d    # 0.59f

    const v1, -0x40b851ec    # -0.78f

    .line 35
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3dcccccd    # 0.1f

    const v2, -0x41f0a3d7    # -0.14f

    const v3, 0x3e851eb8    # 0.26f

    const v4, -0x419eb852    # -0.22f

    const v5, 0x3edc28f6    # 0.43f

    const v6, -0x419eb852    # -0.22f

    move-object v0, v7

    .line 36
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3eb851ec    # 0.36f

    const/4 v2, 0x0

    const v3, 0x3f1eb852    # 0.62f

    const v4, 0x3eb33333    # 0.35f

    const v5, 0x3f051eb8    # 0.52f

    const v6, 0x3f333333    # 0.7f

    .line 37
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x419b3333    # 19.4f

    const/high16 v1, 0x41800000    # 16.0f

    .line 38
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ec7ae14    # 0.39f

    const v1, 0x3fa66666    # 1.3f

    .line 39
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3dcccccd    # 0.1f

    const v2, 0x3eb33333    # 0.35f

    const v3, -0x41dc28f6    # -0.16f

    const v4, 0x3f333333    # 0.7f

    const v5, -0x40fae148    # -0.52f

    move-object v0, v7

    .line 40
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41d1eb85    # -0.17f

    const/4 v2, 0x0

    const v3, -0x41570a3d    # -0.33f

    const v4, -0x425c28f6    # -0.08f

    const v5, -0x4123d70a    # -0.43f

    const v6, -0x419eb852    # -0.22f

    .line 41
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41920000    # 18.25f

    const/high16 v9, 0x41880000    # 17.0f

    .line 42
    invoke-virtual {v7, v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 43
    invoke-virtual {v7, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f8a3d71    # 1.08f

    const v8, 0x406a3d71    # 3.66f

    .line 44
    invoke-virtual {v7, v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3de147ae    # 0.11f

    const v2, 0x3ebd70a4    # 0.37f

    const v3, -0x41d1eb85    # -0.17f

    const v4, 0x3f3d70a4    # 0.74f

    const v5, -0x40f33333    # -0.55f

    const v6, 0x3f3d70a4    # 0.74f

    move-object v0, v7

    .line 45
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41b33333    # -0.2f

    const/4 v2, 0x0

    const v3, -0x413851ec    # -0.39f

    const v4, -0x421eb852    # -0.11f

    const/high16 v5, -0x41000000    # -0.5f

    const v6, -0x4170a3d7    # -0.28f

    .line 46
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41500000    # 13.0f

    .line 47
    invoke-virtual {v7, v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3fc1eb85    # -2.97f

    .line 48
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40f851ec    # -0.53f

    const/high16 v3, -0x40800000    # -1.0f

    const v4, -0x41333333    # -0.4f

    const v5, -0x407c28f6    # -1.03f

    const v6, -0x4091eb85    # -0.93f

    move-object v0, v7

    .line 49
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x410f5c29    # 8.96f

    const v2, 0x4177ae14    # 15.48f

    const v3, 0x4116e148    # 9.43f

    const/high16 v4, 0x41700000    # 15.0f

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v6, 0x41700000    # 15.0f

    .line 50
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40400000    # 3.0f

    .line 51
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x401b851f    # 2.43f

    const v1, -0x3f7c28f6    # -4.12f

    .line 52
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x4178a3d7    # 15.54f

    const v2, 0x412b5c29    # 10.71f

    const v3, 0x417bae14    # 15.73f

    const v4, 0x4129999a    # 10.6f

    const v5, 0x417ee148    # 15.93f

    const v6, 0x4129999a    # 10.6f

    move-object v0, v7

    .line 53
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41011eb8    # 8.07f

    const v1, 0x40266666    # 2.6f

    .line 55
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x413851ec    # -0.39f

    const/4 v2, 0x0

    const v3, -0x40d70a3d    # -0.66f

    const v4, 0x3ebd70a4    # 0.37f

    const v5, -0x40f33333    # -0.55f

    const v6, 0x3f3d70a4    # 0.74f

    move-object v0, v7

    .line 56
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40e00000    # 7.0f

    const v9, 0x4109999a    # 8.6f

    .line 57
    invoke-virtual {v7, v9, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v10, 0x40b80000    # 5.75f

    .line 58
    invoke-virtual {v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40a51eb8    # 5.16f

    const v1, 0x40c70a3d    # 6.22f

    .line 59
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x40a1eb85    # 5.06f

    const v2, 0x40c28f5c    # 6.08f

    const v3, 0x409ccccd    # 4.9f

    const/high16 v4, 0x40c00000    # 6.0f

    const v5, 0x40975c29    # 4.73f

    const/high16 v6, 0x40c00000    # 6.0f

    move-object v0, v7

    .line 60
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x408bd70a    # 4.37f

    const/high16 v2, 0x40c00000    # 6.0f

    const v3, 0x4083851f    # 4.11f

    const v4, 0x40cb3333    # 6.35f

    const v5, 0x4086b852    # 4.21f

    const v6, 0x40d66666    # 6.7f

    .line 61
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40933333    # 4.6f

    const/high16 v1, 0x41000000    # 8.0f

    .line 62
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4086b852    # 4.21f

    const v1, 0x4114cccd    # 9.3f

    .line 63
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x4083851f    # 4.11f

    const v2, 0x411a6666    # 9.65f

    const v3, 0x408bd70a    # 4.37f

    const/high16 v4, 0x41200000    # 10.0f

    const v5, 0x40975c29    # 4.73f

    const/high16 v6, 0x41200000    # 10.0f

    move-object v0, v7

    .line 64
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e2e147b    # 0.17f

    const/4 v2, 0x0

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, -0x425c28f6    # -0.08f

    const v5, 0x3edc28f6    # 0.43f

    const v6, -0x419eb852    # -0.22f

    .line 65
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v11, 0x41100000    # 9.0f

    .line 66
    invoke-virtual {v7, v10, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4075c28f    # -1.08f

    .line 68
    invoke-virtual {v7, v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x421eb852    # -0.11f

    const v2, 0x3ebd70a4    # 0.37f

    const v3, 0x3e2e147b    # 0.17f

    const v4, 0x3f3d70a4    # 0.74f

    const v5, 0x3f0ccccd    # 0.55f

    const v6, 0x3f3d70a4    # 0.74f

    move-object v0, v7

    .line 69
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    const v3, 0x3ec7ae14    # 0.39f

    const v4, -0x421eb852    # -0.11f

    const/high16 v5, 0x3f000000    # 0.5f

    const v6, -0x4170a3d7    # -0.28f

    .line 70
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41300000    # 11.0f

    .line 71
    invoke-virtual {v7, v0, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x403e147b    # 2.97f

    .line 72
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f07ae14    # 0.53f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, -0x41333333    # -0.4f

    const v5, 0x3f83d70a    # 1.03f

    const v6, -0x4091eb85    # -0.93f

    move-object v0, v7

    .line 73
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x4170a3d7    # 15.04f

    const v2, 0x40ef5c29    # 7.48f

    const v3, 0x41691eb8    # 14.57f

    const/high16 v4, 0x40e00000    # 7.0f

    const/high16 v5, 0x41600000    # 14.0f

    const/high16 v6, 0x40e00000    # 7.0f

    .line 74
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, -0x3fc00000    # -3.0f

    .line 75
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41091eb8    # 8.57f

    const v1, 0x403851ec    # 2.88f

    .line 76
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x41075c29    # 8.46f

    const v2, 0x402d70a4    # 2.71f

    const v3, 0x410451ec    # 8.27f

    const v4, 0x40266666    # 2.6f

    const v5, 0x41011eb8    # 8.07f

    const v6, 0x40266666    # 2.6f

    move-object v0, v7

    .line 77
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 118
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v13

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3800

    const/16 v28, 0x0

    .line 114
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/rounded/ConnectingAirportsKt;->_connectingAirports:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 81
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
