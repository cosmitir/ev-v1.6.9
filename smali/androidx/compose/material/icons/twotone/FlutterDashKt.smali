.class public final Landroidx/compose/material/icons/twotone/FlutterDashKt;
.super Ljava/lang/Object;
.source "FlutterDash.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFlutterDash.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FlutterDash.kt\nandroidx/compose/material/icons/twotone/FlutterDashKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,167:1\n122#2:168\n116#2,3:169\n119#2,3:173\n132#2,18:176\n152#2:213\n132#2,18:214\n152#2:251\n175#3:172\n622#4,2:194\n634#4,2:196\n636#4,11:202\n622#4,2:232\n634#4,2:234\n636#4,11:240\n50#5,4:198\n50#5,4:236\n*S KotlinDebug\n*F\n+ 1 FlutterDash.kt\nandroidx/compose/material/icons/twotone/FlutterDashKt\n*L\n29#1:168\n29#1:169,3\n29#1:173,3\n30#1:176,18\n30#1:213\n46#1:214,18\n46#1:251\n29#1:172\n30#1:194,2\n30#1:196,2\n30#1:202,11\n46#1:232,2\n46#1:234,2\n46#1:240,11\n30#1:198,4\n46#1:236,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_flutterDash",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "FlutterDash",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getFlutterDash",
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
.field private static _flutterDash:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getFlutterDash(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 46

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/twotone/FlutterDashKt;->_flutterDash:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "TwoTone.FlutterDash"

    .line 169
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object/from16 v29, v1

    move-object v12, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 172
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

    .line 169
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v17, 0x3e99999a    # 0.3f

    const v19, 0x3e99999a    # 0.3f

    .line 179
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v14

    .line 186
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

    .line 191
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v21

    .line 192
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    const-string v15, ""

    .line 198
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v2, 0x41300000    # 11.0f

    .line 31
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, 0x3f4f5c29    # 0.81f

    const v7, 0x3dcccccd    # 0.1f

    const v8, 0x3fc3d70a    # 1.53f

    const/high16 v9, 0x3e800000    # 0.25f

    const v10, 0x400d70a4    # 2.21f

    move-object v4, v0

    .line 32
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3e3851ec    # 0.18f

    const v6, -0x40cf5c29    # -0.69f

    const v7, 0x3eeb851f    # 0.46f

    const v8, -0x4055c28f    # -1.33f

    const v9, 0x3f547ae1    # 0.83f

    const v10, -0x400a3d71    # -1.92f

    .line 33
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41a8f5c3    # -0.21f

    const v6, -0x410f5c29    # -0.47f

    const v7, -0x4151eb85    # -0.34f

    const v8, -0x40828f5c    # -0.99f

    const v9, -0x4151eb85    # -0.34f

    const v10, -0x403ae148    # -1.54f

    .line 34
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x40b80000    # 5.75f

    const v6, 0x40f5c28f    # 7.68f

    const v7, 0x40edc28f    # 7.43f

    const/high16 v8, 0x40c00000    # 6.0f

    const/high16 v9, 0x41180000    # 9.5f

    const/high16 v10, 0x40c00000    # 6.0f

    .line 35
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f75c28f    # 0.96f

    const/4 v6, 0x0

    const v7, 0x3feb851f    # 1.84f

    const v8, 0x3ebd70a4    # 0.37f

    const/high16 v9, 0x40200000    # 2.5f

    const v10, 0x3f7851ec    # 0.97f

    .line 36
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x414a8f5c    # 12.66f

    const v6, 0x40cbd70a    # 6.37f

    const v7, 0x4158a3d7    # 13.54f

    const/high16 v8, 0x40c00000    # 6.0f

    const/high16 v9, 0x41680000    # 14.5f

    const/high16 v10, 0x40c00000    # 6.0f

    .line 37
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40047ae1    # 2.07f

    const/4 v6, 0x0

    const/high16 v7, 0x40700000    # 3.75f

    const v8, 0x3fd70a3d    # 1.68f

    const/high16 v9, 0x40700000    # 3.75f

    const/high16 v10, 0x40700000    # 3.75f

    .line 38
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, 0x3f0ccccd    # 0.55f

    const v7, -0x420a3d71    # -0.12f

    const v8, 0x3f88f5c3    # 1.07f

    const v9, -0x4151eb85    # -0.34f

    const v10, 0x3fc51eb8    # 1.54f

    .line 39
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ebd70a4    # 0.37f

    const v6, 0x3f170a3d    # 0.59f

    const v7, 0x3f28f5c3    # 0.66f

    const v8, 0x3f9eb852    # 1.24f

    const v9, 0x3f570a3d    # 0.84f

    const v10, 0x3ff851ec    # 1.94f

    .line 40
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x41973333    # 18.9f

    const v6, 0x4148cccd    # 12.55f

    const/high16 v7, 0x41980000    # 19.0f

    const v8, 0x413d1eb8    # 11.82f

    const/high16 v9, 0x41980000    # 19.0f

    const/high16 v10, 0x41300000    # 11.0f

    .line 41
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, -0x3f88f5c3    # -3.86f

    const v7, -0x3fb70a3d    # -3.14f

    const/high16 v8, -0x3f200000    # -7.0f

    const/high16 v9, -0x3f200000    # -7.0f

    const/high16 v10, -0x3f200000    # -7.0f

    .line 42
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x41023d71    # 8.14f

    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v7, 0x40a00000    # 5.0f

    const v8, 0x40e47ae1    # 7.14f

    const/high16 v9, 0x40a00000    # 5.0f

    const/high16 v10, 0x41300000    # 11.0f

    .line 43
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 200
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v13

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3800

    const/16 v28, 0x0

    .line 196
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/high16 v34, 0x3f800000    # 1.0f

    const/high16 v36, 0x3f800000    # 1.0f

    .line 217
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v31

    .line 224
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v4

    invoke-direct {v0, v4, v5, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v33, v0

    check-cast v33, Landroidx/compose/ui/graphics/Brush;

    const/16 v35, 0x0

    const/high16 v37, 0x3f800000    # 1.0f

    .line 229
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v38

    .line 230
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v39

    const/high16 v40, 0x3f800000    # 1.0f

    const-string v32, ""

    .line 236
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v10, 0x41311eb8    # 11.07f

    const v11, 0x413b3333    # 11.7f

    .line 47
    invoke-virtual {v0, v10, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3e947ae1    # 0.29f

    const v5, -0x413851ec    # -0.39f

    const v6, 0x3f4f5c29    # 0.81f

    const v7, -0x40f0a3d7    # -0.56f

    const v8, 0x3fa28f5c    # 1.27f

    const v9, -0x41428f5c    # -0.37f

    move-object v3, v0

    .line 48
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3e2e147b    # 0.17f

    const v5, 0x3d8f5c29    # 0.07f

    const v6, 0x3ea3d70a    # 0.32f

    const v7, 0x3e3851ec    # 0.18f

    const v8, 0x3edc28f6    # 0.43f

    const v9, 0x3ea8f5c3    # 0.33f

    .line 49
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3e6147ae    # 0.22f

    const v5, 0x3e8f5c29    # 0.28f

    const/high16 v6, 0x3e800000    # 0.25f

    const v7, 0x3f170a3d    # 0.59f

    const v8, 0x3e6147ae    # 0.22f

    const v9, 0x3f59999a    # 0.85f

    .line 50
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x42b33333    # -0.05f

    const v5, 0x3ea8f5c3    # 0.33f

    const/high16 v6, -0x41800000    # -0.25f

    const v7, 0x3f2147ae    # 0.63f

    const v8, -0x40f5c28f    # -0.54f

    const v9, 0x3f4a3d71    # 0.79f

    .line 51
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, -0x3f6428f6    # -4.87f

    const v7, 0x403ccccd    # 2.95f

    const v8, -0x3f5dc28f    # -5.07f

    const v9, 0x402c28f6    # 2.69f

    .line 52
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    invoke-virtual {v0, v10, v11, v10, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v3, 0x41b00000    # 22.0f

    const/high16 v4, 0x41200000    # 10.0f

    .line 55
    invoke-virtual {v0, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const/high16 v5, 0x40200000    # 2.5f

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v8, -0x40400000    # -1.5f

    const/high16 v9, 0x40400000    # 3.0f

    move-object v3, v0

    .line 56
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x41947ae1    # -0.23f

    const/4 v5, 0x0

    const v6, -0x411eb852    # -0.44f

    const v7, -0x42333333    # -0.1f

    const v8, -0x40e147ae    # -0.62f

    const v9, -0x417ae148    # -0.26f

    .line 57
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x410a3d71    # -0.48f

    const v5, 0x40547ae1    # 3.32f

    const v6, -0x3fe8f5c3    # -2.36f

    const v7, 0x40a9eb85    # 5.31f

    const v8, -0x3f5570a4    # -5.33f

    const v9, 0x40bfae14    # 5.99f

    .line 58
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3de147ae    # 0.11f

    const v5, 0x3ee147ae    # 0.44f

    const v6, 0x3ef5c28f    # 0.48f

    const v7, 0x3f451eb8    # 0.77f

    const v8, 0x3f733333    # 0.95f

    const v9, 0x3f451eb8    # 0.77f

    .line 59
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v10, 0x0

    .line 60
    invoke-virtual {v0, v10, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v11, 0x3f147ae1    # 0.58f

    .line 61
    invoke-virtual {v0, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3e6147ae    # 0.22f

    const/4 v5, 0x0

    const v6, 0x3ed1eb85    # 0.41f

    const v7, 0x3e19999a    # 0.15f

    const v8, 0x3ef5c28f    # 0.48f

    const v9, 0x3eb851ec    # 0.36f

    .line 62
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3e2e147b    # 0.17f

    const v5, 0x3f051eb8    # 0.52f

    const v6, 0x3f28f5c3    # 0.66f

    const v7, 0x3f828f5c    # 1.02f

    const v8, 0x3f828f5c    # 1.02f

    const v9, 0x3fa8f5c3    # 1.32f

    .line 63
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v4, 0x3e800000    # 0.25f

    const v5, 0x3e570a3d    # 0.21f

    const v6, 0x3e75c28f    # 0.24f

    const v7, 0x3f170a3d    # 0.59f

    const v8, -0x430a3d71    # -0.03f

    const v9, 0x3f47ae14    # 0.78f

    .line 64
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x4151eb85    # -0.34f

    const v5, 0x3e75c28f    # 0.24f

    const v6, -0x4099999a    # -0.9f

    const v7, 0x3efae148    # 0.49f

    const v8, -0x401ae148    # -1.79f

    const v9, 0x3f07ae14    # 0.53f

    .line 65
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x41c7ae14    # -0.18f

    const v5, 0x3c23d70a    # 0.01f

    const v6, -0x414ccccd    # -0.35f

    const v7, -0x4270a3d7    # -0.07f

    const v8, -0x4119999a    # -0.45f

    const v9, -0x419eb852    # -0.22f

    .line 66
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x4172e148    # 15.18f

    const v5, 0x41b08f5c    # 22.07f

    const/high16 v6, 0x41700000    # 15.0f

    const v7, 0x41adae14    # 21.71f

    const/high16 v8, 0x41700000    # 15.0f

    const v9, 0x41aa147b    # 21.26f

    .line 67
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, -0x41666666    # -0.3f

    const v6, 0x3d23d70a    # 0.04f

    const v7, -0x40ee147b    # -0.57f

    const v8, 0x3db851ec    # 0.09f

    const v9, -0x40b33333    # -0.8f

    .line 68
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x40b851ec    # -0.78f

    const v5, -0x41dc28f6    # -0.16f

    const v6, -0x404e147b    # -1.39f

    const v7, -0x40b851ec    # -0.78f

    const v8, -0x4039999a    # -1.55f

    const v9, -0x403851ec    # -1.56f

    .line 69
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x41051eb8    # -0.49f

    const v5, 0x3d75c28f    # 0.06f

    const/high16 v6, -0x40800000    # -1.0f

    const v7, 0x3dcccccd    # 0.1f

    const v8, -0x403ae148    # -1.54f

    const v9, 0x3dcccccd    # 0.1f

    .line 70
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x409eb852    # -0.88f

    const/4 v5, 0x0

    const v6, -0x40266666    # -1.7f

    const v7, -0x4247ae14    # -0.09f

    const v8, -0x3fe33333    # -2.45f

    const/high16 v9, -0x41800000    # -0.25f

    .line 71
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x41187ae1    # 9.53f

    const v5, 0x4196a3d7    # 18.83f

    const/high16 v6, 0x41180000    # 9.5f

    const v7, 0x419747ae    # 18.91f

    const/high16 v8, 0x41180000    # 9.5f

    const/high16 v9, 0x41980000    # 19.0f

    .line 72
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, 0x3f0ccccd    # 0.55f

    const v6, 0x3ee66666    # 0.45f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 73
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    invoke-virtual {v0, v10, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    invoke-virtual {v0, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3e6147ae    # 0.22f

    const/4 v5, 0x0

    const v6, 0x3ed1eb85    # 0.41f

    const v7, 0x3e19999a    # 0.15f

    const v8, 0x3ef5c28f    # 0.48f

    const v9, 0x3eb851ec    # 0.36f

    .line 76
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3e2e147b    # 0.17f

    const v5, 0x3f051eb8    # 0.52f

    const v6, 0x3f28f5c3    # 0.66f

    const v7, 0x3f828f5c    # 1.02f

    const v8, 0x3f828f5c    # 1.02f

    const v9, 0x3fa8f5c3    # 1.32f

    .line 77
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v4, 0x3e800000    # 0.25f

    const v5, 0x3e570a3d    # 0.21f

    const v6, 0x3e75c28f    # 0.24f

    const v7, 0x3f170a3d    # 0.59f

    const v8, -0x430a3d71    # -0.03f

    const v9, 0x3f47ae14    # 0.78f

    .line 78
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x4151eb85    # -0.34f

    const v5, 0x3e75c28f    # 0.24f

    const v6, -0x4099999a    # -0.9f

    const v7, 0x3efae148    # 0.49f

    const v8, -0x401ae148    # -1.79f

    const v9, 0x3f07ae14    # 0.53f

    .line 79
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x41c7ae14    # -0.18f

    const v5, 0x3c23d70a    # 0.01f

    const v6, -0x414ccccd    # -0.35f

    const v7, -0x4270a3d7    # -0.07f

    const v8, -0x4119999a    # -0.45f

    const v9, -0x419eb852    # -0.22f

    .line 80
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x4122e148    # 10.18f

    const v5, 0x41b48f5c    # 22.57f

    const/high16 v6, 0x41200000    # 10.0f

    const v7, 0x41b1ae14    # 22.21f

    const/high16 v8, 0x41200000    # 10.0f

    const v9, 0x41ae147b    # 21.76f

    .line 81
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, -0x41666666    # -0.3f

    const v6, 0x3d23d70a    # 0.04f

    const v7, -0x40ee147b    # -0.57f

    const v8, 0x3db851ec    # 0.09f

    const v9, -0x40b33333    # -0.8f

    .line 82
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x41130a3d    # 9.19f

    const v5, 0x41a628f6    # 20.77f

    const/high16 v6, 0x41080000    # 8.5f

    const v7, 0x419fae14    # 19.96f

    const/high16 v8, 0x41080000    # 8.5f

    const/high16 v9, 0x41980000    # 19.0f

    .line 83
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, -0x41c7ae14    # -0.18f

    const v6, 0x3cf5c28f    # 0.03f

    const v7, -0x4147ae14    # -0.36f

    const v8, 0x3da3d70a    # 0.08f

    const v9, -0x40f851ec    # -0.53f

    .line 84
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x3fe28f5c    # -2.46f

    const v5, -0x40a3d70a    # -0.86f

    const v6, -0x3f7f0a3d    # -4.03f

    const v7, -0x3fce147b    # -2.78f

    const v8, -0x3f7147ae    # -4.46f

    const v9, -0x3f4851ec    # -5.74f

    .line 85
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x407c28f6    # 3.94f

    const v5, 0x414e6666    # 12.9f

    const v6, 0x406f5c29    # 3.74f

    const/high16 v7, 0x41500000    # 13.0f

    const/high16 v8, 0x40600000    # 3.5f

    const/high16 v9, 0x41500000    # 13.0f

    .line 86
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v5, 0x41500000    # 13.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x41480000    # 12.5f

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v9, 0x41200000    # 10.0f

    .line 87
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, -0x3feeb852    # -2.27f

    const v6, 0x3fd9999a    # 1.7f

    const/high16 v7, -0x3f700000    # -4.5f

    const/high16 v8, 0x40400000    # 3.0f

    const/high16 v9, -0x3f700000    # -4.5f

    .line 88
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3edc28f6    # 0.43f

    const/4 v5, 0x0

    const v6, 0x3efae148    # 0.49f

    const v7, 0x3efae148    # 0.49f

    const/high16 v8, 0x3f000000    # 0.5f

    const v9, 0x3f59999a    # 0.85f

    .line 89
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3fa3d70a    # 1.28f

    const v5, -0x401c28f6    # -1.78f

    const v6, 0x4050a3d7    # 3.26f

    const v7, -0x3fbeb852    # -3.02f

    const v8, 0x40b1999a    # 5.55f

    const v9, -0x3fad70a4    # -3.29f

    .line 90
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v4, 0x41340000    # 11.25f

    const v5, 0x40066666    # 2.1f

    const v6, 0x4142147b    # 12.13f

    const/high16 v7, 0x3fc00000    # 1.5f

    const/high16 v8, 0x41500000    # 13.0f

    const/high16 v9, 0x3fc00000    # 1.5f

    .line 91
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 92
    invoke-virtual {v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x3ea8f5c3    # 0.33f

    const/high16 v7, -0x41000000    # -0.5f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, -0x41000000    # -0.5f

    move-object v3, v0

    .line 93
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3f2b851f    # 0.67f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f000000    # 0.5f

    .line 94
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x41051eb8    # -0.49f

    const v6, -0x40a66666    # -0.85f

    const v7, 0x3eb33333    # 0.35f

    const v8, -0x408a3d71    # -0.96f

    const v9, 0x3f451eb8    # 0.77f

    .line 95
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3fe8f5c3    # 1.82f

    const v5, 0x3ef5c28f    # 0.48f

    const v6, 0x4058f5c3    # 3.39f

    const v7, 0x3fcb851f    # 1.59f

    const v8, 0x408eb852    # 4.46f

    const v9, 0x40451eb8    # 3.08f

    .line 96
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x4194147b    # 18.51f

    const v5, 0x40bfae14    # 5.99f

    const v6, 0x41948f5c    # 18.57f

    const/high16 v7, 0x40b00000    # 5.5f

    const/high16 v8, 0x41980000    # 19.0f

    const/high16 v9, 0x40b00000    # 5.5f

    .line 97
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x41a26666    # 20.3f

    const/high16 v5, 0x40b00000    # 5.5f

    const/high16 v6, 0x41b00000    # 22.0f

    const v7, 0x40f75c29    # 7.73f

    const/high16 v8, 0x41b00000    # 22.0f

    const/high16 v9, 0x41200000    # 10.0f

    .line 98
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 99
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 100
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, 0x3f4f5c29    # 0.81f

    const v6, 0x3dcccccd    # 0.1f

    const v7, 0x3fc3d70a    # 1.53f

    const/high16 v8, 0x3e800000    # 0.25f

    const v9, 0x400d70a4    # 2.21f

    .line 101
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3e3851ec    # 0.18f

    const v5, -0x40cf5c29    # -0.69f

    const v6, 0x3eeb851f    # 0.46f

    const v7, -0x4055c28f    # -1.33f

    const v8, 0x3f547ae1    # 0.83f

    const v9, -0x400a3d71    # -1.92f

    .line 102
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x41a8f5c3    # -0.21f

    const v5, -0x410f5c29    # -0.47f

    const v6, -0x4151eb85    # -0.34f

    const v7, -0x40828f5c    # -0.99f

    const v8, -0x4151eb85    # -0.34f

    const v9, -0x403ae148    # -1.54f

    .line 103
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v4, 0x40b80000    # 5.75f

    const v5, 0x40f5c28f    # 7.68f

    const v6, 0x40edc28f    # 7.43f

    const/high16 v7, 0x40c00000    # 6.0f

    const/high16 v8, 0x41180000    # 9.5f

    const/high16 v9, 0x40c00000    # 6.0f

    .line 104
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3f75c28f    # 0.96f

    const/4 v5, 0x0

    const v6, 0x3feb851f    # 1.84f

    const v7, 0x3ebd70a4    # 0.37f

    const/high16 v8, 0x40200000    # 2.5f

    const v9, 0x3f7851ec    # 0.97f

    .line 105
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x414a8f5c    # 12.66f

    const v5, 0x40cbd70a    # 6.37f

    const v6, 0x4158a3d7    # 13.54f

    const/high16 v7, 0x40c00000    # 6.0f

    const/high16 v8, 0x41680000    # 14.5f

    const/high16 v9, 0x40c00000    # 6.0f

    .line 106
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x40047ae1    # 2.07f

    const/4 v5, 0x0

    const/high16 v6, 0x40700000    # 3.75f

    const v7, 0x3fd70a3d    # 1.68f

    const/high16 v8, 0x40700000    # 3.75f

    const/high16 v9, 0x40700000    # 3.75f

    .line 107
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, 0x3f0ccccd    # 0.55f

    const v6, -0x420a3d71    # -0.12f

    const v7, 0x3f88f5c3    # 1.07f

    const v8, -0x4151eb85    # -0.34f

    const v9, 0x3fc51eb8    # 1.54f

    .line 108
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3ebd70a4    # 0.37f

    const v5, 0x3f170a3d    # 0.59f

    const v6, 0x3f28f5c3    # 0.66f

    const v7, 0x3f9eb852    # 1.24f

    const v8, 0x3f570a3d    # 0.84f

    const v9, 0x3ff851ec    # 1.94f

    .line 109
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x41973333    # 18.9f

    const v5, 0x4148cccd    # 12.55f

    const/high16 v6, 0x41980000    # 19.0f

    const v7, 0x413d1eb8    # 11.82f

    const/high16 v8, 0x41980000    # 19.0f

    const/high16 v9, 0x41300000    # 11.0f

    .line 110
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, -0x3f88f5c3    # -3.86f

    const v6, -0x3fb70a3d    # -3.14f

    const/high16 v7, -0x3f200000    # -7.0f

    const/high16 v8, -0x3f200000    # -7.0f

    const/high16 v9, -0x3f200000    # -7.0f

    .line 111
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x41023d71    # 8.14f

    const/high16 v5, 0x40800000    # 4.0f

    const/high16 v6, 0x40a00000    # 5.0f

    const v7, 0x40e47ae1    # 7.14f

    const/high16 v8, 0x40a00000    # 5.0f

    const/high16 v9, 0x41300000    # 11.0f

    .line 112
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 113
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x418fd70a    # 17.98f

    const v3, 0x4174a3d7    # 15.29f

    .line 114
    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, -0x42333333    # -0.1f

    const v6, 0x3ca3d70a    # 0.02f

    const v7, -0x41bd70a4    # -0.19f

    const v8, 0x3ca3d70a    # 0.02f

    const v9, -0x416b851f    # -0.29f

    move-object v3, v0

    .line 115
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x407eb852    # -1.01f

    const v6, -0x417ae148    # -0.26f

    const v7, -0x40066666    # -1.95f

    const v8, -0x40cccccd    # -0.7f

    const v9, -0x3fce147b    # -2.78f

    .line 116
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x40cf5c29    # -0.69f

    const v5, 0x3f47ae14    # 0.78f

    const v6, -0x4028f5c3    # -1.68f

    const v7, 0x3fa3d70a    # 1.28f

    const v8, -0x3fcccccd    # -2.8f

    const v9, 0x3fa3d70a    # 1.28f

    .line 117
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x4175c28f    # -0.27f

    const/4 v5, 0x0

    const v6, -0x40f5c28f    # -0.54f

    const v7, -0x430a3d71    # -0.03f

    const v8, -0x40b5c28f    # -0.79f

    const v9, -0x4247ae14    # -0.09f

    .line 118
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3e0f5c29    # 0.14f

    const v5, -0x41947ae1    # -0.23f

    const v6, 0x3e6b851f    # 0.23f

    const v7, -0x41051eb8    # -0.49f

    const v8, 0x3e8a3d71    # 0.27f

    const v9, -0x40bae148    # -0.77f

    .line 119
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3c23d70a    # 0.01f

    const v5, -0x4270a3d7    # -0.07f

    const v6, 0x3c23d70a    # 0.01f

    const v7, -0x41fae148    # -0.13f

    const v8, 0x3ca3d70a    # 0.02f

    const v9, -0x41bd70a4    # -0.19f

    .line 120
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3e2e147b    # 0.17f

    const v5, 0x3cf5c28f    # 0.03f

    const v6, 0x3ea8f5c3    # 0.33f

    const v7, 0x3d4ccccd    # 0.05f

    const/high16 v8, 0x3f000000    # 0.5f

    const v9, 0x3d4ccccd    # 0.05f

    .line 121
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3fc28f5c    # 1.52f

    const/4 v5, 0x0

    const/high16 v6, 0x40300000    # 2.75f

    const v7, -0x40628f5c    # -1.23f

    const/high16 v8, 0x40300000    # 2.75f

    const/high16 v9, -0x3fd00000    # -2.75f

    .line 122
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x418028f6    # 16.02f

    const/high16 v3, 0x40e00000    # 7.0f

    const/high16 v10, 0x41680000    # 14.5f

    .line 123
    invoke-virtual {v0, v1, v3, v10, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x40d47ae1    # -0.67f

    const v6, -0x40570a3d    # -1.32f

    const/high16 v7, 0x3e800000    # 0.25f

    const v8, -0x4015c28f    # -1.83f

    const v9, 0x3f3851ec    # 0.72f

    move-object v3, v0

    .line 124
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x41400000    # 12.0f

    const v3, 0x41051eb8    # 8.32f

    .line 125
    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40d47ae1    # -0.67f

    const v3, -0x40e66666    # -0.6f

    .line 126
    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x412d1eb8    # 10.82f

    const/high16 v5, 0x40e80000    # 7.25f

    const v6, 0x4122b852    # 10.17f

    const/high16 v7, 0x40e00000    # 7.0f

    const/high16 v8, 0x41180000    # 9.5f

    const/high16 v9, 0x40e00000    # 7.0f

    move-object v3, v0

    .line 127
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x40ff5c29    # 7.98f

    const/high16 v5, 0x40e00000    # 7.0f

    const/high16 v6, 0x40d80000    # 6.75f

    const v7, 0x4103ae14    # 8.23f

    const/high16 v8, 0x40d80000    # 6.75f

    const/high16 v9, 0x411c0000    # 9.75f

    .line 128
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, 0x3fab851f    # 1.34f

    const v6, 0x3f75c28f    # 0.96f

    const v7, 0x401d70a4    # 2.46f

    const v8, 0x400eb852    # 2.23f

    const v9, 0x402ccccd    # 2.7f

    .line 129
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40bd70a4    # -0.76f

    const v3, 0x3f547ae1    # 0.83f

    .line 130
    invoke-virtual {v0, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x40e66666    # -0.6f

    const v5, -0x419eb852    # -0.22f

    const v6, -0x4070a3d7    # -1.12f

    const v7, -0x40e8f5c3    # -0.59f

    const v8, -0x403c28f6    # -1.53f

    const v9, -0x4079999a    # -1.05f

    move-object v3, v0

    .line 131
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x40c851ec    # 6.26f

    const v5, 0x4150f5c3    # 13.06f

    const/high16 v6, 0x40c00000    # 6.0f

    const/high16 v7, 0x41600000    # 14.0f

    const/high16 v8, 0x40c00000    # 6.0f

    const/high16 v9, 0x41700000    # 15.0f

    .line 132
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, 0x3da3d70a    # 0.08f

    const v6, 0x3c23d70a    # 0.01f

    const v7, 0x3e19999a    # 0.15f

    const v8, 0x3c23d70a    # 0.01f

    const v9, 0x3e75c28f    # 0.24f

    .line 133
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x40e428f6    # 7.13f

    const v5, 0x41887ae1    # 17.06f

    const v6, 0x41123d71    # 9.14f

    const/high16 v7, 0x41900000    # 18.0f

    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v9, 0x41900000    # 18.0f

    .line 134
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x416e147b    # 14.88f

    const/high16 v5, 0x41900000    # 18.0f

    const v6, 0x41870a3d    # 16.88f

    const v7, 0x4188b852    # 17.09f

    const v8, 0x418fd70a    # 17.98f

    const v9, 0x4174a3d7    # 15.29f

    .line 135
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 136
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x41800000    # 16.0f

    const/high16 v11, 0x411c0000    # 9.75f

    .line 137
    invoke-virtual {v0, v1, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, 0x3f7851ec    # 0.97f

    const v6, -0x40d47ae1    # -0.67f

    const/high16 v7, 0x3fe00000    # 1.75f

    const/high16 v8, -0x40400000    # -1.5f

    const/high16 v9, 0x3fe00000    # 1.75f

    .line 138
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v3, 0x41500000    # 13.0f

    const v12, 0x412b851f    # 10.72f

    .line 139
    invoke-virtual {v0, v3, v12, v3, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x415ab852    # 13.67f

    const/high16 v13, 0x41000000    # 8.0f

    .line 140
    invoke-virtual {v0, v3, v13, v10, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, 0x410c7ae1    # 8.78f

    .line 141
    invoke-virtual {v0, v1, v14, v1, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 142
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x41740000    # 15.25f

    const v15, 0x410e147b    # 8.88f

    .line 143
    invoke-virtual {v0, v1, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41a8f5c3    # -0.21f

    const v6, -0x41d1eb85    # -0.17f

    const v7, -0x413d70a4    # -0.38f

    const v8, -0x413d70a4    # -0.38f

    const v9, -0x413d70a4    # -0.38f

    move-object v3, v0

    .line 144
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v9, 0x410ab852    # 8.67f

    .line 145
    invoke-virtual {v0, v10, v9, v10, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x3e2e147b    # 0.17f

    const v10, 0x3ec28f5c    # 0.38f

    .line 146
    invoke-virtual {v0, v3, v10, v10, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x411147ae    # 9.08f

    .line 147
    invoke-virtual {v0, v1, v3, v1, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 148
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 149
    invoke-virtual {v0, v2, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f7851ec    # 0.97f

    const v6, -0x40d47ae1    # -0.67f

    const/high16 v7, 0x3fe00000    # 1.75f

    const/high16 v8, -0x40400000    # -1.5f

    const/high16 v1, 0x3fe00000    # 1.75f

    move-object v3, v0

    move v10, v9

    move v9, v1

    .line 150
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 151
    invoke-virtual {v0, v13, v12, v13, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x41180000    # 9.5f

    .line 152
    invoke-virtual {v0, v10, v13, v1, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 153
    invoke-virtual {v0, v2, v14, v2, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 154
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v2, 0x41240000    # 10.25f

    .line 155
    invoke-virtual {v0, v2, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41a8f5c3    # -0.21f

    const v6, -0x41d1eb85    # -0.17f

    const v7, -0x413d70a4    # -0.38f

    const v8, -0x413d70a4    # -0.38f

    const v9, -0x413d70a4    # -0.38f

    .line 156
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 157
    invoke-virtual {v0, v1, v10, v1, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e2e147b    # 0.17f

    const v3, 0x3ec28f5c    # 0.38f

    .line 158
    invoke-virtual {v0, v1, v3, v3, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x411147ae    # 9.08f

    .line 159
    invoke-virtual {v0, v2, v1, v2, v15}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 160
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 238
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v30

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x3800

    const/16 v45, 0x0

    .line 234
    invoke-static/range {v29 .. v45}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/twotone/FlutterDashKt;->_flutterDash:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 163
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
