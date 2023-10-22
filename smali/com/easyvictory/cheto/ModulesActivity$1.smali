.class Lcom/easyvictory/cheto/ModulesActivity$1;
.super Ljava/lang/Object;
.source "ModulesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/ModulesActivity;->showPinInputDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/easyvictory/cheto/ModulesActivity$1;->val$input:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/easyvictory/cheto/ModulesActivity$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 67
    iget-object p1, p0, Lcom/easyvictory/cheto/ModulesActivity$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x4

    if-ge p2, v0, :cond_0

    .line 69
    iget-object p1, p0, Lcom/easyvictory/cheto/ModulesActivity$1;->val$activity:Landroid/app/Activity;

    const p2, 0x7f1100ea

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 70
    iget-object p1, p0, Lcom/easyvictory/cheto/ModulesActivity$1;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/easyvictory/cheto/ModulesActivity;->showPinInputDialog(Landroid/app/Activity;)V

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 74
    invoke-static {p2}, Lcom/easyvictory/cheto/ModulesActivity;->access$002(Z)Z

    .line 75
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/easyvictory/cheto/ModulesActivity$1$1;

    invoke-direct {v0, p0, p1}, Lcom/easyvictory/cheto/ModulesActivity$1$1;-><init>(Lcom/easyvictory/cheto/ModulesActivity$1;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 88
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-void
.end method
