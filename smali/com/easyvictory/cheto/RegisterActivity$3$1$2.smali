.class Lcom/easyvictory/cheto/RegisterActivity$3$1$2;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/RegisterActivity$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/easyvictory/cheto/RegisterActivity$3$1;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/RegisterActivity$3$1;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/easyvictory/cheto/RegisterActivity$3$1$2;->this$2:Lcom/easyvictory/cheto/RegisterActivity$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 137
    iget-object p1, p0, Lcom/easyvictory/cheto/RegisterActivity$3$1$2;->this$2:Lcom/easyvictory/cheto/RegisterActivity$3$1;

    iget-object p1, p1, Lcom/easyvictory/cheto/RegisterActivity$3$1;->val$result:Ljava/lang/String;

    const-wide v0, -0x439b17cae32061ccL    # -9.066992138352435E-18

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/easyvictory/cheto/RegisterActivity$3$1$2;->this$2:Lcom/easyvictory/cheto/RegisterActivity$3$1;

    iget-object p1, p1, Lcom/easyvictory/cheto/RegisterActivity$3$1;->this$1:Lcom/easyvictory/cheto/RegisterActivity$3;

    iget-object p1, p1, Lcom/easyvictory/cheto/RegisterActivity$3;->val$username:Ljava/lang/String;

    iget-object p2, p0, Lcom/easyvictory/cheto/RegisterActivity$3$1$2;->this$2:Lcom/easyvictory/cheto/RegisterActivity$3$1;

    iget-object p2, p2, Lcom/easyvictory/cheto/RegisterActivity$3$1;->this$1:Lcom/easyvictory/cheto/RegisterActivity$3;

    iget-object p2, p2, Lcom/easyvictory/cheto/RegisterActivity$3;->val$password:Ljava/lang/String;

    iget-object v0, p0, Lcom/easyvictory/cheto/RegisterActivity$3$1$2;->this$2:Lcom/easyvictory/cheto/RegisterActivity$3$1;

    iget-object v0, v0, Lcom/easyvictory/cheto/RegisterActivity$3$1;->val$activity:Landroid/app/Activity;

    invoke-static {p1, p2, v0}, Lcom/easyvictory/cheto/MainActivity;->saveCredentials(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 139
    iget-object p1, p0, Lcom/easyvictory/cheto/RegisterActivity$3$1$2;->this$2:Lcom/easyvictory/cheto/RegisterActivity$3$1;

    iget-object p1, p1, Lcom/easyvictory/cheto/RegisterActivity$3$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 140
    iget-object p1, p0, Lcom/easyvictory/cheto/RegisterActivity$3$1$2;->this$2:Lcom/easyvictory/cheto/RegisterActivity$3$1;

    iget-object p1, p1, Lcom/easyvictory/cheto/RegisterActivity$3$1;->this$1:Lcom/easyvictory/cheto/RegisterActivity$3;

    iget-boolean p1, p1, Lcom/easyvictory/cheto/RegisterActivity$3;->val$useEmail:Z

    if-eqz p1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/easyvictory/cheto/RegisterActivity$3$1$2;->this$2:Lcom/easyvictory/cheto/RegisterActivity$3$1;

    iget-object p1, p1, Lcom/easyvictory/cheto/RegisterActivity$3$1;->this$1:Lcom/easyvictory/cheto/RegisterActivity$3;

    iget-object p1, p1, Lcom/easyvictory/cheto/RegisterActivity$3;->this$0:Lcom/easyvictory/cheto/RegisterActivity;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/easyvictory/cheto/RegisterActivity$3$1$2;->this$2:Lcom/easyvictory/cheto/RegisterActivity$3$1;

    iget-object v0, v0, Lcom/easyvictory/cheto/RegisterActivity$3$1;->val$activity:Landroid/app/Activity;

    const-class v1, Lcom/easyvictory/cheto/AccountVerification;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/easyvictory/cheto/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
