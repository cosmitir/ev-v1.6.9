.class Lcom/easyvictory/cheto/ModulesActivity$1$1;
.super Ljava/lang/Object;
.source "ModulesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/ModulesActivity$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easyvictory/cheto/ModulesActivity$1;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/ModulesActivity$1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/easyvictory/cheto/ModulesActivity$1$1;->this$0:Lcom/easyvictory/cheto/ModulesActivity$1;

    iput-object p2, p0, Lcom/easyvictory/cheto/ModulesActivity$1$1;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-wide v0, -0x439b14e1e32061ccL    # -9.071922134803251E-18

    .line 78
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x439b14e2e32061ccL    # -9.07191551735835E-18

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/easyvictory/cheto/ModulesActivity$1$1;->val$value:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/easyvictory/cheto/ModulesActivity;->XXXXXX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/easyvictory/cheto/ModulesActivity$1$1;->this$0:Lcom/easyvictory/cheto/ModulesActivity$1;

    iget-object v1, v1, Lcom/easyvictory/cheto/ModulesActivity$1;->val$activity:Landroid/app/Activity;

    new-instance v2, Lcom/easyvictory/cheto/ModulesActivity$1$1$1;

    invoke-direct {v2, p0, v0}, Lcom/easyvictory/cheto/ModulesActivity$1$1$1;-><init>(Lcom/easyvictory/cheto/ModulesActivity$1$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 86
    invoke-static {v0}, Lcom/easyvictory/cheto/ModulesActivity;->access$002(Z)Z

    return-void
.end method
