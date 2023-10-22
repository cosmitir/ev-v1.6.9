.class Lcom/easyvictory/cheto/FloatLogo$16;
.super Ljava/lang/Object;
.source "FloatLogo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/FloatLogo;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easyvictory/cheto/FloatLogo;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/FloatLogo;)V
    .locals 0

    .line 753
    iput-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$16;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 756
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$16;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {p1}, Lcom/easyvictory/cheto/FloatLogo;->access$1400(Lcom/easyvictory/cheto/FloatLogo;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 757
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$16;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {p1}, Lcom/easyvictory/cheto/FloatLogo;->access$1500(Lcom/easyvictory/cheto/FloatLogo;)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 758
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$16;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {p1}, Lcom/easyvictory/cheto/FloatLogo;->access$1600(Lcom/easyvictory/cheto/FloatLogo;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
