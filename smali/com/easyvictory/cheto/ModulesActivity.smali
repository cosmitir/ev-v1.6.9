.class public Lcom/easyvictory/cheto/ModulesActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ModulesActivity.java"


# static fields
.field private static doubleBackToExitPressedOnce:Z = false

.field static gContext:Landroid/content/Context; = null

.field private static isAnyRequestProcessing:Z = false

.field private static isHackLoaded:Z = false


# instance fields
.field private autoRestart:Landroid/widget/Switch;

.field private facebookWebLogin:Landroid/widget/Switch;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private native XXX(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native XXXXX(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native XXXXXX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native XXXXXXX()V
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 49
    sget-boolean v0, Lcom/easyvictory/cheto/ModulesActivity;->isAnyRequestProcessing:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .line 49
    sput-boolean p0, Lcom/easyvictory/cheto/ModulesActivity;->isAnyRequestProcessing:Z

    return p0
.end method

.method static synthetic access$100(Lcom/easyvictory/cheto/ModulesActivity;)Landroid/widget/Switch;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/easyvictory/cheto/ModulesActivity;->facebookWebLogin:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$200(Lcom/easyvictory/cheto/ModulesActivity;)Landroid/widget/Switch;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/easyvictory/cheto/ModulesActivity;->autoRestart:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$300(Lcom/easyvictory/cheto/ModulesActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/easyvictory/cheto/ModulesActivity;->XXX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400()V
    .locals 0

    .line 49
    invoke-static {}, Lcom/easyvictory/cheto/ModulesActivity;->XXXXXXX()V

    return-void
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    .line 49
    sput-boolean p0, Lcom/easyvictory/cheto/ModulesActivity;->isHackLoaded:Z

    return p0
.end method

.method static synthetic access$602(Z)Z
    .locals 0

    .line 49
    sput-boolean p0, Lcom/easyvictory/cheto/ModulesActivity;->doubleBackToExitPressedOnce:Z

    return p0
.end method

.method private automaticallyLoad()V
    .locals 2

    const v0, 0x7f110026

    const/4 v1, 0x0

    .line 128
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 129
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/easyvictory/cheto/ModulesActivity$4;

    invoke-direct {v1, p0, p0}, Lcom/easyvictory/cheto/ModulesActivity$4;-><init>(Lcom/easyvictory/cheto/ModulesActivity;Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 144
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private checkPin()V
    .locals 2

    const/4 v0, 0x1

    .line 102
    sput-boolean v0, Lcom/easyvictory/cheto/ModulesActivity;->isAnyRequestProcessing:Z

    .line 104
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/easyvictory/cheto/ModulesActivity$3;

    invoke-direct {v1, p0}, Lcom/easyvictory/cheto/ModulesActivity$3;-><init>(Lcom/easyvictory/cheto/ModulesActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 123
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getCredentials()V
    .locals 6

    const-wide v0, -0x439b15bbe32061ccL    # -9.070479531814959E-18

    .line 246
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/easyvictory/cheto/ModulesActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide v2, -0x439b15c7e32061ccL    # -9.070400122476154E-18

    .line 247
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide v4, -0x439b15d0e32061ccL    # -9.07034056547205E-18

    .line 248
    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    :try_start_0
    invoke-direct {p0, v2, v0}, Lcom/easyvictory/cheto/ModulesActivity;->XXXXX(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 253
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/easyvictory/cheto/ModulesActivity;->finishAffinity()V

    .line 255
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :goto_0
    return-void
.end method

.method private getPassword()Ljava/lang/String;
    .locals 3

    const-wide v0, -0x439b15eee32061ccL    # -9.070142042125037E-18

    .line 265
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/easyvictory/cheto/ModulesActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide v1, -0x439b15fae32061ccL    # -9.070062632786232E-18

    .line 266
    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 1

    .line 271
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getUserName()Ljava/lang/String;
    .locals 3

    const-wide v0, -0x439b15d9e32061ccL    # -9.070281008467946E-18

    .line 260
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/easyvictory/cheto/ModulesActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide v1, -0x439b15e5e32061ccL    # -9.070201599129141E-18

    .line 261
    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getValue(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2

    const-wide v0, -0x439b15b2e32061ccL    # -9.070539088819062E-18

    .line 241
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 242
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 281
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method static setValue(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    const-wide v0, -0x439b15a9e32061ccL    # -9.070598645823166E-18

    .line 233
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 234
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 235
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 236
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static showPinInputDialog(Landroid/app/Activity;)V
    .locals 6

    .line 55
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110102

    .line 56
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 59
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x12

    .line 60
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v3, 0x1

    .line 61
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setMaxLines(I)V

    new-array v3, v3, [Landroid/text/InputFilter;

    .line 62
    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 63
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 65
    new-instance v1, Lcom/easyvictory/cheto/ModulesActivity$1;

    invoke-direct {v1, v2, p0}, Lcom/easyvictory/cheto/ModulesActivity$1;-><init>(Landroid/widget/EditText;Landroid/app/Activity;)V

    const p0, 0x7f1100dd

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 92
    new-instance p0, Lcom/easyvictory/cheto/ModulesActivity$2;

    invoke-direct {p0}, Lcom/easyvictory/cheto/ModulesActivity$2;-><init>()V

    const v1, 0x7f11006d

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 97
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method cleanAllRunningPackages()V
    .locals 5

    const/4 v0, 0x0

    .line 308
    :try_start_0
    invoke-static {v0, v0}, Lcom/hack/opensdk/HackApi;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 310
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-wide v3, -0x439b160ce32061ccL    # -9.069943518778024E-18

    .line 312
    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/hack/opensdk/HackApi;->killApplication(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 316
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method facebookWebLoginChangeCallback(Z)V
    .locals 6

    const-wide v0, -0x439b1543e32061ccL    # -9.07127362520301E-18

    .line 148
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    const v0, 0x7f09003b

    .line 152
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/easyvictory/cheto/ModulesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 154
    invoke-static {p0}, Lcom/easyvictory/cheto/MainActivity;->getListOfInstalledBrowsers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 156
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 157
    invoke-static {v1, v3, v2}, Lcom/hack/opensdk/HackApi;->installPackageFromHost(Ljava/lang/String;IZ)I

    goto :goto_0

    :cond_0
    const-wide v1, -0x439b1557e32061ccL    # -9.071141276305001E-18

    .line 160
    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/hack/opensdk/HackApi;->uninstallPackage(Ljava/lang/String;I)I

    const/16 p1, 0x8

    .line 162
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 166
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 167
    invoke-static {v1, v3}, Lcom/hack/opensdk/HackApi;->uninstallPackage(Ljava/lang/String;I)I

    goto :goto_1

    :cond_2
    const-wide v4, -0x439b156be32061ccL    # -9.071008927406993E-18

    .line 170
    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3, v2}, Lcom/hack/opensdk/HackApi;->installPackageFromHost(Ljava/lang/String;IZ)I

    .line 172
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-void

    :catchall_0
    move-exception p1

    .line 176
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method isProgressBarVisible()Z
    .locals 1

    const v0, 0x7f0901bb

    .line 326
    invoke-virtual {p0, v0}, Lcom/easyvictory/cheto/ModulesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method killOtherProcesses()V
    .locals 4

    const-wide v0, -0x439b1603e32061ccL    # -9.070003075782128E-18

    .line 292
    :try_start_0
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/easyvictory/cheto/ModulesActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 293
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 294
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 295
    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/easyvictory/cheto/ModulesActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 298
    :cond_0
    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 302
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 579
    sget-boolean v0, Lcom/easyvictory/cheto/ModulesActivity;->doubleBackToExitPressedOnce:Z

    if-eqz v0, :cond_0

    .line 580
    invoke-virtual {p0}, Lcom/easyvictory/cheto/ModulesActivity;->finishAffinity()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 584
    sput-boolean v0, Lcom/easyvictory/cheto/ModulesActivity;->doubleBackToExitPressedOnce:Z

    const v0, 0x7f110043

    const/4 v1, 0x0

    .line 585
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 587
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/easyvictory/cheto/ModulesActivity$8;

    invoke-direct {v1, p0}, Lcom/easyvictory/cheto/ModulesActivity$8;-><init>(Lcom/easyvictory/cheto/ModulesActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 343
    invoke-virtual {p0}, Lcom/easyvictory/cheto/ModulesActivity;->isProgressBarVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 347
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-wide v0, -0x439b16a2e32061ccL    # -9.06895090204296E-18

    .line 541
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/easyvictory/cheto/MainActivity;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1
    const-wide v0, -0x439b16bbe32061ccL    # -9.06878546592045E-18

    .line 544
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/easyvictory/cheto/MainActivity;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 524
    :sswitch_2
    invoke-virtual {p0}, Lcom/easyvictory/cheto/ModulesActivity;->finishAffinity()V

    .line 525
    invoke-virtual {p0}, Lcom/easyvictory/cheto/ModulesActivity;->finishAndRemoveTask()V

    const-wide v2, -0x439b1699e32061ccL    # -9.069010459047064E-18

    .line 526
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/ModulesActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    if-eqz p1, :cond_1

    .line 528
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 529
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 530
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$AppTask;

    invoke-virtual {v2, v0}, Landroid/app/ActivityManager$AppTask;->setExcludeFromRecents(Z)V

    .line 531
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$AppTask;

    invoke-virtual {p1}, Landroid/app/ActivityManager$AppTask;->finishAndRemoveTask()V

    .line 535
    :cond_1
    invoke-virtual {p0}, Lcom/easyvictory/cheto/ModulesActivity;->cleanAllRunningPackages()V

    .line 536
    invoke-virtual {p0}, Lcom/easyvictory/cheto/ModulesActivity;->killOtherProcesses()V

    .line 537
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 538
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_0

    .line 349
    :sswitch_3
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/easyvictory/cheto/SettingsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 350
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/ModulesActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_4
    const-wide v2, -0x439b16dae32061ccL    # -9.068580325128537E-18

    .line 550
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    const-wide v2, -0x439b16eee32061ccL    # -9.068447976230528E-18

    .line 551
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/easyvictory/cheto/ModulesActivity;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const p1, 0x7f1100ee

    .line 552
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 555
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-wide v0, -0x439b1702e32061ccL    # -9.06831562733252E-18

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x439b171de32061ccL    # -9.068136956320208E-18

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/ModulesActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 557
    :catch_0
    new-instance p1, Landroid/content/Intent;

    const-wide v0, -0x439b1745e32061ccL    # -9.067872258524192E-18

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x439b1760e32061ccL    # -9.06769358751188E-18

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/ModulesActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2
    const-wide v2, -0x439b17a2e32061ccL    # -9.067256836148452E-18

    .line 563
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1, v0}, Lcom/hack/opensdk/HackApi;->installPackageFromHost(Ljava/lang/String;IZ)I

    .line 564
    invoke-static {}, Lcom/easyvictory/cheto/App;->INSTANCE()Lcom/easyvictory/cheto/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/easyvictory/cheto/App;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-wide v2, -0x439b17b6e32061ccL    # -9.067124487250444E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x200000

    .line 565
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 566
    invoke-static {p1, v1}, Lcom/hack/opensdk/HackApi;->startActivity(Landroid/content/Intent;I)I

    goto/16 :goto_0

    .line 571
    :sswitch_5
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/easyvictory/cheto/AutoQueue;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 572
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/ModulesActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 353
    :sswitch_6
    sget-boolean p1, Lcom/easyvictory/cheto/ModulesActivity;->isAnyRequestProcessing:Z

    if-eqz p1, :cond_3

    const p1, 0x7f1100ec

    .line 354
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 358
    :cond_3
    invoke-static {}, Lcom/easyvictory/cheto/Constant;->getGamePackageName()Ljava/lang/String;

    move-result-object p1

    .line 359
    invoke-static {}, Lcom/easyvictory/cheto/Constant;->getGamePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/easyvictory/cheto/ModulesActivity;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const v0, 0x7f1100ed

    .line 360
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 363
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-wide v1, -0x439b1618e32061ccL    # -9.069864109439219E-18

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, -0x439b1633e32061ccL    # -9.069685438426908E-18

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/easyvictory/cheto/ModulesActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 365
    :catch_1
    new-instance v0, Landroid/content/Intent;

    const-wide v1, -0x439b1648e32061ccL    # -9.069546472083999E-18

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, -0x439b1663e32061ccL    # -9.069367801071687E-18

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/easyvictory/cheto/ModulesActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-wide v2, -0x439b1692e32061ccL

    .line 371
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    .line 372
    invoke-direct {p0, p0, p1}, Lcom/easyvictory/cheto/ModulesActivity;->getPkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 373
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 374
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 378
    :cond_5
    sput-boolean v0, Lcom/easyvictory/cheto/ModulesActivity;->isAnyRequestProcessing:Z

    .line 379
    invoke-virtual {p0}, Lcom/easyvictory/cheto/ModulesActivity;->switchProgressBar()V

    const p1, 0x7f110063

    .line 381
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 383
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/easyvictory/cheto/ModulesActivity$7;

    invoke-direct {v0, p0, v2, p0}, Lcom/easyvictory/cheto/ModulesActivity$7;-><init>(Lcom/easyvictory/cheto/ModulesActivity;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 516
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09002e -> :sswitch_6
        0x7f090032 -> :sswitch_5
        0x7f09003b -> :sswitch_4
        0x7f090052 -> :sswitch_3
        0x7f090058 -> :sswitch_2
        0x7f090125 -> :sswitch_1
        0x7f090126 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 182
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 183
    sput-object p0, Lcom/easyvictory/cheto/ModulesActivity;->gContext:Landroid/content/Context;

    const p1, 0x7f0c0020

    .line 184
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/ModulesActivity;->setContentView(I)V

    const p1, 0x7f090172

    .line 188
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/ModulesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 190
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 191
    new-instance v1, Ljava/util/Date;

    const-wide v2, -0x439b157fe32061ccL

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/easyvictory/cheto/ModulesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f11010d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide v3, -0x439b158de32061ccL    # -9.070783934280378E-18

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090126

    .line 195
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/ModulesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f090125

    .line 196
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/ModulesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f090023

    .line 199
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/ModulesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/easyvictory/cheto/ModulesActivity;->facebookWebLogin:Landroid/widget/Switch;

    .line 200
    sget-object v0, Lcom/easyvictory/cheto/ModulesActivity;->gContext:Landroid/content/Context;

    const-wide v1, -0x439b158fe32061ccL    # -9.070770699390577E-18

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/easyvictory/cheto/ModulesActivity;->getValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 201
    iget-object p1, p0, Lcom/easyvictory/cheto/ModulesActivity;->facebookWebLogin:Landroid/widget/Switch;

    new-instance v0, Lcom/easyvictory/cheto/ModulesActivity$5;

    invoke-direct {v0, p0}, Lcom/easyvictory/cheto/ModulesActivity$5;-><init>(Lcom/easyvictory/cheto/ModulesActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 209
    iget-object p1, p0, Lcom/easyvictory/cheto/ModulesActivity;->facebookWebLogin:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/ModulesActivity;->facebookWebLoginChangeCallback(Z)V

    const p1, 0x7f09000b

    .line 211
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/ModulesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/easyvictory/cheto/ModulesActivity;->autoRestart:Landroid/widget/Switch;

    .line 212
    sget-object v0, Lcom/easyvictory/cheto/ModulesActivity;->gContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/widget/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/easyvictory/cheto/ModulesActivity;->getValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 213
    iget-object p1, p0, Lcom/easyvictory/cheto/ModulesActivity;->autoRestart:Landroid/widget/Switch;

    new-instance v0, Lcom/easyvictory/cheto/ModulesActivity$6;

    invoke-direct {v0, p0}, Lcom/easyvictory/cheto/ModulesActivity$6;-><init>(Lcom/easyvictory/cheto/ModulesActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 220
    invoke-direct {p0}, Lcom/easyvictory/cheto/ModulesActivity;->getCredentials()V

    const-wide v0, -0x439b15a0e32061ccL    # -9.07065820282727E-18

    .line 221
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Lcom/easyvictory/cheto/ModulesActivity;->getValue(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 222
    invoke-direct {p0}, Lcom/easyvictory/cheto/ModulesActivity;->checkPin()V

    goto :goto_0

    .line 225
    :cond_0
    iget-object p1, p0, Lcom/easyvictory/cheto/ModulesActivity;->autoRestart:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 226
    invoke-direct {p0}, Lcom/easyvictory/cheto/ModulesActivity;->automaticallyLoad()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 322
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method switchProgressBar()V
    .locals 4

    const v0, 0x7f0901bb

    .line 330
    invoke-virtual {p0, v0}, Lcom/easyvictory/cheto/ModulesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09002e

    .line 331
    invoke-virtual {p0, v1}, Lcom/easyvictory/cheto/ModulesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 332
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    .line 333
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const-wide v2, -0x439b1617e32061ccL    # -9.06987072688412E-18

    .line 334
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 337
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const/high16 v0, 0x7f110000

    .line 338
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    :goto_0
    return-void
.end method
