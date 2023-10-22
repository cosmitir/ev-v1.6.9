.class Lcom/easyvictory/cheto/SettingsActivity$4;
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


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/SettingsActivity;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/easyvictory/cheto/SettingsActivity$4;->this$0:Lcom/easyvictory/cheto/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/easyvictory/cheto/SettingsActivity$4;->this$0:Lcom/easyvictory/cheto/SettingsActivity;

    .line 180
    invoke-static {v0}, Lcom/easyvictory/cheto/SettingsActivity;->access$500(Lcom/easyvictory/cheto/SettingsActivity;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    .line 182
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 184
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 v2, 0x0

    .line 187
    invoke-static {v2}, Lcom/easyvictory/cheto/SettingsActivity;->access$102(Z)Z

    .line 188
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 189
    new-instance v2, Lcom/easyvictory/cheto/SettingsActivity$4$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/easyvictory/cheto/SettingsActivity$4$1;-><init>(Lcom/easyvictory/cheto/SettingsActivity$4;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 196
    :cond_0
    new-instance v1, Lcom/easyvictory/cheto/SettingsActivity$4$2;

    invoke-direct {v1, p0}, Lcom/easyvictory/cheto/SettingsActivity$4$2;-><init>(Lcom/easyvictory/cheto/SettingsActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
