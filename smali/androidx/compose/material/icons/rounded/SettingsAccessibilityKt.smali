.class public final Landroidx/compose/material/icons/rounded/SettingsAccessibilityKt;
.super Ljava/lang/Object;
.source "SettingsAccessibility.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsAccessibility.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsAccessibility.kt\nandroidx/compose/material/icons/rounded/SettingsAccessibilityKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,96:1\n122#2:97\n116#2,3:98\n119#2,3:102\n132#2,18:105\n152#2:142\n175#3:101\n622#4,2:123\n634#4,2:125\n636#4,11:131\n50#5,4:127\n*S KotlinDebug\n*F\n+ 1 SettingsAccessibility.kt\nandroidx/compose/material/icons/rounded/SettingsAccessibilityKt\n*L\n29#1:97\n29#1:98,3\n29#1:102,3\n30#1:105,18\n30#1:142\n29#1:101\n30#1:123,2\n30#1:125,2\n30#1:131,11\n30#1:127,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_settingsAccessibility",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "SettingsAccessibility",
        "Landroidx/compose/material/icons/Icons$Rounded;",
        "getSettingsAccessibility",
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
.field private static _settingsAccessibility:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getSettingsAccessibility(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 29

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/rounded/SettingsAccessibilityKt;->_settingsAccessibility:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "Rounded.SettingsAccessibility"

    .line 98
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object v12, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 101
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

    .line 98
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    .line 108
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v14

    .line 115
    new-instance v1, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v16, v1

    check-cast v16, Landroidx/compose/ui/graphics/Brush;

    const/16 v18, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    .line 120
    sget-object v1, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v21

    .line 121
    sget-object v1, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    const-string v15, ""

    .line 127
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v9, 0x41a5eb85    # 20.74f

    const v10, 0x409eb852    # 4.96f

    .line 31
    invoke-virtual {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, -0x41fae148    # -0.13f

    const v3, -0x40f851ec    # -0.53f

    const v4, -0x40d47ae1    # -0.67f

    const v5, -0x40a66666    # -0.85f

    const v6, -0x40666666    # -1.2f

    const v7, -0x40c51eb8    # -0.73f

    move-object v1, v8

    .line 32
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x418947ae    # 17.16f

    const v3, 0x4098a3d7    # 4.77f

    const v4, 0x4167d70a    # 14.49f

    const/high16 v5, 0x40a00000    # 5.0f

    const/high16 v6, 0x41400000    # 12.0f

    const/high16 v7, 0x40a00000    # 5.0f

    .line 33
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x408eb852    # 4.46f

    const v2, 0x4087ae14    # 4.24f

    const v3, 0x40dae148    # 6.84f

    const v4, 0x4098a3d7    # 4.77f

    .line 34
    invoke-virtual {v8, v3, v4, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, -0x40f5c28f    # -0.54f

    const v3, -0x420a3d71    # -0.12f

    const v4, -0x40770a3d    # -1.07f

    const v5, 0x3e428f5c    # 0.19f

    const v6, -0x40666666    # -1.2f

    const v7, 0x3f3ae148    # 0.73f

    move-object v1, v8

    .line 35
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x404f5c29    # 3.24f

    const v2, 0x40a0a3d7    # 5.02f

    .line 36
    invoke-virtual {v8, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x40470a3d    # 3.11f

    const v3, 0x40b1eb85    # 5.56f

    const v4, 0x405b851f    # 3.43f

    const v5, 0x40c3d70a    # 6.12f

    const v6, 0x407e147b    # 3.97f

    const v7, 0x40c7ae14    # 6.24f

    move-object v1, v8

    .line 37
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x40b2e148    # 5.59f

    const v3, 0x40d3851f    # 6.61f

    const v4, 0x40eae148    # 7.34f

    const v5, 0x40db851f    # 6.86f

    const/high16 v6, 0x41100000    # 9.0f

    const/high16 v7, 0x40e00000    # 7.0f

    .line 38
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x41300000    # 11.0f

    .line 39
    invoke-virtual {v8, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v2, 0x0

    const v3, 0x3f0ccccd    # 0.55f

    const v4, 0x3ee66666    # 0.45f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, v8

    .line 40
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v11, 0x0

    .line 41
    invoke-virtual {v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x3f0ccccd    # 0.55f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, -0x4119999a    # -0.45f

    const/high16 v7, -0x40800000    # -1.0f

    .line 42
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, -0x3f600000    # -5.0f

    .line 43
    invoke-virtual {v8, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v13, 0x40000000    # 2.0f

    .line 44
    invoke-virtual {v8, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x40a00000    # 5.0f

    .line 45
    invoke-virtual {v8, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v2, 0x0

    const v3, 0x3f0ccccd    # 0.55f

    const v4, 0x3ee66666    # 0.45f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, v8

    .line 46
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 47
    invoke-virtual {v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x3f0ccccd    # 0.55f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, -0x4119999a    # -0.45f

    const/high16 v7, -0x40800000    # -1.0f

    .line 48
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x40e00000    # 7.0f

    .line 49
    invoke-virtual {v8, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x3fd47ae1    # 1.66f

    const v3, -0x41f0a3d7    # -0.14f

    const v4, 0x405a3d71    # 3.41f

    const v5, -0x413851ec    # -0.39f

    const v6, 0x40a0f5c3    # 5.03f

    const v7, -0x40bd70a4    # -0.76f

    move-object v1, v8

    .line 50
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x3f0a3d71    # 0.54f

    const v3, -0x420a3d71    # -0.12f

    const v4, 0x3f5c28f6    # 0.86f

    const v5, -0x40d1eb85    # -0.68f

    const v6, 0x3f3ae148    # 0.73f

    const v7, -0x4063d70a    # -1.22f

    .line 51
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    invoke-virtual {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v10, 0x40800000    # 4.0f

    .line 54
    invoke-virtual {v8, v9, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x3f8ccccd    # 1.1f

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const v5, -0x4099999a    # -0.9f

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, -0x40000000    # -2.0f

    .line 55
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4099999a    # -0.9f

    const/high16 v2, -0x40000000    # -2.0f

    .line 56
    invoke-virtual {v8, v1, v2, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f666666    # 0.9f

    .line 57
    invoke-virtual {v8, v2, v1, v2, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x412e6666    # 10.9f

    .line 58
    invoke-virtual {v8, v1, v10, v9, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 59
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x41000000    # 8.0f

    .line 60
    invoke-virtual {v8, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    invoke-virtual {v8, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x3f0ccccd    # 0.55f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, -0x4119999a    # -0.45f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, -0x40800000    # -1.0f

    move-object v1, v8

    .line 62
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    invoke-virtual {v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v2, 0x0

    const v3, -0x40f33333    # -0.55f

    const v4, -0x4119999a    # -0.45f

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, -0x40800000    # -1.0f

    .line 64
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    invoke-virtual {v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, -0x40f33333    # -0.55f

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const v5, 0x3ee66666    # 0.45f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 66
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    invoke-virtual {v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v2, 0x40e00000    # 7.0f

    const v3, 0x41bc6666    # 23.55f

    const v4, 0x40ee6666    # 7.45f

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v6, 0x41000000    # 8.0f

    const/high16 v7, 0x41c00000    # 24.0f

    .line 68
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    invoke-virtual {v8, v9, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    invoke-virtual {v8, v9, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x3f0ccccd    # 0.55f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, -0x4119999a    # -0.45f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, -0x40800000    # -1.0f

    .line 72
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    invoke-virtual {v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v2, 0x0

    const v3, -0x40f33333    # -0.55f

    const v4, -0x4119999a    # -0.45f

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, -0x40800000    # -1.0f

    .line 74
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    invoke-virtual {v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, -0x40f33333    # -0.55f

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const v5, 0x3ee66666    # 0.45f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 76
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    invoke-virtual {v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v2, 0x41300000    # 11.0f

    const v3, 0x41bc6666    # 23.55f

    const v4, 0x41373333    # 11.45f

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v6, 0x41400000    # 12.0f

    const/high16 v7, 0x41c00000    # 24.0f

    .line 78
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x41800000    # 16.0f

    .line 80
    invoke-virtual {v8, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 81
    invoke-virtual {v8, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x3f0ccccd    # 0.55f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, -0x4119999a    # -0.45f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, -0x40800000    # -1.0f

    move-object v1, v8

    .line 82
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 83
    invoke-virtual {v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v2, 0x0

    const v3, -0x40f33333    # -0.55f

    const v4, -0x4119999a    # -0.45f

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, -0x40800000    # -1.0f

    .line 84
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    invoke-virtual {v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, -0x40f33333    # -0.55f

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const v5, 0x3ee66666    # 0.45f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 86
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 87
    invoke-virtual {v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v2, 0x41700000    # 15.0f

    const v3, 0x41bc6666    # 23.55f

    const v4, 0x41773333    # 15.45f

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v6, 0x41800000    # 16.0f

    const/high16 v7, 0x41c00000    # 24.0f

    .line 88
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 129
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v13

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3800

    const/16 v28, 0x0

    .line 125
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/rounded/SettingsAccessibilityKt;->_settingsAccessibility:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 92
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
