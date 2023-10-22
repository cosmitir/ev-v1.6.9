.class Lcom/easyvictory/cheto/ModulesActivity$4;
.super Ljava/lang/Object;
.source "ModulesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/ModulesActivity;->automaticallyLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easyvictory/cheto/ModulesActivity;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/ModulesActivity;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/easyvictory/cheto/ModulesActivity$4;->this$0:Lcom/easyvictory/cheto/ModulesActivity;

    iput-object p2, p0, Lcom/easyvictory/cheto/ModulesActivity$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 133
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/easyvictory/cheto/ModulesActivity$4;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/easyvictory/cheto/ModulesActivity$4$1;

    invoke-direct {v1, p0}, Lcom/easyvictory/cheto/ModulesActivity$4$1;-><init>(Lcom/easyvictory/cheto/ModulesActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
