.class public Lcom/easyvictory/cheto/AutoController;
.super Ljava/lang/Object;
.source "AutoController.java"


# static fields
.field private static Instance:Lcom/easyvictory/cheto/AutoController;


# instance fields
.field private autoControllerLogo:Landroid/widget/ImageView;

.field private context:Landroid/content/Context;

.field public floatingView:Landroid/view/View;

.field private isOn:Z

.field public logoView:Landroid/view/View;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/easyvictory/cheto/AutoController;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/easyvictory/cheto/AutoController;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/easyvictory/cheto/AutoController;->isOn:Z

    return p0
.end method

.method static synthetic access$002(Lcom/easyvictory/cheto/AutoController;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/easyvictory/cheto/AutoController;->isOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/easyvictory/cheto/AutoController;)Landroid/widget/ImageView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/easyvictory/cheto/AutoController;->autoControllerLogo:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/easyvictory/cheto/AutoController;)Landroid/view/WindowManager;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/easyvictory/cheto/AutoController;->windowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/easyvictory/cheto/AutoController;)Landroid/content/Context;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/easyvictory/cheto/AutoController;->context:Landroid/content/Context;

    return-object p0
.end method

.method static enableAutoPlay(Z)V
    .locals 3

    .line 75
    invoke-static {}, Lcom/easyvictory/cheto/AutoController;->getInstance()Lcom/easyvictory/cheto/AutoController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    .line 77
    invoke-virtual {v0, v1, v2}, Lcom/easyvictory/cheto/AutoController;->SettingValueWrapper(IZ)Z

    .line 78
    iget-object v1, v0, Lcom/easyvictory/cheto/AutoController;->autoControllerLogo:Landroid/widget/ImageView;

    const v2, 0x7f080107

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v0, v1, v1}, Lcom/easyvictory/cheto/AutoController;->SettingValueWrapper(IZ)Z

    .line 81
    iget-object v1, v0, Lcom/easyvictory/cheto/AutoController;->autoControllerLogo:Landroid/widget/ImageView;

    const v2, 0x7f080106

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    :goto_0
    iput-boolean p0, v0, Lcom/easyvictory/cheto/AutoController;->isOn:Z

    return-void
.end method

.method public static getInstance()Lcom/easyvictory/cheto/AutoController;
    .locals 1

    .line 32
    sget-object v0, Lcom/easyvictory/cheto/AutoController;->Instance:Lcom/easyvictory/cheto/AutoController;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/easyvictory/cheto/AutoController;

    invoke-direct {v0}, Lcom/easyvictory/cheto/AutoController;-><init>()V

    sput-object v0, Lcom/easyvictory/cheto/AutoController;->Instance:Lcom/easyvictory/cheto/AutoController;

    .line 36
    :cond_0
    sget-object v0, Lcom/easyvictory/cheto/AutoController;->Instance:Lcom/easyvictory/cheto/AutoController;

    return-object v0
.end method

.method private getIntValue(Ljava/lang/String;)I
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/easyvictory/cheto/AutoController;->context:Landroid/content/Context;

    const-wide v1, -0x439b014ce32061ccL    # -9.105095386089078E-18

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 52
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public native SettingValue(IZ)V
.end method

.method SettingValueWrapper(IZ)Z
    .locals 0

    .line 193
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/easyvictory/cheto/AutoController;->SettingValue(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 197
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 198
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return p1
.end method

.method createOver()V
    .locals 9

    .line 90
    iget-object v0, p0, Lcom/easyvictory/cheto/AutoController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/easyvictory/cheto/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v4, v0

    const/16 v6, 0x3ea

    .line 97
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    iget-object v1, p0, Lcom/easyvictory/cheto/AutoController;->context:Landroid/content/Context;

    .line 101
    invoke-static {v1}, Lcom/easyvictory/cheto/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result v5

    const/16 v7, 0x8

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 107
    :try_start_0
    invoke-static {v0}, Lcom/easyvictory/cheto/Record;->setFakeRecorderWindowLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 110
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;)V

    .line 114
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/easyvictory/cheto/AutoController;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/easyvictory/cheto/AutoController;->floatingView:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    const-wide v2, -0x439b0167e32061ccL    # -9.104916715076766E-18

    .line 117
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_1
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/easyvictory/cheto/AutoController;->context:Landroid/content/Context;

    new-instance v3, Lcom/easyvictory/cheto/SingleTapConfirm2;

    invoke-direct {v3}, Lcom/easyvictory/cheto/SingleTapConfirm2;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 123
    iget-object v2, p0, Lcom/easyvictory/cheto/AutoController;->floatingView:Landroid/view/View;

    const v3, 0x7f0901c3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/easyvictory/cheto/AutoController$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/easyvictory/cheto/AutoController$1;-><init>(Lcom/easyvictory/cheto/AutoController;Landroid/view/GestureDetector;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/easyvictory/cheto/AutoController;->context:Landroid/content/Context;

    return-object v0
.end method

.method public onCreate(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    .line 58
    :try_start_0
    iput-boolean v0, p0, Lcom/easyvictory/cheto/AutoController;->isOn:Z

    .line 59
    iput-object p1, p0, Lcom/easyvictory/cheto/AutoController;->floatingView:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/easyvictory/cheto/AutoController;->context:Landroid/content/Context;

    const-wide v1, -0x439b0155e32061ccL    # -9.105035829084974E-18

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/easyvictory/cheto/AutoController;->windowManager:Landroid/view/WindowManager;

    .line 62
    invoke-virtual {p0}, Lcom/easyvictory/cheto/AutoController;->createOver()V

    const v0, 0x7f0901c3

    .line 63
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/easyvictory/cheto/AutoController;->logoView:Landroid/view/View;

    const v0, 0x7f0900ac

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/easyvictory/cheto/AutoController;->autoControllerLogo:Landroid/widget/ImageView;

    const-wide v0, -0x439b015ce32061ccL    # -9.104989506970671E-18

    .line 66
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/easyvictory/cheto/AutoController;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/easyvictory/cheto/AutoController;->context:Landroid/content/Context;

    return-void
.end method
