.class Lcom/easyvictory/cheto/AccountVerification$1;
.super Ljava/lang/Object;
.source "AccountVerification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/AccountVerification;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easyvictory/cheto/AccountVerification;

.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/AccountVerification;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/easyvictory/cheto/AccountVerification$1;->this$0:Lcom/easyvictory/cheto/AccountVerification;

    iput-object p2, p0, Lcom/easyvictory/cheto/AccountVerification$1;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/easyvictory/cheto/AccountVerification$1;->val$email:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/easyvictory/cheto/AccountVerification$1;->this$0:Lcom/easyvictory/cheto/AccountVerification;

    .line 52
    iget-object v1, p0, Lcom/easyvictory/cheto/AccountVerification$1;->val$username:Ljava/lang/String;

    iget-object v2, p0, Lcom/easyvictory/cheto/AccountVerification$1;->val$email:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/easyvictory/cheto/AccountVerification;->access$000(Lcom/easyvictory/cheto/AccountVerification;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 53
    invoke-static {v2}, Lcom/easyvictory/cheto/AccountVerification;->access$102(Z)Z

    .line 54
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 55
    new-instance v2, Lcom/easyvictory/cheto/AccountVerification$1$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/easyvictory/cheto/AccountVerification$1$1;-><init>(Lcom/easyvictory/cheto/AccountVerification$1;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 63
    :cond_0
    new-instance v1, Lcom/easyvictory/cheto/AccountVerification$1$2;

    invoke-direct {v1, p0}, Lcom/easyvictory/cheto/AccountVerification$1$2;-><init>(Lcom/easyvictory/cheto/AccountVerification$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
