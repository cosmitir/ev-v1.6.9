.class public final Landroidx/compose/material/icons/outlined/SoupKitchenKt;
.super Ljava/lang/Object;
.source "SoupKitchen.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSoupKitchen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SoupKitchen.kt\nandroidx/compose/material/icons/outlined/SoupKitchenKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,88:1\n122#2:89\n116#2,3:90\n119#2,3:94\n132#2,18:97\n152#2:134\n175#3:93\n622#4,2:115\n634#4,2:117\n636#4,11:123\n50#5,4:119\n*S KotlinDebug\n*F\n+ 1 SoupKitchen.kt\nandroidx/compose/material/icons/outlined/SoupKitchenKt\n*L\n29#1:89\n29#1:90,3\n29#1:94,3\n30#1:97,18\n30#1:134\n29#1:93\n30#1:115,2\n30#1:117,2\n30#1:123,11\n30#1:119,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_soupKitchen",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "SoupKitchen",
        "Landroidx/compose/material/icons/Icons$Outlined;",
        "getSoupKitchen",
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
.field private static _soupKitchen:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getSoupKitchen(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 29

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/outlined/SoupKitchenKt;->_soupKitchen:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "Outlined.SoupKitchen"

    .line 90
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object v12, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 93
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

    .line 90
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    .line 100
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v14

    .line 107
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

    .line 112
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v21

    .line 113
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    const-string v15, ""

    .line 119
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v8, 0x40cccccd    # 6.4f

    const/high16 v9, 0x40e00000    # 7.0f

    .line 31
    invoke-virtual {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x40c1eb85    # 6.06f

    const v2, 0x40f1999a    # 7.55f

    const/high16 v3, 0x40c00000    # 6.0f

    const v4, 0x40ff0a3d    # 7.97f

    const/high16 v5, 0x40c00000    # 6.0f

    const v6, 0x4106147b    # 8.38f

    move-object v0, v7

    .line 32
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x40c00000    # 6.0f

    const v2, 0x41126666    # 9.15f

    const/high16 v3, 0x40e00000    # 7.0f

    const/high16 v4, 0x41300000    # 11.0f

    const/high16 v5, 0x40e00000    # 7.0f

    const/high16 v6, 0x41400000    # 12.0f

    .line 33
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3f733333    # 0.95f

    const v3, -0x41333333    # -0.4f

    const/high16 v4, 0x3fc00000    # 1.5f

    const v5, -0x41333333    # -0.4f

    const/high16 v6, 0x3fc00000    # 1.5f

    .line 34
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40a33333    # 5.1f

    .line 35
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v2, 0x0

    const v3, 0x3ecccccd    # 0.4f

    const v4, -0x40f33333    # -0.55f

    const v5, 0x3ecccccd    # 0.4f

    const/high16 v6, -0x40400000    # -1.5f

    move-object v0, v7

    .line 36
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const v4, -0x3fc9999a    # -2.85f

    const/high16 v5, -0x40800000    # -1.0f

    const v6, -0x3f9851ec    # -3.62f

    .line 37
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x40900000    # 4.5f

    const v2, 0x40ff0a3d    # 7.97f

    const v3, 0x4091eb85    # 4.56f

    const v4, 0x40f1999a    # 7.55f

    const v5, 0x409ccccd    # 4.9f

    const/high16 v6, 0x40e00000    # 7.0f

    .line 38
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    invoke-virtual {v7, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v8, 0x41366666    # 11.4f

    .line 41
    invoke-virtual {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x4130f5c3    # 11.06f

    const v2, 0x40f1999a    # 7.55f

    const/high16 v3, 0x41300000    # 11.0f

    const v4, 0x40ff0a3d    # 7.97f

    const/high16 v5, 0x41300000    # 11.0f

    const v6, 0x4106147b    # 8.38f

    .line 42
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x41300000    # 11.0f

    const v2, 0x41126666    # 9.15f

    const/high16 v3, 0x41400000    # 12.0f

    const/high16 v4, 0x41300000    # 11.0f

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v6, 0x41400000    # 12.0f

    .line 43
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3f733333    # 0.95f

    const v3, -0x41333333    # -0.4f

    const/high16 v4, 0x3fc00000    # 1.5f

    const v5, -0x41333333    # -0.4f

    const/high16 v6, 0x3fc00000    # 1.5f

    .line 44
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v10, 0x3fc00000    # 1.5f

    .line 45
    invoke-virtual {v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v2, 0x0

    const v3, 0x3ecccccd    # 0.4f

    const v4, -0x40f33333    # -0.55f

    const v5, 0x3ecccccd    # 0.4f

    const/high16 v6, -0x40400000    # -1.5f

    .line 46
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const v4, -0x3fc9999a    # -2.85f

    const/high16 v5, -0x40800000    # -1.0f

    const v6, -0x3f9851ec    # -3.62f

    .line 47
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, -0x412e147b    # -0.41f

    const v3, 0x3d75c28f    # 0.06f

    const v4, -0x40ab851f    # -0.83f

    const v5, 0x3ecccccd    # 0.4f

    const v6, -0x404f5c29    # -1.38f

    .line 48
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 49
    invoke-virtual {v7, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v8, 0x41026666    # 8.15f

    .line 51
    invoke-virtual {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4151eb85    # -0.34f

    const v2, 0x3f0ccccd    # 0.55f

    const v3, -0x41333333    # -0.4f

    const v4, 0x3f7851ec    # 0.97f

    const v5, -0x41333333    # -0.4f

    const v6, 0x3fb0a3d7    # 1.38f

    .line 52
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3f451eb8    # 0.77f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x402851ec    # 2.63f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x4067ae14    # 3.62f

    .line 53
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x3f733333    # 0.95f

    const v3, -0x41333333    # -0.4f

    const/high16 v4, 0x3fc00000    # 1.5f

    const v5, -0x41333333    # -0.4f

    const/high16 v6, 0x3fc00000    # 1.5f

    .line 54
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    invoke-virtual {v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v2, 0x0

    const v3, 0x3ecccccd    # 0.4f

    const v4, -0x40f33333    # -0.55f

    const v5, 0x3ecccccd    # 0.4f

    const/high16 v6, -0x40400000    # -1.5f

    .line 56
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const v4, -0x3fc9999a    # -2.85f

    const/high16 v5, -0x40800000    # -1.0f

    const v6, -0x3f9851ec    # -3.62f

    .line 57
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, -0x412e147b    # -0.41f

    const v3, 0x3d75c28f    # 0.06f

    const v4, -0x40ab851f    # -0.83f

    const v5, 0x3ecccccd    # 0.4f

    const v6, -0x404f5c29    # -1.38f

    .line 58
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    invoke-virtual {v7, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4194cccd    # 18.6f

    const/high16 v1, 0x40000000    # 2.0f

    .line 61
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x403ae148    # -1.54f

    const/4 v2, 0x0

    const v3, -0x3fcc28f6    # -2.81f

    const v4, 0x3f947ae1    # 1.16f

    const v5, -0x3fc147ae    # -2.98f

    const v6, 0x4029999a    # 2.65f

    move-object v0, v7

    .line 62
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41687ae1    # 14.53f

    const/high16 v1, 0x41700000    # 15.0f

    .line 63
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x408051ec    # 4.01f

    .line 64
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40e66666    # -0.6f

    const v3, -0x40747ae1    # -1.09f

    const v4, 0x3f07ae14    # 0.53f

    const/high16 v5, -0x40800000    # -1.0f

    const v6, 0x3f90a3d7    # 1.13f

    move-object v0, v7

    .line 65
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x4061eb85    # 3.53f

    const v2, 0x419bae14    # 19.46f

    const v3, 0x40cc7ae1    # 6.39f

    const/high16 v4, 0x41b00000    # 22.0f

    const/high16 v5, 0x411c0000    # 9.75f

    const/high16 v6, 0x41b00000    # 22.0f

    .line 66
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x405eb852    # 3.48f

    const/4 v2, 0x0

    const v3, 0x40cae148    # 6.34f

    const v4, -0x3fd147ae    # -2.73f

    const v5, 0x40d6b852    # 6.71f

    const v6, -0x3f38a3d7    # -6.23f

    .line 67
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f933333    # 1.15f

    const v1, -0x3ed2147b    # -10.87f

    .line 68
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x418d47ae    # 17.66f

    const v2, 0x408c7ae1    # 4.39f

    const v3, 0x4190a3d7    # 18.08f

    const/high16 v4, 0x40800000    # 4.0f

    const v5, 0x4194cccd    # 18.6f

    const/high16 v6, 0x40800000    # 4.0f

    move-object v0, v7

    .line 69
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f0ccccd    # 0.55f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ee66666    # 0.45f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 70
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3e99999a    # 0.3f

    const v3, -0x42333333    # -0.1f

    const/high16 v4, 0x3fa00000    # 1.25f

    const v5, -0x42333333    # -0.1f

    const/high16 v6, 0x3fa00000    # 1.25f

    .line 71
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ffc28f6    # 1.97f

    const/high16 v1, 0x3e800000    # 0.25f

    .line 72
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x3e051eb8    # 0.13f

    const v4, -0x407851ec    # -1.06f

    const v5, 0x3e051eb8    # 0.13f

    const/high16 v6, -0x40400000    # -1.5f

    move-object v0, v7

    .line 73
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x41accccd    # 21.6f

    const v2, 0x40566666    # 3.35f

    const/high16 v3, 0x41a20000    # 20.25f

    const/high16 v4, 0x40000000    # 2.0f

    const v5, 0x4194cccd    # 18.6f

    const/high16 v6, 0x40000000    # 2.0f

    .line 74
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x411c0000    # 9.75f

    const/high16 v1, 0x41a00000    # 20.0f

    .line 76
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4007ae14    # -1.94f

    const/4 v2, 0x0

    const v3, -0x3f951eb8    # -3.67f

    const v4, -0x40628f5c    # -1.23f

    const v5, -0x3f723d71    # -4.43f

    const/high16 v6, -0x3fc00000    # -3.0f

    move-object v0, v7

    .line 77
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x410c7ae1    # 8.78f

    .line 78
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3c23d70a    # 0.01f

    .line 79
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x41563d71    # 13.39f

    const v2, 0x41963d71    # 18.78f

    const v3, 0x413b0a3d    # 11.69f

    const/high16 v4, 0x41a00000    # 20.0f

    const/high16 v5, 0x411c0000    # 9.75f

    const/high16 v6, 0x41a00000    # 20.0f

    move-object v0, v7

    .line 80
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 121
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v13

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3800

    const/16 v28, 0x0

    .line 117
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/outlined/SoupKitchenKt;->_soupKitchen:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 84
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
