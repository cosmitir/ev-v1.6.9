.class Lcom/easyvictory/cheto/FPActivity$3;
.super Ljava/lang/Object;
.source "FPActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/FPActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easyvictory/cheto/FPActivity;

.field final synthetic val$finalPin:Ljava/lang/String;

.field final synthetic val$finalSecurityAnswer:Ljava/lang/String;

.field final synthetic val$finalSecurityQuestion:Ljava/lang/String;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$usePin:Z

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/FPActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/easyvictory/cheto/FPActivity$3;->this$0:Lcom/easyvictory/cheto/FPActivity;

    iput-boolean p2, p0, Lcom/easyvictory/cheto/FPActivity$3;->val$usePin:Z

    iput-object p3, p0, Lcom/easyvictory/cheto/FPActivity$3;->val$username:Ljava/lang/String;

    iput-object p4, p0, Lcom/easyvictory/cheto/FPActivity$3;->val$password:Ljava/lang/String;

    iput-object p5, p0, Lcom/easyvictory/cheto/FPActivity$3;->val$finalPin:Ljava/lang/String;

    iput-object p6, p0, Lcom/easyvictory/cheto/FPActivity$3;->val$finalSecurityQuestion:Ljava/lang/String;

    iput-object p7, p0, Lcom/easyvictory/cheto/FPActivity$3;->val$finalSecurityAnswer:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 113
    iget-object v0, p0, Lcom/easyvictory/cheto/FPActivity$3;->this$0:Lcom/easyvictory/cheto/FPActivity;

    .line 115
    iget-boolean v1, p0, Lcom/easyvictory/cheto/FPActivity$3;->val$usePin:Z

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/easyvictory/cheto/FPActivity$3;->val$username:Ljava/lang/String;

    iget-object v2, p0, Lcom/easyvictory/cheto/FPActivity$3;->val$password:Ljava/lang/String;

    iget-object v3, p0, Lcom/easyvictory/cheto/FPActivity$3;->val$finalPin:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/easyvictory/cheto/FPActivity;->access$300(Lcom/easyvictory/cheto/FPActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/easyvictory/cheto/FPActivity$3;->val$username:Ljava/lang/String;

    iget-object v2, p0, Lcom/easyvictory/cheto/FPActivity$3;->val$password:Ljava/lang/String;

    iget-object v3, p0, Lcom/easyvictory/cheto/FPActivity$3;->val$finalSecurityQuestion:Ljava/lang/String;

    iget-object v4, p0, Lcom/easyvictory/cheto/FPActivity$3;->val$finalSecurityAnswer:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/easyvictory/cheto/FPActivity;->access$400(Lcom/easyvictory/cheto/FPActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    .line 122
    invoke-static {v2}, Lcom/easyvictory/cheto/FPActivity;->access$502(Z)Z

    .line 123
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 124
    new-instance v2, Lcom/easyvictory/cheto/FPActivity$3$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/easyvictory/cheto/FPActivity$3$1;-><init>(Lcom/easyvictory/cheto/FPActivity$3;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 131
    :cond_1
    new-instance v1, Lcom/easyvictory/cheto/FPActivity$3$2;

    invoke-direct {v1, p0}, Lcom/easyvictory/cheto/FPActivity$3$2;-><init>(Lcom/easyvictory/cheto/FPActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
