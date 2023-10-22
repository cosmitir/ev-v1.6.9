.class Lcom/easyvictory/cheto/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easyvictory/cheto/MainActivity;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/MainActivity;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 253
    iput-object p1, p0, Lcom/easyvictory/cheto/MainActivity$3;->this$0:Lcom/easyvictory/cheto/MainActivity;

    iput-object p2, p0, Lcom/easyvictory/cheto/MainActivity$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/easyvictory/cheto/MainActivity$3;->this$0:Lcom/easyvictory/cheto/MainActivity;

    invoke-virtual {v0}, Lcom/easyvictory/cheto/MainActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/easyvictory/cheto/MainActivity$3;->this$0:Lcom/easyvictory/cheto/MainActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f11004d

    .line 258
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110046

    .line 259
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 260
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/easyvictory/cheto/MainActivity$3$2;

    invoke-direct {v1, p0}, Lcom/easyvictory/cheto/MainActivity$3$2;-><init>(Lcom/easyvictory/cheto/MainActivity$3;)V

    const v2, 0x7f1100dd

    .line 261
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/easyvictory/cheto/MainActivity$3$1;

    invoke-direct {v1, p0}, Lcom/easyvictory/cheto/MainActivity$3$1;-><init>(Lcom/easyvictory/cheto/MainActivity$3;)V

    const v2, 0x7f11010b

    .line 267
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method
