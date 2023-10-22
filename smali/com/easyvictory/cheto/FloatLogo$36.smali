.class Lcom/easyvictory/cheto/FloatLogo$36;
.super Ljava/lang/Object;
.source "FloatLogo.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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

    .line 935
    iput-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$36;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 938
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$36;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    const-wide p4, -0x439b06ebe32061ccL    # -9.095572882877367E-18

    invoke-static {p4, p5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lcom/easyvictory/cheto/FloatLogo$36;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {p4}, Lcom/easyvictory/cheto/FloatLogo;->access$3600(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/Spinner;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p4

    invoke-static {p1, p2, p4}, Lcom/easyvictory/cheto/FloatLogo;->access$200(Lcom/easyvictory/cheto/FloatLogo;Ljava/lang/String;I)V

    .line 939
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$36;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    const/16 p2, 0x64

    invoke-virtual {p1, p2, p3}, Lcom/easyvictory/cheto/FloatLogo;->SettingIntValueWrapper(II)Z

    if-eqz p3, :cond_0

    .line 941
    invoke-static {}, Lcom/easyvictory/cheto/AutoController;->getInstance()Lcom/easyvictory/cheto/AutoController;

    move-result-object p1

    iget-object p1, p1, Lcom/easyvictory/cheto/AutoController;->floatingView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 945
    :cond_0
    invoke-static {}, Lcom/easyvictory/cheto/AutoController;->getInstance()Lcom/easyvictory/cheto/AutoController;

    move-result-object p1

    iget-object p1, p1, Lcom/easyvictory/cheto/AutoController;->floatingView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
