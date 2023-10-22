.class Lcom/easyvictory/cheto/Entry$6;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/Entry;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 579
    :cond_0
    invoke-static {}, Lcom/easyvictory/cheto/Entry;->getMainActivity()Landroid/app/Activity;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    .line 581
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 587
    invoke-static {v0}, Lcom/easyvictory/cheto/Entry;->access$502(Landroid/app/Activity;)Landroid/app/Activity;

    .line 590
    new-instance v1, Lcom/easyvictory/cheto/Entry$6$1;

    invoke-direct {v1, p0, v0}, Lcom/easyvictory/cheto/Entry$6$1;-><init>(Lcom/easyvictory/cheto/Entry$6;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 618
    invoke-static {}, Lcom/easyvictory/cheto/Entry;->access$500()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/easyvictory/cheto/Entry$6$2;

    invoke-direct {v1, p0}, Lcom/easyvictory/cheto/Entry$6$2;-><init>(Lcom/easyvictory/cheto/Entry$6;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    .line 583
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
