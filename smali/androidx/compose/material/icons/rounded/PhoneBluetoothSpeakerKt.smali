.class public final Landroidx/compose/material/icons/rounded/PhoneBluetoothSpeakerKt;
.super Ljava/lang/Object;
.source "PhoneBluetoothSpeaker.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPhoneBluetoothSpeaker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhoneBluetoothSpeaker.kt\nandroidx/compose/material/icons/rounded/PhoneBluetoothSpeakerKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,87:1\n122#2:88\n116#2,3:89\n119#2,3:93\n132#2,18:96\n152#2:133\n175#3:92\n622#4,2:114\n634#4,2:116\n636#4,11:122\n50#5,4:118\n*S KotlinDebug\n*F\n+ 1 PhoneBluetoothSpeaker.kt\nandroidx/compose/material/icons/rounded/PhoneBluetoothSpeakerKt\n*L\n29#1:88\n29#1:89,3\n29#1:93,3\n30#1:96,18\n30#1:133\n29#1:92\n30#1:114,2\n30#1:116,2\n30#1:122,11\n30#1:118,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_phoneBluetoothSpeaker",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "PhoneBluetoothSpeaker",
        "Landroidx/compose/material/icons/Icons$Rounded;",
        "getPhoneBluetoothSpeaker",
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
.field private static _phoneBluetoothSpeaker:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getPhoneBluetoothSpeaker(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 29

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v0, Landroidx/compose/material/icons/rounded/PhoneBluetoothSpeakerKt;->_phoneBluetoothSpeaker:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "Rounded.PhoneBluetoothSpeaker"

    .line 89
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object v12, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 92
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

    .line 89
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    .line 99
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v14

    .line 106
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

    .line 111
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v21

    .line 112
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v22

    const/high16 v23, 0x3f800000    # 1.0f

    const-string v15, ""

    .line 118
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v0, 0x4199d70a    # 19.23f

    const v1, 0x417428f6    # 15.26f

    .line 31
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3fdd70a4    # -2.54f

    const v8, -0x416b851f    # -0.29f

    .line 32
    invoke-virtual {v7, v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40e3d70a    # -0.61f

    const v2, -0x4270a3d7    # -0.07f

    const v3, -0x40651eb8    # -1.21f

    const v4, 0x3e0f5c29    # 0.14f

    const v5, -0x402e147b    # -1.64f

    const v6, 0x3f11eb85    # 0.57f

    move-object v0, v7

    .line 33
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40147ae1    # -1.84f

    const v1, 0x3feb851f    # 1.84f

    .line 34
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x3fcae148    # -2.83f

    const v2, -0x4047ae14    # -1.44f

    const v3, -0x3f5b3333    # -5.15f

    const/high16 v4, -0x3f900000    # -3.75f

    const v5, -0x3f2d1eb8    # -6.59f

    const v6, -0x3f2d1eb8    # -6.59f

    move-object v0, v7

    .line 35
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3feccccd    # 1.85f

    const v1, -0x40133333    # -1.85f

    .line 36
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3edc28f6    # 0.43f

    const v2, -0x4123d70a    # -0.43f

    const v3, 0x3f23d70a    # 0.64f

    const v4, -0x407c28f6    # -1.03f

    const v5, 0x3f11eb85    # 0.57f

    const v6, -0x402e147b    # -1.64f

    move-object v0, v7

    .line 37
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3fdeb852    # -2.52f

    .line 38
    invoke-virtual {v7, v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x420a3d71    # -0.12f

    const v2, -0x407eb852    # -1.01f

    const v3, -0x4087ae14    # -0.97f

    const v4, -0x401d70a4    # -1.77f

    const v5, -0x400147ae    # -1.99f

    const v6, -0x401d70a4    # -1.77f

    move-object v0, v7

    .line 39
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40a0f5c3    # 5.03f

    const v1, 0x4040a3d7    # 3.01f

    .line 40
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x406f5c29    # -1.13f

    const/4 v2, 0x0

    const v3, -0x3ffb851f    # -2.07f

    const v4, 0x3f70a3d7    # 0.94f

    const/high16 v5, -0x40000000    # -2.0f

    const v6, 0x40047ae1    # 2.07f

    move-object v0, v7

    .line 41
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f07ae14    # 0.53f

    const v2, 0x4108a3d7    # 8.54f

    const v3, 0x40eb851f    # 7.36f

    const v4, 0x4175c28f    # 15.36f

    const v5, 0x417e3d71    # 15.89f

    const v6, 0x417e3d71    # 15.89f

    .line 42
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f90a3d7    # 1.13f

    const v2, 0x3d8f5c29    # 0.07f

    const v3, 0x40047ae1    # 2.07f

    const v4, -0x40a147ae    # -0.87f

    const v5, 0x40047ae1    # 2.07f

    const/high16 v6, -0x40000000    # -2.0f

    .line 43
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40228f5c    # -1.73f

    .line 44
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3c23d70a    # 0.01f

    const v2, -0x407eb852    # -1.01f

    const/high16 v3, -0x40c00000    # -0.75f

    const v4, -0x4011eb85    # -1.86f

    const v5, -0x401eb852    # -1.76f

    const v6, -0x40028f5c    # -1.98f

    move-object v0, v7

    .line 45
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x418651ec    # 16.79f

    const v1, 0x40c051ec    # 6.01f

    .line 47
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3fe33333    # -2.45f

    const v8, 0x401ccccd    # 2.45f

    .line 48
    invoke-virtual {v7, v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41b33333    # -0.2f

    const v2, 0x3e4ccccd    # 0.2f

    const v3, -0x41b33333    # -0.2f

    const v4, 0x3f051eb8    # 0.52f

    const/4 v5, 0x0

    const v6, 0x3f35c28f    # 0.71f

    move-object v0, v7

    .line 49
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e4ccccd    # 0.2f

    const v3, 0x3f051eb8    # 0.52f

    const v4, 0x3e4ccccd    # 0.2f

    const v5, 0x3f35c28f    # 0.71f

    const/4 v6, 0x0

    .line 50
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41880000    # 17.0f

    const v9, 0x40e75c29    # 7.23f

    .line 51
    invoke-virtual {v7, v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v10, 0x4049999a    # 3.15f

    .line 52
    invoke-virtual {v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v3, 0x3df5c28f    # 0.12f

    const v4, 0x3ec7ae14    # 0.39f

    const v5, 0x3e9eb852    # 0.31f

    const v6, 0x3ef0a3d7    # 0.47f

    move-object v0, v7

    .line 53
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3d75c28f    # 0.06f

    const v2, 0x3cf5c28f    # 0.03f

    const v3, 0x3e051eb8    # 0.13f

    const v4, 0x3d23d70a    # 0.04f

    const v5, 0x3e428f5c    # 0.19f

    const v6, 0x3d23d70a    # 0.04f

    .line 54
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e051eb8    # 0.13f

    const/4 v2, 0x0

    const v3, 0x3e851eb8    # 0.26f

    const v4, -0x42b33333    # -0.05f

    const v5, 0x3eb851ec    # 0.36f

    const v6, -0x41e66666    # -0.15f

    .line 55
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x400b851f    # 2.18f

    const v11, -0x3ff47ae1    # -2.18f

    .line 56
    invoke-virtual {v7, v0, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e4ccccd    # 0.2f

    const v2, -0x41b33333    # -0.2f

    const v3, 0x3e4ccccd    # 0.2f

    const v4, -0x40fae148    # -0.52f

    const/4 v5, 0x0

    const v6, -0x40ca3d71    # -0.71f

    move-object v0, v7

    .line 57
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4015c28f    # -1.83f

    .line 58
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3fea3d71    # 1.83f

    .line 59
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3db851ec    # 0.09f

    const v2, -0x4247ae14    # -0.09f

    const v3, 0x3e19999a    # 0.15f

    const v4, -0x419eb852    # -0.22f

    const v5, 0x3e19999a    # 0.15f

    const v6, -0x4147ae14    # -0.36f

    move-object v0, v7

    .line 60
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x41e66666    # -0.15f

    const v1, -0x4147ae14    # -0.36f

    const v2, -0x42b33333    # -0.05f

    const v3, -0x417ae148    # -0.26f

    .line 61
    invoke-virtual {v7, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    invoke-virtual {v7, v11, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41f0a3d7    # -0.14f

    const v2, -0x41f0a3d7    # -0.14f

    const v3, -0x4147ae14    # -0.36f

    const v4, -0x41bd70a4    # -0.19f

    const v5, -0x40f33333    # -0.55f

    const v6, -0x421eb852    # -0.11f

    move-object v0, v7

    .line 63
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41bd70a4    # -0.19f

    const v2, 0x3da3d70a    # 0.08f

    const v3, -0x416147ae    # -0.31f

    const v4, 0x3e851eb8    # 0.26f

    const v5, -0x416147ae    # -0.31f

    const v6, 0x3eeb851f    # 0.46f

    .line 64
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 65
    invoke-virtual {v7, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40066666    # -1.95f

    .line 66
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41b33333    # -0.2f

    const v2, -0x41b33333    # -0.2f

    const v3, -0x40fae148    # -0.52f

    const v4, -0x41b33333    # -0.2f

    const v5, -0x40ca3d71    # -0.71f

    const/4 v6, 0x0

    move-object v0, v7

    .line 67
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x3e4ccccd    # 0.2f

    const v3, -0x41b33333    # -0.2f

    const v4, 0x3f051eb8    # 0.52f

    const/4 v5, 0x0

    const v6, 0x3f35c28f    # 0.71f

    .line 68
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x401d70a4    # 2.46f

    .line 69
    invoke-virtual {v7, v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 70
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x4190147b    # 18.01f

    const v1, 0x40370a3d    # 2.86f

    .line 71
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x3f75c28f    # 0.96f

    .line 72
    invoke-virtual {v7, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, -0x408a3d71    # -0.96f

    .line 73
    invoke-virtual {v7, v3, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 76
    invoke-virtual {v7, v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 77
    invoke-virtual {v7, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    invoke-virtual {v7, v3, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 79
    invoke-virtual {v7, v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 120
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v13

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x3800

    const/16 v28, 0x0

    .line 116
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    .line 29
    sput-object v0, Landroidx/compose/material/icons/rounded/PhoneBluetoothSpeakerKt;->_phoneBluetoothSpeaker:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 83
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
