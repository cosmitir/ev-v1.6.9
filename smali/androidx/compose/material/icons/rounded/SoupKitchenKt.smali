.class public final Landroidx/compose/material/icons/rounded/SoupKitchenKt;
.super Ljava/lang/Object;
.source "SoupKitchen.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSoupKitchen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SoupKitchen.kt\nandroidx/compose/material/icons/rounded/SoupKitchenKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,90:1\n122#2:91\n116#2,3:92\n119#2,3:96\n132#2,18:99\n152#2:136\n175#3:95\n622#4,2:117\n634#4,2:119\n636#4,11:125\n50#5,4:121\n*S KotlinDebug\n*F\n+ 1 SoupKitchen.kt\nandroidx/compose/material/icons/rounded/SoupKitchenKt\n*L\n29#1:91\n29#1:92,3\n29#1:96,3\n30#1:99,18\n30#1:136\n29#1:95\n30#1:117,2\n30#1:119,2\n30#1:125,11\n30#1:121,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_soupKitchen",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "SoupKitchen",
        "Landroidx/compose/material/icons/Icons$Rounded;",
        "getSoupKitchen",
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
.field private static _soupKitchen:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getSoupKitchen(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 29

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/rounded/SoupKitchenKt;->_soupKitchen:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "Rounded.SoupKitchen"

    .line 92
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object v12, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 95
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

    .line 92
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    .line 102
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v14

    .line 109
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

    .line 114
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v21

    .line 115
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    const-string v15, ""

    .line 121
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v0, 0x40c4cccd    # 6.15f

    const/high16 v8, 0x41580000    # 13.5f

    .line 31
    invoke-virtual {v7, v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41147ae1    # -0.46f

    const/4 v2, 0x0

    const v3, -0x40b33333    # -0.8f

    const v4, -0x4128f5c3    # -0.42f

    const v5, -0x40ca3d71    # -0.71f

    const v6, -0x40a147ae    # -0.87f

    move-object v0, v7

    .line 32
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x40af5c29    # 5.48f

    const v2, 0x41473333    # 12.45f

    const/high16 v3, 0x40b00000    # 5.5f

    const v4, 0x4143d70a    # 12.24f

    const/high16 v5, 0x40b00000    # 5.5f

    const/high16 v6, 0x41400000    # 12.0f

    .line 33
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const v4, -0x3fc9999a    # -2.85f

    const/high16 v5, -0x40800000    # -1.0f

    const v6, -0x3f9851ec    # -3.62f

    .line 34
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, -0x416b851f    # -0.29f

    const v3, 0x3cf5c28f    # 0.03f

    const v4, -0x40e8f5c3    # -0.59f

    const v5, 0x3e2e147b    # 0.17f

    const v6, -0x4091eb85    # -0.93f

    .line 35
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x4098f5c3    # 4.78f

    const v2, 0x40e5c28f    # 7.18f

    const v3, 0x40a147ae    # 5.04f

    const/high16 v4, 0x40e00000    # 7.0f

    const v5, 0x40aae148    # 5.34f

    const/high16 v6, 0x40e00000    # 7.0f

    .line 36
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3ee66666    # 0.45f

    const/4 v2, 0x0

    const v3, 0x3f4ccccd    # 0.8f

    const v4, 0x3ed70a3d    # 0.42f

    const v5, 0x3f35c28f    # 0.71f

    const v6, 0x3f5c28f6    # 0.86f

    .line 37
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x40c051ec    # 6.01f

    const v2, 0x4100a3d7    # 8.04f

    const/high16 v3, 0x40c00000    # 6.0f

    const v4, 0x41035c29    # 8.21f

    const/high16 v5, 0x40c00000    # 6.0f

    const v6, 0x4106147b    # 8.38f

    .line 38
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x40c00000    # 6.0f

    const v2, 0x41126666    # 9.15f

    const/high16 v3, 0x40e00000    # 7.0f

    const/high16 v4, 0x41300000    # 11.0f

    const/high16 v5, 0x40e00000    # 7.0f

    const/high16 v6, 0x41400000    # 12.0f

    .line 39
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3ed70a3d    # 0.42f

    const v3, -0x425c28f6    # -0.08f

    const v4, 0x3f428f5c    # 0.76f

    const v5, -0x41d1eb85    # -0.17f

    const v6, 0x3f8147ae    # 1.01f

    .line 40
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x40d75c29    # 6.73f

    const v2, 0x4154f5c3    # 13.31f

    const v3, 0x40ceb852    # 6.46f

    const/high16 v4, 0x41580000    # 13.5f

    const v5, 0x40c4cccd    # 6.15f

    const/high16 v6, 0x41580000    # 13.5f

    .line 41
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x414a6666    # 12.65f

    .line 43
    invoke-virtual {v7, v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e9eb852    # 0.31f

    const/4 v2, 0x0

    const v3, 0x3f147ae1    # 0.58f

    const v4, -0x41bd70a4    # -0.19f

    const v5, 0x3f2e147b    # 0.68f

    const v6, -0x41051eb8    # -0.49f

    move-object v0, v7

    .line 44
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3db851ec    # 0.09f

    const/high16 v2, -0x41800000    # -0.25f

    const v3, 0x3e2e147b    # 0.17f

    const v4, -0x40e8f5c3    # -0.59f

    const v5, 0x3e2e147b    # 0.17f

    const v6, -0x407eb852    # -1.01f

    .line 45
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const v4, -0x3fc9999a    # -2.85f

    const/high16 v5, -0x40800000    # -1.0f

    const v6, -0x3f9851ec    # -3.62f

    .line 46
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, -0x41d1eb85    # -0.17f

    const v3, 0x3c23d70a    # 0.01f

    const v4, -0x4151eb85    # -0.34f

    const v5, 0x3d23d70a    # 0.04f

    const v6, -0x40fd70a4    # -0.51f

    .line 47
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x414a147b    # 12.63f

    const v2, 0x40ed70a4    # 7.42f

    const v3, 0x4144a3d7    # 12.29f

    const/high16 v4, 0x40e00000    # 7.0f

    const v5, 0x413d70a4    # 11.84f

    const/high16 v6, 0x40e00000    # 7.0f

    .line 48
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x416b851f    # -0.29f

    const/4 v2, 0x0

    const v3, -0x40f0a3d7    # -0.56f

    const v4, 0x3e3851ec    # 0.18f

    const v5, -0x40d47ae1    # -0.67f

    const v6, 0x3ee66666    # 0.45f

    .line 49
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x41307ae1    # 11.03f

    const v2, 0x40f947ae    # 7.79f

    const/high16 v3, 0x41300000    # 11.0f

    const v4, 0x410147ae    # 8.08f

    const/high16 v5, 0x41300000    # 11.0f

    const v6, 0x4106147b    # 8.38f

    .line 50
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x41300000    # 11.0f

    const v2, 0x41126666    # 9.15f

    const/high16 v3, 0x41400000    # 12.0f

    const/high16 v4, 0x41300000    # 11.0f

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v6, 0x41400000    # 12.0f

    .line 51
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3e75c28f    # 0.24f

    const v3, -0x435c28f6    # -0.02f

    const v4, 0x3ee66666    # 0.45f

    const v5, -0x428a3d71    # -0.06f

    const v6, 0x3f2147ae    # 0.63f

    .line 52
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x413d999a    # 11.85f

    const v2, 0x415147ae    # 13.08f

    const v3, 0x41430a3d    # 12.19f

    const/high16 v4, 0x41580000    # 13.5f

    const v5, 0x414a6666    # 12.65f

    const/high16 v6, 0x41580000    # 13.5f

    .line 53
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41166666    # 9.4f

    .line 55
    invoke-virtual {v7, v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e9eb852    # 0.31f

    const/4 v2, 0x0

    const v3, 0x3f147ae1    # 0.58f

    const v4, -0x41bd70a4    # -0.19f

    const v5, 0x3f2e147b    # 0.68f

    const v6, -0x41051eb8    # -0.49f

    move-object v0, v7

    .line 56
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3db851ec    # 0.09f

    const/high16 v2, -0x41800000    # -0.25f

    const v3, 0x3e2e147b    # 0.17f

    const v4, -0x40e8f5c3    # -0.59f

    const v5, 0x3e2e147b    # 0.17f

    const v6, -0x407eb852    # -1.01f

    .line 57
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const v4, -0x3fc9999a    # -2.85f

    const/high16 v5, -0x40800000    # -1.0f

    const v6, -0x3f9851ec    # -3.62f

    .line 58
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, -0x41d1eb85    # -0.17f

    const v3, 0x3c23d70a    # 0.01f

    const v4, -0x4151eb85    # -0.34f

    const v5, 0x3d23d70a    # 0.04f

    const v6, -0x40fd70a4    # -0.51f

    .line 59
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x4116147b    # 9.38f

    const v2, 0x40ed70a4    # 7.42f

    const v3, 0x4110a3d7    # 9.04f

    const/high16 v4, 0x40e00000    # 7.0f

    const v5, 0x410970a4    # 8.59f

    const/high16 v6, 0x40e00000    # 7.0f

    .line 60
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x4104a3d7    # 8.29f

    const/high16 v2, 0x40e00000    # 7.0f

    const v3, 0x41007ae1    # 8.03f

    const v4, 0x40e5c28f    # 7.18f

    const v5, 0x40fd70a4    # 7.92f

    const v6, 0x40ee6666    # 7.45f

    .line 61
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x40f8f5c3    # 7.78f

    const v2, 0x40f947ae    # 7.79f

    const/high16 v3, 0x40f80000    # 7.75f

    const v4, 0x410147ae    # 8.08f

    const/high16 v5, 0x40f80000    # 7.75f

    const v6, 0x4106147b    # 8.38f

    .line 62
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3f451eb8    # 0.77f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x402851ec    # 2.63f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x4067ae14    # 3.62f

    .line 63
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x3e75c28f    # 0.24f

    const v3, -0x435c28f6    # -0.02f

    const v4, 0x3ee66666    # 0.45f

    const v5, -0x428a3d71    # -0.06f

    const v6, 0x3f2147ae    # 0.63f

    .line 64
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x4109999a    # 8.6f

    const v2, 0x415147ae    # 13.08f

    const v3, 0x410f0a3d    # 8.94f

    const/high16 v4, 0x41580000    # 13.5f

    const v5, 0x41166666    # 9.4f

    const/high16 v6, 0x41580000    # 13.5f

    .line 65
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v8, 0x41a3ae14    # 20.46f

    const v9, 0x40cbd70a    # 6.37f

    .line 67
    invoke-virtual {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f11eb85    # 0.57f

    const v2, 0x3d8f5c29    # 0.07f

    const v3, 0x3f8a3d71    # 1.08f

    const v4, -0x4151eb85    # -0.34f

    const v5, 0x3f8f5c29    # 1.12f

    const v6, -0x40970a3d    # -0.91f

    .line 68
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x41acb852    # 21.59f

    const v2, 0x40a8f5c3    # 5.28f

    const v3, 0x41accccd    # 21.6f

    const v4, 0x40a3d70a    # 5.12f

    const v5, 0x41accccd    # 21.6f

    const/high16 v6, 0x40a00000    # 5.0f

    .line 69
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x402ccccd    # -1.65f

    const v3, -0x40533333    # -1.35f

    const/high16 v4, -0x3fc00000    # -3.0f

    const/high16 v5, -0x3fc00000    # -3.0f

    const/high16 v6, -0x3fc00000    # -3.0f

    .line 70
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x403ae148    # -1.54f

    const/4 v2, 0x0

    const v3, -0x3fcc28f6    # -2.81f

    const v4, 0x3f947ae1    # 1.16f

    const v5, -0x3fc147ae    # -2.98f

    const v6, 0x4029999a    # 2.65f

    .line 71
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41687ae1    # 14.53f

    const/high16 v1, 0x41700000    # 15.0f

    .line 72
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x407f5c29    # 3.99f

    .line 73
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40e66666    # -0.6f

    const v3, -0x40770a3d    # -1.07f

    const v4, 0x3f0a3d71    # 0.54f

    const v5, -0x40851eb8    # -0.98f

    const v6, 0x3f91eb85    # 1.14f

    move-object v0, v7

    .line 74
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x40628f5c    # 3.54f

    const v2, 0x419bae14    # 19.46f

    const v3, 0x40cc7ae1    # 6.39f

    const/high16 v4, 0x41b00000    # 22.0f

    const/high16 v5, 0x411c0000    # 9.75f

    const/high16 v6, 0x41b00000    # 22.0f

    .line 75
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x405eb852    # 3.48f

    const/4 v2, 0x0

    const v3, 0x40cae148    # 6.34f

    const v4, -0x3fd147ae    # -2.73f

    const v5, 0x40d6b852    # 6.71f

    const v6, -0x3f38a3d7    # -6.23f

    .line 76
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f933333    # 1.15f

    const v1, -0x3ed2147b    # -10.87f

    .line 77
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x418d47ae    # 17.66f

    const v2, 0x408c7ae1    # 4.39f

    const v3, 0x4190a3d7    # 18.08f

    const/high16 v4, 0x40800000    # 4.0f

    const v5, 0x4194cccd    # 18.6f

    const/high16 v6, 0x40800000    # 4.0f

    move-object v0, v7

    .line 78
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f0ccccd    # 0.55f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ee66666    # 0.45f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 79
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3d8f5c29    # 0.07f

    const v3, -0x43dc28f6    # -0.01f

    const v4, 0x3e3851ec    # 0.18f

    const v5, -0x43dc28f6    # -0.01f

    const v6, 0x3e9eb852    # 0.31f

    .line 80
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x419c6666    # 19.55f

    const v2, 0x40bae148    # 5.84f

    const v3, 0x419f70a4    # 19.93f

    const v4, 0x40c9999a    # 6.3f

    const v5, 0x41a3ae14    # 20.46f

    const v6, 0x40cbd70a    # 6.37f

    .line 81
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    invoke-virtual {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 123
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v13

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3800

    const/16 v28, 0x0

    .line 119
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/rounded/SoupKitchenKt;->_soupKitchen:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 86
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
