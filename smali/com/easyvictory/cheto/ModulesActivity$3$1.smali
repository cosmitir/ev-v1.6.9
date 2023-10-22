.class Lcom/easyvictory/cheto/ModulesActivity$3$1;
.super Ljava/lang/Object;
.source "ModulesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/ModulesActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/easyvictory/cheto/ModulesActivity$3;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/ModulesActivity$3;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/easyvictory/cheto/ModulesActivity$3$1;->this$1:Lcom/easyvictory/cheto/ModulesActivity$3;

    iput-object p2, p0, Lcom/easyvictory/cheto/ModulesActivity$3$1;->val$result:Ljava/lang/String;

    iput-object p3, p0, Lcom/easyvictory/cheto/ModulesActivity$3$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/easyvictory/cheto/ModulesActivity$3$1;->val$result:Ljava/lang/String;

    const-wide v1, -0x439b14e3e32061ccL    # -9.07190889991345E-18

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/easyvictory/cheto/ModulesActivity$3$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/easyvictory/cheto/ModulesActivity;->showPinInputDialog(Landroid/app/Activity;)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/easyvictory/cheto/ModulesActivity$3$1;->val$activity:Landroid/app/Activity;

    const-wide v1, -0x439b14ede32061ccL    # -9.071842725464446E-18

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/easyvictory/cheto/ModulesActivity;->setValue(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method
