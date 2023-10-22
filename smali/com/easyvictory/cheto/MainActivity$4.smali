.class Lcom/easyvictory/cheto/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/MainActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easyvictory/cheto/MainActivity;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/MainActivity;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/easyvictory/cheto/MainActivity$4;->this$0:Lcom/easyvictory/cheto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x1f4

    .line 429
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    iget-object v0, p0, Lcom/easyvictory/cheto/MainActivity$4;->this$0:Lcom/easyvictory/cheto/MainActivity;

    iget-object v0, v0, Lcom/easyvictory/cheto/MainActivity;->gActivity:Landroid/app/Activity;

    new-instance v1, Lcom/easyvictory/cheto/MainActivity$4$1;

    invoke-direct {v1, p0}, Lcom/easyvictory/cheto/MainActivity$4$1;-><init>(Lcom/easyvictory/cheto/MainActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    .line 431
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
