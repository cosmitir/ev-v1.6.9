.class public Lcom/easyvictory/cheto/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getScreenHeight(Landroid/content/Context;)I
    .locals 0

    .line 17
    invoke-static {p0}, Lcom/easyvictory/cheto/Utils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->y:I

    return p0
.end method

.method static getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 3

    .line 21
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const-wide v1, -0x439b17f6e32061ccL    # -9.066700970776816E-18

    .line 22
    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 23
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 24
    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-object v0
.end method

.method static getScreenWidth(Landroid/content/Context;)I
    .locals 0

    .line 13
    invoke-static {p0}, Lcom/easyvictory/cheto/Utils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->x:I

    return p0
.end method
