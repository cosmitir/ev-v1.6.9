.class public final Landroidx/compose/material/icons/filled/Timer10Kt;
.super Ljava/lang/Object;
.source "Timer10.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimer10.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Timer10.kt\nandroidx/compose/material/icons/filled/Timer10Kt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,136:1\n122#2:137\n116#2,3:138\n119#2,3:142\n132#2,18:145\n152#2:182\n175#3:141\n622#4,2:163\n634#4,2:165\n636#4,11:171\n50#5,4:167\n*S KotlinDebug\n*F\n+ 1 Timer10.kt\nandroidx/compose/material/icons/filled/Timer10Kt\n*L\n29#1:137\n29#1:138,3\n29#1:142,3\n30#1:145,18\n30#1:182\n29#1:141\n30#1:163,2\n30#1:165,2\n30#1:171,11\n30#1:167,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_timer10",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Timer10",
        "Landroidx/compose/material/icons/Icons$Filled;",
        "getTimer10",
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
.field private static _timer10:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getTimer10(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 29

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/filled/Timer10Kt;->_timer10:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "Filled.Timer10"

    .line 138
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object v12, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 141
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

    .line 138
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    .line 148
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v14

    .line 155
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

    .line 160
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v21

    .line 161
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    const-string v15, ""

    .line 167
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/4 v0, 0x0

    const v1, 0x40f70a3d    # 7.72f

    .line 31
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x41166666    # 9.4f

    .line 32
    invoke-virtual {v7, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x40400000    # 3.0f

    .line 33
    invoke-virtual {v7, v3, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v2, 0x41900000    # 18.0f

    .line 34
    invoke-virtual {v7, v3, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v2, 0x40000000    # 2.0f

    .line 35
    invoke-virtual {v7, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v3, 0x40c00000    # 6.0f

    .line 36
    invoke-virtual {v7, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v2, -0x41800000    # -0.25f

    .line 37
    invoke-virtual {v7, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 39
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41be3d71    # 23.78f

    const v1, 0x4165eb85    # 14.37f

    .line 40
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41f0a3d7    # -0.14f

    const v2, -0x4170a3d7    # -0.28f

    const v3, -0x414ccccd    # -0.35f

    const v4, -0x40f851ec    # -0.53f

    const v5, -0x40deb852    # -0.63f

    const v6, -0x40c28f5c    # -0.74f

    move-object v0, v7

    .line 41
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4170a3d7    # -0.28f

    const v2, -0x41a8f5c3    # -0.21f

    const v3, -0x40e3d70a    # -0.61f

    const v4, -0x413851ec    # -0.39f

    const v5, -0x407eb852    # -1.01f

    const v6, -0x40f851ec    # -0.53f

    .line 42
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40533333    # -1.35f

    const v1, -0x413d70a4    # -0.38f

    const v2, -0x40a66666    # -0.85f

    const v3, -0x4175c28f    # -0.27f

    .line 43
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x414ccccd    # -0.35f

    const v2, -0x4270a3d7    # -0.07f

    const v3, -0x40dc28f6    # -0.64f

    const v4, -0x41e66666    # -0.15f

    const v5, -0x40a147ae    # -0.87f

    const v6, -0x41947ae1    # -0.23f

    move-object v0, v7

    .line 44
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41947ae1    # -0.23f

    const v2, -0x425c28f6    # -0.08f

    const v3, -0x412e147b    # -0.41f

    const v4, -0x41dc28f6    # -0.16f

    const v5, -0x40f33333    # -0.55f

    const/high16 v6, -0x41800000    # -0.25f

    .line 45
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41f0a3d7    # -0.14f

    const v2, -0x4247ae14    # -0.09f

    const v3, -0x41947ae1    # -0.23f

    const v4, -0x41bd70a4    # -0.19f

    const v5, -0x4170a3d7    # -0.28f

    const v6, -0x41666666    # -0.3f

    .line 46
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x42b33333    # -0.05f

    const v2, -0x421eb852    # -0.11f

    const v3, -0x425c28f6    # -0.08f

    const v4, -0x418a3d71    # -0.24f

    const v5, -0x425c28f6    # -0.08f

    const v6, -0x413851ec    # -0.39f

    .line 47
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x41f0a3d7    # -0.14f

    const v3, 0x3cf5c28f    # 0.03f

    const v4, -0x4170a3d7    # -0.28f

    const v5, 0x3db851ec    # 0.09f

    const v6, -0x412e147b    # -0.41f

    .line 48
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3d75c28f    # 0.06f

    const v2, -0x41fae148    # -0.13f

    const v3, 0x3e19999a    # 0.15f

    const/high16 v4, -0x41800000    # -0.25f

    const v5, 0x3e8a3d71    # 0.27f

    const v6, -0x4151eb85    # -0.34f

    .line 49
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3df5c28f    # 0.12f

    const v2, -0x42333333    # -0.1f

    const v3, 0x3e8a3d71    # 0.27f

    const v4, -0x41c7ae14    # -0.18f

    const v5, 0x3ee66666    # 0.45f

    const v6, -0x418a3d71    # -0.24f

    .line 50
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ecccccd    # 0.4f

    const v1, 0x3f23d70a    # 0.64f

    const v2, -0x4247ae14    # -0.09f

    .line 51
    invoke-virtual {v7, v0, v2, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const v3, 0x3ef0a3d7    # 0.47f

    const v4, 0x3d23d70a    # 0.04f

    const v5, 0x3f28f5c3    # 0.66f

    const v6, 0x3de147ae    # 0.11f

    move-object v0, v7

    .line 52
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e428f5c    # 0.19f

    const v2, 0x3d8f5c29    # 0.07f

    const v3, 0x3eb33333    # 0.35f

    const v4, 0x3e2e147b    # 0.17f

    const v5, 0x3ef5c28f    # 0.48f

    const v6, 0x3e947ae1    # 0.29f

    .line 53
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e051eb8    # 0.13f

    const v2, 0x3df5c28f    # 0.12f

    const v3, 0x3e6147ae    # 0.22f

    const v4, 0x3e851eb8    # 0.26f

    const v5, 0x3e947ae1    # 0.29f

    const v6, 0x3ed70a3d    # 0.42f

    .line 54
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3d75c28f    # 0.06f

    const v2, 0x3e23d70a    # 0.16f

    const v3, 0x3dcccccd    # 0.1f

    const v4, 0x3ea3d70a    # 0.32f

    const v5, 0x3dcccccd    # 0.1f

    const v6, 0x3efae148    # 0.49f

    .line 55
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ff9999a    # 1.95f

    .line 56
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x413851ec    # -0.39f

    const v3, -0x425c28f6    # -0.08f

    const/high16 v4, -0x40c00000    # -0.75f

    const v5, -0x418a3d71    # -0.24f

    const v6, -0x40747ae1    # -1.09f

    move-object v0, v7

    .line 57
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41dc28f6    # -0.16f

    const v2, -0x4151eb85    # -0.34f

    const v3, -0x413851ec    # -0.39f

    const v4, -0x40deb852    # -0.63f

    const v5, -0x40cf5c29    # -0.69f

    const v6, -0x409eb852    # -0.88f

    .line 58
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41666666    # -0.3f

    const/high16 v2, -0x41800000    # -0.25f

    const v3, -0x40d70a3d    # -0.66f

    const v4, -0x411eb852    # -0.44f

    const v5, -0x40747ae1    # -1.09f

    const v6, -0x40e8f5c3    # -0.59f

    .line 59
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x41abeb85    # 21.49f

    const v2, 0x41111eb8    # 9.07f

    const/high16 v3, 0x41a80000    # 21.0f

    const/high16 v4, 0x41100000    # 9.0f

    const v5, 0x41a3ae14    # 20.46f

    const/high16 v6, 0x41100000    # 9.0f

    .line 60
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40fd70a4    # -0.51f

    const/4 v2, 0x0

    const v3, -0x40851eb8    # -0.98f

    const v4, 0x3d8f5c29    # 0.07f

    const v5, -0x404e147b    # -1.39f

    const v6, 0x3e570a3d    # 0.21f

    .line 61
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x412e147b    # -0.41f

    const v2, 0x3e0f5c29    # 0.14f

    const v3, -0x40bae148    # -0.77f

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, -0x407851ec    # -1.06f

    const v6, 0x3f11eb85    # 0.57f

    .line 62
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x416b851f    # -0.29f

    const v2, 0x3e75c28f    # 0.24f

    const v3, -0x40fd70a4    # -0.51f

    const v4, 0x3f051eb8    # 0.52f

    const v5, -0x40d47ae1    # -0.67f

    const v6, 0x3f570a3d    # 0.84f

    .line 63
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41dc28f6    # -0.16f

    const v2, 0x3ea3d70a    # 0.32f

    const v3, -0x41947ae1    # -0.23f

    const v4, 0x3f266666    # 0.65f

    const v5, -0x41947ae1    # -0.23f

    const v6, 0x3f8147ae    # 1.01f

    .line 64
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3e6b851f    # 0.23f

    const v1, 0x3f75c28f    # 0.96f

    const v2, 0x3da3d70a    # 0.08f

    const v3, 0x3f30a3d7    # 0.69f

    .line 65
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e19999a    # 0.15f

    const v2, 0x3e8f5c29    # 0.28f

    const v3, 0x3eb851ec    # 0.36f

    const v4, 0x3f051eb8    # 0.52f

    const v5, 0x3f23d70a    # 0.64f

    const v6, 0x3f3ae148    # 0.73f

    move-object v0, v7

    .line 66
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e8a3d71    # 0.27f

    const v2, 0x3e570a3d    # 0.21f

    const v3, 0x3f19999a    # 0.6f

    const v4, 0x3ec28f5c    # 0.38f

    const v5, 0x3f7ae148    # 0.98f

    const v6, 0x3f07ae14    # 0.53f

    .line 67
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3ec28f5c    # 0.38f

    const v2, 0x3e0f5c29    # 0.14f

    const v3, 0x3f4f5c29    # 0.81f

    const v4, 0x3e851eb8    # 0.26f

    const v5, 0x3fa28f5c    # 1.27f

    const v6, 0x3eb851ec    # 0.36f

    .line 68
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3ec7ae14    # 0.39f

    const v2, 0x3da3d70a    # 0.08f

    const v3, 0x3f35c28f    # 0.71f

    const v4, 0x3e2e147b    # 0.17f

    const v5, 0x3f733333    # 0.95f

    const v6, 0x3e851eb8    # 0.26f

    .line 69
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f11eb85    # 0.57f

    const v1, 0x3e947ae1    # 0.29f

    const v2, 0x3edc28f6    # 0.43f

    const v3, 0x3e428f5c    # 0.19f

    .line 70
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e051eb8    # 0.13f

    const v2, 0x3dcccccd    # 0.1f

    const v3, 0x3e6147ae    # 0.22f

    const v4, 0x3e6147ae    # 0.22f

    const v5, 0x3e8a3d71    # 0.27f

    const v6, 0x3eae147b    # 0.34f

    move-object v0, v7

    .line 71
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3d4ccccd    # 0.05f

    const v2, 0x3df5c28f    # 0.12f

    const v3, 0x3d8f5c29    # 0.07f

    const/high16 v4, 0x3e800000    # 0.25f

    const v5, 0x3d8f5c29    # 0.07f

    const v6, 0x3ec7ae14    # 0.39f

    .line 72
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3ea3d70a    # 0.32f

    const v3, -0x41fae148    # -0.13f

    const v4, 0x3f11eb85    # 0.57f

    const v5, -0x41333333    # -0.4f

    const v6, 0x3f451eb8    # 0.77f

    .line 73
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4175c28f    # -0.27f

    const v2, 0x3e4ccccd    # 0.2f

    const v3, -0x40d70a3d    # -0.66f

    const v4, 0x3e947ae1    # 0.29f

    const v5, -0x406a3d71    # -1.17f

    const v6, 0x3e947ae1    # 0.29f

    .line 74
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x419eb852    # -0.22f

    const/4 v2, 0x0

    const v3, -0x4123d70a    # -0.43f

    const v4, -0x435c28f6    # -0.02f

    const v5, -0x40dc28f6    # -0.64f

    const v6, -0x425c28f6    # -0.08f

    .line 75
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41a8f5c3    # -0.21f

    const v2, -0x42b33333    # -0.05f

    const v3, -0x41333333    # -0.4f

    const v4, -0x41fae148    # -0.13f

    const v5, -0x40f0a3d7    # -0.56f

    const v6, -0x418a3d71    # -0.24f

    .line 76
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41d1eb85    # -0.17f

    const v2, -0x421eb852    # -0.11f

    const v3, -0x41666666    # -0.3f

    const v4, -0x417ae148    # -0.26f

    const v5, -0x412e147b    # -0.41f

    const v6, -0x411eb852    # -0.44f

    .line 77
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x421eb852    # -0.11f

    const v2, -0x41c7ae14    # -0.18f

    const v3, -0x41d1eb85    # -0.17f

    const v4, -0x412e147b    # -0.41f

    const v5, -0x41c7ae14    # -0.18f

    const v6, -0x40d47ae1    # -0.67f

    .line 78
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x400e147b    # -1.89f

    .line 79
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3eb851ec    # 0.36f

    const v3, 0x3da3d70a    # 0.08f

    const v4, 0x3f35c28f    # 0.71f

    const v5, 0x3e75c28f    # 0.24f

    const v6, 0x3f866666    # 1.05f

    move-object v0, v7

    .line 80
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e23d70a    # 0.16f

    const v2, 0x3eae147b    # 0.34f

    const v3, 0x3ec7ae14    # 0.39f

    const v4, 0x3f266666    # 0.65f

    const v5, 0x3f333333    # 0.7f

    const v6, 0x3f6e147b    # 0.93f

    .line 81
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e9eb852    # 0.31f

    const v2, 0x3e8a3d71    # 0.27f

    const v3, 0x3f30a3d7    # 0.69f

    const v4, 0x3efae148    # 0.49f

    const v5, 0x3f933333    # 1.15f

    const v6, 0x3f28f5c3    # 0.66f

    .line 82
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3eeb851f    # 0.46f

    const v2, 0x3e2e147b    # 0.17f

    const v3, 0x3f7ae148    # 0.98f

    const/high16 v4, 0x3e800000    # 0.25f

    const v5, 0x3fca3d71    # 1.58f

    const/high16 v6, 0x3e800000    # 0.25f

    .line 83
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f07ae14    # 0.53f

    const/4 v2, 0x0

    const v3, 0x3f8147ae    # 1.01f

    const v4, -0x428a3d71    # -0.06f

    const v5, 0x3fb851ec    # 1.44f

    const v6, -0x41bd70a4    # -0.19f

    .line 84
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3edc28f6    # 0.43f

    const v2, -0x41fae148    # -0.13f

    const v3, 0x3f4ccccd    # 0.8f

    const v4, -0x416147ae    # -0.31f

    const v5, 0x3f8e147b    # 1.11f

    const v6, -0x40f5c28f    # -0.54f

    .line 85
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e9eb852    # 0.31f

    const v2, -0x41947ae1    # -0.23f

    const v3, 0x3f0a3d71    # 0.54f

    const v4, -0x40fd70a4    # -0.51f

    const v5, 0x3f35c28f    # 0.71f

    const v6, -0x40ab851f    # -0.83f

    .line 86
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e2e147b    # 0.17f

    const v2, -0x415c28f6    # -0.32f

    const/high16 v3, 0x3e800000    # 0.25f

    const v4, -0x40d47ae1    # -0.67f

    const/high16 v5, 0x3e800000    # 0.25f

    const v6, -0x407851ec    # -1.06f

    .line 87
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x435c28f6    # -0.02f

    const v2, -0x41333333    # -0.4f

    const v3, -0x4247ae14    # -0.09f

    const v4, -0x40c28f5c    # -0.74f

    const v5, -0x418a3d71    # -0.24f

    const v6, -0x407d70a4    # -1.02f

    .line 88
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x415d1eb8    # 13.82f

    const v1, 0x40e1999a    # 7.05f

    .line 90
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4151eb85    # -0.34f

    const/high16 v3, -0x40c00000    # -0.75f

    const v4, -0x40cccccd    # -0.7f

    const v5, -0x40628f5c    # -1.23f

    const v6, -0x409eb852    # -0.88f

    move-object v0, v7

    .line 91
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x410f5c29    # -0.47f

    const v2, -0x41c7ae14    # -0.18f

    const v3, -0x407eb852    # -1.01f

    const v4, -0x4175c28f    # -0.27f

    const v5, -0x40347ae1    # -1.59f

    const v6, -0x4175c28f    # -0.27f

    .line 92
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40eb851f    # -0.58f

    const/4 v2, 0x0

    const v3, -0x4071eb85    # -1.11f

    const v4, 0x3db851ec    # 0.09f

    const v6, 0x3e8a3d71    # 0.27f

    .line 93
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x410a3d71    # -0.48f

    const v2, 0x3e3851ec    # 0.18f

    const v3, -0x409c28f6    # -0.89f

    const v4, 0x3ef0a3d7    # 0.47f

    const v5, -0x40628f5c    # -1.23f

    const v6, 0x3f6147ae    # 0.88f

    .line 94
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4151eb85    # -0.34f

    const v2, 0x3ed1eb85    # 0.41f

    const v3, -0x40e66666    # -0.6f

    const v4, 0x3f6e147b    # 0.93f

    const v5, -0x40b5c28f    # -0.79f

    const v6, 0x3fcb851f    # 1.59f

    .line 95
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41c7ae14    # -0.18f

    const v2, 0x3f266666    # 0.65f

    const v3, -0x4170a3d7    # -0.28f

    const v4, 0x3fb9999a    # 1.45f

    const v5, -0x4170a3d7    # -0.28f

    const v6, 0x4018f5c3    # 2.39f

    .line 96
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ff5c28f    # 1.92f

    .line 97
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3f70a3d7    # 0.94f

    const v3, 0x3db851ec    # 0.09f

    const v4, 0x3fdeb852    # 1.74f

    const v5, 0x3e8f5c29    # 0.28f

    move-object v0, v7

    .line 98
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e428f5c    # 0.19f

    const v2, 0x3f28f5c3    # 0.66f

    const v3, 0x3ee66666    # 0.45f

    const v4, 0x3f9851ec    # 1.19f

    const v5, 0x3f4ccccd    # 0.8f

    const v6, 0x3fcccccd    # 1.6f

    .line 99
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3eae147b    # 0.34f

    const v2, 0x3ed1eb85    # 0.41f

    const/high16 v3, 0x3f400000    # 0.75f

    const v4, 0x3f35c28f    # 0.71f

    const v5, 0x3f9d70a4    # 1.23f

    const v6, 0x3f63d70a    # 0.89f

    .line 100
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3ef5c28f    # 0.48f

    const v2, 0x3e3851ec    # 0.18f

    const v3, 0x3f8147ae    # 1.01f

    const v4, 0x3e8f5c29    # 0.28f

    const v5, 0x3fcb851f    # 1.59f

    const v6, 0x3e8f5c29    # 0.28f

    .line 101
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f170a3d    # 0.59f

    const/4 v2, 0x0

    const v3, 0x3f8f5c29    # 1.12f

    const v4, -0x4247ae14    # -0.09f

    const v6, -0x4170a3d7    # -0.28f

    .line 102
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3ef5c28f    # 0.48f

    const v2, -0x41c7ae14    # -0.18f

    const v3, 0x3f6147ae    # 0.88f

    const v4, -0x410a3d71    # -0.48f

    const v5, 0x3f9c28f6    # 1.22f

    const v6, -0x409c28f6    # -0.89f

    .line 103
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3eae147b    # 0.34f

    const v2, -0x412e147b    # -0.41f

    const v3, 0x3f19999a    # 0.6f

    const v4, -0x408f5c29    # -0.94f

    const v5, 0x3f47ae14    # 0.78f

    const v6, -0x40333333    # -1.6f

    .line 104
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e3851ec    # 0.18f

    const v2, -0x40d9999a    # -0.65f

    const v3, 0x3e8f5c29    # 0.28f

    const v4, -0x40466666    # -1.45f

    const v5, 0x3e8f5c29    # 0.28f

    const v6, -0x3fe70a3d    # -2.39f

    .line 105
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x400a3d71    # -1.92f

    .line 106
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x408f5c29    # -0.94f

    const v3, -0x4247ae14    # -0.09f

    const v4, -0x402147ae    # -1.74f

    const v5, -0x4170a3d7    # -0.28f

    move-object v0, v7

    .line 107
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41c7ae14    # -0.18f

    const v2, -0x40d70a3d    # -0.66f

    const v3, -0x411eb852    # -0.44f

    const v4, -0x4067ae14    # -1.19f

    const v5, -0x40b851ec    # -0.78f

    const v6, -0x40347ae1    # -1.59f

    .line 108
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 109
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x414e6666    # 12.9f

    const v1, 0x4153851f    # 13.22f

    .line 110
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3f19999a    # 0.6f

    const v3, -0x42dc28f6    # -0.04f

    const v4, 0x3f8e147b    # 1.11f

    const v5, -0x420a3d71    # -0.12f

    const v6, 0x3fc3d70a    # 1.53f

    move-object v0, v7

    .line 111
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x425c28f6    # -0.08f

    const v2, 0x3ed70a3d    # 0.42f

    const v3, -0x41b33333    # -0.2f

    const v4, 0x3f428f5c    # 0.76f

    const v5, -0x4147ae14    # -0.36f

    const v6, 0x3f828f5c    # 1.02f

    .line 112
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41dc28f6    # -0.16f

    const v2, 0x3e851eb8    # 0.26f

    const v3, -0x4147ae14    # -0.36f

    const v4, 0x3ee66666    # 0.45f

    const v5, -0x40e8f5c3    # -0.59f

    const v6, 0x3f11eb85    # 0.57f

    .line 113
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41947ae1    # -0.23f

    const v2, 0x3df5c28f    # 0.12f

    const v3, -0x40fd70a4    # -0.51f

    const v4, 0x3e3851ec    # 0.18f

    const v5, -0x40ae147b    # -0.82f

    const v6, 0x3e3851ec    # 0.18f

    .line 114
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41666666    # -0.3f

    const/4 v2, 0x0

    const v3, -0x40eb851f    # -0.58f

    const v4, -0x428a3d71    # -0.06f

    const v6, -0x41c7ae14    # -0.18f

    .line 115
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40e66666    # -0.6f

    const v1, -0x40ee147b    # -0.57f

    const v2, -0x411eb852    # -0.44f

    const v3, -0x416147ae    # -0.31f

    .line 116
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41dc28f6    # -0.16f

    const v2, -0x417ae148    # -0.26f

    const v3, -0x416b851f    # -0.29f

    const v4, -0x40e66666    # -0.6f

    const v5, -0x413d70a4    # -0.38f

    const v6, -0x407d70a4    # -1.02f

    move-object v0, v7

    .line 117
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4247ae14    # -0.09f

    const v2, -0x4128f5c3    # -0.42f

    const v3, -0x41fae148    # -0.13f

    const v4, -0x4091eb85    # -0.93f

    const v5, -0x41fae148    # -0.13f

    const v6, -0x403c28f6    # -1.53f

    .line 118
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, -0x3fe00000    # -2.5f

    .line 119
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x40e66666    # -0.6f

    const v3, 0x3d23d70a    # 0.04f

    const v4, -0x4071eb85    # -1.11f

    const v5, 0x3e051eb8    # 0.13f

    const v6, -0x403d70a4    # -1.52f

    move-object v0, v7

    .line 120
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3db851ec    # 0.09f

    const v2, -0x412e147b    # -0.41f

    const v3, 0x3e570a3d    # 0.21f

    const v4, -0x40c28f5c    # -0.74f

    const v5, 0x3ec28f5c    # 0.38f

    const/high16 v6, -0x40800000    # -1.0f

    .line 121
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e23d70a    # 0.16f

    const/high16 v2, -0x41800000    # -0.25f

    const v3, 0x3eb851ec    # 0.36f

    const v4, -0x4123d70a    # -0.43f

    const v5, 0x3f19999a    # 0.6f

    const v6, -0x40f33333    # -0.55f

    .line 122
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e75c28f    # 0.24f

    const v2, -0x421eb852    # -0.11f

    const v3, 0x3f028f5c    # 0.51f

    const v4, -0x41d1eb85    # -0.17f

    const v5, 0x3f4f5c29    # 0.81f

    const v6, -0x41d1eb85    # -0.17f

    .line 123
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e9eb852    # 0.31f

    const/4 v2, 0x0

    const v3, 0x3f147ae1    # 0.58f

    const v4, 0x3d75c28f    # 0.06f

    const v6, 0x3e2e147b    # 0.17f

    .line 124
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e75c28f    # 0.24f

    const v2, 0x3de147ae    # 0.11f

    const v3, 0x3ee147ae    # 0.44f

    const v4, 0x3e947ae1    # 0.29f

    const v5, 0x3f19999a    # 0.6f

    const v6, 0x3f0ccccd    # 0.55f

    .line 125
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e23d70a    # 0.16f

    const/high16 v2, 0x3e800000    # 0.25f

    const v3, 0x3e947ae1    # 0.29f

    const v4, 0x3f147ae1    # 0.58f

    const v5, 0x3ebd70a4    # 0.37f

    const v6, 0x3f7d70a4    # 0.99f

    .line 126
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3da3d70a    # 0.08f

    const v2, 0x3ed1eb85    # 0.41f

    const v3, 0x3e051eb8    # 0.13f

    const v4, 0x3f6b851f    # 0.92f

    const v5, 0x3e051eb8    # 0.13f

    const v6, 0x3fc28f5c    # 1.52f

    .line 127
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4020a3d7    # 2.51f

    .line 128
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 129
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 169
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v13

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3800

    const/16 v28, 0x0

    .line 165
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/filled/Timer10Kt;->_timer10:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 132
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
