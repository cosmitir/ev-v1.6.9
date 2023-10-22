.class Lcom/easyvictory/cheto/ModulesActivity$7$2;
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


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/ModulesActivity$7;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/easyvictory/cheto/ModulesActivity$7$2;->this$1:Lcom/easyvictory/cheto/ModulesActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 415
    iget-object v0, p0, Lcom/easyvictory/cheto/ModulesActivity$7$2;->this$1:Lcom/easyvictory/cheto/ModulesActivity$7;

    iget-object v0, v0, Lcom/easyvictory/cheto/ModulesActivity$7;->this$0:Lcom/easyvictory/cheto/ModulesActivity;

    invoke-virtual {v0}, Lcom/easyvictory/cheto/ModulesActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/easyvictory/cheto/ModulesActivity$7$2;->this$1:Lcom/easyvictory/cheto/ModulesActivity$7;

    iget-object v1, v1, Lcom/easyvictory/cheto/ModulesActivity$7;->this$0:Lcom/easyvictory/cheto/ModulesActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110050

    .line 417
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110034

    .line 418
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 419
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/easyvictory/cheto/ModulesActivity$7$2$2;

    invoke-direct {v1, p0}, Lcom/easyvictory/cheto/ModulesActivity$7$2$2;-><init>(Lcom/easyvictory/cheto/ModulesActivity$7$2;)V

    const v2, 0x7f1100dd

    .line 420
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/easyvictory/cheto/ModulesActivity$7$2$1;

    invoke-direct {v1, p0}, Lcom/easyvictory/cheto/ModulesActivity$7$2$1;-><init>(Lcom/easyvictory/cheto/ModulesActivity$7$2;)V

    const v2, 0x7f11010b

    .line 426
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 431
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method
