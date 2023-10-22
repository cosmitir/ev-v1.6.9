.class Lcom/easyvictory/cheto/ModulesActivity$7$4;
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

    .line 491
    iput-object p1, p0, Lcom/easyvictory/cheto/ModulesActivity$7$4;->this$1:Lcom/easyvictory/cheto/ModulesActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 494
    invoke-static {}, Lcom/easyvictory/cheto/ModulesActivity;->access$400()V

    const-wide v0, -0x439b150ae32061ccL    # -9.071650819562334E-18

    .line 495
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x439b1525e32061ccL    # -9.071472148550022E-18

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v0, v1}, Lcom/hack/opensdk/HackApi;->killApplication(ILjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    .line 497
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    iget-object v0, p0, Lcom/easyvictory/cheto/ModulesActivity$7$4;->this$1:Lcom/easyvictory/cheto/ModulesActivity$7;

    iget-object v0, v0, Lcom/easyvictory/cheto/ModulesActivity$7;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finishAffinity()V

    .line 503
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    return-void

    :catch_0
    move-exception v0

    .line 499
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
