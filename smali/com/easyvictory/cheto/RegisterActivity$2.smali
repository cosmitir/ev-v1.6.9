.class Lcom/easyvictory/cheto/RegisterActivity$2;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/RegisterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easyvictory/cheto/RegisterActivity;

.field final synthetic val$emailInput:Landroid/view/View;

.field final synthetic val$securityAnswerInput:Landroid/view/View;

.field final synthetic val$securityQuestionInput:Landroid/view/View;

.field final synthetic val$useMail:Landroid/widget/TextView;

.field final synthetic val$useSecurityQAA:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/RegisterActivity;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/easyvictory/cheto/RegisterActivity$2;->this$0:Lcom/easyvictory/cheto/RegisterActivity;

    iput-object p2, p0, Lcom/easyvictory/cheto/RegisterActivity$2;->val$useSecurityQAA:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/easyvictory/cheto/RegisterActivity$2;->val$securityQuestionInput:Landroid/view/View;

    iput-object p4, p0, Lcom/easyvictory/cheto/RegisterActivity$2;->val$securityAnswerInput:Landroid/view/View;

    iput-object p5, p0, Lcom/easyvictory/cheto/RegisterActivity$2;->val$emailInput:Landroid/view/View;

    iput-object p6, p0, Lcom/easyvictory/cheto/RegisterActivity$2;->val$useMail:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 51
    iget-object p1, p0, Lcom/easyvictory/cheto/RegisterActivity$2;->val$useSecurityQAA:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    iget-object p1, p0, Lcom/easyvictory/cheto/RegisterActivity$2;->val$securityQuestionInput:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 53
    iget-object p1, p0, Lcom/easyvictory/cheto/RegisterActivity$2;->val$securityAnswerInput:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    iget-object p1, p0, Lcom/easyvictory/cheto/RegisterActivity$2;->val$emailInput:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget-object p1, p0, Lcom/easyvictory/cheto/RegisterActivity$2;->val$useMail:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
