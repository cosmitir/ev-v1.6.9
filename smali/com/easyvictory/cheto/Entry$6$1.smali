.class Lcom/easyvictory/cheto/Entry$6$1;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/Entry$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easyvictory/cheto/Entry$6;

.field final synthetic val$finalActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/Entry$6;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 590
    iput-object p1, p0, Lcom/easyvictory/cheto/Entry$6$1;->this$0:Lcom/easyvictory/cheto/Entry$6;

    iput-object p2, p0, Lcom/easyvictory/cheto/Entry$6$1;->val$finalActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x1

    .line 594
    :try_start_0
    invoke-static {}, Lcom/easyvictory/cheto/FloatLogo;->getInstance()Lcom/easyvictory/cheto/FloatLogo;

    move-result-object v1

    .line 595
    iget-object v2, p0, Lcom/easyvictory/cheto/Entry$6$1;->val$finalActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/easyvictory/cheto/FloatLogo;->setContext(Landroid/content/Context;)V

    .line 596
    sget-object v2, Lcom/easyvictory/cheto/Entry;->floatingView:Landroid/view/View;

    invoke-static {}, Lcom/easyvictory/cheto/Entry;->access$600()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/easyvictory/cheto/Entry;->access$700()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/easyvictory/cheto/Entry;->access$800()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/easyvictory/cheto/Entry;->access$900()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/easyvictory/cheto/FloatLogo;->onCreate(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 598
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;Z)V

    .line 602
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/easyvictory/cheto/AutoController;->getInstance()Lcom/easyvictory/cheto/AutoController;

    move-result-object v1

    .line 603
    iget-object v2, p0, Lcom/easyvictory/cheto/Entry$6$1;->val$finalActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/easyvictory/cheto/AutoController;->setContext(Landroid/content/Context;)V

    .line 604
    sget-object v2, Lcom/easyvictory/cheto/Entry;->controllerView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/easyvictory/cheto/AutoController;->onCreate(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 606
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;Z)V

    .line 610
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/easyvictory/cheto/Entry$6$1;->val$finalActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/easyvictory/cheto/Entry;->addOverlay(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    .line 612
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/easyvictory/cheto/Logger;->d(Ljava/lang/String;Z)V

    .line 613
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :goto_2
    return-void
.end method
