.class Lcom/easyvictory/cheto/ModulesActivity$7$1;
.super Ljava/lang/Object;
.source "ModulesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/ModulesActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/easyvictory/cheto/ModulesActivity$7;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/ModulesActivity$7;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 389
    iput-object p1, p0, Lcom/easyvictory/cheto/ModulesActivity$7$1;->this$1:Lcom/easyvictory/cheto/ModulesActivity$7;

    iput-object p2, p0, Lcom/easyvictory/cheto/ModulesActivity$7$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 391
    iget-object v0, p0, Lcom/easyvictory/cheto/ModulesActivity$7$1;->this$1:Lcom/easyvictory/cheto/ModulesActivity$7;

    iget-object v0, v0, Lcom/easyvictory/cheto/ModulesActivity$7;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/easyvictory/cheto/ModulesActivity$7$1;->val$result:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
