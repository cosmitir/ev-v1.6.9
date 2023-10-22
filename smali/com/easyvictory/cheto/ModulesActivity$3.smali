.class Lcom/easyvictory/cheto/ModulesActivity$3;
.super Ljava/lang/Object;
.source "ModulesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/ModulesActivity;->checkPin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easyvictory/cheto/ModulesActivity;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/ModulesActivity;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/easyvictory/cheto/ModulesActivity$3;->this$0:Lcom/easyvictory/cheto/ModulesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 107
    iget-object v0, p0, Lcom/easyvictory/cheto/ModulesActivity$3;->this$0:Lcom/easyvictory/cheto/ModulesActivity;

    const-wide v1, -0x439b14f6e32061ccL    # -9.071783168460342E-18

    .line 108
    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    const-wide v2, -0x439b14f7e32061ccL    # -9.071776551015442E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    const-wide v3, -0x439b14f8e32061ccL    # -9.071769933570541E-18

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/easyvictory/cheto/ModulesActivity;->XXXXXX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 109
    invoke-static {v2}, Lcom/easyvictory/cheto/ModulesActivity;->access$002(Z)Z

    .line 110
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 111
    new-instance v2, Lcom/easyvictory/cheto/ModulesActivity$3$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/easyvictory/cheto/ModulesActivity$3$1;-><init>(Lcom/easyvictory/cheto/ModulesActivity$3;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
