.class public final Landroidx/compose/material/icons/sharp/EmojiNatureKt;
.super Ljava/lang/Object;
.source "EmojiNature.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEmojiNature.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EmojiNature.kt\nandroidx/compose/material/icons/sharp/EmojiNatureKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,129:1\n122#2:130\n116#2,3:131\n119#2,3:135\n132#2,18:138\n152#2:175\n132#2,18:176\n152#2:213\n175#3:134\n622#4,2:156\n634#4,2:158\n636#4,11:164\n622#4,2:194\n634#4,2:196\n636#4,11:202\n50#5,4:160\n50#5,4:198\n*S KotlinDebug\n*F\n+ 1 EmojiNature.kt\nandroidx/compose/material/icons/sharp/EmojiNatureKt\n*L\n29#1:130\n29#1:131,3\n29#1:135,3\n30#1:138,18\n30#1:175\n65#1:176,18\n65#1:213\n29#1:134\n30#1:156,2\n30#1:158,2\n30#1:164,11\n65#1:194,2\n65#1:196,2\n65#1:202,11\n30#1:160,4\n65#1:198,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_emojiNature",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "EmojiNature",
        "Landroidx/compose/material/icons/Icons$Sharp;",
        "getEmojiNature",
        "(Landroidx/compose/material/icons/Icons$Sharp;)Landroidx/compose/ui/graphics/vector/ImageVector;",
        "material-icons-extended-sharp_release"
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
.field private static _emojiNature:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getEmojiNature(Landroidx/compose/material/icons/Icons$Sharp;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 46

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/sharp/EmojiNatureKt;->_emojiNature:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "Sharp.EmojiNature"

    .line 131
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object/from16 v29, v1

    move-object v12, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 134
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

    .line 131
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    .line 141
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v14

    .line 148
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

    .line 153
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v21

    .line 154
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    const-string v15, ""

    .line 160
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v1, 0x41af851f    # 21.94f

    const v2, 0x409c28f6    # 4.88f

    .line 31
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x41ae147b    # 21.76f

    const v6, 0x408b3333    # 4.35f

    const/high16 v7, 0x41aa0000    # 21.25f

    const/high16 v8, 0x40800000    # 4.0f

    const v9, 0x41a570a4    # 20.68f

    const/high16 v10, 0x40800000    # 4.0f

    move-object v4, v0

    .line 32
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x430a3d71    # -0.03f

    const/4 v6, 0x0

    const v7, -0x428a3d71    # -0.06f

    const/4 v8, 0x0

    const v9, -0x4247ae14    # -0.09f

    const/4 v10, 0x0

    .line 33
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x419ccccd    # 19.6f

    .line 34
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x416147ae    # -0.31f

    const v2, -0x4087ae14    # -0.97f

    .line 35
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x41993333    # 19.15f

    const v6, 0x401b851f    # 2.43f

    const v7, 0x4194e148    # 18.61f

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v9, 0x41900000    # 18.0f

    const/high16 v10, 0x40000000    # 2.0f

    .line 36
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40e3d70a    # -0.61f

    const/4 v6, 0x0

    const v7, -0x406ccccd    # -1.15f

    const v8, 0x3edc28f6    # 0.43f

    const v9, -0x405ae148    # -1.29f

    const v10, 0x3f851eb8    # 1.04f

    .line 38
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x41833333    # 16.4f

    const/high16 v2, 0x40800000    # 4.0f

    .line 39
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40851eb8    # -0.98f

    .line 40
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x430a3d71    # -0.03f

    const v7, -0x428a3d71    # -0.06f

    const/4 v8, 0x0

    const v9, -0x4247ae14    # -0.09f

    const/4 v10, 0x0

    .line 41
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40ee147b    # -0.57f

    const v7, -0x4075c28f    # -1.08f

    const v8, 0x3eb33333    # 0.35f

    const v9, -0x405eb852    # -1.26f

    const v10, 0x3f6147ae    # 0.88f

    .line 42
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41bd70a4    # -0.19f

    const v6, 0x3f0f5c29    # 0.56f

    const v7, 0x3d23d70a    # 0.04f

    const v8, 0x3f95c28f    # 1.17f

    const v9, 0x3f0f5c29    # 0.56f

    const v10, 0x3fbd70a4    # 1.48f

    .line 43
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f051eb8    # 0.52f

    const v2, 0x3f5eb852    # 0.87f

    .line 44
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x4171999a    # 15.1f

    const v4, 0x4101eb85    # 8.12f

    .line 45
    invoke-virtual {v0, v1, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41947ae1    # -0.23f

    const v6, 0x3f147ae1    # 0.58f

    const v7, -0x42dc28f6    # -0.04f

    const/high16 v8, 0x3fa00000    # 1.25f

    const v9, 0x3ee66666    # 0.45f

    const v10, 0x3fcf5c29    # 1.62f

    move-object v4, v0

    .line 46
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x417c7ae1    # 15.78f

    const v6, 0x411e8f5c    # 9.91f

    const v7, 0x41807ae1    # 16.06f

    const/high16 v8, 0x41200000    # 10.0f

    const v9, 0x4182a3d7    # 16.33f

    const/high16 v10, 0x41200000    # 10.0f

    .line 47
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3e9eb852    # 0.31f

    const/4 v6, 0x0

    const v7, 0x3f1c28f6    # 0.61f

    const v8, -0x421eb852    # -0.11f

    const v9, 0x3f5c28f6    # 0.86f

    const v10, -0x415c28f6    # -0.32f

    .line 48
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x410fae14    # 8.98f

    const/high16 v11, 0x41900000    # 18.0f

    .line 49
    invoke-virtual {v0, v11, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f4f5c29    # 0.81f

    const v4, 0x3f333333    # 0.7f

    .line 50
    invoke-virtual {v0, v1, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x41987ae1    # 19.06f

    const v6, 0x411e3d71    # 9.89f

    const v7, 0x419ae148    # 19.36f

    const/high16 v8, 0x41200000    # 10.0f

    const v9, 0x419d5c29    # 19.67f

    const/high16 v10, 0x41200000    # 10.0f

    move-object v4, v0

    .line 51
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3e8a3d71    # 0.27f

    const/4 v6, 0x0

    const v7, 0x3f0ccccd    # 0.55f

    const v8, -0x4247ae14    # -0.09f

    const v9, 0x3f47ae14    # 0.78f

    const v10, -0x417ae148    # -0.26f

    .line 52
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x3f000000    # 0.5f

    const v6, -0x41428f5c    # -0.37f

    const v7, 0x3f2e147b    # 0.68f

    const v8, -0x407ae148    # -1.04f

    const v9, 0x3ee66666    # 0.45f

    const v10, -0x4030a3d7    # -1.62f

    .line 53
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x413851ec    # -0.39f

    const v4, -0x406147ae    # -1.24f

    .line 54
    invoke-virtual {v0, v1, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40fae148    # -0.52f

    .line 55
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x41af1eb8    # 21.89f

    const v6, 0x40c1999a    # 6.05f

    const v7, 0x41b0f5c3    # 22.12f

    const v8, 0x40ae147b    # 5.44f

    const v9, 0x41af851f    # 21.94f

    const v10, 0x409c28f6    # 4.88f

    move-object v4, v0

    .line 56
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v2, 0x40e00000    # 7.0f

    .line 58
    invoke-virtual {v0, v11, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40f33333    # -0.55f

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const v8, -0x4119999a    # -0.45f

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, -0x40800000    # -1.0f

    .line 59
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, -0x40f33333    # -0.55f

    const v7, 0x3ee66666    # 0.45f

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 60
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x3ee66666    # 0.45f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 61
    invoke-virtual {v0, v4, v2, v4, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41980000    # 19.0f

    const v6, 0x40d1999a    # 6.55f

    const v7, 0x41946666    # 18.55f

    const/high16 v8, 0x40e00000    # 7.0f

    const/high16 v9, 0x41900000    # 18.0f

    const/high16 v10, 0x40e00000    # 7.0f

    move-object v4, v0

    .line 62
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 63
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 162
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v13

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3800

    const/16 v28, 0x0

    .line 158
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/high16 v34, 0x3f800000    # 1.0f

    const/high16 v36, 0x3f800000    # 1.0f

    .line 179
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v31

    .line 186
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v4

    invoke-direct {v0, v4, v5, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v33, v0

    check-cast v33, Landroidx/compose/ui/graphics/Brush;

    const/16 v35, 0x0

    const/high16 v37, 0x3f800000    # 1.0f

    .line 191
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v38

    .line 192
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v39

    const/high16 v40, 0x3f800000    # 1.0f

    const-string v32, ""

    .line 198
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v2, 0x4157d70a    # 13.49f

    const v3, 0x412828f6    # 10.51f

    .line 66
    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, -0x4123d70a    # -0.43f

    const v4, -0x4123d70a    # -0.43f

    const v5, -0x408f5c29    # -0.94f

    const v6, -0x40c51eb8    # -0.73f

    const v7, -0x404147ae    # -1.49f

    const v8, -0x4091eb85    # -0.93f

    move-object v2, v0

    .line 67
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v2, 0x41000000    # 8.0f

    .line 68
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v9, -0x40800000    # -1.0f

    .line 69
    invoke-virtual {v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x3fb0a3d7    # 1.38f

    .line 70
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, -0x421eb852    # -0.11f

    const v4, -0x43dc28f6    # -0.01f

    const v5, -0x41947ae1    # -0.23f

    const v6, -0x430a3d71    # -0.03f

    const v7, -0x4151eb85    # -0.34f

    const v8, -0x430a3d71    # -0.03f

    move-object v2, v0

    .line 71
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, -0x407d70a4    # -1.02f

    const/4 v4, 0x0

    const v5, -0x3ffccccd    # -2.05f

    const v6, 0x3ec7ae14    # 0.39f

    const v7, -0x3fcae148    # -2.83f

    const v8, 0x3f95c28f    # 1.17f

    .line 72
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, -0x41dc28f6    # -0.16f

    const v4, 0x3e23d70a    # 0.16f

    const v5, -0x41666666    # -0.3f

    const v6, 0x3eae147b    # 0.34f

    const v7, -0x4123d70a    # -0.43f

    const v8, 0x3f07ae14    # 0.53f

    .line 73
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v2, 0x40c00000    # 6.0f

    const v3, 0x412851ec    # 10.52f

    .line 74
    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, -0x403851ec    # -1.56f

    const v4, -0x40f33333    # -0.55f

    const v5, -0x3fae147b    # -3.28f

    const v6, 0x3e8a3d71    # 0.27f

    const v7, -0x3f8ae148    # -3.83f

    const v8, 0x3fe8f5c3    # 1.82f

    move-object v2, v0

    .line 75
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 76
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, -0x4175c28f    # -0.27f

    const/high16 v4, 0x3f400000    # 0.75f

    const v5, -0x41947ae1    # -0.23f

    const v6, 0x3fc8f5c3    # 1.57f

    const v7, 0x3df5c28f    # 0.12f

    const v8, 0x40128f5c    # 2.29f

    .line 77
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x3e6b851f    # 0.23f

    const v4, 0x3ef5c28f    # 0.48f

    const v5, 0x3f147ae1    # 0.58f

    const v6, 0x3f5eb852    # 0.87f

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3f947ae1    # 1.16f

    .line 78
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, -0x413d70a4    # -0.38f

    const v4, 0x3faccccd    # 1.35f

    const v5, -0x428a3d71    # -0.06f

    const v6, 0x40366666    # 2.85f

    const v8, 0x407a3d71    # 3.91f

    .line 79
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x3f87ae14    # 1.06f

    const v4, 0x3f87ae14    # 1.06f

    const v5, 0x40247ae1    # 2.57f

    const v6, 0x3fb0a3d7    # 1.38f

    const v7, 0x407a3d71    # 3.91f

    const/high16 v8, 0x3f800000    # 1.0f

    .line 80
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x3e947ae1    # 0.29f

    const v4, 0x3ed70a3d    # 0.42f

    const v5, 0x3f2e147b    # 0.68f

    const v6, 0x3f451eb8    # 0.77f

    const v7, 0x3f947ae1    # 1.16f

    .line 81
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x411c7ae1    # 9.78f

    const v4, 0x41af3333    # 21.9f

    const v5, 0x41235c29    # 10.21f

    const/high16 v6, 0x41b00000    # 22.0f

    const v7, 0x412a6666    # 10.65f

    const/high16 v8, 0x41b00000    # 22.0f

    .line 82
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x3eae147b    # 0.34f

    const/4 v4, 0x0

    const v5, 0x3f2e147b    # 0.68f

    const v6, -0x428a3d71    # -0.06f

    const v7, 0x3f8147ae    # 1.01f

    const v8, -0x41d1eb85    # -0.17f

    .line 83
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 84
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x3fc7ae14    # 1.56f

    const v4, -0x40f33333    # -0.55f

    const v5, 0x401851ec    # 2.38f

    const v6, -0x3feeb852    # -2.27f

    const v7, 0x3fe8f5c3    # 1.82f

    const v8, -0x3f89999a    # -3.85f

    .line 85
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, -0x4050a3d7    # -1.37f

    .line 86
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x3e3851ec    # 0.18f

    const v4, -0x41fae148    # -0.13f

    const v5, 0x3eb851ec    # 0.36f

    const v6, -0x4175c28f    # -0.27f

    const v7, 0x3f07ae14    # 0.53f

    const v8, -0x4123d70a    # -0.43f

    move-object v2, v0

    .line 87
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x3f5eb852    # 0.87f

    const v4, -0x40a147ae    # -0.87f

    const v5, 0x3f9eb852    # 1.24f

    const v6, -0x3ffd70a4    # -2.04f

    const v7, 0x3f91eb85    # 1.14f

    const v8, -0x3fb51eb8    # -3.17f

    .line 88
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x41800000    # 16.0f

    .line 89
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    invoke-virtual {v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40347ae1    # -1.59f

    .line 91
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x4163851f    # 14.22f

    const v4, 0x41375c29    # 11.46f

    const v5, 0x415eb852    # 13.92f

    const v6, 0x412f3333    # 10.95f

    const v7, 0x4157d70a    # 13.49f

    const v8, 0x412828f6    # 10.51f

    .line 92
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 93
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x409570a4    # 4.67f

    const v2, 0x4164a3d7    # 14.29f

    .line 94
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v3, -0x41800000    # -0.25f

    const v4, -0x4247ae14    # -0.09f

    const v5, -0x4119999a    # -0.45f

    const v6, -0x4175c28f    # -0.27f

    const v7, -0x40ee147b    # -0.57f

    const v8, -0x40fd70a4    # -0.51f

    move-object v2, v0

    .line 95
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x42dc28f6    # -0.04f

    const v2, -0x40bd70a4    # -0.76f

    const v3, -0x41fae148    # -0.13f

    const v4, -0x40fd70a4    # -0.51f

    .line 96
    invoke-virtual {v0, v3, v4, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x3e428f5c    # 0.19f

    const v4, -0x40fae148    # -0.52f

    const v5, 0x3f428f5c    # 0.76f

    const v6, -0x40b5c28f    # -0.79f

    const v7, 0x3fa147ae    # 1.26f

    const v8, -0x40e3d70a    # -0.61f

    move-object v2, v0

    .line 97
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x404a3d71    # 3.16f

    const v2, 0x3f9851ec    # 1.19f

    .line 98
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x40ea8f5c    # 7.33f

    const v4, 0x41633333    # 14.2f

    const v5, 0x40bb3333    # 5.85f

    const v6, 0x416b5c29    # 14.71f

    const v7, 0x409570a4    # 4.67f

    const v8, 0x4164a3d7    # 14.29f

    move-object v2, v0

    .line 99
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 100
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x412fd70a    # 10.99f

    const v2, 0x419f851f    # 19.94f

    .line 101
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v3, -0x41800000    # -0.25f

    const v4, 0x3db851ec    # 0.09f

    const v5, -0x40fae148    # -0.52f

    const v6, 0x3da3d70a    # 0.08f

    const v7, -0x40bd70a4    # -0.76f

    const v8, -0x42dc28f6    # -0.04f

    move-object v2, v0

    .line 102
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, -0x418a3d71    # -0.24f

    const v4, -0x421eb852    # -0.11f

    const v5, -0x4128f5c3    # -0.42f

    const v6, -0x415c28f6    # -0.32f

    const v7, -0x40fd70a4    # -0.51f

    const v8, -0x40ee147b    # -0.57f

    .line 103
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, -0x4128f5c3    # -0.42f

    const v4, -0x4068f5c3    # -1.18f

    const v5, 0x3db851ec    # 0.09f

    const v6, -0x3fd66666    # -2.65f

    const v7, 0x3f333333    # 0.7f

    const v8, -0x3f8ccccd    # -3.8f

    .line 104
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f970a3d    # 1.18f

    const v2, 0x404851ec    # 3.13f

    .line 105
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x413c7ae1    # 11.78f

    const v4, 0x419970a4    # 19.18f

    const v5, 0x413828f6    # 11.51f

    const v6, 0x419e147b    # 19.76f

    const v7, 0x412fd70a    # 10.99f

    const v8, 0x419f851f    # 19.94f

    move-object v2, v0

    .line 106
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 107
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x41433333    # 12.2f

    const v2, 0x4169999a    # 14.6f

    .line 108
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40e3d70a    # -0.61f

    const v2, -0x4031eb85    # -1.61f

    .line 109
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v3, 0x0

    const v4, -0x43dc28f6    # -0.01f

    const v5, -0x43dc28f6    # -0.01f

    const v6, -0x435c28f6    # -0.02f

    const v7, -0x435c28f6    # -0.02f

    const v8, -0x430a3d71    # -0.03f

    move-object v2, v0

    .line 110
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, -0x435c28f6    # -0.02f

    const v4, -0x42dc28f6    # -0.04f

    const v5, -0x42dc28f6    # -0.04f

    const v6, -0x425c28f6    # -0.08f

    const v7, -0x428a3d71    # -0.06f

    const v8, -0x420a3d71    # -0.12f

    .line 111
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, -0x4270a3d7    # -0.07f

    const v7, -0x4270a3d7    # -0.07f

    const v8, -0x421eb852    # -0.11f

    .line 112
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, -0x430a3d71    # -0.03f

    const v4, -0x430a3d71    # -0.03f

    const v5, -0x428a3d71    # -0.06f

    const v6, -0x428a3d71    # -0.06f

    const v7, -0x4247ae14    # -0.09f

    const v8, -0x4247ae14    # -0.09f

    .line 113
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 114
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4270a3d7    # -0.07f

    const v6, -0x42b33333    # -0.05f

    const v7, -0x421eb852    # -0.11f

    const v8, -0x4270a3d7    # -0.07f

    .line 115
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, -0x42dc28f6    # -0.04f

    const v4, -0x435c28f6    # -0.02f

    const v7, -0x420a3d71    # -0.12f

    const v8, -0x428a3d71    # -0.06f

    .line 116
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, -0x43dc28f6    # -0.01f

    const/4 v4, 0x0

    const v5, -0x435c28f6    # -0.02f

    const v6, -0x43dc28f6    # -0.01f

    const v7, -0x430a3d71    # -0.03f

    const v8, -0x435c28f6    # -0.02f

    .line 117
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x41166666    # 9.4f

    const v2, 0x413ccccd    # 11.8f

    .line 118
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x3eb851ec    # 0.36f

    const v4, -0x416b851f    # -0.29f

    const v5, 0x3f4a3d71    # 0.79f

    const v6, -0x41147ae1    # -0.46f

    const v7, 0x3fa147ae    # 1.26f

    const v8, -0x41147ae1    # -0.46f

    move-object v2, v0

    .line 119
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x3f07ae14    # 0.53f

    const/4 v4, 0x0

    const v5, 0x3f851eb8    # 1.04f

    const v6, 0x3e570a3d    # 0.21f

    const v7, 0x3fb47ae1    # 1.41f

    const v8, 0x3f170a3d    # 0.59f

    .line 120
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x414ccccd    # 12.8f

    const v4, 0x414a8f5c    # 12.66f

    const v5, 0x414d70a4    # 12.84f

    const v6, 0x415cf5c3    # 13.81f

    const v7, 0x41433333    # 12.2f

    const v8, 0x4169999a    # 14.6f

    .line 121
    invoke-virtual/range {v2 .. v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 122
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 200
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v30

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x3800

    const/16 v45, 0x0

    .line 196
    invoke-static/range {v29 .. v45}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/sharp/EmojiNatureKt;->_emojiNature:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 125
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
