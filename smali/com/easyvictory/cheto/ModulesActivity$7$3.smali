.class Lcom/easyvictory/cheto/ModulesActivity$7$3;
.super Ljava/lang/Object;
.source "ModulesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/ModulesActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/easyvictory/cheto/ModulesActivity$7;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/ModulesActivity$7;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/easyvictory/cheto/ModulesActivity$7$3;->this$1:Lcom/easyvictory/cheto/ModulesActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 452
    :catch_0
    :goto_0
    invoke-static {}, Lcom/easyvictory/cheto/ModulesActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x7d0

    .line 454
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 456
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 460
    :cond_0
    invoke-static {}, Lcom/easyvictory/cheto/Constant;->getGamePackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/hack/opensdk/HackApi;->hasAnyRunningActivity(ILjava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    const-wide/16 v2, 0xfa0

    .line 463
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 468
    invoke-static {}, Lcom/easyvictory/cheto/Constant;->getGamePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hack/opensdk/HackApi;->hasAnyRunningActivity(ILjava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 470
    iget-object v0, p0, Lcom/easyvictory/cheto/ModulesActivity$7$3;->this$1:Lcom/easyvictory/cheto/ModulesActivity$7;

    iget-object v0, v0, Lcom/easyvictory/cheto/ModulesActivity$7;->this$0:Lcom/easyvictory/cheto/ModulesActivity;

    invoke-static {v0}, Lcom/easyvictory/cheto/ModulesActivity;->access$200(Lcom/easyvictory/cheto/ModulesActivity;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/easyvictory/cheto/ModulesActivity$7$3;->this$1:Lcom/easyvictory/cheto/ModulesActivity$7;

    iget-object v2, v2, Lcom/easyvictory/cheto/ModulesActivity$7;->val$activity:Landroid/app/Activity;

    const-class v3, Lcom/easyvictory/cheto/Restart;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 473
    iget-object v2, p0, Lcom/easyvictory/cheto/ModulesActivity$7$3;->this$1:Lcom/easyvictory/cheto/ModulesActivity$7;

    iget-object v2, v2, Lcom/easyvictory/cheto/ModulesActivity$7;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/easyvictory/cheto/ModulesActivity$7$3;->this$1:Lcom/easyvictory/cheto/ModulesActivity$7;

    iget-object v0, v0, Lcom/easyvictory/cheto/ModulesActivity$7;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAffinity()V

    .line 477
    iget-object v0, p0, Lcom/easyvictory/cheto/ModulesActivity$7$3;->this$1:Lcom/easyvictory/cheto/ModulesActivity$7;

    iget-object v0, v0, Lcom/easyvictory/cheto/ModulesActivity$7;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 478
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 479
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    :catch_2
    move-exception v0

    .line 465
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :goto_1
    const-wide/16 v0, 0x3e8

    .line 484
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
