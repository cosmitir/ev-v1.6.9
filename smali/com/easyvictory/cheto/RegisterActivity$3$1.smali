.class Lcom/easyvictory/cheto/RegisterActivity$3$1;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/RegisterActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/easyvictory/cheto/RegisterActivity$3;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/RegisterActivity$3;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/easyvictory/cheto/RegisterActivity$3$1;->this$1:Lcom/easyvictory/cheto/RegisterActivity$3;

    iput-object p2, p0, Lcom/easyvictory/cheto/RegisterActivity$3$1;->val$result:Ljava/lang/String;

    iput-object p3, p0, Lcom/easyvictory/cheto/RegisterActivity$3$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/easyvictory/cheto/RegisterActivity$3$1;->this$1:Lcom/easyvictory/cheto/RegisterActivity$3;

    iget-object v0, v0, Lcom/easyvictory/cheto/RegisterActivity$3;->this$0:Lcom/easyvictory/cheto/RegisterActivity;

    invoke-virtual {v0}, Lcom/easyvictory/cheto/RegisterActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/easyvictory/cheto/RegisterActivity$3$1;->val$result:Ljava/lang/String;

    const-wide v1, -0x439b17d2e32061ccL    # -9.066939198793232E-18

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/easyvictory/cheto/RegisterActivity$3$1;->this$1:Lcom/easyvictory/cheto/RegisterActivity$3;

    iget-object v0, v0, Lcom/easyvictory/cheto/RegisterActivity$3;->val$username:Ljava/lang/String;

    iget-object v1, p0, Lcom/easyvictory/cheto/RegisterActivity$3$1;->this$1:Lcom/easyvictory/cheto/RegisterActivity$3;

    iget-object v1, v1, Lcom/easyvictory/cheto/RegisterActivity$3;->val$password:Ljava/lang/String;

    iget-object v2, p0, Lcom/easyvictory/cheto/RegisterActivity$3$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/easyvictory/cheto/MainActivity;->saveCredentials(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 120
    iget-object v0, p0, Lcom/easyvictory/cheto/RegisterActivity$3$1;->this$1:Lcom/easyvictory/cheto/RegisterActivity$3;

    iget-object v0, v0, Lcom/easyvictory/cheto/RegisterActivity$3;->val$username:Ljava/lang/String;

    iget-object v1, p0, Lcom/easyvictory/cheto/RegisterActivity$3$1;->this$1:Lcom/easyvictory/cheto/RegisterActivity$3;

    iget-object v1, v1, Lcom/easyvictory/cheto/RegisterActivity$3;->val$email:Ljava/lang/String;

    iget-object v2, p0, Lcom/easyvictory/cheto/RegisterActivity$3$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/easyvictory/cheto/AccountVerification;->saveUserInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 121
    iget-object v0, p0, Lcom/easyvictory/cheto/RegisterActivity$3$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 122
    iget-object v0, p0, Lcom/easyvictory/cheto/RegisterActivity$3$1;->this$1:Lcom/easyvictory/cheto/RegisterActivity$3;

    iget-boolean v0, v0, Lcom/easyvictory/cheto/RegisterActivity$3;->val$useEmail:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/easyvictory/cheto/RegisterActivity$3$1;->this$1:Lcom/easyvictory/cheto/RegisterActivity$3;

    iget-object v0, v0, Lcom/easyvictory/cheto/RegisterActivity$3;->this$0:Lcom/easyvictory/cheto/RegisterActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/easyvictory/cheto/RegisterActivity$3$1;->val$activity:Landroid/app/Activity;

    const-class v3, Lcom/easyvictory/cheto/AccountVerification;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/easyvictory/cheto/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/easyvictory/cheto/RegisterActivity$3$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/easyvictory/cheto/RegisterActivity$3$1;->val$result:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    return-void

    .line 130
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/easyvictory/cheto/RegisterActivity$3$1;->this$1:Lcom/easyvictory/cheto/RegisterActivity$3;

    iget-object v1, v1, Lcom/easyvictory/cheto/RegisterActivity$3;->this$0:Lcom/easyvictory/cheto/RegisterActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-wide v1, -0x439b17dae32061ccL    # -9.066886259234028E-18

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/easyvictory/cheto/RegisterActivity$3$1;->val$result:Ljava/lang/String;

    .line 132
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 133
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/easyvictory/cheto/RegisterActivity$3$1$2;

    invoke-direct {v1, p0}, Lcom/easyvictory/cheto/RegisterActivity$3$1$2;-><init>(Lcom/easyvictory/cheto/RegisterActivity$3$1;)V

    const v2, 0x7f1100dd

    .line 134
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/easyvictory/cheto/RegisterActivity$3$1$1;

    invoke-direct {v1, p0}, Lcom/easyvictory/cheto/RegisterActivity$3$1$1;-><init>(Lcom/easyvictory/cheto/RegisterActivity$3$1;)V

    const v2, 0x7f11010b

    .line 145
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_2
    return-void
.end method
