.class public final Landroidx/compose/material/icons/rounded/Forward10Kt;
.super Ljava/lang/Object;
.source "Forward10.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nForward10.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Forward10.kt\nandroidx/compose/material/icons/rounded/Forward10Kt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,102:1\n122#2:103\n116#2,3:104\n119#2,3:108\n132#2,18:111\n152#2:148\n175#3:107\n622#4,2:129\n634#4,2:131\n636#4,11:137\n50#5,4:133\n*S KotlinDebug\n*F\n+ 1 Forward10.kt\nandroidx/compose/material/icons/rounded/Forward10Kt\n*L\n29#1:103\n29#1:104,3\n29#1:108,3\n30#1:111,18\n30#1:148\n29#1:107\n30#1:129,2\n30#1:131,2\n30#1:137,11\n30#1:133,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_forward10",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Forward10",
        "Landroidx/compose/material/icons/Icons$Rounded;",
        "getForward10",
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
.field private static _forward10:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getForward10(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 29

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/rounded/Forward10Kt;->_forward10:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "Rounded.Forward10"

    .line 104
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object v12, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 107
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

    .line 104
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    .line 114
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v14

    .line 121
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

    .line 126
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v21

    .line 127
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    const-string v15, ""

    .line 133
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v0, 0x41975c29    # 18.92f

    const/high16 v1, 0x41500000    # 13.0f

    .line 31
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, -0x41000000    # -0.5f

    const/4 v2, 0x0

    const v3, -0x40970a3d    # -0.91f

    const v4, 0x3ebd70a4    # 0.37f

    const v5, -0x40851eb8    # -0.98f

    const v6, 0x3f5c28f6    # 0.86f

    move-object v0, v7

    .line 32
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x410a3d71    # -0.48f

    const v2, 0x4057ae14    # 3.37f

    const v3, -0x3f8eb852    # -3.77f

    const v4, 0x40bae148    # 5.84f

    const v5, -0x3f128f5c    # -7.42f

    const v6, 0x409eb852    # 4.96f

    .line 33
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, -0x3ff00000    # -2.25f

    const v2, -0x40f5c28f    # -0.54f

    const v3, -0x3f85c28f    # -3.91f

    const v4, -0x3feeb852    # -2.27f

    const v5, -0x3f73851f    # -4.39f

    const v6, -0x3f6f0a3d    # -4.53f

    .line 34
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x40aa3d71    # 5.32f

    const v2, 0x4126b852    # 10.42f

    const v3, 0x410451ec    # 8.27f

    const/high16 v4, 0x40e00000    # 7.0f

    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v6, 0x40e00000    # 7.0f

    .line 35
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40328f5c    # 2.79f

    .line 36
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3ee66666    # 0.45f

    const v3, 0x3f0a3d71    # 0.54f

    const v4, 0x3f2b851f    # 0.67f

    const v5, 0x3f59999a    # 0.85f

    const v6, 0x3eb33333    # 0.35f

    move-object v0, v7

    .line 37
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40728f5c    # 3.79f

    const v8, -0x3f8d70a4    # -3.79f

    .line 38
    invoke-virtual {v7, v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e4ccccd    # 0.2f

    const v2, -0x41b33333    # -0.2f

    const v3, 0x3e4ccccd    # 0.2f

    const v4, -0x40fd70a4    # -0.51f

    const/4 v5, 0x0

    const v6, -0x40ca3d71    # -0.71f

    move-object v0, v7

    .line 39
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    invoke-virtual {v7, v8, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x416147ae    # -0.31f

    const v2, -0x416147ae    # -0.31f

    const v3, -0x40a66666    # -0.85f

    const v4, -0x4247ae14    # -0.09f

    const v5, -0x40a66666    # -0.85f

    const v6, 0x3eb851ec    # 0.36f

    .line 41
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41400000    # 12.0f

    const/high16 v1, 0x40a00000    # 5.0f

    .line 42
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x3f61eb85    # -4.94f

    const/4 v2, 0x0

    const v3, -0x3ef28f5c    # -8.84f

    const v4, 0x408f5c29    # 4.48f

    const v5, -0x3f051eb8    # -7.84f

    const v6, 0x4119999a    # 9.6f

    move-object v0, v7

    .line 43
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f19999a    # 0.6f

    const v2, 0x40470a3d    # 3.11f

    const v3, 0x4039999a    # 2.9f

    const/high16 v4, 0x40b00000    # 5.5f

    const v5, 0x40bfae14    # 5.99f

    const v6, 0x40c6147b    # 6.19f

    .line 44
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x409a8f5c    # 4.83f

    const v2, 0x3f8a3d71    # 1.08f

    const v3, 0x41126666    # 9.15f

    const v4, -0x3ff33333    # -2.2f

    const v5, 0x411c51ec    # 9.77f

    const v6, -0x3f2a8f5c    # -6.67f

    .line 45
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3db851ec    # 0.09f

    const v2, -0x40e8f5c3    # -0.59f

    const v3, -0x41333333    # -0.4f

    const v4, -0x4070a3d7    # -1.12f

    const/high16 v5, -0x40800000    # -1.0f

    const v6, -0x4070a3d7    # -1.12f

    .line 46
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x412e6666    # 10.9f

    const/high16 v1, 0x41800000    # 16.0f

    .line 48
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3f775c29    # -4.27f

    .line 49
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v8, -0x4247ae14    # -0.09f

    .line 50
    invoke-virtual {v7, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x401d70a4    # -1.77f

    const v2, 0x3f2147ae    # 0.63f

    .line 51
    invoke-virtual {v7, v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f30a3d7    # 0.69f

    .line 52
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f8147ae    # 1.01f

    const v9, -0x416147ae    # -0.31f

    .line 53
    invoke-virtual {v7, v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4120cccd    # 10.05f

    .line 54
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 55
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41651eb8    # 14.32f

    const v1, 0x413c7ae1    # 11.78f

    .line 56
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41c7ae14    # -0.18f

    const v2, -0x4270a3d7    # -0.07f

    const v3, -0x41428f5c    # -0.37f

    const v4, -0x42333333    # -0.1f

    const v5, -0x40e8f5c3    # -0.59f

    const v6, -0x42333333    # -0.1f

    move-object v0, v7

    .line 57
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3cf5c28f    # 0.03f

    const v1, -0x40e8f5c3    # -0.59f

    const v2, -0x412e147b    # -0.41f

    const v10, 0x3dcccccd    # 0.1f

    .line 58
    invoke-virtual {v7, v2, v0, v1, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4119999a    # -0.45f

    const v11, -0x41570a3d    # -0.33f

    const v13, 0x3e3851ec    # 0.18f

    const v6, 0x3ea8f5c3    # 0.33f

    .line 59
    invoke-virtual {v7, v11, v13, v0, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3eae147b    # 0.34f

    const v5, -0x41947ae1    # -0.23f

    const v4, -0x416b851f    # -0.29f

    const v3, 0x3f11eb85    # 0.57f

    .line 60
    invoke-virtual {v7, v5, v0, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x3f000000    # 0.5f

    const v1, 0x3f51eb85    # 0.82f

    const v2, -0x42333333    # -0.1f

    .line 61
    invoke-virtual {v7, v2, v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f3d70a4    # 0.74f

    .line 62
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v24, 0x3ea3d70a    # 0.32f

    const v25, 0x3d23d70a    # 0.04f

    const v26, 0x3f19999a    # 0.6f

    const v27, 0x3de147ae    # 0.11f

    const v28, 0x3f51eb85    # 0.82f

    move-object v0, v7

    move v13, v2

    move/from16 v2, v24

    move v9, v3

    move/from16 v3, v25

    move v8, v4

    move/from16 v4, v26

    move/from16 v5, v27

    move v8, v6

    move/from16 v6, v28

    .line 63
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ed70a3d    # 0.42f

    const v1, 0x3e99999a    # 0.3f

    const v6, 0x3e2e147b    # 0.17f

    .line 64
    invoke-virtual {v7, v6, v0, v1, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3e851eb8    # 0.26f

    const v1, 0x3eeb851f    # 0.46f

    const v2, 0x3e8f5c29    # 0.28f

    .line 65
    invoke-virtual {v7, v2, v0, v1, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ebd70a4    # 0.37f

    const v1, 0x3f170a3d    # 0.59f

    .line 66
    invoke-virtual {v7, v0, v10, v1, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ed1eb85    # 0.41f

    const v2, -0x430a3d71    # -0.03f

    .line 67
    invoke-virtual {v7, v0, v2, v1, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ee66666    # 0.45f

    const v9, -0x41c7ae14    # -0.18f

    .line 68
    invoke-virtual {v7, v8, v9, v0, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3e6147ae    # 0.22f

    const v1, -0x4151eb85    # -0.34f

    const v8, 0x3e947ae1    # 0.29f

    const v13, -0x40ee147b    # -0.57f

    .line 69
    invoke-virtual {v7, v0, v1, v8, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, -0x41000000    # -0.5f

    const v1, -0x40ae147b    # -0.82f

    .line 70
    invoke-virtual {v7, v10, v0, v10, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40c28f5c    # -0.74f

    .line 71
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x415c28f6    # -0.32f

    const v3, -0x42dc28f6    # -0.04f

    const v4, -0x40e66666    # -0.6f

    const v5, -0x421eb852    # -0.11f

    const v10, -0x40ae147b    # -0.82f

    move-object v0, v7

    move v8, v6

    move v6, v10

    .line 72
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4128f5c3    # -0.42f

    const v1, -0x41666666    # -0.3f

    const v10, -0x41d1eb85    # -0.17f

    .line 73
    invoke-virtual {v7, v10, v0, v1, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x417ae148    # -0.26f

    const v1, -0x41147ae1    # -0.46f

    const v2, -0x416b851f    # -0.29f

    .line 74
    invoke-virtual {v7, v2, v0, v1, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x416547ae    # 14.33f

    const v1, 0x4165999a    # 14.35f

    .line 76
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3e428f5c    # 0.19f

    const v3, -0x43dc28f6    # -0.01f

    const v4, 0x3eb33333    # 0.35f

    const v5, -0x42dc28f6    # -0.04f

    const v6, 0x3ef5c28f    # 0.48f

    move-object v0, v7

    .line 77
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x421eb852    # -0.11f

    const v1, 0x3ea3d70a    # 0.32f

    const v2, -0x428a3d71    # -0.06f

    const v3, 0x3e75c28f    # 0.24f

    .line 78
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e0f5c29    # 0.14f

    const v2, -0x41bd70a4    # -0.19f

    .line 79
    invoke-virtual {v7, v0, v1, v2, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x41dc28f6    # -0.16f

    const/high16 v1, -0x41800000    # -0.25f

    const v11, 0x3d4ccccd    # 0.05f

    .line 80
    invoke-virtual {v7, v0, v11, v1, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x435c28f6    # -0.02f

    const v13, -0x42b33333    # -0.05f

    .line 81
    invoke-virtual {v7, v9, v0, v1, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x41f0a3d7    # -0.14f

    const v1, -0x4247ae14    # -0.09f

    .line 82
    invoke-virtual {v7, v0, v1, v2, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x420a3d71    # -0.12f

    const v3, -0x415c28f6    # -0.32f

    .line 83
    invoke-virtual {v7, v1, v2, v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x42dc28f6    # -0.04f

    const v1, -0x410a3d71    # -0.48f

    const v2, -0x42dc28f6    # -0.04f

    const v3, -0x416b851f    # -0.29f

    .line 84
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4087ae14    # -0.97f

    .line 85
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x41bd70a4    # -0.19f

    const v3, 0x3c23d70a    # 0.01f

    const v4, -0x414ccccd    # -0.35f

    const v5, 0x3d23d70a    # 0.04f

    const v6, -0x410a3d71    # -0.48f

    move-object v0, v7

    .line 86
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3d75c28f    # 0.06f

    const v1, 0x3df5c28f    # 0.12f

    const v2, -0x41947ae1    # -0.23f

    const v3, -0x416147ae    # -0.31f

    .line 87
    invoke-virtual {v7, v0, v2, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x41f0a3d7    # -0.14f

    const v1, 0x3e428f5c    # 0.19f

    const v2, 0x3de147ae    # 0.11f

    .line 88
    invoke-virtual {v7, v2, v0, v1, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3e23d70a    # 0.16f

    const/high16 v1, 0x3e800000    # 0.25f

    .line 89
    invoke-virtual {v7, v0, v13, v1, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ca3d70a    # 0.02f

    const v2, 0x3e3851ec    # 0.18f

    .line 90
    invoke-virtual {v7, v2, v0, v1, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3db851ec    # 0.09f

    const v1, 0x3e428f5c    # 0.19f

    const v3, 0x3e0f5c29    # 0.14f

    .line 91
    invoke-virtual {v7, v3, v0, v1, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3df5c28f    # 0.12f

    const v1, 0x3e9eb852    # 0.31f

    const v3, 0x3db851ec    # 0.09f

    .line 92
    invoke-virtual {v7, v3, v2, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3d23d70a    # 0.04f

    const v1, 0x3ef5c28f    # 0.48f

    const v2, 0x3d23d70a    # 0.04f

    const v3, 0x3e947ae1    # 0.29f

    .line 93
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f7851ec    # 0.97f

    .line 94
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 135
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v13

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3800

    const/16 v28, 0x0

    .line 131
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/rounded/Forward10Kt;->_forward10:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 98
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
