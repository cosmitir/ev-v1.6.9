.class Lcom/easyvictory/cheto/AutoQueue$3$1$1;
.super Ljava/lang/Object;
.source "AutoQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/AutoQueue$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/easyvictory/cheto/AutoQueue$3$1;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/AutoQueue$3$1;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/easyvictory/cheto/AutoQueue$3$1$1;->this$2:Lcom/easyvictory/cheto/AutoQueue$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 140
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/easyvictory/cheto/AutoQueue$3$1$1;->this$2:Lcom/easyvictory/cheto/AutoQueue$3$1;

    iget-object v0, v0, Lcom/easyvictory/cheto/AutoQueue$3$1;->this$1:Lcom/easyvictory/cheto/AutoQueue$3;

    iget-object v0, v0, Lcom/easyvictory/cheto/AutoQueue$3;->this$0:Lcom/easyvictory/cheto/AutoQueue;

    iget-object v0, v0, Lcom/easyvictory/cheto/AutoQueue;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/easyvictory/cheto/AutoQueue$3$1$1;->this$2:Lcom/easyvictory/cheto/AutoQueue$3$1;

    iget-object v1, v1, Lcom/easyvictory/cheto/AutoQueue$3$1;->this$1:Lcom/easyvictory/cheto/AutoQueue$3;

    iget-object v1, v1, Lcom/easyvictory/cheto/AutoQueue$3;->this$0:Lcom/easyvictory/cheto/AutoQueue;

    iget-object v1, v1, Lcom/easyvictory/cheto/AutoQueue;->progressDialog:Landroid/app/ProgressDialog;

    .line 141
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    const-wide/16 v0, 0x32

    .line 142
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 143
    iget-object v0, p0, Lcom/easyvictory/cheto/AutoQueue$3$1$1;->this$2:Lcom/easyvictory/cheto/AutoQueue$3$1;

    iget-object v0, v0, Lcom/easyvictory/cheto/AutoQueue$3$1;->this$1:Lcom/easyvictory/cheto/AutoQueue$3;

    iget-object v0, v0, Lcom/easyvictory/cheto/AutoQueue$3;->this$0:Lcom/easyvictory/cheto/AutoQueue;

    iget-object v0, v0, Lcom/easyvictory/cheto/AutoQueue;->handle:Landroid/os/Handler;

    iget-object v1, p0, Lcom/easyvictory/cheto/AutoQueue$3$1$1;->this$2:Lcom/easyvictory/cheto/AutoQueue$3$1;

    iget-object v1, v1, Lcom/easyvictory/cheto/AutoQueue$3$1;->this$1:Lcom/easyvictory/cheto/AutoQueue$3;

    iget-object v1, v1, Lcom/easyvictory/cheto/AutoQueue$3;->this$0:Lcom/easyvictory/cheto/AutoQueue;

    iget-object v1, v1, Lcom/easyvictory/cheto/AutoQueue;->handle:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 144
    iget-object v0, p0, Lcom/easyvictory/cheto/AutoQueue$3$1$1;->this$2:Lcom/easyvictory/cheto/AutoQueue$3$1;

    iget-object v0, v0, Lcom/easyvictory/cheto/AutoQueue$3$1;->this$1:Lcom/easyvictory/cheto/AutoQueue$3;

    iget-object v0, v0, Lcom/easyvictory/cheto/AutoQueue$3;->this$0:Lcom/easyvictory/cheto/AutoQueue;

    iget-object v0, v0, Lcom/easyvictory/cheto/AutoQueue;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/easyvictory/cheto/AutoQueue$3$1$1;->this$2:Lcom/easyvictory/cheto/AutoQueue$3$1;

    iget-object v1, v1, Lcom/easyvictory/cheto/AutoQueue$3$1;->this$1:Lcom/easyvictory/cheto/AutoQueue$3;

    iget-object v1, v1, Lcom/easyvictory/cheto/AutoQueue$3;->this$0:Lcom/easyvictory/cheto/AutoQueue;

    iget-object v1, v1, Lcom/easyvictory/cheto/AutoQueue;->progressDialog:Landroid/app/ProgressDialog;

    .line 145
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getMax()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/easyvictory/cheto/AutoQueue$3$1$1;->this$2:Lcom/easyvictory/cheto/AutoQueue$3$1;

    iget-object v0, v0, Lcom/easyvictory/cheto/AutoQueue$3$1;->this$1:Lcom/easyvictory/cheto/AutoQueue$3;

    iget-object v0, v0, Lcom/easyvictory/cheto/AutoQueue$3;->this$0:Lcom/easyvictory/cheto/AutoQueue;

    iget-object v0, v0, Lcom/easyvictory/cheto/AutoQueue;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method
