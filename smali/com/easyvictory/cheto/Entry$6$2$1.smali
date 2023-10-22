.class Lcom/easyvictory/cheto/Entry$6$2$1;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/Entry$6$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/easyvictory/cheto/Entry$6$2;

.field final synthetic val$instance:Ljava/lang/Object;

.field final synthetic val$mainActivityClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/Entry$6$2;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 640
    iput-object p1, p0, Lcom/easyvictory/cheto/Entry$6$2$1;->this$1:Lcom/easyvictory/cheto/Entry$6$2;

    iput-object p2, p0, Lcom/easyvictory/cheto/Entry$6$2$1;->val$mainActivityClass:Ljava/lang/Class;

    iput-object p3, p0, Lcom/easyvictory/cheto/Entry$6$2$1;->val$instance:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 645
    :cond_0
    sget-object v0, Lcom/easyvictory/cheto/Entry;->isAQTaskFinished:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    .line 647
    :try_start_0
    new-instance v0, Lcom/easyvictory/cheto/Entry$6$2$1$1;

    invoke-direct {v0, p0}, Lcom/easyvictory/cheto/Entry$6$2$1$1;-><init>(Lcom/easyvictory/cheto/Entry$6$2$1;)V

    invoke-static {v0}, Lcom/easyvictory/cheto/Entry;->queueEvent(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 695
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, -0x439b020ce32061ccL    # -9.103824836668196E-18

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;)V

    .line 704
    :goto_0
    sget-object v0, Lcom/easyvictory/cheto/Entry;->isAQTaskFinished:[Z

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    const-wide/16 v2, 0x32

    .line 707
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 709
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
