.class Lcom/easyvictory/cheto/AutoQueue$3$1;
.super Ljava/lang/Object;
.source "AutoQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/AutoQueue$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/easyvictory/cheto/AutoQueue$3;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/AutoQueue$3;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/easyvictory/cheto/AutoQueue$3$1;->this$1:Lcom/easyvictory/cheto/AutoQueue$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/easyvictory/cheto/AutoQueue$3$1;->this$1:Lcom/easyvictory/cheto/AutoQueue$3;

    iget-object v0, v0, Lcom/easyvictory/cheto/AutoQueue$3;->this$0:Lcom/easyvictory/cheto/AutoQueue;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/easyvictory/cheto/AutoQueue$3$1;->this$1:Lcom/easyvictory/cheto/AutoQueue$3;

    iget-object v2, v2, Lcom/easyvictory/cheto/AutoQueue$3;->this$0:Lcom/easyvictory/cheto/AutoQueue;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/easyvictory/cheto/AutoQueue;->progressDialog:Landroid/app/ProgressDialog;

    .line 131
    iget-object v0, p0, Lcom/easyvictory/cheto/AutoQueue$3$1;->this$1:Lcom/easyvictory/cheto/AutoQueue$3;

    iget-object v0, v0, Lcom/easyvictory/cheto/AutoQueue$3;->this$0:Lcom/easyvictory/cheto/AutoQueue;

    iget-object v0, v0, Lcom/easyvictory/cheto/AutoQueue;->progressDialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 132
    iget-object v0, p0, Lcom/easyvictory/cheto/AutoQueue$3$1;->this$1:Lcom/easyvictory/cheto/AutoQueue$3;

    iget-object v0, v0, Lcom/easyvictory/cheto/AutoQueue$3;->this$0:Lcom/easyvictory/cheto/AutoQueue;

    iget-object v0, v0, Lcom/easyvictory/cheto/AutoQueue;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Downloading...."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/easyvictory/cheto/AutoQueue$3$1;->this$1:Lcom/easyvictory/cheto/AutoQueue$3;

    iget-object v0, v0, Lcom/easyvictory/cheto/AutoQueue$3;->this$0:Lcom/easyvictory/cheto/AutoQueue;

    iget-object v0, v0, Lcom/easyvictory/cheto/AutoQueue;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "AutoQueue"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/easyvictory/cheto/AutoQueue$3$1;->this$1:Lcom/easyvictory/cheto/AutoQueue$3;

    iget-object v0, v0, Lcom/easyvictory/cheto/AutoQueue$3;->this$0:Lcom/easyvictory/cheto/AutoQueue;

    iget-object v0, v0, Lcom/easyvictory/cheto/AutoQueue;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 135
    iget-object v0, p0, Lcom/easyvictory/cheto/AutoQueue$3$1;->this$1:Lcom/easyvictory/cheto/AutoQueue$3;

    iget-object v0, v0, Lcom/easyvictory/cheto/AutoQueue$3;->this$0:Lcom/easyvictory/cheto/AutoQueue;

    iget-object v0, v0, Lcom/easyvictory/cheto/AutoQueue;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 136
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/easyvictory/cheto/AutoQueue$3$1$1;

    invoke-direct {v1, p0}, Lcom/easyvictory/cheto/AutoQueue$3$1$1;-><init>(Lcom/easyvictory/cheto/AutoQueue$3$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 153
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
