.class public final Landroidx/compose/material/icons/rounded/PasswordKt;
.super Ljava/lang/Object;
.source "Password.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPassword.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Password.kt\nandroidx/compose/material/icons/rounded/PasswordKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,143:1\n122#2:144\n116#2,3:145\n119#2,3:149\n132#2,18:152\n152#2:189\n175#3:148\n622#4,2:170\n634#4,2:172\n636#4,11:178\n50#5,4:174\n*S KotlinDebug\n*F\n+ 1 Password.kt\nandroidx/compose/material/icons/rounded/PasswordKt\n*L\n29#1:144\n29#1:145,3\n29#1:149,3\n30#1:152,18\n30#1:189\n29#1:148\n30#1:170,2\n30#1:172,2\n30#1:178,11\n30#1:174,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_password",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Password",
        "Landroidx/compose/material/icons/Icons$Rounded;",
        "getPassword",
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
.field private static _password:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getPassword(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 29

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/rounded/PasswordKt;->_password:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "Rounded.Password"

    .line 145
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object v12, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 148
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

    .line 145
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    .line 155
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v14

    .line 162
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

    .line 167
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v21

    .line 168
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    const-string v15, ""

    .line 174
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v0, 0x41880000    # 17.0f

    const/high16 v8, 0x40400000    # 3.0f

    .line 31
    invoke-virtual {v7, v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41900000    # 18.0f

    .line 32
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f0ccccd    # 0.55f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ee66666    # 0.45f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, v7

    .line 33
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v9, 0x0

    .line 34
    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3f0ccccd    # 0.55f

    const v3, -0x4119999a    # -0.45f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, -0x40800000    # -1.0f

    .line 35
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    invoke-virtual {v7, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40f33333    # -0.55f

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const v4, -0x4119999a    # -0.45f

    const/high16 v6, -0x40800000    # -1.0f

    .line 37
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x40000000    # 2.0f

    const v2, 0x418b999a    # 17.45f

    const v3, 0x401ccccd    # 2.45f

    const/high16 v4, 0x41880000    # 17.0f

    const/high16 v5, 0x40400000    # 3.0f

    const/high16 v6, 0x41880000    # 17.0f

    .line 39
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 40
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v8, 0x40200000    # 2.5f

    const v10, 0x41491eb8    # 12.57f

    .line 41
    invoke-virtual {v7, v8, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3eb851ec    # 0.36f

    const v2, 0x3e570a3d    # 0.21f

    const v3, 0x3f51eb85    # 0.82f

    const v4, 0x3da3d70a    # 0.08f

    const v5, 0x3f83d70a    # 1.03f

    const v6, -0x4170a3d7    # -0.28f

    .line 42
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v11, 0x40800000    # 4.0f

    const v13, 0x4137851f    # 11.47f

    .line 43
    invoke-virtual {v7, v11, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3ef5c28f    # 0.48f

    const v5, 0x3f547ae1    # 0.83f

    .line 44
    invoke-virtual {v7, v6, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e570a3d    # 0.21f

    const v2, 0x3eb851ec    # 0.36f

    const v3, 0x3f2b851f    # 0.67f

    const v4, 0x3ef5c28f    # 0.48f

    const v24, 0x3f83d70a    # 1.03f

    const v25, 0x3e8f5c29    # 0.28f

    move v13, v5

    move/from16 v5, v24

    move/from16 v6, v25

    .line 45
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    invoke-virtual {v7, v9, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3eb851ec    # 0.36f

    const v2, -0x41a8f5c3    # -0.21f

    const v3, 0x3ef5c28f    # 0.48f

    const v4, -0x40d70a3d    # -0.66f

    const v5, 0x3e8f5c29    # 0.28f

    const v6, -0x407d70a4    # -1.02f

    .line 47
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x412b851f    # 10.72f

    const v6, 0x40a9999a    # 5.3f

    .line 48
    invoke-virtual {v7, v6, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f733333    # 0.95f

    .line 49
    invoke-virtual {v7, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x40d51eb8    # 6.66f

    const v2, 0x412b851f    # 10.72f

    const/high16 v3, 0x40e00000    # 7.0f

    const v4, 0x4126147b    # 10.38f

    const/high16 v24, 0x40e00000    # 7.0f

    const v25, 0x411f851f    # 9.97f

    move-object v0, v7

    move/from16 v5, v24

    move v8, v6

    move/from16 v6, v25

    .line 50
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 51
    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x412e147b    # -0.41f

    const v3, -0x4151eb85    # -0.34f

    const/high16 v4, -0x40c00000    # -0.75f

    const/high16 v5, -0x40c00000    # -0.75f

    const/high16 v6, -0x40c00000    # -0.75f

    .line 52
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    invoke-virtual {v7, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40b8a3d7    # 5.77f

    const v1, 0x41066666    # 8.4f

    .line 54
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x40bf5c29    # 5.98f

    const v2, 0x4100a3d7    # 8.04f

    const v3, 0x40bb851f    # 5.86f

    const v4, 0x40f28f5c    # 7.58f

    const/high16 v5, 0x40b00000    # 5.5f

    const v6, 0x40ebd70a    # 7.37f

    move-object v0, v7

    .line 55
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    invoke-virtual {v7, v9, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x40a47ae1    # 5.14f

    const v2, 0x40e570a4    # 7.17f

    const v3, 0x4095c28f    # 4.68f

    const v4, 0x40e947ae    # 7.29f

    const v5, 0x408f0a3d    # 4.47f

    const v6, 0x40f4cccd    # 7.65f

    .line 57
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v8, 0x4107851f    # 8.47f

    .line 58
    invoke-virtual {v7, v11, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4061eb85    # 3.53f

    const v1, 0x40f4cccd    # 7.65f

    .line 59
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x40547ae1    # 3.32f

    const v2, 0x40e947ae    # 7.29f

    const v3, 0x40370a3d    # 2.86f

    const v4, 0x40e570a4    # 7.17f

    const/high16 v5, 0x40200000    # 2.5f

    const v6, 0x40ebd70a    # 7.37f

    move-object v0, v7

    .line 60
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    invoke-virtual {v7, v9, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x4008f5c3    # 2.14f

    const v2, 0x40f28f5c    # 7.58f

    const v3, 0x400147ae    # 2.02f

    const v4, 0x4100a3d7    # 8.04f

    const v5, 0x400eb852    # 2.23f

    const v6, 0x41066666    # 8.4f

    .line 62
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4113851f    # 9.22f

    const v11, 0x402ccccd    # 2.7f

    .line 63
    invoke-virtual {v7, v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x3fe00000    # 1.75f

    .line 64
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3fab851f    # 1.34f

    const v2, 0x4113851f    # 9.22f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x4118f5c3    # 9.56f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x411f851f    # 9.97f

    move-object v0, v7

    .line 65
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3ed1eb85    # 0.41f

    const v3, 0x3eae147b    # 0.34f

    const/high16 v4, 0x3f400000    # 0.75f

    const/high16 v5, 0x3f400000    # 0.75f

    const/high16 v6, 0x3f400000    # 0.75f

    .line 67
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    invoke-virtual {v7, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v11, -0x410a3d71    # -0.48f

    .line 69
    invoke-virtual {v7, v11, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x400147ae    # 2.02f

    const v2, 0x413e8f5c    # 11.91f

    const v3, 0x4008f5c3    # 2.14f

    const v4, 0x4145eb85    # 12.37f

    const/high16 v5, 0x40200000    # 2.5f

    const v6, 0x41491eb8    # 12.57f

    .line 70
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40200000    # 2.5f

    .line 71
    invoke-virtual {v7, v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 72
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41280000    # 10.5f

    .line 73
    invoke-virtual {v7, v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    invoke-virtual {v7, v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3eb851ec    # 0.36f

    const v2, 0x3e570a3d    # 0.21f

    const v3, 0x3f51eb85    # 0.82f

    const v4, 0x3da3d70a    # 0.08f

    const v5, 0x3f83d70a    # 1.03f

    const v6, -0x4170a3d7    # -0.28f

    move-object v0, v7

    .line 75
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v10, 0x41400000    # 12.0f

    const v0, 0x4137851f    # 11.47f

    .line 76
    invoke-virtual {v7, v10, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3ef5c28f    # 0.48f

    .line 77
    invoke-virtual {v7, v6, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e570a3d    # 0.21f

    const v2, 0x3eb851ec    # 0.36f

    const v3, 0x3f2b851f    # 0.67f

    const v4, 0x3ef5c28f    # 0.48f

    const v24, 0x3e8f5c29    # 0.28f

    move-object v0, v7

    move/from16 v6, v24

    .line 78
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    invoke-virtual {v7, v9, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3eb851ec    # 0.36f

    const v2, -0x41a8f5c3    # -0.21f

    const v3, 0x3ef5c28f    # 0.48f

    const v4, -0x40d70a3d    # -0.66f

    const v5, 0x3e8f5c29    # 0.28f

    const v6, -0x407d70a4    # -1.02f

    .line 80
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, -0x40ab851f    # -0.83f

    .line 81
    invoke-virtual {v7, v11, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f733333    # 0.95f

    .line 82
    invoke-virtual {v7, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3ed1eb85    # 0.41f

    const/4 v2, 0x0

    const/high16 v3, 0x3f400000    # 0.75f

    const v4, -0x4151eb85    # -0.34f

    const/high16 v24, 0x3f400000    # 0.75f

    const/high16 v25, -0x40c00000    # -0.75f

    move v11, v5

    move/from16 v5, v24

    move/from16 v6, v25

    .line 83
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 84
    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x412e147b    # -0.41f

    const v3, -0x4151eb85    # -0.34f

    const/high16 v4, -0x40c00000    # -0.75f

    const/high16 v5, -0x40c00000    # -0.75f

    const/high16 v6, -0x40c00000    # -0.75f

    .line 85
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4154cccd    # 13.3f

    .line 86
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3ef0a3d7    # 0.47f

    const v5, -0x40ae147b    # -0.82f

    .line 87
    invoke-virtual {v7, v6, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e570a3d    # 0.21f

    const v2, -0x4147ae14    # -0.36f

    const v3, 0x3da3d70a    # 0.08f

    const v4, -0x40ae147b    # -0.82f

    const v24, -0x4175c28f    # -0.27f

    const v25, -0x407c28f6    # -1.03f

    move-object v0, v7

    move v13, v5

    move/from16 v5, v24

    move v11, v6

    move/from16 v6, v25

    .line 88
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 89
    invoke-virtual {v7, v9, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4147ae14    # -0.36f

    const v2, -0x41a8f5c3    # -0.21f

    const v3, -0x40ae147b    # -0.82f

    const v4, -0x425c28f6    # -0.08f

    const v5, -0x407d70a4    # -1.02f

    const v6, 0x3e8a3d71    # 0.27f

    .line 90
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 91
    invoke-virtual {v7, v10, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v10, -0x410f5c29    # -0.47f

    .line 92
    invoke-virtual {v7, v10, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41a8f5c3    # -0.21f

    const v2, -0x4147ae14    # -0.36f

    const v3, -0x40d47ae1    # -0.67f

    const v4, -0x410a3d71    # -0.48f

    const v6, -0x4175c28f    # -0.27f

    .line 93
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 94
    invoke-virtual {v7, v9, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4147ae14    # -0.36f

    const v2, 0x3e570a3d    # 0.21f

    const v3, -0x410a3d71    # -0.48f

    const v4, 0x3f2b851f    # 0.67f

    const v5, -0x4175c28f    # -0.27f

    const v6, 0x3f83d70a    # 1.03f

    .line 95
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3f51eb85    # 0.82f

    .line 96
    invoke-virtual {v7, v11, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x411c0000    # 9.75f

    .line 97
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x411570a4    # 9.34f

    const v2, 0x4113851f    # 9.22f

    const/high16 v3, 0x41100000    # 9.0f

    const v4, 0x4118f5c3    # 9.56f

    const/high16 v5, 0x41100000    # 9.0f

    const v24, 0x411f851f    # 9.97f

    move-object v0, v7

    move/from16 v6, v24

    .line 98
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 99
    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3ed1eb85    # 0.41f

    const v3, 0x3eae147b    # 0.34f

    const/high16 v4, 0x3f400000    # 0.75f

    const/high16 v5, 0x3f400000    # 0.75f

    const/high16 v6, 0x3f400000    # 0.75f

    .line 100
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f733333    # 0.95f

    .line 101
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x410a3d71    # -0.48f

    const v1, 0x3f547ae1    # 0.83f

    .line 102
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x412051ec    # 10.02f

    const v2, 0x413e8f5c    # 11.91f

    const v3, 0x41223d71    # 10.14f

    const v4, 0x4145eb85    # 12.37f

    const/high16 v5, 0x41280000    # 10.5f

    const v6, 0x41491eb8    # 12.57f

    move-object v0, v7

    .line 103
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 104
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x411f851f    # 9.97f

    const/high16 v6, 0x41b80000    # 23.0f

    .line 105
    invoke-virtual {v7, v6, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x412e147b    # -0.41f

    const v3, -0x4151eb85    # -0.34f

    const/high16 v4, -0x40c00000    # -0.75f

    const/high16 v5, -0x40c00000    # -0.75f

    const/high16 v24, -0x40c00000    # -0.75f

    move-object v0, v7

    move/from16 v6, v24

    .line 106
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41aa6666    # 21.3f

    .line 107
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineTo(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 108
    invoke-virtual {v7, v11, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e570a3d    # 0.21f

    const v2, -0x4147ae14    # -0.36f

    const v3, 0x3da3d70a    # 0.08f

    const v4, -0x40ae147b    # -0.82f

    const v5, -0x4175c28f    # -0.27f

    const v6, -0x407c28f6    # -1.03f

    move-object v0, v7

    .line 109
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 110
    invoke-virtual {v7, v9, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4147ae14    # -0.36f

    const v2, -0x41a8f5c3    # -0.21f

    const v3, -0x40ae147b    # -0.82f

    const v4, -0x425c28f6    # -0.08f

    const v5, -0x407d70a4    # -1.02f

    const v6, 0x3e8a3d71    # 0.27f

    .line 111
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41a00000    # 20.0f

    .line 112
    invoke-virtual {v7, v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 113
    invoke-virtual {v7, v10, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41a8f5c3    # -0.21f

    const v2, -0x4147ae14    # -0.36f

    const v3, -0x40d47ae1    # -0.67f

    const v4, -0x410a3d71    # -0.48f

    const v6, -0x4175c28f    # -0.27f

    move-object v0, v7

    .line 114
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 115
    invoke-virtual {v7, v9, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4147ae14    # -0.36f

    const v2, 0x3e570a3d    # 0.21f

    const v3, -0x410a3d71    # -0.48f

    const v4, 0x3f2b851f    # 0.67f

    const v5, -0x4175c28f    # -0.27f

    const v6, 0x3f83d70a    # 1.03f

    .line 116
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f51eb85    # 0.82f

    .line 117
    invoke-virtual {v7, v11, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x408ccccd    # -0.95f

    .line 118
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x418ab852    # 17.34f

    const v2, 0x4113851f    # 9.22f

    const/high16 v3, 0x41880000    # 17.0f

    const v4, 0x4118f5c3    # 9.56f

    const/high16 v5, 0x41880000    # 17.0f

    const v6, 0x411f851f    # 9.97f

    move-object v0, v7

    .line 119
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 120
    invoke-virtual {v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3ed1eb85    # 0.41f

    const v3, 0x3eae147b    # 0.34f

    const/high16 v4, 0x3f400000    # 0.75f

    const/high16 v5, 0x3f400000    # 0.75f

    const/high16 v6, 0x3f400000    # 0.75f

    .line 121
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f733333    # 0.95f

    .line 122
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x410a3d71    # -0.48f

    const v1, 0x3f547ae1    # 0.83f

    .line 123
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41a8f5c3    # -0.21f

    const v2, 0x3eb851ec    # 0.36f

    const v3, -0x425c28f6    # -0.08f

    const v4, 0x3f51eb85    # 0.82f

    const v5, 0x3e8f5c29    # 0.28f

    const v6, 0x3f828f5c    # 1.02f

    move-object v0, v7

    .line 124
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 125
    invoke-virtual {v7, v9, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3eb851ec    # 0.36f

    const v2, 0x3e570a3d    # 0.21f

    const v3, 0x3f51eb85    # 0.82f

    const v4, 0x3da3d70a    # 0.08f

    const v5, 0x3f83d70a    # 1.03f

    const v6, -0x4170a3d7    # -0.28f

    .line 126
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41a00000    # 20.0f

    const v1, 0x4137851f    # 11.47f

    .line 127
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ef5c28f    # 0.48f

    const v1, 0x3f547ae1    # 0.83f

    .line 128
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e570a3d    # 0.21f

    const v2, 0x3eb851ec    # 0.36f

    const v3, 0x3f2b851f    # 0.67f

    const v4, 0x3ef5c28f    # 0.48f

    const v6, 0x3e8f5c29    # 0.28f

    move-object v0, v7

    .line 129
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 130
    invoke-virtual {v7, v9, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3eb851ec    # 0.36f

    const v2, -0x41a8f5c3    # -0.21f

    const v3, 0x3ef5c28f    # 0.48f

    const v4, -0x40d70a3d    # -0.66f

    const v5, 0x3e8f5c29    # 0.28f

    const v6, -0x407d70a4    # -1.02f

    .line 131
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40ab851f    # -0.83f

    const v1, -0x410a3d71    # -0.48f

    .line 132
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f733333    # 0.95f

    .line 133
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x41b547ae    # 22.66f

    const v2, 0x412b851f    # 10.72f

    const/high16 v3, 0x41b80000    # 23.0f

    const v4, 0x4126147b    # 10.38f

    const/high16 v5, 0x41b80000    # 23.0f

    const v6, 0x411f851f    # 9.97f

    move-object v0, v7

    .line 134
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x411f851f    # 9.97f

    const/high16 v1, 0x41b80000    # 23.0f

    .line 135
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 136
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 176
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v13

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3800

    const/16 v28, 0x0

    .line 172
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/rounded/PasswordKt;->_password:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 139
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
