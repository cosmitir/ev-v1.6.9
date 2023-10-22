.class Lcom/easyvictory/cheto/FloatLogo$38;
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

    .line 1008
    iput-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$38;->this$0:Lcom/easyvictory/cheto/FloatLogo;

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

    .line 1011
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$38;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    const-wide p2, -0x439b0716e32061ccL    # -9.095288332746649E-18

    invoke-static {p2, p3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/easyvictory/cheto/FloatLogo$38;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {p3}, Lcom/easyvictory/cheto/FloatLogo;->access$700(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/Spinner;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/easyvictory/cheto/FloatLogo;->access$200(Lcom/easyvictory/cheto/FloatLogo;Ljava/lang/String;I)V

    .line 1014
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$38;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {p1}, Lcom/easyvictory/cheto/FloatLogo;->access$700(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const-wide p3, -0x439b0729e32061ccL    # -9.095162601293541E-18

    .line 1015
    invoke-static {p3, p4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-wide p3, -0x439b0745e32061ccL    # -9.094977312836329E-18

    .line 1018
    invoke-static {p3, p4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p1

    .line 1021
    :goto_0
    iget-object p3, p0, Lcom/easyvictory/cheto/FloatLogo$38;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {p3}, Lcom/easyvictory/cheto/FloatLogo;->access$3800(Lcom/easyvictory/cheto/FloatLogo;)Landroid/view/View;

    move-result-object p3

    const p4, 0x7f090034

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    new-array p2, p2, [Ljava/lang/Object;

    .line 1022
    iget-object p4, p0, Lcom/easyvictory/cheto/FloatLogo$38;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {p4}, Lcom/easyvictory/cheto/FloatLogo;->access$3900(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/SeekBar;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/SeekBar;->getProgress()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 p5, 0x0

    aput-object p4, p2, p5

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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
