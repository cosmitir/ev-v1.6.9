.class Lcom/easyvictory/cheto/Entry$3;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/Entry;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easyvictory/cheto/Entry;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/Entry;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/easyvictory/cheto/Entry$3;->this$0:Lcom/easyvictory/cheto/Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 133
    :goto_0
    invoke-static {}, Lcom/easyvictory/cheto/Entry;->access$200()Lcom/easyvictory/cheto/ESPView;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    if-nez v0, :cond_0

    .line 135
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 137
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 143
    :cond_0
    :goto_1
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    invoke-static {}, Lcom/easyvictory/cheto/Entry;->getMainActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lcom/easyvictory/cheto/Entry$3$1;

    invoke-direct {v3, p0}, Lcom/easyvictory/cheto/Entry$3$1;-><init>(Lcom/easyvictory/cheto/Entry$3;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 145
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
