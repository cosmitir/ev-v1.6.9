.class Lcom/easyvictory/cheto/AutoQueue$4;
.super Landroid/os/Handler;
.source "AutoQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easyvictory/cheto/AutoQueue;
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

    .line 165
    iput-object p1, p0, Lcom/easyvictory/cheto/AutoQueue$4;->this$0:Lcom/easyvictory/cheto/AutoQueue;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 168
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 169
    iget-object p1, p0, Lcom/easyvictory/cheto/AutoQueue$4;->this$0:Lcom/easyvictory/cheto/AutoQueue;

    invoke-static {p1}, Lcom/easyvictory/cheto/AutoQueue;->access$400(Lcom/easyvictory/cheto/AutoQueue;)I

    move-result p1

    .line 170
    iget-object v0, p0, Lcom/easyvictory/cheto/AutoQueue$4;->this$0:Lcom/easyvictory/cheto/AutoQueue;

    iget-object v0, v0, Lcom/easyvictory/cheto/AutoQueue;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void
.end method
