.class public final Landroidx/compose/material/icons/rounded/WavesKt;
.super Ljava/lang/Object;
.source "Waves.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWaves.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Waves.kt\nandroidx/compose/material/icons/rounded/WavesKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,133:1\n122#2:134\n116#2,3:135\n119#2,3:139\n132#2,18:142\n152#2:179\n175#3:138\n622#4,2:160\n634#4,2:162\n636#4,11:168\n50#5,4:164\n*S KotlinDebug\n*F\n+ 1 Waves.kt\nandroidx/compose/material/icons/rounded/WavesKt\n*L\n29#1:134\n29#1:135,3\n29#1:139,3\n30#1:142,18\n30#1:179\n29#1:138\n30#1:160,2\n30#1:162,2\n30#1:168,11\n30#1:164,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_waves",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Waves",
        "Landroidx/compose/material/icons/Icons$Rounded;",
        "getWaves",
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
.field private static _waves:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getWaves(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 31

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/rounded/WavesKt;->_waves:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "Rounded.Waves"

    .line 135
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object v12, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 138
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

    .line 135
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    .line 145
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v14

    .line 152
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

    .line 157
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v21

    .line 158
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    const-string v15, ""

    .line 164
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v0, 0x4187eb85    # 16.99f

    const/high16 v8, 0x41880000    # 17.0f

    .line 31
    invoke-virtual {v7, v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40533333    # -1.35f

    const/4 v2, 0x0

    const v3, -0x3ff33333    # -2.2f

    const v4, 0x3ed70a3d    # 0.42f

    const v5, -0x3fc33333    # -2.95f

    const v6, 0x3f4ccccd    # 0.8f

    move-object v0, v7

    .line 32
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40d9999a    # -0.65f

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, -0x4068f5c3    # -1.18f

    const v4, 0x3f19999a    # 0.6f

    const v5, -0x3ffccccd    # -2.05f

    const v6, 0x3f19999a    # 0.6f

    .line 33
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4099999a    # -0.9f

    const/4 v2, 0x0

    const v3, -0x404ccccd    # -1.4f

    const/high16 v4, -0x41800000    # -0.25f

    const v6, -0x40e66666    # -0.6f

    .line 34
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, -0x40c00000    # -0.75f

    const v2, -0x413d70a4    # -0.38f

    const v3, -0x40370a3d    # -1.57f

    const v4, -0x40b33333    # -0.8f

    const v5, -0x3fc33333    # -2.95f

    const v6, -0x40b33333    # -0.8f

    .line 35
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v9, -0x3ff33333    # -2.2f

    const v10, 0x3ed70a3d    # 0.42f

    const v11, -0x3fc33333    # -2.95f

    const v13, 0x3f4ccccd    # 0.8f

    .line 36
    invoke-virtual {v7, v9, v10, v11, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4123d70a    # -0.43f

    const v2, 0x3e6147ae    # 0.22f

    const v3, -0x40b0a3d7    # -0.81f

    const v4, 0x3ed1eb85    # 0.41f

    const v5, -0x405d70a4    # -1.27f

    const v6, 0x3f051eb8    # 0.52f

    .line 37
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4119999a    # -0.45f

    const v2, 0x3dcccccd    # 0.1f

    const v3, -0x40b851ec    # -0.78f

    const v4, 0x3eeb851f    # 0.46f

    const v5, -0x40b851ec    # -0.78f

    const v6, 0x3f68f5c3    # 0.91f

    .line 38
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3dcccccd    # 0.1f

    .line 39
    invoke-virtual {v7, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3f19999a    # 0.6f

    const v3, 0x3f0f5c29    # 0.56f

    const v4, 0x3f83d70a    # 1.03f

    const v5, 0x3f91eb85    # 1.14f

    const v24, 0x3f68f5c3    # 0.91f

    move v10, v6

    move/from16 v6, v24

    .line 40
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f3d70a4    # 0.74f

    const v2, -0x41e66666    # -0.15f

    const v3, 0x3fa66666    # 1.3f

    const v4, -0x4123d70a    # -0.43f

    const v5, 0x3fe7ae14    # 1.81f

    const v6, -0x40cf5c29    # -0.69f

    .line 41
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f266666    # 0.65f

    const v2, -0x41570a3d    # -0.33f

    const v3, 0x3f95c28f    # 1.17f

    const v4, -0x40e66666    # -0.6f

    const v5, 0x40033333    # 2.05f

    const v6, -0x40e66666    # -0.6f

    .line 42
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3fb33333    # 1.4f

    const/high16 v5, 0x3e800000    # 0.25f

    const v4, 0x40033333    # 2.05f

    const v3, 0x3f19999a    # 0.6f

    .line 43
    invoke-virtual {v7, v6, v5, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x3f400000    # 0.75f

    const v2, 0x3ec28f5c    # 0.38f

    const v24, 0x3fc8f5c3    # 1.57f

    const v25, 0x3f4ccccd    # 0.8f

    const v26, 0x403ccccd    # 2.95f

    const v27, 0x3f4ccccd    # 0.8f

    move/from16 v3, v24

    move/from16 v4, v25

    move/from16 v5, v26

    move/from16 v6, v27

    .line 44
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4128f5c3    # -0.42f

    const v6, 0x400ccccd    # 2.2f

    const v5, 0x403ccccd    # 2.95f

    const v4, -0x40b33333    # -0.8f

    .line 45
    invoke-virtual {v7, v6, v0, v5, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f266666    # 0.65f

    const v2, -0x41570a3d    # -0.33f

    const v3, 0x3f970a3d    # 1.18f

    const v24, -0x40e66666    # -0.6f

    const v25, 0x40033333    # 2.05f

    const v26, -0x40e66666    # -0.6f

    move-object v0, v7

    move/from16 v4, v24

    move/from16 v5, v25

    move/from16 v6, v26

    .line 46
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f666666    # 0.9f

    const/4 v2, 0x0

    const v3, 0x3fb33333    # 1.4f

    const/high16 v4, 0x3e800000    # 0.25f

    const v5, 0x40033333    # 2.05f

    const v6, 0x3f19999a    # 0.6f

    .line 47
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f051eb8    # 0.52f

    const v2, 0x3e851eb8    # 0.26f

    const v3, 0x3f8a3d71    # 1.08f

    const v4, 0x3f0ccccd    # 0.55f

    const v5, 0x3fea3d71    # 1.83f

    const v6, 0x3f333333    # 0.7f

    .line 48
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f147ae1    # 0.58f

    const v2, 0x3de147ae    # 0.11f

    const v3, 0x3f8f5c29    # 1.12f

    const v4, -0x41570a3d    # -0.33f

    const v5, 0x3f8f5c29    # 1.12f

    const v6, -0x40970a3d    # -0.91f

    .line 49
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, -0x4247ae14    # -0.09f

    .line 50
    invoke-virtual {v7, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x41147ae1    # -0.46f

    const v3, -0x4151eb85    # -0.34f

    const v4, -0x40ae147b    # -0.82f

    const v5, -0x40b5c28f    # -0.79f

    const v24, -0x40947ae1    # -0.92f

    move/from16 v6, v24

    .line 51
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41147ae1    # -0.46f

    const v2, -0x42333333    # -0.1f

    const v3, -0x40ab851f    # -0.83f

    const v4, -0x416b851f    # -0.29f

    const v5, -0x405eb852    # -1.26f

    const v6, -0x40fae148    # -0.52f

    .line 52
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, -0x40c00000    # -0.75f

    const v2, -0x413851ec    # -0.39f

    const v3, -0x40333333    # -1.6f

    const v4, -0x40b0a3d7    # -0.81f

    const v5, -0x3fc33333    # -2.95f

    const v6, -0x40b0a3d7    # -0.81f

    .line 53
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4148a3d7    # 12.54f

    .line 55
    invoke-virtual {v7, v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40533333    # -1.35f

    const/4 v2, 0x0

    const v3, -0x3ff33333    # -2.2f

    const v4, 0x3edc28f6    # 0.43f

    const v6, 0x3f4ccccd    # 0.8f

    move-object v0, v7

    .line 56
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40d9999a    # -0.65f

    const v2, 0x3ea3d70a    # 0.32f

    const v3, -0x4068f5c3    # -1.18f

    const v4, 0x3f19999a    # 0.6f

    const v5, -0x3ffccccd    # -2.05f

    const v6, 0x3f19999a    # 0.6f

    .line 57
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4099999a    # -0.9f

    const/4 v2, 0x0

    const v3, -0x404ccccd    # -1.4f

    const/high16 v4, -0x41800000    # -0.25f

    const v6, -0x40e66666    # -0.6f

    .line 58
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, -0x40c00000    # -0.75f

    const v2, -0x413d70a4    # -0.38f

    const v3, -0x40370a3d    # -1.57f

    const v4, -0x40b33333    # -0.8f

    const v5, -0x3fc33333    # -2.95f

    const v6, -0x40b33333    # -0.8f

    .line 59
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3edc28f6    # 0.43f

    .line 60
    invoke-virtual {v7, v9, v6, v11, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4123d70a    # -0.43f

    const v2, 0x3e570a3d    # 0.21f

    const v3, -0x40b0a3d7    # -0.81f

    const v4, 0x3ed1eb85    # 0.41f

    const v5, -0x405c28f6    # -1.28f

    const v24, 0x3f051eb8    # 0.52f

    move/from16 v6, v24

    .line 61
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x411eb852    # -0.44f

    const v2, 0x3dcccccd    # 0.1f

    const v3, -0x40bae148    # -0.77f

    const v4, 0x3eeb851f    # 0.46f

    const v5, -0x40bae148    # -0.77f

    const v6, 0x3f68f5c3    # 0.91f

    .line 62
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    invoke-virtual {v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3f170a3d    # 0.59f

    const v3, 0x3f0a3d71    # 0.54f

    const v4, 0x3f83d70a    # 1.03f

    const v5, 0x3f8f5c29    # 1.12f

    .line 64
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x3f400000    # 0.75f

    const v2, -0x41e66666    # -0.15f

    const v3, 0x3fa7ae14    # 1.31f

    const v4, -0x411eb852    # -0.44f

    const v5, 0x3fea3d71    # 1.83f

    const v6, -0x40cf5c29    # -0.69f

    .line 65
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f266666    # 0.65f

    const v2, -0x414ccccd    # -0.35f

    const v3, 0x3f933333    # 1.15f

    const v4, -0x40e66666    # -0.6f

    const v5, 0x40033333    # 2.05f

    const v6, -0x40e66666    # -0.6f

    .line 66
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3fb33333    # 1.4f

    const/high16 v5, 0x3e800000    # 0.25f

    const v6, 0x40033333    # 2.05f

    const v10, 0x3f19999a    # 0.6f

    .line 67
    invoke-virtual {v7, v4, v5, v6, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x3f400000    # 0.75f

    const v2, 0x3ec28f5c    # 0.38f

    const v3, 0x3fc8f5c3    # 1.57f

    const v24, 0x3f4ccccd    # 0.8f

    const v25, 0x403ccccd    # 2.95f

    const v26, 0x3f4ccccd    # 0.8f

    move v8, v4

    move/from16 v4, v24

    move v9, v5

    move/from16 v5, v25

    move v11, v6

    move/from16 v6, v26

    .line 68
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, -0x4123d70a    # -0.43f

    const v3, 0x400ccccd    # 2.2f

    const v4, 0x403ccccd    # 2.95f

    const v5, -0x40b33333    # -0.8f

    .line 69
    invoke-virtual {v7, v3, v6, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f266666    # 0.65f

    const v2, -0x414ccccd    # -0.35f

    const v26, 0x3f933333    # 1.15f

    const v28, -0x40e66666    # -0.6f

    const v29, 0x40033333    # 2.05f

    const v30, -0x40e66666    # -0.6f

    move/from16 v3, v26

    move/from16 v4, v28

    move/from16 v5, v29

    move/from16 v6, v30

    .line 70
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    invoke-virtual {v7, v8, v9, v11, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f051eb8    # 0.52f

    const v2, 0x3e851eb8    # 0.26f

    const v3, 0x3f8a3d71    # 1.08f

    const v4, 0x3f0ccccd    # 0.55f

    const v5, 0x3fea3d71    # 1.83f

    const v6, 0x3f333333    # 0.7f

    .line 72
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f147ae1    # 0.58f

    const v2, 0x3de147ae    # 0.11f

    const v3, 0x3f8f5c29    # 1.12f

    const v4, -0x41570a3d    # -0.33f

    const v5, 0x3f8f5c29    # 1.12f

    const v6, -0x40947ae1    # -0.92f

    .line 73
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, -0x4247ae14    # -0.09f

    .line 74
    invoke-virtual {v7, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x41147ae1    # -0.46f

    const v3, -0x4151eb85    # -0.34f

    const v4, -0x40ae147b    # -0.82f

    const v5, -0x40b5c28f    # -0.79f

    const v26, -0x40947ae1    # -0.92f

    move/from16 v6, v26

    .line 75
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41147ae1    # -0.46f

    const v2, -0x42333333    # -0.1f

    const v3, -0x40ab851f    # -0.83f

    const v4, -0x416b851f    # -0.29f

    const v5, -0x405eb852    # -1.26f

    const v6, -0x40fae148    # -0.52f

    .line 76
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, -0x40c00000    # -0.75f

    const v2, -0x413d70a4    # -0.38f

    const v3, -0x40333333    # -1.6f

    const v4, -0x40b33333    # -0.8f

    const v5, -0x3fc33333    # -2.95f

    const v6, -0x40b33333    # -0.8f

    .line 77
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x419f999a    # 19.95f

    const v1, 0x408eb852    # 4.46f

    .line 79
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, -0x40c00000    # -0.75f

    const v3, -0x4035c28f    # -1.58f

    move-object v0, v7

    .line 80
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ed70a3d    # 0.42f

    const v1, -0x3fc33333    # -2.95f

    const v2, -0x3ff33333    # -2.2f

    .line 81
    invoke-virtual {v7, v2, v0, v1, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40d9999a    # -0.65f

    const v2, 0x3ea3d70a    # 0.32f

    const v3, -0x4068f5c3    # -1.18f

    const v4, 0x3f19999a    # 0.6f

    const v5, -0x3ffccccd    # -2.05f

    const v6, 0x3f19999a    # 0.6f

    move-object v0, v7

    .line 82
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4099999a    # -0.9f

    const/4 v2, 0x0

    const v3, -0x404ccccd    # -1.4f

    const/high16 v4, -0x41800000    # -0.25f

    const v6, -0x40e66666    # -0.6f

    .line 83
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, -0x40c00000    # -0.75f

    const v2, -0x41428f5c    # -0.37f

    const v3, -0x40370a3d    # -1.57f

    const v4, -0x40b33333    # -0.8f

    const v5, -0x3fc33333    # -2.95f

    const v6, -0x40b33333    # -0.8f

    .line 84
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ed70a3d    # 0.42f

    const v1, -0x3fc33333    # -2.95f

    const v2, -0x3ff33333    # -2.2f

    .line 85
    invoke-virtual {v7, v2, v0, v1, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4123d70a    # -0.43f

    const v2, 0x3e6147ae    # 0.22f

    const v3, -0x40b0a3d7    # -0.81f

    const v4, 0x3ed1eb85    # 0.41f

    const v5, -0x405d70a4    # -1.27f

    const v6, 0x3f051eb8    # 0.52f

    move-object v0, v7

    .line 86
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4119999a    # -0.45f

    const v2, 0x3dcccccd    # 0.1f

    const v3, -0x40b851ec    # -0.78f

    const v4, 0x3eeb851f    # 0.46f

    const v5, -0x40b851ec    # -0.78f

    const v6, 0x3f68f5c3    # 0.91f

    .line 87
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3d8f5c29    # 0.07f

    .line 88
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3f19999a    # 0.6f

    const v3, 0x3f0a3d71    # 0.54f

    const v4, 0x3f851eb8    # 1.04f

    const v5, 0x3f8f5c29    # 1.12f

    const v6, 0x3f6b851f    # 0.92f

    move-object v0, v7

    .line 89
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x3f400000    # 0.75f

    const v2, -0x41e66666    # -0.15f

    const v3, 0x3fa7ae14    # 1.31f

    const v4, -0x411eb852    # -0.44f

    const v5, 0x3fea3d71    # 1.83f

    const v6, -0x40cf5c29    # -0.69f

    .line 90
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f266666    # 0.65f

    const v2, -0x41570a3d    # -0.33f

    const v3, 0x3f95c28f    # 1.17f

    const v4, -0x40e66666    # -0.6f

    const v5, 0x40033333    # 2.05f

    const v6, -0x40e66666    # -0.6f

    .line 91
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 92
    invoke-virtual {v7, v8, v9, v11, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x3f400000    # 0.75f

    const v2, 0x3ec28f5c    # 0.38f

    const v3, 0x3fc8f5c3    # 1.57f

    const v4, 0x3f4ccccd    # 0.8f

    const v5, 0x403ccccd    # 2.95f

    const v6, 0x3f4ccccd    # 0.8f

    .line 93
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x400ccccd    # 2.2f

    const v4, 0x403ccccd    # 2.95f

    const v5, -0x40b33333    # -0.8f

    const v6, -0x4123d70a    # -0.43f

    .line 94
    invoke-virtual {v7, v3, v6, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f266666    # 0.65f

    const v2, -0x415c28f6    # -0.32f

    const v26, 0x3f970a3d    # 1.18f

    move/from16 v3, v26

    move/from16 v4, v28

    move/from16 v5, v29

    move/from16 v6, v30

    .line 95
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f666666    # 0.9f

    const/4 v2, 0x0

    const v3, 0x3fb33333    # 1.4f

    const/high16 v4, 0x3e800000    # 0.25f

    const v5, 0x40033333    # 2.05f

    const v6, 0x3f19999a    # 0.6f

    .line 96
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f051eb8    # 0.52f

    const v2, 0x3e851eb8    # 0.26f

    const v3, 0x3f8a3d71    # 1.08f

    const v4, 0x3f0ccccd    # 0.55f

    const v5, 0x3fea3d71    # 1.83f

    const v6, 0x3f333333    # 0.7f

    .line 97
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f147ae1    # 0.58f

    const v2, 0x3de147ae    # 0.11f

    const v3, 0x3f8f5c29    # 1.12f

    const v4, -0x41570a3d    # -0.33f

    const v5, 0x3f8f5c29    # 1.12f

    const v6, -0x40947ae1    # -0.92f

    .line 98
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, -0x4247ae14    # -0.09f

    .line 99
    invoke-virtual {v7, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x41147ae1    # -0.46f

    const v3, -0x4151eb85    # -0.34f

    const v4, -0x40ae147b    # -0.82f

    const v5, -0x40b5c28f    # -0.79f

    const v26, -0x40947ae1    # -0.92f

    move/from16 v6, v26

    .line 100
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41147ae1    # -0.46f

    const v2, -0x42333333    # -0.1f

    const v3, -0x40ab851f    # -0.83f

    const v4, -0x4170a3d7    # -0.28f

    const v5, -0x405eb852    # -1.26f

    const/high16 v6, -0x41000000    # -0.5f

    .line 101
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 102
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x410170a4    # 8.09f

    const/high16 v1, 0x41880000    # 17.0f

    .line 103
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40533333    # -1.35f

    const/4 v2, 0x0

    const v3, -0x3ff33333    # -2.2f

    const v4, 0x3edc28f6    # 0.43f

    const v5, -0x3fc33333    # -2.95f

    const v6, 0x3f4ccccd    # 0.8f

    move-object v0, v7

    .line 104
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40d9999a    # -0.65f

    const v2, 0x3eb33333    # 0.35f

    const v3, -0x406ccccd    # -1.15f

    const v4, 0x3f19999a    # 0.6f

    const v5, -0x3ffccccd    # -2.05f

    const v6, 0x3f19999a    # 0.6f

    .line 105
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3ffccccd    # -2.05f

    const v1, -0x40e66666    # -0.6f

    const v2, -0x404ccccd    # -1.4f

    const/high16 v3, -0x41800000    # -0.25f

    .line 106
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, -0x40c00000    # -0.75f

    const v2, -0x413d70a4    # -0.38f

    const v3, -0x40370a3d    # -1.57f

    const v4, -0x40b33333    # -0.8f

    const v5, -0x3fc33333    # -2.95f

    const v6, -0x40b33333    # -0.8f

    move-object v0, v7

    .line 107
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3edc28f6    # 0.43f

    const v1, -0x3fc33333    # -2.95f

    const v2, -0x3ff33333    # -2.2f

    .line 108
    invoke-virtual {v7, v2, v0, v1, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4123d70a    # -0.43f

    const v2, 0x3e6b851f    # 0.23f

    const v3, -0x40b33333    # -0.8f

    const v4, 0x3ed70a3d    # 0.42f

    const v5, -0x405eb852    # -1.26f

    const v6, 0x3f051eb8    # 0.52f

    move-object v0, v7

    .line 109
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4119999a    # -0.45f

    const v2, 0x3dcccccd    # 0.1f

    const v3, -0x40b5c28f    # -0.79f

    const v4, 0x3eeb851f    # 0.46f

    const v5, -0x40b5c28f    # -0.79f

    const v6, 0x3f6b851f    # 0.92f

    .line 110
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3db851ec    # 0.09f

    .line 111
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3f170a3d    # 0.59f

    const v3, 0x3f0a3d71    # 0.54f

    const v4, 0x3f83d70a    # 1.03f

    const v5, 0x3f8f5c29    # 1.12f

    const v6, 0x3f68f5c3    # 0.91f

    move-object v0, v7

    .line 112
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x3f400000    # 0.75f

    const v2, -0x41e66666    # -0.15f

    const v3, 0x3fa7ae14    # 1.31f

    const v4, -0x411eb852    # -0.44f

    const v5, 0x3fea3d71    # 1.83f

    const v6, -0x40cf5c29    # -0.69f

    .line 113
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f266666    # 0.65f

    const v2, -0x415c28f6    # -0.32f

    const v3, 0x3f970a3d    # 1.18f

    const v4, -0x40e66666    # -0.6f

    const v5, 0x40033333    # 2.05f

    const v6, -0x40e66666    # -0.6f

    .line 114
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 115
    invoke-virtual {v7, v8, v9, v11, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x3f400000    # 0.75f

    const v2, 0x3ec28f5c    # 0.38f

    const v3, 0x3fc8f5c3    # 1.57f

    const v4, 0x3f4ccccd    # 0.8f

    const v5, 0x403ccccd    # 2.95f

    const v6, 0x3f4ccccd    # 0.8f

    .line 116
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4123d70a    # -0.43f

    const v1, -0x40b33333    # -0.8f

    const v2, 0x403ccccd    # 2.95f

    const v3, 0x400ccccd    # 2.2f

    .line 117
    invoke-virtual {v7, v3, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f266666    # 0.65f

    const v2, -0x415c28f6    # -0.32f

    const v3, 0x3f970a3d    # 1.18f

    const v4, -0x40e66666    # -0.6f

    const v5, 0x40033333    # 2.05f

    const v6, -0x40e66666    # -0.6f

    move-object v0, v7

    .line 118
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f666666    # 0.9f

    const/4 v2, 0x0

    const v3, 0x3fb33333    # 1.4f

    const/high16 v4, 0x3e800000    # 0.25f

    const v6, 0x3f19999a    # 0.6f

    .line 119
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f051eb8    # 0.52f

    const v2, 0x3e851eb8    # 0.26f

    const v3, 0x3f8a3d71    # 1.08f

    const v4, 0x3f0ccccd    # 0.55f

    const v5, 0x3fea3d71    # 1.83f

    const v6, 0x3f333333    # 0.7f

    .line 120
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f147ae1    # 0.58f

    const v2, 0x3de147ae    # 0.11f

    const v3, 0x3f8f5c29    # 1.12f

    const v4, -0x41570a3d    # -0.33f

    const v5, 0x3f8f5c29    # 1.12f

    const v6, -0x40970a3d    # -0.91f

    .line 121
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4247ae14    # -0.09f

    .line 122
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x41147ae1    # -0.46f

    const v3, -0x4151eb85    # -0.34f

    const v4, -0x40ae147b    # -0.82f

    const v5, -0x40b5c28f    # -0.79f

    const v6, -0x40947ae1    # -0.92f

    move-object v0, v7

    .line 123
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41147ae1    # -0.46f

    const v2, -0x42333333    # -0.1f

    const v3, -0x40ab851f    # -0.83f

    const v4, -0x416b851f    # -0.29f

    const v5, -0x405eb852    # -1.26f

    const v6, -0x40fae148    # -0.52f

    .line 124
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, -0x40c00000    # -0.75f

    const v2, -0x413851ec    # -0.39f

    const v3, -0x40333333    # -1.6f

    const v4, -0x40b0a3d7    # -0.81f

    const v5, -0x3fc33333    # -2.95f

    const v6, -0x40b0a3d7    # -0.81f

    .line 125
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 126
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 166
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v13

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3800

    const/16 v28, 0x0

    .line 162
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/rounded/WavesKt;->_waves:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 129
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
