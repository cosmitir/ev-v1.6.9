.class Lcom/easyvictory/cheto/ModulesActivity$7;
.super Ljava/lang/Object;
.source "ModulesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/ModulesActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easyvictory/cheto/ModulesActivity;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$finalVersionName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/ModulesActivity;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 383
    iput-object p1, p0, Lcom/easyvictory/cheto/ModulesActivity$7;->this$0:Lcom/easyvictory/cheto/ModulesActivity;

    iput-object p2, p0, Lcom/easyvictory/cheto/ModulesActivity$7;->val$finalVersionName:Ljava/lang/String;

    iput-object p3, p0, Lcom/easyvictory/cheto/ModulesActivity$7;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 386
    iget-object v0, p0, Lcom/easyvictory/cheto/ModulesActivity$7;->this$0:Lcom/easyvictory/cheto/ModulesActivity;

    iget-object v1, p0, Lcom/easyvictory/cheto/ModulesActivity$7;->val$finalVersionName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/easyvictory/cheto/ModulesActivity;->access$300(Lcom/easyvictory/cheto/ModulesActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 387
    invoke-static {v1}, Lcom/easyvictory/cheto/ModulesActivity;->access$002(Z)Z

    .line 388
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 389
    iget-object v2, p0, Lcom/easyvictory/cheto/ModulesActivity$7;->val$activity:Landroid/app/Activity;

    new-instance v3, Lcom/easyvictory/cheto/ModulesActivity$7$1;

    invoke-direct {v3, p0, v0}, Lcom/easyvictory/cheto/ModulesActivity$7$1;-><init>(Lcom/easyvictory/cheto/ModulesActivity$7;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-wide v2, -0x439b152ae32061ccL    # -9.07143906132552E-18

    .line 395
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    invoke-static {}, Lcom/easyvictory/cheto/Constant;->getGamePackageName()Ljava/lang/String;

    move-result-object v0

    const-wide v2, -0x439b1532e32061ccL    # -9.071386121766317E-18

    .line 397
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/hack/opensdk/HackApi;->killApplication(ILjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    .line 399
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x1

    .line 404
    invoke-static {v0, v1, v2}, Lcom/hack/opensdk/HackApi;->installPackageFromHost(Ljava/lang/String;IZ)I

    .line 405
    invoke-static {}, Lcom/easyvictory/cheto/App;->INSTANCE()Lcom/easyvictory/cheto/App;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easyvictory/cheto/App;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 406
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v3, 0x200000

    .line 408
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 409
    invoke-static {v0, v1}, Lcom/hack/opensdk/HackApi;->startActivity(Landroid/content/Intent;I)I

    const-wide/16 v0, 0xfa0

    .line 442
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 444
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const-wide v0, -0x439b1538e32061ccL    # -9.071346417096914E-18

    .line 447
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 448
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/easyvictory/cheto/ModulesActivity$7$3;

    invoke-direct {v1, p0}, Lcom/easyvictory/cheto/ModulesActivity$7$3;-><init>(Lcom/easyvictory/cheto/ModulesActivity$7;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 489
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 491
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/easyvictory/cheto/ModulesActivity$7$4;

    invoke-direct {v1, p0}, Lcom/easyvictory/cheto/ModulesActivity$7$4;-><init>(Lcom/easyvictory/cheto/ModulesActivity$7;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 505
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 506
    invoke-static {v2}, Lcom/easyvictory/cheto/ModulesActivity;->access$502(Z)Z

    goto :goto_1

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/easyvictory/cheto/ModulesActivity$7;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/easyvictory/cheto/ModulesActivity$7$2;

    invoke-direct {v1, p0}, Lcom/easyvictory/cheto/ModulesActivity$7$2;-><init>(Lcom/easyvictory/cheto/ModulesActivity$7;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catch_1
    move-exception v0

    .line 401
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 510
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/easyvictory/cheto/ModulesActivity$7;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/easyvictory/cheto/ModulesActivity$7$5;

    invoke-direct {v1, p0}, Lcom/easyvictory/cheto/ModulesActivity$7$5;-><init>(Lcom/easyvictory/cheto/ModulesActivity$7;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
