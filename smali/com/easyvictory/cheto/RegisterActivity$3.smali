.class Lcom/easyvictory/cheto/RegisterActivity$3;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/RegisterActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easyvictory/cheto/RegisterActivity;

.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$finalSecurityAnswer:Ljava/lang/String;

.field final synthetic val$finalSecurityQuestion:Ljava/lang/String;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$subKey:Ljava/lang/String;

.field final synthetic val$useEmail:Z

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/RegisterActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/easyvictory/cheto/RegisterActivity$3;->this$0:Lcom/easyvictory/cheto/RegisterActivity;

    iput-boolean p2, p0, Lcom/easyvictory/cheto/RegisterActivity$3;->val$useEmail:Z

    iput-object p3, p0, Lcom/easyvictory/cheto/RegisterActivity$3;->val$username:Ljava/lang/String;

    iput-object p4, p0, Lcom/easyvictory/cheto/RegisterActivity$3;->val$password:Ljava/lang/String;

    iput-object p5, p0, Lcom/easyvictory/cheto/RegisterActivity$3;->val$email:Ljava/lang/String;

    iput-object p6, p0, Lcom/easyvictory/cheto/RegisterActivity$3;->val$subKey:Ljava/lang/String;

    iput-object p7, p0, Lcom/easyvictory/cheto/RegisterActivity$3;->val$finalSecurityQuestion:Ljava/lang/String;

    iput-object p8, p0, Lcom/easyvictory/cheto/RegisterActivity$3;->val$finalSecurityAnswer:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 103
    iget-object v6, p0, Lcom/easyvictory/cheto/RegisterActivity$3;->this$0:Lcom/easyvictory/cheto/RegisterActivity;

    .line 105
    iget-boolean v0, p0, Lcom/easyvictory/cheto/RegisterActivity$3;->val$useEmail:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/easyvictory/cheto/RegisterActivity$3;->val$username:Ljava/lang/String;

    iget-object v1, p0, Lcom/easyvictory/cheto/RegisterActivity$3;->val$password:Ljava/lang/String;

    iget-object v2, p0, Lcom/easyvictory/cheto/RegisterActivity$3;->val$email:Ljava/lang/String;

    iget-object v3, p0, Lcom/easyvictory/cheto/RegisterActivity$3;->val$subKey:Ljava/lang/String;

    invoke-static {v6, v0, v1, v2, v3}, Lcom/easyvictory/cheto/RegisterActivity;->access$000(Lcom/easyvictory/cheto/RegisterActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/easyvictory/cheto/RegisterActivity$3;->val$username:Ljava/lang/String;

    iget-object v2, p0, Lcom/easyvictory/cheto/RegisterActivity$3;->val$password:Ljava/lang/String;

    iget-object v3, p0, Lcom/easyvictory/cheto/RegisterActivity$3;->val$finalSecurityQuestion:Ljava/lang/String;

    iget-object v4, p0, Lcom/easyvictory/cheto/RegisterActivity$3;->val$finalSecurityAnswer:Ljava/lang/String;

    iget-object v5, p0, Lcom/easyvictory/cheto/RegisterActivity$3;->val$subKey:Ljava/lang/String;

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/easyvictory/cheto/RegisterActivity;->access$100(Lcom/easyvictory/cheto/RegisterActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 112
    invoke-static {v1}, Lcom/easyvictory/cheto/RegisterActivity;->access$202(Z)Z

    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 114
    new-instance v1, Lcom/easyvictory/cheto/RegisterActivity$3$1;

    invoke-direct {v1, p0, v0, v6}, Lcom/easyvictory/cheto/RegisterActivity$3$1;-><init>(Lcom/easyvictory/cheto/RegisterActivity$3;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v6, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 156
    :cond_1
    new-instance v0, Lcom/easyvictory/cheto/RegisterActivity$3$2;

    invoke-direct {v0, p0}, Lcom/easyvictory/cheto/RegisterActivity$3$2;-><init>(Lcom/easyvictory/cheto/RegisterActivity$3;)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
