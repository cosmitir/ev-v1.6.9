.class public final Landroidx/compose/material/icons/rounded/WifiTetheringKt;
.super Ljava/lang/Object;
.source "WifiTethering.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWifiTethering.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WifiTethering.kt\nandroidx/compose/material/icons/rounded/WifiTetheringKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,73:1\n122#2:74\n116#2,3:75\n119#2,3:79\n132#2,18:82\n152#2:119\n175#3:78\n622#4,2:100\n634#4,2:102\n636#4,11:108\n50#5,4:104\n*S KotlinDebug\n*F\n+ 1 WifiTethering.kt\nandroidx/compose/material/icons/rounded/WifiTetheringKt\n*L\n29#1:74\n29#1:75,3\n29#1:79,3\n30#1:82,18\n30#1:119\n29#1:78\n30#1:100,2\n30#1:102,2\n30#1:108,11\n30#1:104,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_wifiTethering",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "WifiTethering",
        "Landroidx/compose/material/icons/Icons$Rounded;",
        "getWifiTethering",
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
.field private static _wifiTethering:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getWifiTethering(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 29

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/rounded/WifiTetheringKt;->_wifiTethering:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "Rounded.WifiTethering"

    .line 75
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object v12, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 78
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

    .line 75
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    .line 85
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v14

    .line 92
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

    .line 97
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v21

    .line 98
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    const-string v15, ""

    .line 104
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v0, 0x41400000    # 12.0f

    const/high16 v1, 0x41300000    # 11.0f

    .line 31
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40733333    # -1.1f

    const/4 v2, 0x0

    const/high16 v3, -0x40000000    # -2.0f

    const v4, 0x3f666666    # 0.9f

    const/high16 v5, -0x40000000    # -2.0f

    const/high16 v6, 0x40000000    # 2.0f

    move-object v0, v7

    .line 32
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f666666    # 0.9f

    const/high16 v1, 0x40000000    # 2.0f

    .line 33
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4099999a    # -0.9f

    const/high16 v2, -0x40000000    # -2.0f

    .line 34
    invoke-virtual {v7, v1, v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 35
    invoke-virtual {v7, v0, v2, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41900000    # 18.0f

    const/high16 v1, 0x41500000    # 13.0f

    .line 37
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x3f9c28f6    # -3.56f

    const v3, -0x3fb8f5c3    # -3.11f

    const v4, -0x3f333333    # -6.4f

    const/high16 v5, -0x3f280000    # -6.75f

    const v6, -0x3f41999a    # -5.95f

    move-object v0, v7

    .line 38
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x3fd851ec    # -2.62f

    const v2, 0x3ea3d70a    # 0.32f

    const v3, -0x3f670a3d    # -4.78f

    const v4, 0x401a3d71    # 2.41f

    const v5, -0x3f5a3d71    # -5.18f

    const v6, 0x40a0a3d7    # 5.02f

    .line 39
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41570a3d    # -0.33f

    const v2, 0x4009999a    # 2.15f

    const v3, 0x3efae148    # 0.49f

    const v4, 0x4083851f    # 4.11f

    const v5, 0x3ff70a3d    # 1.93f

    const v6, 0x40accccd    # 5.4f

    .line 40
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3ef5c28f    # 0.48f

    const v2, 0x3edc28f6    # 0.43f

    const v3, 0x3f9d70a4    # 1.23f

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, 0x3fc7ae14    # 1.56f

    const v6, -0x41947ae1    # -0.23f

    .line 41
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x43dc28f6    # -0.01f

    const v8, 0x3c23d70a    # 0.01f

    .line 42
    invoke-virtual {v7, v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e75c28f    # 0.24f

    const v2, -0x4128f5c3    # -0.42f

    const v3, 0x3e0f5c29    # 0.14f

    const v4, -0x4091eb85    # -0.93f

    const v5, -0x419eb852    # -0.22f

    const v6, -0x405eb852    # -1.26f

    move-object v0, v7

    .line 43
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x407c28f6    # -1.03f

    const v2, -0x4091eb85    # -0.93f

    const v3, -0x40347ae1    # -1.59f

    const v4, -0x3fe851ec    # -2.37f

    const v5, -0x4063d70a    # -1.22f

    const v6, -0x3f83d70a    # -3.94f

    .line 44
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3ea8f5c3    # 0.33f

    const v2, -0x404a3d71    # -1.42f

    const v3, 0x3fbd70a4    # 1.48f

    const v4, -0x3fdb851f    # -2.57f

    const v5, 0x4039999a    # 2.9f

    const v6, -0x3fc5c28f    # -2.91f

    .line 45
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x415a6666    # 13.65f

    const v2, 0x4107d70a    # 8.49f

    const/high16 v3, 0x41800000    # 16.0f

    const v4, 0x4127851f    # 10.47f

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v6, 0x41500000    # 13.0f

    .line 46
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3f970a3d    # 1.18f

    const v3, -0x40fae148    # -0.52f

    const v4, 0x400eb852    # 2.23f

    const v5, -0x4055c28f    # -1.33f

    const v6, 0x403d70a4    # 2.96f

    .line 47
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4147ae14    # -0.36f

    const v2, 0x3ea3d70a    # 0.32f

    const v3, -0x410f5c29    # -0.47f

    const v4, 0x3f570a3d    # 0.84f

    const v5, -0x41947ae1    # -0.23f

    const v6, 0x3fa147ae    # 1.26f

    .line 48
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    invoke-virtual {v7, v8, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e9eb852    # 0.31f

    const v2, 0x3f07ae14    # 0.53f

    const v3, 0x3f83d70a    # 1.03f

    const v4, 0x3f30a3d7    # 0.69f

    const/high16 v5, 0x3fc00000    # 1.5f

    const v6, 0x3e8f5c29    # 0.28f

    .line 50
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x4189999a    # 17.2f

    const v2, 0x418347ae    # 16.41f

    const/high16 v3, 0x41900000    # 18.0f

    const v4, 0x416ccccd    # 14.8f

    const/high16 v5, 0x41900000    # 18.0f

    const/high16 v6, 0x41500000    # 13.0f

    .line 51
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x412d47ae    # 10.83f

    const v1, 0x40447ae1    # 3.07f

    .line 53
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x3f6c28f6    # -4.62f

    const v2, 0x3f051eb8    # 0.52f

    const v3, -0x3efa6666    # -8.35f

    const v4, 0x408a8f5c    # 4.33f

    const v5, -0x3ef3851f    # -8.78f

    const v6, 0x410f5c29    # 8.96f

    move-object v0, v7

    .line 54
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x414ccccd    # -0.35f

    const v2, 0x406ccccd    # 3.7f

    const v3, 0x3fa8f5c3    # 1.32f

    const v4, 0x40e0a3d7    # 7.02f

    const v5, 0x4080a3d7    # 4.02f

    const v6, 0x411028f6    # 9.01f

    .line 55
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3ef5c28f    # 0.48f

    const v2, 0x3eb33333    # 0.35f

    const v3, 0x3f947ae1    # 1.16f

    const v4, 0x3e4ccccd    # 0.2f

    const v5, 0x3fbae148    # 1.46f

    const v6, -0x416147ae    # -0.31f

    .line 56
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, -0x4123d70a    # -0.43f

    const v3, 0x3e0f5c29    # 0.14f

    const v4, -0x40828f5c    # -0.99f

    const v5, -0x417ae148    # -0.26f

    const v6, -0x405ae148    # -1.29f

    .line 57
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x3fee147b    # -2.28f

    const v2, -0x4027ae14    # -1.69f

    const v3, -0x3f966666    # -3.65f

    const v4, -0x3f6e6666    # -4.55f

    const v5, -0x3fb5c28f    # -3.16f

    const v6, -0x3f09999a    # -7.7f

    .line 58
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f0a3d71    # 0.54f

    const/high16 v2, -0x3fa00000    # -3.5f

    const v3, 0x405d70a4    # 3.46f

    const v4, -0x3f36b852    # -6.29f

    const v5, 0x40df5c29    # 6.98f

    const v6, -0x3f2a3d71    # -6.68f

    .line 59
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x417e8f5c    # 15.91f

    const v2, 0x409051ec    # 4.51f

    const/high16 v3, 0x41a00000    # 20.0f

    const v4, 0x41047ae1    # 8.28f

    const/high16 v5, 0x41a00000    # 20.0f

    const/high16 v6, 0x41500000    # 13.0f

    .line 60
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x4029999a    # 2.65f

    const v3, -0x405ae148    # -1.29f

    const v4, 0x409f5c29    # 4.98f

    const v5, -0x3faeb852    # -3.27f

    const v6, 0x40ce147b    # 6.44f

    .line 61
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41333333    # -0.4f

    const v2, 0x3e99999a    # 0.3f

    const v3, -0x40fd70a4    # -0.51f

    const v4, 0x3f59999a    # 0.85f

    const v5, -0x417ae148    # -0.26f

    const v6, 0x3fa51eb8    # 1.29f

    .line 62
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3f051eb8    # 0.52f

    const v3, 0x3f7ae148    # 0.98f

    const v4, 0x3f28f5c3    # 0.66f

    const v5, 0x3fbae148    # 1.46f

    const v6, 0x3e9eb852    # 0.31f

    .line 63
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x41a33333    # 20.4f

    const v2, 0x4199c28f    # 19.22f

    const/high16 v3, 0x41b00000    # 22.0f

    const v4, 0x41826666    # 16.3f

    const/high16 v5, 0x41b00000    # 22.0f

    const/high16 v6, 0x41500000    # 13.0f

    .line 64
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x3f42e148    # -5.91f

    const v3, -0x3f5bd70a    # -5.13f

    const v4, -0x3ed6147b    # -10.62f

    const v5, -0x3ecd47ae    # -11.17f

    const v6, -0x3ee11eb8    # -9.93f

    .line 65
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 106
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v13

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3800

    const/16 v28, 0x0

    .line 102
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/rounded/WifiTetheringKt;->_wifiTethering:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 69
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
