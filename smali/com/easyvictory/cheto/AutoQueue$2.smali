.class Lcom/easyvictory/cheto/AutoQueue$2;
.super Ljava/lang/Object;
.source "AutoQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/AutoQueue;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easyvictory/cheto/AutoQueue;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/AutoQueue;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/easyvictory/cheto/AutoQueue$2;->this$0:Lcom/easyvictory/cheto/AutoQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 86
    iget-object v0, p0, Lcom/easyvictory/cheto/AutoQueue$2;->this$0:Lcom/easyvictory/cheto/AutoQueue;

    .line 87
    invoke-static {v0}, Lcom/easyvictory/cheto/AutoQueue;->access$300(Lcom/easyvictory/cheto/AutoQueue;)Ljava/lang/String;

    move-result-object v1

    .line 88
    iget-object v2, p0, Lcom/easyvictory/cheto/AutoQueue$2;->this$0:Lcom/easyvictory/cheto/AutoQueue;

    invoke-static {v2}, Lcom/easyvictory/cheto/AutoQueue;->access$400(Lcom/easyvictory/cheto/AutoQueue;)I

    move-result v2

    const/16 v3, 0x64

    if-eq v2, v3, :cond_1

    .line 90
    :goto_0
    iget-object v2, p0, Lcom/easyvictory/cheto/AutoQueue$2;->this$0:Lcom/easyvictory/cheto/AutoQueue;

    iget-object v2, v2, Lcom/easyvictory/cheto/AutoQueue;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v2, :cond_0

    const-wide/16 v4, 0x64

    .line 92
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 94
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/easyvictory/cheto/AutoQueue$2;->this$0:Lcom/easyvictory/cheto/AutoQueue;

    iget-object v2, v2, Lcom/easyvictory/cheto/AutoQueue;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setProgress(I)V

    :cond_1
    const/4 v2, 0x0

    .line 101
    invoke-static {v2}, Lcom/easyvictory/cheto/AutoQueue;->access$102(Z)Z

    .line 102
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 103
    new-instance v2, Lcom/easyvictory/cheto/AutoQueue$2$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/easyvictory/cheto/AutoQueue$2$1;-><init>(Lcom/easyvictory/cheto/AutoQueue$2;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 110
    :cond_2
    new-instance v1, Lcom/easyvictory/cheto/AutoQueue$2$2;

    invoke-direct {v1, p0}, Lcom/easyvictory/cheto/AutoQueue$2$2;-><init>(Lcom/easyvictory/cheto/AutoQueue$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
