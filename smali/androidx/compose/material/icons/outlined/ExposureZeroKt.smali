.class public final Landroidx/compose/material/icons/outlined/ExposureZeroKt;
.super Ljava/lang/Object;
.source "ExposureZero.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExposureZero.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExposureZero.kt\nandroidx/compose/material/icons/outlined/ExposureZeroKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,79:1\n122#2:80\n116#2,3:81\n119#2,3:85\n132#2,18:88\n152#2:125\n175#3:84\n622#4,2:106\n634#4,2:108\n636#4,11:114\n50#5,4:110\n*S KotlinDebug\n*F\n+ 1 ExposureZero.kt\nandroidx/compose/material/icons/outlined/ExposureZeroKt\n*L\n29#1:80\n29#1:81,3\n29#1:85,3\n30#1:88,18\n30#1:125\n29#1:84\n30#1:106,2\n30#1:108,2\n30#1:114,11\n30#1:110,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_exposureZero",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "ExposureZero",
        "Landroidx/compose/material/icons/Icons$Outlined;",
        "getExposureZero",
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
.field private static _exposureZero:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getExposureZero(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 29

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/outlined/ExposureZeroKt;->_exposureZero:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "Outlined.ExposureZero"

    .line 81
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object v12, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 84
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

    .line 81
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    .line 91
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v14

    .line 98
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

    .line 103
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v21

    .line 104
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    const-string v15, ""

    .line 110
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v0, 0x41811eb8    # 16.14f

    const/high16 v1, 0x41480000    # 12.5f

    .line 31
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, -0x42333333    # -0.1f

    const v4, 0x3feccccd    # 1.85f

    const v5, -0x41666666    # -0.3f

    const v6, 0x40233333    # 2.55f

    move-object v0, v7

    .line 32
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40ab851f    # -0.83f

    const v1, 0x3fd9999a    # 1.7f

    const v2, -0x410a3d71    # -0.48f

    const v3, 0x3fa28f5c    # 1.27f

    .line 33
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4147ae14    # -0.36f

    const v2, 0x3ee147ae    # 0.44f

    const v3, -0x40b5c28f    # -0.79f

    const/high16 v4, 0x3f400000    # 0.75f

    const v5, -0x4059999a    # -1.3f

    const v6, 0x3f733333    # 0.95f

    move-object v0, v7

    .line 34
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40770a3d    # -1.07f

    const v8, 0x3e99999a    # 0.3f

    const v9, -0x40266666    # -1.7f

    .line 35
    invoke-virtual {v7, v0, v8, v9, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40e147ae    # -0.62f

    const/4 v2, 0x0

    const v3, -0x4068f5c3    # -1.18f

    const v4, -0x42333333    # -0.1f

    const v5, -0x4027ae14    # -1.69f

    const v6, -0x41666666    # -0.3f

    move-object v0, v7

    .line 36
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40fd70a4    # -0.51f

    const v2, -0x41b33333    # -0.2f

    const v3, -0x408ccccd    # -0.95f

    const v4, -0x40fd70a4    # -0.51f

    const v5, -0x405851ec    # -1.31f

    const v6, -0x408ccccd    # -0.95f

    .line 37
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x407eb852    # -1.01f

    const v1, -0x40a66666    # -0.85f

    const v2, -0x40d9999a    # -0.65f

    .line 38
    invoke-virtual {v7, v2, v0, v1, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41b33333    # -0.2f

    const v2, -0x40cccccd    # -0.7f

    const v3, -0x41666666    # -0.3f

    const v4, -0x4039999a    # -1.55f

    const v5, -0x41666666    # -0.3f

    const v6, -0x3fdccccd    # -2.55f

    move-object v0, v7

    .line 39
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3ffd70a4    # -2.04f

    .line 40
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const v3, 0x3dcccccd    # 0.1f

    const v4, -0x40133333    # -1.85f

    const v5, 0x3e99999a    # 0.3f

    move-object v0, v7

    .line 41
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e4ccccd    # 0.2f

    const v2, -0x40cccccd    # -0.7f

    const v3, 0x3ef5c28f    # 0.48f

    const v4, -0x405eb852    # -1.26f

    const v5, 0x3f570a3d    # 0.84f

    const v6, -0x4027ae14    # -1.69f

    .line 42
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3eb851ec    # 0.36f

    const v2, -0x4123d70a    # -0.43f

    const v3, 0x3f4ccccd    # 0.8f

    const v4, -0x40c28f5c    # -0.74f

    const v5, 0x3fa7ae14    # 1.31f

    const v6, -0x4091eb85    # -0.93f

    .line 43
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x412cf5c3    # 10.81f

    const v2, 0x40a33333    # 5.1f

    const v3, 0x4136147b    # 11.38f

    const/high16 v4, 0x40a00000    # 5.0f

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v6, 0x40a00000    # 5.0f

    .line 44
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f2147ae    # 0.63f

    const/4 v2, 0x0

    const v3, 0x3f9851ec    # 1.19f

    const v4, 0x3dcccccd    # 0.1f

    const v5, 0x3fd9999a    # 1.7f

    const v6, 0x3e947ae1    # 0.29f

    .line 45
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f028f5c    # 0.51f

    const v2, 0x3e428f5c    # 0.19f

    const v3, 0x3f733333    # 0.95f

    const/high16 v4, 0x3f000000    # 0.5f

    const v5, 0x3fa7ae14    # 1.31f

    const v6, 0x3f6e147b    # 0.93f

    .line 46
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3eb851ec    # 0.36f

    const v2, 0x3edc28f6    # 0.43f

    const v3, 0x3f23d70a    # 0.64f

    const v4, 0x3f7d70a4    # 0.99f

    const v5, 0x3f570a3d    # 0.84f

    const v6, 0x3fd851ec    # 1.69f

    .line 47
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e4ccccd    # 0.2f

    const v2, 0x3f333333    # 0.7f

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3fc51eb8    # 1.54f

    const v5, 0x3e99999a    # 0.3f

    const v6, 0x40233333    # 2.55f

    .line 48
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40028f5c    # 2.04f

    .line 49
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v9, -0x43dc28f6    # -0.01f

    .line 50
    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41607ae1    # 14.03f

    const v1, 0x41223d71    # 10.14f

    .line 52
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x40dc28f6    # -0.64f

    const v3, -0x42b33333    # -0.05f

    const v4, -0x4068f5c3    # -1.18f

    const v5, -0x41fae148    # -0.13f

    const v6, -0x4030a3d7    # -1.62f

    move-object v0, v7

    .line 53
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4247ae14    # -0.09f

    const v2, -0x411eb852    # -0.44f

    const v3, -0x419eb852    # -0.22f

    const v4, -0x40b5c28f    # -0.79f

    const v5, -0x41333333    # -0.4f

    const v6, -0x407851ec    # -1.06f

    .line 54
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41d1eb85    # -0.17f

    const v2, -0x4175c28f    # -0.27f

    const v3, -0x413851ec    # -0.39f

    const v4, -0x41147ae1    # -0.46f

    const v5, -0x40dc28f6    # -0.64f

    const v6, -0x40eb851f    # -0.58f

    .line 55
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, -0x41800000    # -0.25f

    const v2, -0x41fae148    # -0.13f

    const v3, -0x40f5c28f    # -0.54f

    const v4, -0x41bd70a4    # -0.19f

    const v5, -0x40a3d70a    # -0.86f

    const v6, -0x41bd70a4    # -0.19f

    .line 56
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40a3d70a    # -0.86f

    const v1, 0x3e3851ec    # 0.18f

    const v10, -0x40e3d70a    # -0.61f

    const v2, 0x3d75c28f    # 0.06f

    .line 57
    invoke-virtual {v7, v10, v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3e9eb852    # 0.31f

    const v1, 0x3f147ae1    # 0.58f

    const v2, -0x410f5c29    # -0.47f

    const v11, -0x40dc28f6    # -0.64f

    .line 58
    invoke-virtual {v7, v2, v0, v11, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x41333333    # -0.4f

    const v1, 0x3f87ae14    # 1.06f

    const v2, -0x416147ae    # -0.31f

    const v13, 0x3f1eb852    # 0.62f

    .line 59
    invoke-virtual {v7, v2, v13, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f7ae148    # 0.98f

    const v1, 0x3fcf5c29    # 1.62f

    const v2, -0x41fae148    # -0.13f

    .line 60
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x402ae148    # 2.67f

    .line 61
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3f23d70a    # 0.64f

    const v3, 0x3d4ccccd    # 0.05f

    const v4, 0x3f970a3d    # 1.18f

    const v5, 0x3e0f5c29    # 0.14f

    const v6, 0x3fcf5c29    # 1.62f

    move-object v0, v7

    .line 62
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3db851ec    # 0.09f

    const v2, 0x3ee66666    # 0.45f

    const v3, 0x3e6b851f    # 0.23f

    const v4, 0x3f4f5c29    # 0.81f

    const v5, 0x3ecccccd    # 0.4f

    const v6, 0x3f8b851f    # 1.09f

    .line 63
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f23d70a    # 0.64f

    const v1, 0x3f1c28f6    # 0.61f

    const v2, 0x3ec7ae14    # 0.39f

    const v3, 0x3ef5c28f    # 0.48f

    .line 64
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f0a3d71    # 0.54f

    const v1, 0x3e428f5c    # 0.19f

    const v3, 0x3f5eb852    # 0.87f

    .line 65
    invoke-virtual {v7, v0, v1, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x428a3d71    # -0.06f

    const v1, -0x41bd70a4    # -0.19f

    .line 66
    invoke-virtual {v7, v13, v0, v3, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x41570a3d    # -0.33f

    const v1, 0x3f2147ae    # 0.63f

    const v3, 0x3eeb851f    # 0.46f

    .line 67
    invoke-virtual {v7, v3, v0, v1, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40747ae1    # -1.09f

    .line 68
    invoke-virtual {v7, v8, v11, v2, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40828f5c    # -0.99f

    const v1, -0x4030a3d7    # -1.62f

    const v2, 0x3e051eb8    # 0.13f

    .line 69
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3fd5c28f    # -2.66f

    .line 70
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 112
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v13

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3800

    const/16 v28, 0x0

    .line 108
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/outlined/ExposureZeroKt;->_exposureZero:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 75
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
