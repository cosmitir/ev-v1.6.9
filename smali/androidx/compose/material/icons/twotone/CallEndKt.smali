.class public final Landroidx/compose/material/icons/twotone/CallEndKt;
.super Ljava/lang/Object;
.source "CallEnd.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCallEnd.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CallEnd.kt\nandroidx/compose/material/icons/twotone/CallEndKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,85:1\n122#2:86\n116#2,3:87\n119#2,3:91\n132#2,18:94\n152#2:131\n132#2,18:132\n152#2:169\n175#3:90\n622#4,2:112\n634#4,2:114\n636#4,11:120\n622#4,2:150\n634#4,2:152\n636#4,11:158\n50#5,4:116\n50#5,4:154\n*S KotlinDebug\n*F\n+ 1 CallEnd.kt\nandroidx/compose/material/icons/twotone/CallEndKt\n*L\n29#1:86\n29#1:87,3\n29#1:91,3\n30#1:94,18\n30#1:131\n44#1:132,18\n44#1:169\n29#1:90\n30#1:112,2\n30#1:114,2\n30#1:120,11\n44#1:150,2\n44#1:152,2\n44#1:158,11\n30#1:116,4\n44#1:154,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_callEnd",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "CallEnd",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getCallEnd",
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
.field private static _callEnd:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getCallEnd(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 46

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/twotone/CallEndKt;->_callEnd:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "TwoTone.CallEnd"

    .line 87
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object/from16 v29, v1

    move-object v12, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 90
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

    .line 87
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v17, 0x3e99999a    # 0.3f

    const v19, 0x3e99999a    # 0.3f

    .line 97
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v14

    .line 104
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

    .line 109
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v21

    .line 110
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    const-string v15, ""

    .line 116
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v1, 0x4194b852    # 18.59f

    const v2, 0x4143ae14    # 12.23f

    .line 31
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f2b851f    # 0.67f

    const v6, 0x3ec28f5c    # 0.38f

    const v7, 0x3fa66666    # 1.3f

    const v8, 0x3f4ccccd    # 0.8f

    const v9, 0x3ff0a3d7    # 1.88f

    const v10, 0x3fa28f5c    # 1.27f

    move-object v4, v0

    .line 32
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f88f5c3    # 1.07f

    const v2, -0x40770a3d    # -1.07f

    .line 33
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x40947ae1    # -0.92f

    const/high16 v6, -0x40c00000    # -0.75f

    const v7, -0x400b851f    # -1.91f

    const v8, -0x404e147b    # -1.39f

    const v9, -0x3fc28f5c    # -2.96f

    const v10, -0x400b851f    # -1.91f

    .line 34
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3fdae148    # 1.71f

    .line 35
    invoke-virtual {v0, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x4061eb85    # 3.53f

    const v5, 0x4157d70a    # 13.49f

    .line 37
    invoke-virtual {v0, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f170a3d    # 0.59f

    const v6, -0x410a3d71    # -0.48f

    const v7, 0x3f9c28f6    # 1.22f

    const v8, -0x4099999a    # -0.9f

    const v9, 0x3fef5c29    # 1.87f

    const v10, -0x405d70a4    # -1.27f

    move-object v4, v0

    .line 38
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x40266666    # -1.7f

    .line 39
    invoke-virtual {v0, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x407ae148    # -1.04f

    const v6, 0x3f028f5c    # 0.51f

    const v7, -0x3ffe147b    # -2.03f

    const v8, 0x3f933333    # 1.15f

    const v9, -0x3fc3d70a    # -2.94f

    const v10, 0x3ff33333    # 1.9f

    move-object v4, v0

    .line 40
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 41
    invoke-virtual {v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 118
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v13

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3800

    const/16 v28, 0x0

    .line 114
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/high16 v34, 0x3f800000    # 1.0f

    const/high16 v36, 0x3f800000    # 1.0f

    .line 135
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v31

    .line 142
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v4

    invoke-direct {v0, v4, v5, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v33, v0

    check-cast v33, Landroidx/compose/ui/graphics/Brush;

    const/16 v35, 0x0

    const/high16 v37, 0x3f800000    # 1.0f

    .line 147
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v38

    .line 148
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v39

    const/high16 v40, 0x3f800000    # 1.0f

    const-string v32, ""

    .line 154
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v3, 0x41400000    # 12.0f

    const/high16 v4, 0x40e00000    # 7.0f

    .line 45
    invoke-virtual {v0, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x40eeb852    # 7.46f

    const/high16 v5, 0x40e00000    # 7.0f

    const v6, 0x4055c28f    # 3.34f

    const v7, 0x410c7ae1    # 8.78f

    const v8, 0x3e947ae1    # 0.29f

    const v9, 0x413ab852    # 11.67f

    move-object v3, v0

    .line 46
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x41c7ae14    # -0.18f

    const v5, 0x3e3851ec    # 0.18f

    const v6, -0x416b851f    # -0.29f

    const v7, 0x3edc28f6    # 0.43f

    const v8, -0x416b851f    # -0.29f

    const v9, 0x3f35c28f    # 0.71f

    .line 47
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, 0x3e8f5c29    # 0.28f

    const v6, 0x3de147ae    # 0.11f

    const v7, 0x3f07ae14    # 0.53f

    const v8, 0x3e947ae1    # 0.29f

    const v9, 0x3f333333    # 0.7f

    .line 48
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v10, 0x401eb852    # 2.48f

    .line 49
    invoke-virtual {v0, v10, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3e3851ec    # 0.18f

    const v5, 0x3e3851ec    # 0.18f

    const v6, 0x3edc28f6    # 0.43f

    const v7, 0x3e947ae1    # 0.29f

    const v8, 0x3f35c28f    # 0.71f

    const v9, 0x3e947ae1    # 0.29f

    .line 50
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3e8a3d71    # 0.27f

    const/4 v5, 0x0

    const v6, 0x3f051eb8    # 0.52f

    const v7, -0x42333333    # -0.1f

    const v8, 0x3f333333    # 0.7f

    const v9, -0x4170a3d7    # -0.28f

    .line 51
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3f4a3d71    # 0.79f

    const v5, -0x40c51eb8    # -0.73f

    const v6, 0x3fd70a3d    # 1.68f

    const v7, -0x4051eb85    # -1.36f

    const v8, 0x402a3d71    # 2.66f

    const v9, -0x40133333    # -1.85f

    .line 52
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3ea8f5c3    # 0.33f

    const v5, -0x41dc28f6    # -0.16f

    const v6, 0x3f0f5c29    # 0.56f

    const v7, -0x40fd70a4    # -0.51f

    const v8, 0x3f0f5c29    # 0.56f

    const v9, -0x4099999a    # -0.9f

    .line 53
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, -0x3fb9999a    # -3.1f

    .line 54
    invoke-virtual {v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x410d999a    # 8.85f

    const/high16 v5, 0x41140000    # 9.25f

    const v6, 0x41266666    # 10.4f

    const/high16 v7, 0x41100000    # 9.0f

    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v9, 0x41100000    # 9.0f

    move-object v3, v0

    .line 55
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3fcccccd    # 1.6f

    const/4 v5, 0x0

    const v6, 0x4049999a    # 3.15f

    const/high16 v7, 0x3e800000    # 0.25f

    const v8, 0x4092e148    # 4.59f

    const v9, 0x3f3ae148    # 0.73f

    .line 56
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x40466666    # 3.1f

    .line 57
    invoke-virtual {v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, 0x3ecccccd    # 0.4f

    const v6, 0x3e6b851f    # 0.23f

    const v7, 0x3f3d70a4    # 0.74f

    const v8, 0x3f0f5c29    # 0.56f

    const v9, 0x3f666666    # 0.9f

    move-object v3, v0

    .line 58
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3f7ae148    # 0.98f

    const v5, 0x3efae148    # 0.49f

    const v6, 0x3ff0a3d7    # 1.88f

    const v7, 0x3f8e147b    # 1.11f

    const v8, 0x402ae148    # 2.67f

    const v9, 0x3feccccd    # 1.85f

    .line 59
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3e3851ec    # 0.18f

    const v5, 0x3e2e147b    # 0.17f

    const v6, 0x3edc28f6    # 0.43f

    const v7, 0x3e8f5c29    # 0.28f

    const v8, 0x3f333333    # 0.7f

    const v9, 0x3e8f5c29    # 0.28f

    .line 60
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3e8f5c29    # 0.28f

    const/4 v5, 0x0

    const v6, 0x3f07ae14    # 0.53f

    const v7, -0x421eb852    # -0.11f

    const v8, 0x3f35c28f    # 0.71f

    const v9, -0x416b851f    # -0.29f

    .line 61
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, -0x3fe147ae    # -2.48f

    .line 62
    invoke-virtual {v0, v10, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3e3851ec    # 0.18f

    const v5, -0x41c7ae14    # -0.18f

    const v6, 0x3e947ae1    # 0.29f

    const v7, -0x4123d70a    # -0.43f

    const v8, 0x3e947ae1    # 0.29f

    const v9, -0x40ca3d71    # -0.71f

    move-object v3, v0

    .line 63
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, -0x4170a3d7    # -0.28f

    const v6, -0x421eb852    # -0.11f

    const v7, -0x40f851ec    # -0.53f

    const v8, -0x416b851f    # -0.29f

    .line 64
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x41a547ae    # 20.66f

    const v5, 0x410c7ae1    # 8.78f

    const v6, 0x418451ec    # 16.54f

    const/high16 v7, 0x40e00000    # 7.0f

    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v9, 0x40e00000    # 7.0f

    .line 65
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x40accccd    # 5.4f

    const v4, 0x4143851f    # 12.22f

    .line 67
    invoke-virtual {v0, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x40d9999a    # -0.65f

    const v5, 0x3ebd70a4    # 0.37f

    const v6, -0x405c28f6    # -1.28f

    const v7, 0x3f4a3d71    # 0.79f

    const v8, -0x4010a3d7    # -1.87f

    const v9, 0x3fa28f5c    # 1.27f

    move-object v3, v0

    .line 68
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 69
    invoke-virtual {v0, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3f68f5c3    # 0.91f

    const/high16 v5, -0x40c00000    # -0.75f

    const v6, 0x3ff33333    # 1.9f

    const v7, -0x404f5c29    # -1.38f

    const v8, 0x403c28f6    # 2.94f

    const v9, -0x400ccccd    # -1.9f

    .line 70
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x3fd9999a    # 1.7f

    .line 71
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x41a3c28f    # 20.47f

    const/high16 v3, 0x41580000    # 13.5f

    .line 73
    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x40eb851f    # -0.58f

    const v5, -0x410f5c29    # -0.47f

    const v6, -0x40651eb8    # -1.21f

    const v7, -0x409c28f6    # -0.89f

    const v8, -0x400f5c29    # -1.88f

    const v9, -0x405d70a4    # -1.27f

    move-object v3, v0

    .line 74
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, -0x40251eb8    # -1.71f

    .line 75
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3f866666    # 1.05f

    const v5, 0x3f028f5c    # 0.51f

    const v6, 0x40028f5c    # 2.04f

    const v7, 0x3f933333    # 1.15f

    const v8, 0x403d70a4    # 2.96f

    const v9, 0x3ff47ae1    # 1.91f

    .line 76
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, -0x4075c28f    # -1.08f

    .line 77
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 156
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v30

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x3800

    const/16 v45, 0x0

    .line 152
    invoke-static/range {v29 .. v45}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/twotone/CallEndKt;->_callEnd:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 81
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
