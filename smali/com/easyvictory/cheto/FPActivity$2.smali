.class Lcom/easyvictory/cheto/FPActivity$2;
.super Ljava/lang/Object;
.source "FPActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/FPActivity;->createOver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easyvictory/cheto/FPActivity;

.field final synthetic val$usePin:Landroid/widget/TextView;

.field final synthetic val$useSecurityQAA:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/FPActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/easyvictory/cheto/FPActivity$2;->this$0:Lcom/easyvictory/cheto/FPActivity;

    iput-object p2, p0, Lcom/easyvictory/cheto/FPActivity$2;->val$useSecurityQAA:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/easyvictory/cheto/FPActivity$2;->val$usePin:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 61
    iget-object p1, p0, Lcom/easyvictory/cheto/FPActivity$2;->val$useSecurityQAA:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    iget-object p1, p0, Lcom/easyvictory/cheto/FPActivity$2;->this$0:Lcom/easyvictory/cheto/FPActivity;

    invoke-static {p1}, Lcom/easyvictory/cheto/FPActivity;->access$000(Lcom/easyvictory/cheto/FPActivity;)Landroid/widget/EditText;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 63
    iget-object p1, p0, Lcom/easyvictory/cheto/FPActivity$2;->this$0:Lcom/easyvictory/cheto/FPActivity;

    invoke-static {p1}, Lcom/easyvictory/cheto/FPActivity;->access$100(Lcom/easyvictory/cheto/FPActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 65
    iget-object p1, p0, Lcom/easyvictory/cheto/FPActivity$2;->this$0:Lcom/easyvictory/cheto/FPActivity;

    invoke-static {p1}, Lcom/easyvictory/cheto/FPActivity;->access$200(Lcom/easyvictory/cheto/FPActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 66
    iget-object p1, p0, Lcom/easyvictory/cheto/FPActivity$2;->val$usePin:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
