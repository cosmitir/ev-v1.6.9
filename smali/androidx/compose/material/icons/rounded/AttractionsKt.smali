.class public final Landroidx/compose/material/icons/rounded/AttractionsKt;
.super Ljava/lang/Object;
.source "Attractions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAttractions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Attractions.kt\nandroidx/compose/material/icons/rounded/AttractionsKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,108:1\n122#2:109\n116#2,3:110\n119#2,3:114\n132#2,18:117\n152#2:154\n175#3:113\n622#4,2:135\n634#4,2:137\n636#4,11:143\n50#5,4:139\n*S KotlinDebug\n*F\n+ 1 Attractions.kt\nandroidx/compose/material/icons/rounded/AttractionsKt\n*L\n29#1:109\n29#1:110,3\n29#1:114,3\n30#1:117,18\n30#1:154\n29#1:113\n30#1:135,2\n30#1:137,2\n30#1:143,11\n30#1:139,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_attractions",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Attractions",
        "Landroidx/compose/material/icons/Icons$Rounded;",
        "getAttractions",
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
.field private static _attractions:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getAttractions(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 29

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/rounded/AttractionsKt;->_attractions:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "Rounded.Attractions"

    .line 110
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object v12, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 113
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

    .line 110
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    .line 120
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v14

    .line 127
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

    .line 132
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v21

    .line 133
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    const-string v15, ""

    .line 139
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v0, 0x41270a3d    # 10.44f

    const/high16 v1, 0x41960000    # 18.75f

    .line 31
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3ebd70a4    # 0.37f

    const v2, -0x41147ae1    # -0.46f

    const v3, 0x3f70a3d7    # 0.94f

    const/high16 v4, -0x40c00000    # -0.75f

    const v5, 0x3fc8f5c3    # 1.57f

    const/high16 v6, -0x40c00000    # -0.75f

    move-object v0, v7

    .line 32
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3e947ae1    # 0.29f

    const v1, 0x3fc7ae14    # 1.56f

    const v2, 0x3f9851ec    # 1.19f

    const/high16 v8, 0x3f400000    # 0.75f

    .line 33
    invoke-virtual {v7, v2, v0, v1, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3ec7ae14    # 0.39f

    const v2, -0x4247ae14    # -0.09f

    const v3, 0x3f428f5c    # 0.76f

    const v4, -0x41a8f5c3    # -0.21f

    const v5, 0x3f8f5c29    # 1.12f

    const v6, -0x4147ae14    # -0.36f

    move-object v0, v7

    .line 34
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x404a3d71    # -1.42f

    const v1, -0x3fb47ae1    # -3.18f

    .line 35
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x413851ec    # -0.39f

    const v2, 0x3e19999a    # 0.15f

    const v3, -0x40ae147b    # -0.82f

    const v4, 0x3e6b851f    # 0.23f

    const v5, -0x405eb852    # -1.26f

    const v6, 0x3e6b851f    # 0.23f

    move-object v0, v7

    .line 36
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41147ae1    # -0.46f

    const/4 v2, 0x0

    const v3, -0x4099999a    # -0.9f

    const v4, -0x4247ae14    # -0.09f

    const v5, -0x4059999a    # -1.3f

    const/high16 v6, -0x41800000    # -0.25f

    .line 37
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4048f5c3    # -1.43f

    const v1, 0x404c28f6    # 3.19f

    .line 38
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x411a6666    # 9.65f

    const v2, 0x419451ec    # 18.54f

    const v3, 0x41207ae1    # 10.03f

    const v4, 0x41955c29    # 18.67f

    const v5, 0x41270a3d    # 10.44f

    const/high16 v6, 0x41960000    # 18.75f

    move-object v0, v7

    .line 39
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40a51eb8    # 5.16f

    const/high16 v1, 0x41200000    # 10.0f

    .line 41
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x40a00000    # 5.0f

    const v2, 0x412970a4    # 10.59f

    const v3, 0x409d1eb8    # 4.91f

    const v4, 0x41335c29    # 11.21f

    const v5, 0x409d1eb8    # 4.91f

    const v6, 0x413d999a    # 11.85f

    move-object v0, v7

    .line 42
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const v3, 0x3df5c28f    # 0.12f

    const v4, 0x3fbc28f6    # 1.47f

    const v5, 0x3ea8f5c3    # 0.33f

    const v6, 0x4009999a    # 2.15f

    .line 43
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f2147ae    # 0.63f

    const v2, 0x3d4ccccd    # 0.05f

    const v3, 0x3f9c28f6    # 1.22f

    const v4, 0x3ecccccd    # 0.4f

    const v5, 0x3fc7ae14    # 1.56f

    const v6, 0x3f7d70a4    # 0.99f

    .line 44
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3ea8f5c3    # 0.33f

    const v2, 0x3f11eb85    # 0.57f

    const v3, 0x3eb33333    # 0.35f

    const v4, 0x3f9d70a4    # 1.23f

    const v5, 0x3de147ae    # 0.11f

    const v6, 0x3fe51eb8    # 1.79f

    .line 45
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e8a3d71    # 0.27f

    const v2, 0x3e8a3d71    # 0.27f

    const v3, 0x3f0f5c29    # 0.56f

    const v4, 0x3f07ae14    # 0.53f

    const v5, 0x3f5eb852    # 0.87f

    const v6, 0x3f428f5c    # 0.76f

    .line 46
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3fc28f5c    # 1.52f

    const v1, -0x3fa70a3d    # -3.39f

    .line 47
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v9, 0x0

    .line 48
    invoke-virtual {v7, v9, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x410f5c29    # -0.47f

    const v2, -0x40eb851f    # -0.58f

    const/high16 v3, -0x40c00000    # -0.75f

    const v4, -0x40570a3d    # -1.32f

    const/high16 v5, -0x40c00000    # -0.75f

    const v6, -0x3ff7ae14    # -2.13f

    move-object v0, v7

    .line 49
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x400e147b    # -1.89f

    const v3, 0x3fc66666    # 1.55f

    const v4, -0x3fa5c28f    # -3.41f

    const v5, 0x405d70a4    # 3.46f

    const v6, -0x3fa5c28f    # -3.41f

    .line 50
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3fc3d70a    # 1.53f

    const v1, 0x405a3d71    # 3.41f

    const v2, 0x405d70a4    # 3.46f

    .line 51
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3f51eb85    # 0.82f

    const v3, -0x416b851f    # -0.29f

    const v4, 0x3fc8f5c3    # 1.57f

    const v5, -0x40b851ec    # -0.78f

    const v6, 0x400a3d71    # 2.16f

    move-object v0, v7

    .line 52
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x3fc00000    # 1.5f

    const v1, 0x40566666    # 3.35f

    .line 53
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3ea3d70a    # 0.32f

    const v2, -0x418a3d71    # -0.24f

    const v3, 0x3f1eb852    # 0.62f

    const/high16 v4, -0x41000000    # -0.5f

    const v5, 0x3f666666    # 0.9f

    const v6, -0x40b5c28f    # -0.79f

    move-object v0, v7

    .line 54
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x419eb852    # -0.22f

    const v2, -0x40f33333    # -0.55f

    const v3, -0x41b33333    # -0.2f

    const v4, -0x40666666    # -1.2f

    const v5, 0x3df5c28f    # 0.12f

    const/high16 v6, -0x40200000    # -1.75f

    .line 55
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3ea8f5c3    # 0.33f

    const v2, -0x40ee147b    # -0.57f

    const v3, 0x3f666666    # 0.9f

    const v4, -0x40947ae1    # -0.92f

    const v5, 0x3fc28f5c    # 1.52f

    const v6, -0x40828f5c    # -0.99f

    .line 56
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e6147ae    # 0.22f

    const v2, -0x40d1eb85    # -0.68f

    const v3, 0x3eae147b    # 0.34f

    const v4, -0x404b851f    # -1.41f

    const v5, 0x3eae147b    # 0.34f

    const v6, -0x3ff5c28f    # -2.16f

    .line 57
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x40dc28f6    # -0.64f

    const v3, -0x4247ae14    # -0.09f

    const v4, -0x405d70a4    # -1.27f

    const/high16 v5, -0x41800000    # -0.25f

    const v6, -0x4011eb85    # -1.86f

    .line 58
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40dc28f6    # -0.64f

    const v2, -0x42dc28f6    # -0.04f

    const v3, -0x405eb852    # -1.26f

    const v4, -0x413851ec    # -0.39f

    const v5, -0x40333333    # -1.6f

    const/high16 v6, -0x40800000    # -1.0f

    .line 59
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4147ae14    # -0.36f

    const v2, -0x40e147ae    # -0.62f

    const v3, -0x414ccccd    # -0.35f

    const v4, -0x4051eb85    # -1.36f

    const v5, -0x430a3d71    # -0.03f

    const v6, -0x40066666    # -1.95f

    .line 60
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40970a3d    # -0.91f

    const v2, -0x40851eb8    # -0.98f

    const v3, -0x3ff9999a    # -2.1f

    const v4, -0x40251eb8    # -1.71f

    const v5, -0x3fa3d70a    # -3.44f

    const v6, -0x3ffccccd    # -2.05f

    .line 61
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x41566666    # 13.4f

    const v2, 0x40b33333    # 5.6f

    const v3, 0x414bd70a    # 12.74f

    const/high16 v4, 0x40c00000    # 6.0f

    const v5, 0x414028f6    # 12.01f

    const/high16 v6, 0x40c00000    # 6.0f

    .line 62
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x402147ae    # -1.74f

    const v1, -0x407eb852    # -1.01f

    const v2, -0x404e147b    # -1.39f

    const v3, -0x412e147b    # -0.41f

    .line 63
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x410ee148    # 8.93f

    const v2, 0x40aa8f5c    # 5.33f

    const v3, 0x40f7ae14    # 7.74f

    const v4, 0x40c147ae    # 6.04f

    const v5, 0x40da8f5c    # 6.83f

    const v6, 0x40e0a3d7    # 7.02f

    move-object v0, v7

    .line 64
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x40e51eb8    # 7.16f

    const v2, 0x40f3d70a    # 7.62f

    const v3, 0x40e5c28f    # 7.18f

    const v4, 0x4105eb85    # 8.37f

    const v5, 0x40d9eb85    # 6.81f

    const/high16 v6, 0x41100000    # 9.0f

    .line 65
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x40ce6666    # 6.45f

    const v2, 0x4119eb85    # 9.62f

    const v3, 0x40ba3d71    # 5.82f

    const v4, 0x411f851f    # 9.97f

    const v5, 0x40a51eb8    # 5.16f

    const/high16 v6, 0x41200000    # 10.0f

    .line 66
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v10, 0x40770a3d    # 3.86f

    const v11, 0x411947ae    # 9.58f

    .line 68
    invoke-virtual {v7, v10, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x40451eb8    # 3.08f

    const v2, 0x410fae14    # 8.98f

    const v3, 0x4035c28f    # 2.84f

    const v4, 0x40fc28f6    # 7.88f

    const v5, 0x40566666    # 3.35f

    const/high16 v6, 0x40e00000    # 7.0f

    .line 69
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x401f5c29    # 2.49f

    const v1, -0x40a66666    # -0.85f

    const v2, 0x3fca3d71    # 1.58f

    const v3, -0x40628f5c    # -1.23f

    .line 70
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f8e147b    # 1.11f

    const v2, -0x406a3d71    # -1.17f

    const v3, 0x4023d70a    # 2.56f

    const v4, -0x3ffe147b    # -2.03f

    const v5, 0x4085c28f    # 4.18f

    const v6, -0x3fe51eb8    # -2.42f

    move-object v0, v7

    .line 71
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x41226666    # 10.15f

    const/high16 v2, 0x40300000    # 2.75f

    const v3, 0x412fd70a    # 10.99f

    const/high16 v4, 0x40000000    # 2.0f

    const v5, 0x414028f6    # 12.01f

    const/high16 v6, 0x40000000    # 2.0f

    .line 72
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ffd70a4    # 1.98f

    const v1, 0x3fdd70a4    # 1.73f

    const v2, 0x3feccccd    # 1.85f

    .line 73
    invoke-virtual {v7, v2, v8, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3fd0a3d7    # 1.63f

    const v2, 0x3ec7ae14    # 0.39f

    const v3, 0x40447ae1    # 3.07f

    const v4, 0x3f9eb852    # 1.24f

    const v5, 0x4085c28f    # 4.18f

    const v6, 0x401ae148    # 2.42f

    move-object v0, v7

    .line 74
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f68f5c3    # 0.91f

    const v2, -0x413d70a4    # -0.38f

    const v3, 0x3ffeb852    # 1.99f

    const v4, -0x430a3d71    # -0.03f

    const v5, 0x401f5c29    # 2.49f

    const v6, 0x3f59999a    # 0.85f

    .line 75
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f028f5c    # 0.51f

    const v2, 0x3f6147ae    # 0.88f

    const v3, 0x3e8a3d71    # 0.27f

    const v4, 0x3ffd70a4    # 1.98f

    const v5, -0x40fd70a4    # -0.51f

    const v6, 0x40251eb8    # 2.58f

    .line 76
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e6b851f    # 0.23f

    const v2, 0x3f451eb8    # 0.77f

    const v3, 0x3eb33333    # 0.35f

    const v4, 0x3fca3d71    # 1.58f

    const v5, 0x3eb33333    # 0.35f

    const v6, 0x401ae148    # 2.42f

    .line 77
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x414ccccd    # -0.35f

    const v1, 0x401ae148    # 2.42f

    const v2, -0x420a3d71    # -0.12f

    const v3, 0x3fd33333    # 1.65f

    .line 78
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f47ae14    # 0.78f

    const v2, 0x3f19999a    # 0.6f

    const v3, 0x3f828f5c    # 1.02f

    const v4, 0x3fd9999a    # 1.7f

    const v5, 0x3f028f5c    # 0.51f

    const v6, 0x40251eb8    # 2.58f

    move-object v0, v7

    .line 79
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3fe0a3d7    # -2.49f

    const v1, 0x3f59999a    # 0.85f

    const v2, -0x4035c28f    # -1.58f

    const v3, 0x3f9d70a4    # 1.23f

    .line 80
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41333333    # -0.4f

    const v2, 0x3edc28f6    # 0.43f

    const v3, -0x40a66666    # -0.85f

    const v4, 0x3f4f5c29    # 0.81f

    const v5, -0x40547ae1    # -1.34f

    const v6, 0x3f933333    # 1.15f

    move-object v0, v7

    .line 81
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f4f5c29    # 0.81f

    const v1, 0x3fe66666    # 1.8f

    .line 82
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3f0f5c29    # 0.56f

    const v3, -0x41dc28f6    # -0.16f

    const v4, 0x3f99999a    # 1.2f

    const v5, -0x40b851ec    # -0.78f

    const v6, 0x3f99999a    # 1.2f

    move-object v0, v7

    .line 83
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41570a3d    # -0.33f

    const/4 v2, 0x0

    const v3, -0x40dc28f6    # -0.64f

    const v4, -0x41b33333    # -0.2f

    const/high16 v6, -0x41000000    # -0.5f

    .line 85
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x402a3d71    # -1.67f

    const/high16 v8, -0x40c00000    # -0.75f

    .line 86
    invoke-virtual {v7, v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4123d70a    # -0.43f

    const v2, 0x3e3851ec    # 0.18f

    const v3, -0x409eb852    # -0.88f

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, -0x40547ae1    # -1.34f

    const v6, 0x3ee147ae    # 0.44f

    move-object v0, v7

    .line 87
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x415dc28f    # 13.86f

    const/high16 v2, 0x41aa0000    # 21.25f

    const v3, 0x415051ec    # 13.02f

    const/high16 v4, 0x41b00000    # 22.0f

    const v5, 0x414028f6    # 12.01f

    const/high16 v6, 0x41b00000    # 22.0f

    .line 88
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40133333    # -1.85f

    const v1, -0x40228f5c    # -1.73f

    const v9, -0x40028f5c    # -1.98f

    .line 89
    invoke-virtual {v7, v0, v8, v9, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x4118cccd    # 9.55f

    const v2, 0x41a13333    # 20.15f

    const v3, 0x411170a4    # 9.09f

    const/high16 v4, 0x41a00000    # 20.0f

    const v5, 0x410a6666    # 8.65f

    const v6, 0x419e7ae1    # 19.81f

    move-object v0, v7

    .line 90
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40fc7ae1    # 7.89f

    const/high16 v1, 0x41ac0000    # 21.5f

    .line 91
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x40f80000    # 7.75f

    const v2, 0x41ae6666    # 21.8f

    const v3, 0x40ee6666    # 7.45f

    const/high16 v4, 0x41b00000    # 22.0f

    const v5, 0x40e3851f    # 7.11f

    const/high16 v6, 0x41b00000    # 22.0f

    move-object v0, v7

    .line 92
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40e33333    # 7.1f

    .line 93
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40e147ae    # -0.62f

    const/4 v2, 0x0

    const v3, -0x407c28f6    # -1.03f

    const v4, -0x40dc28f6    # -0.64f

    const v5, -0x40bae148    # -0.77f

    const v6, -0x40666666    # -1.2f

    move-object v0, v7

    .line 94
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f51eb85    # 0.82f

    const v1, -0x4015c28f    # -1.83f

    .line 95
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x410f5c29    # -0.47f

    const v2, -0x41570a3d    # -0.33f

    const v3, -0x40970a3d    # -0.91f

    const v4, -0x40ca3d71    # -0.71f

    const v5, -0x4059999a    # -1.3f

    const v6, -0x4070a3d7    # -1.12f

    move-object v0, v7

    .line 96
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40947ae1    # -0.92f

    const v2, 0x3ec28f5c    # 0.38f

    const v3, -0x400147ae    # -1.99f

    const v4, 0x3cf5c28f    # 0.03f

    const/high16 v5, -0x3fe00000    # -2.5f

    const v6, -0x40a66666    # -0.85f

    .line 97
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f028f5c    # 0.51f

    const v1, -0x3fdae148    # -2.58f

    const v2, -0x4175c28f    # -0.27f

    .line 98
    invoke-virtual {v7, v2, v9, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x4067ae14    # 3.62f

    const v2, 0x415a6666    # 13.65f

    const v3, 0x4060a3d7    # 3.51f

    const v4, 0x414d70a4    # 12.84f

    const v5, 0x4060a3d7    # 3.51f

    const/high16 v6, 0x41400000    # 12.0f

    move-object v0, v7

    .line 99
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4067ae14    # 3.62f

    const v1, 0x4125999a    # 10.35f

    .line 100
    invoke-virtual {v7, v0, v1, v10, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 101
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 141
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v13

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3800

    const/16 v28, 0x0

    .line 137
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/rounded/AttractionsKt;->_attractions:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 104
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
