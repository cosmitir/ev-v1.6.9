.class public Lcom/easyvictory/cheto/App;
.super Lcom/hack/opensdk/HackApplication;
.source "App.java"


# static fields
.field private static angleStepSizeText:Ljava/lang/String;

.field private static controllerView:Landroid/view/View;

.field private static currentActivity:Landroid/app/Activity;

.field private static floatingView:Landroid/view/View;

.field private static lineThicknessText:Ljava/lang/String;

.field private static lineTransparencyText:Ljava/lang/String;

.field public static mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

.field private static predictionDrawPowerText:Ljava/lang/String;

.field private static sInstance:Lcom/easyvictory/cheto/App;


# instance fields
.field final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, -0x439b0147e32061ccL    # -9.10512847331358E-18

    .line 36
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 43
    sput-object v0, Lcom/easyvictory/cheto/App;->currentActivity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Lcom/hack/opensdk/HackApplication;-><init>()V

    const-wide v0, -0x439b0081e32061ccL    # -9.106438727403864E-18

    .line 39
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easyvictory/cheto/App;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static INSTANCE()Lcom/easyvictory/cheto/App;
    .locals 1

    .line 127
    sget-object v0, Lcom/easyvictory/cheto/App;->sInstance:Lcom/easyvictory/cheto/App;

    return-object v0
.end method

.method static synthetic access$000()Landroid/app/Activity;
    .locals 1

    .line 32
    sget-object v0, Lcom/easyvictory/cheto/App;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$002(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    .line 32
    sput-object p0, Lcom/easyvictory/cheto/App;->currentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/easyvictory/cheto/App;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/easyvictory/cheto/App;->setCurrentActivityName(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/easyvictory/cheto/App;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/easyvictory/cheto/App;->getCurrentActivityName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/easyvictory/cheto/App;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400()Landroid/view/View;
    .locals 1

    .line 32
    sget-object v0, Lcom/easyvictory/cheto/App;->floatingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500()Landroid/view/View;
    .locals 1

    .line 32
    sget-object v0, Lcom/easyvictory/cheto/App;->controllerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/easyvictory/cheto/App;->predictionDrawPowerText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/easyvictory/cheto/App;->lineThicknessText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/easyvictory/cheto/App;->lineTransparencyText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/easyvictory/cheto/App;->angleStepSizeText:Ljava/lang/String;

    return-object v0
.end method

.method private getCurrentActivityName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-wide v0, -0x439b011ee32061ccL    # -9.105399788554497E-18

    .line 264
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-wide v0, -0x439b012ae32061ccL    # -9.105320379215692E-18

    .line 265
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x439b013ae32061ccL    # -9.105214500097285E-18

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 59
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-wide v1, -0x439b008ee32061ccL    # -9.106352700620158E-18

    .line 61
    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 62
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 63
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_0

    .line 64
    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    return-object p0

    .line 69
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-wide v0, -0x439b0097e32061ccL    # -9.106293143616055E-18

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initSpinnersSelections()V
    .locals 10

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x439b00aae32061ccL    # -9.106167412162946E-18

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/easyvictory/cheto/App;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x439b00ace32061ccL    # -9.106154177273146E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/easyvictory/cheto/App;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, -0x439b00aee32061ccL    # -9.106140942383345E-18

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/easyvictory/cheto/App;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f110028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v1, 0x2

    aput-object v2, v4, v1

    .line 91
    sget-object v2, Lcom/easyvictory/cheto/App;->floatingView:Landroid/view/View;

    const v6, 0x7f090006

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 92
    new-instance v6, Landroid/widget/ArrayAdapter;

    invoke-static {}, Lcom/easyvictory/cheto/App;->INSTANCE()Lcom/easyvictory/cheto/App;

    move-result-object v7

    const v8, 0x7f0c0073

    invoke-direct {v6, v7, v8, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v4, 0x7f0c0074

    .line 93
    invoke-virtual {v6, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 94
    invoke-virtual {v2, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 95
    invoke-virtual {v2, v5}, Landroid/widget/Spinner;->setSelection(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-wide v6, -0x439b00b0e32061ccL    # -9.106127707493544E-18

    .line 97
    invoke-static {v6, v7}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const-wide v6, -0x439b00b6e32061ccL    # -9.106088002824141E-18

    invoke-static {v6, v7}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v0

    const-wide v6, -0x439b00bce32061ccL    # -9.106048298154739E-18

    invoke-static {v6, v7}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v1

    const-wide v6, -0x439b00c6e32061ccL    # -9.105982123705735E-18

    invoke-static {v6, v7}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    .line 98
    sget-object v6, Lcom/easyvictory/cheto/App;->floatingView:Landroid/view/View;

    const v7, 0x7f090002

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    .line 99
    new-instance v7, Landroid/widget/ArrayAdapter;

    invoke-static {}, Lcom/easyvictory/cheto/App;->INSTANCE()Lcom/easyvictory/cheto/App;

    move-result-object v9

    invoke-direct {v7, v9, v8, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 100
    invoke-virtual {v7, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 101
    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 102
    invoke-virtual {v6, v5}, Landroid/widget/Spinner;->setSelection(I)V

    new-array v2, v3, [Ljava/lang/String;

    const-wide v6, -0x439b00d3e32061ccL    # -9.105896096922029E-18

    .line 104
    invoke-static {v6, v7}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-wide v6, -0x439b00e1e32061ccL    # -9.105803452693423E-18

    invoke-static {v6, v7}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const-wide v6, -0x439b00ece32061ccL    # -9.105730660799518E-18

    invoke-static {v6, v7}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 105
    sget-object v0, Lcom/easyvictory/cheto/App;->floatingView:Landroid/view/View;

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 106
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-static {}, Lcom/easyvictory/cheto/App;->INSTANCE()Lcom/easyvictory/cheto/App;

    move-result-object v3

    invoke-direct {v1, v3, v8, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 107
    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 108
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 109
    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private monitorApplicationEvent()V
    .locals 1

    .line 132
    new-instance v0, Lcom/easyvictory/cheto/App$2;

    invoke-direct {v0, p0}, Lcom/easyvictory/cheto/App$2;-><init>(Lcom/easyvictory/cheto/App;)V

    invoke-virtual {p0, v0}, Lcom/easyvictory/cheto/App;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 166
    new-instance v0, Lcom/easyvictory/cheto/App$3;

    invoke-direct {v0, p0}, Lcom/easyvictory/cheto/App$3;-><init>(Lcom/easyvictory/cheto/App;)V

    invoke-static {v0}, Lcom/hack/opensdk/HackApi;->registerApplicationCallback(Lcom/hack/opensdk/HackApi$ApplicationCallback;)V

    return-void
.end method

.method private setCurrentActivityName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-wide v0, -0x439b0102e32061ccL    # -9.105585077011709E-18

    .line 257
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 258
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-wide v0, -0x439b010ee32061ccL    # -9.105505667672904E-18

    .line 259
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 260
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private startLogcat()V
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/easyvictory/cheto/App$1;

    invoke-direct {v1, p0}, Lcom/easyvictory/cheto/App$1;-><init>(Lcom/easyvictory/cheto/App;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 55
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/hack/opensdk/HackApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 79
    invoke-direct {p0}, Lcom/easyvictory/cheto/App;->startLogcat()V

    .line 82
    sput-object p0, Lcom/easyvictory/cheto/App;->sInstance:Lcom/easyvictory/cheto/App;

    .line 83
    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    sput-object p1, Lcom/easyvictory/cheto/App;->mFirebaseAnalytics:Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 114
    invoke-super {p0}, Lcom/hack/opensdk/HackApplication;->onCreate()V

    .line 115
    invoke-static {}, Lcom/easyvictory/cheto/App;->INSTANCE()Lcom/easyvictory/cheto/App;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0034

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/easyvictory/cheto/App;->floatingView:Landroid/view/View;

    .line 116
    invoke-static {}, Lcom/easyvictory/cheto/App;->INSTANCE()Lcom/easyvictory/cheto/App;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0023

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/easyvictory/cheto/App;->controllerView:Landroid/view/View;

    .line 117
    invoke-direct {p0}, Lcom/easyvictory/cheto/App;->initSpinnersSelections()V

    .line 118
    invoke-direct {p0}, Lcom/easyvictory/cheto/App;->monitorApplicationEvent()V

    .line 120
    invoke-virtual {p0}, Lcom/easyvictory/cheto/App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1100ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/easyvictory/cheto/App;->predictionDrawPowerText:Ljava/lang/String;

    .line 121
    invoke-virtual {p0}, Lcom/easyvictory/cheto/App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/easyvictory/cheto/App;->lineThicknessText:Ljava/lang/String;

    .line 122
    invoke-virtual {p0}, Lcom/easyvictory/cheto/App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/easyvictory/cheto/App;->lineTransparencyText:Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Lcom/easyvictory/cheto/App;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/easyvictory/cheto/App;->angleStepSizeText:Ljava/lang/String;

    return-void
.end method
