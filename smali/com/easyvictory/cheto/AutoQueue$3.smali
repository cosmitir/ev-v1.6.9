.class Lcom/easyvictory/cheto/AutoQueue$3;
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

    .line 118
    iput-object p1, p0, Lcom/easyvictory/cheto/AutoQueue$3;->this$0:Lcom/easyvictory/cheto/AutoQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x64

    .line 122
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    iget-object v0, p0, Lcom/easyvictory/cheto/AutoQueue$3;->this$0:Lcom/easyvictory/cheto/AutoQueue;

    new-instance v1, Lcom/easyvictory/cheto/AutoQueue$3$1;

    invoke-direct {v1, p0}, Lcom/easyvictory/cheto/AutoQueue$3$1;-><init>(Lcom/easyvictory/cheto/AutoQueue$3;)V

    invoke-virtual {v0, v1}, Lcom/easyvictory/cheto/AutoQueue;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    .line 124
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
