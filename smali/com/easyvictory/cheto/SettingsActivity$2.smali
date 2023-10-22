.class Lcom/easyvictory/cheto/SettingsActivity$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/SettingsActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easyvictory/cheto/SettingsActivity;

.field final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/SettingsActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/easyvictory/cheto/SettingsActivity$2;->this$0:Lcom/easyvictory/cheto/SettingsActivity;

    iput-object p2, p0, Lcom/easyvictory/cheto/SettingsActivity$2;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/easyvictory/cheto/SettingsActivity$2;->this$0:Lcom/easyvictory/cheto/SettingsActivity;

    .line 97
    iget-object v1, p0, Lcom/easyvictory/cheto/SettingsActivity$2;->val$password:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/easyvictory/cheto/SettingsActivity;->access$300(Lcom/easyvictory/cheto/SettingsActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    .line 99
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 101
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 v2, 0x0

    .line 104
    invoke-static {v2}, Lcom/easyvictory/cheto/SettingsActivity;->access$102(Z)Z

    .line 105
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 106
    new-instance v2, Lcom/easyvictory/cheto/SettingsActivity$2$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/easyvictory/cheto/SettingsActivity$2$1;-><init>(Lcom/easyvictory/cheto/SettingsActivity$2;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 113
    :cond_0
    new-instance v1, Lcom/easyvictory/cheto/SettingsActivity$2$2;

    invoke-direct {v1, p0}, Lcom/easyvictory/cheto/SettingsActivity$2$2;-><init>(Lcom/easyvictory/cheto/SettingsActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
