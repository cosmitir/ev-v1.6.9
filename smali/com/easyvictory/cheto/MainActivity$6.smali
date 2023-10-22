.class Lcom/easyvictory/cheto/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/MainActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easyvictory/cheto/MainActivity;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 542
    iput-object p1, p0, Lcom/easyvictory/cheto/MainActivity$6;->this$0:Lcom/easyvictory/cheto/MainActivity;

    iput-object p2, p0, Lcom/easyvictory/cheto/MainActivity$6;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/easyvictory/cheto/MainActivity$6;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 545
    iget-object v0, p0, Lcom/easyvictory/cheto/MainActivity$6;->this$0:Lcom/easyvictory/cheto/MainActivity;

    .line 546
    iget-object v1, p0, Lcom/easyvictory/cheto/MainActivity$6;->val$username:Ljava/lang/String;

    iget-object v2, p0, Lcom/easyvictory/cheto/MainActivity$6;->val$password:Ljava/lang/String;

    invoke-static {v0}, Lcom/easyvictory/cheto/MainActivity;->access$000(Lcom/easyvictory/cheto/MainActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/easyvictory/cheto/MainActivity;->access$100(Lcom/easyvictory/cheto/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 547
    invoke-static {v2}, Lcom/easyvictory/cheto/MainActivity;->access$202(Z)Z

    .line 548
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    const-wide v2, -0x439b0f32e32061ccL    # -9.081550517133368E-18

    .line 549
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-wide v2, -0x439b0f3ae32061ccL    # -9.081497577574165E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 569
    :cond_0
    iget-object v2, p0, Lcom/easyvictory/cheto/MainActivity$6;->this$0:Lcom/easyvictory/cheto/MainActivity;

    new-instance v3, Lcom/easyvictory/cheto/MainActivity$6$2;

    invoke-direct {v3, p0, v1}, Lcom/easyvictory/cheto/MainActivity$6$2;-><init>(Lcom/easyvictory/cheto/MainActivity$6;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/easyvictory/cheto/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 550
    :cond_1
    :goto_0
    new-instance v2, Lcom/easyvictory/cheto/MainActivity$6$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/easyvictory/cheto/MainActivity$6$1;-><init>(Lcom/easyvictory/cheto/MainActivity$6;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 556
    iget-object v2, p0, Lcom/easyvictory/cheto/MainActivity$6;->val$username:Ljava/lang/String;

    iget-object v3, p0, Lcom/easyvictory/cheto/MainActivity$6;->val$password:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/easyvictory/cheto/MainActivity;->saveCredentials(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-wide v2, -0x439b0f4ae32061ccL    # -9.081391698455758E-18

    .line 559
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 560
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/easyvictory/cheto/AccountVerification;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    .line 563
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/easyvictory/cheto/ModulesActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 566
    :goto_1
    iget-object v2, p0, Lcom/easyvictory/cheto/MainActivity$6;->this$0:Lcom/easyvictory/cheto/MainActivity;

    invoke-virtual {v2, v1}, Lcom/easyvictory/cheto/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 594
    :cond_3
    :goto_2
    new-instance v1, Lcom/easyvictory/cheto/MainActivity$6$3;

    invoke-direct {v1, p0}, Lcom/easyvictory/cheto/MainActivity$6$3;-><init>(Lcom/easyvictory/cheto/MainActivity$6;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
