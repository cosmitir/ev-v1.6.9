.class Lcom/easyvictory/cheto/SettingsActivity$1$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/SettingsActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/easyvictory/cheto/SettingsActivity$1;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/SettingsActivity$1;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/easyvictory/cheto/SettingsActivity$1$1;->this$1:Lcom/easyvictory/cheto/SettingsActivity$1;

    iput-object p2, p0, Lcom/easyvictory/cheto/SettingsActivity$1$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/easyvictory/cheto/SettingsActivity$1$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/easyvictory/cheto/SettingsActivity$1$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/easyvictory/cheto/SettingsActivity$1$1;->val$result:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
