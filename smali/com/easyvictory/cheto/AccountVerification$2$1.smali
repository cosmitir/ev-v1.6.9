.class Lcom/easyvictory/cheto/AccountVerification$2$1;
.super Ljava/lang/Object;
.source "AccountVerification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/AccountVerification$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/easyvictory/cheto/AccountVerification$2;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/AccountVerification$2;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/easyvictory/cheto/AccountVerification$2$1;->this$1:Lcom/easyvictory/cheto/AccountVerification$2;

    iput-object p2, p0, Lcom/easyvictory/cheto/AccountVerification$2$1;->val$result:Ljava/lang/String;

    iput-object p3, p0, Lcom/easyvictory/cheto/AccountVerification$2$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 95
    iget-object v0, p0, Lcom/easyvictory/cheto/AccountVerification$2$1;->this$1:Lcom/easyvictory/cheto/AccountVerification$2;

    iget-object v0, v0, Lcom/easyvictory/cheto/AccountVerification$2;->this$0:Lcom/easyvictory/cheto/AccountVerification;

    invoke-virtual {v0}, Lcom/easyvictory/cheto/AccountVerification;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/easyvictory/cheto/AccountVerification$2$1;->val$result:Ljava/lang/String;

    const-string/jumbo v1, "verified"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/easyvictory/cheto/AccountVerification$2$1;->this$1:Lcom/easyvictory/cheto/AccountVerification$2;

    iget-object v0, v0, Lcom/easyvictory/cheto/AccountVerification$2;->this$0:Lcom/easyvictory/cheto/AccountVerification;

    invoke-virtual {v0}, Lcom/easyvictory/cheto/AccountVerification;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f110001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/easyvictory/cheto/AccountVerification$2$1;->this$1:Lcom/easyvictory/cheto/AccountVerification$2;

    iget-object v0, v0, Lcom/easyvictory/cheto/AccountVerification$2;->this$0:Lcom/easyvictory/cheto/AccountVerification;

    invoke-virtual {v0}, Lcom/easyvictory/cheto/AccountVerification;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1100dd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/easyvictory/cheto/AccountVerification$2$1;->this$1:Lcom/easyvictory/cheto/AccountVerification$2;

    iget-object v3, v3, Lcom/easyvictory/cheto/AccountVerification$2;->this$0:Lcom/easyvictory/cheto/AccountVerification;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, ""

    .line 106
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/easyvictory/cheto/AccountVerification$2$1;->val$result:Ljava/lang/String;

    .line 107
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 108
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/easyvictory/cheto/AccountVerification$2$1$1;

    invoke-direct {v4, p0}, Lcom/easyvictory/cheto/AccountVerification$2$1$1;-><init>(Lcom/easyvictory/cheto/AccountVerification$2$1;)V

    .line 109
    invoke-virtual {v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 118
    iget-object v0, p0, Lcom/easyvictory/cheto/AccountVerification$2$1;->val$result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    new-instance v0, Lcom/easyvictory/cheto/AccountVerification$2$1$2;

    invoke-direct {v0, p0}, Lcom/easyvictory/cheto/AccountVerification$2$1$2;-><init>(Lcom/easyvictory/cheto/AccountVerification$2$1;)V

    const v1, 0x7f11010b

    invoke-virtual {v2, v1, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    :cond_1
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_2
    return-void
.end method
