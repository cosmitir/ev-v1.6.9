.class Lcom/easyvictory/cheto/FloatLogo$37;
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

    .line 956
    iput-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$37;->this$0:Lcom/easyvictory/cheto/FloatLogo;

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

    .line 959
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$37;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {p1}, Lcom/easyvictory/cheto/FloatLogo;->access$3700(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    .line 960
    iget-object p2, p0, Lcom/easyvictory/cheto/FloatLogo$37;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    const-wide p3, -0x439b06f6e32061ccL    # -9.095500090983463E-18

    invoke-static {p3, p4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/easyvictory/cheto/FloatLogo;->access$200(Lcom/easyvictory/cheto/FloatLogo;Ljava/lang/String;I)V

    if-nez p1, :cond_0

    .line 962
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$37;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    const/16 p2, 0x14

    invoke-static {p1, p2}, Lcom/easyvictory/cheto/FloatLogo;->access$302(Lcom/easyvictory/cheto/FloatLogo;I)I

    goto :goto_0

    .line 965
    :cond_0
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$37;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/easyvictory/cheto/FloatLogo;->access$302(Lcom/easyvictory/cheto/FloatLogo;I)I

    :goto_0
    const/4 p1, 0x0

    .line 972
    :try_start_0
    iget-object p2, p0, Lcom/easyvictory/cheto/FloatLogo$37;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {p2}, Lcom/easyvictory/cheto/FloatLogo;->access$100(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 974
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;)V

    move p2, p1

    .line 977
    :goto_1
    iget-object p3, p0, Lcom/easyvictory/cheto/FloatLogo$37;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {p3}, Lcom/easyvictory/cheto/FloatLogo;->access$300(Lcom/easyvictory/cheto/FloatLogo;)I

    move-result p3

    if-le p2, p3, :cond_1

    .line 978
    iget-object p2, p0, Lcom/easyvictory/cheto/FloatLogo$37;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {p2}, Lcom/easyvictory/cheto/FloatLogo;->access$300(Lcom/easyvictory/cheto/FloatLogo;)I

    move-result p2

    .line 979
    iget-object p3, p0, Lcom/easyvictory/cheto/FloatLogo$37;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {p3}, Lcom/easyvictory/cheto/FloatLogo;->access$100(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/TextView;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 980
    iget-object p3, p0, Lcom/easyvictory/cheto/FloatLogo$37;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    const-wide p4, -0x439b06fde32061ccL    # -9.09545376886916E-18

    invoke-static {p4, p5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4, p2}, Lcom/easyvictory/cheto/FloatLogo;->access$200(Lcom/easyvictory/cheto/FloatLogo;Ljava/lang/String;I)V

    .line 988
    :cond_1
    :try_start_1
    iget-object p2, p0, Lcom/easyvictory/cheto/FloatLogo$37;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {p2}, Lcom/easyvictory/cheto/FloatLogo;->access$400(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    .line 990
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;)V

    .line 993
    :goto_2
    iget-object p2, p0, Lcom/easyvictory/cheto/FloatLogo$37;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {p2}, Lcom/easyvictory/cheto/FloatLogo;->access$300(Lcom/easyvictory/cheto/FloatLogo;)I

    move-result p2

    if-le p1, p2, :cond_2

    .line 994
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$37;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {p1}, Lcom/easyvictory/cheto/FloatLogo;->access$300(Lcom/easyvictory/cheto/FloatLogo;)I

    move-result p1

    .line 995
    iget-object p2, p0, Lcom/easyvictory/cheto/FloatLogo$37;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {p2}, Lcom/easyvictory/cheto/FloatLogo;->access$400(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/TextView;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 996
    iget-object p2, p0, Lcom/easyvictory/cheto/FloatLogo$37;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    const-wide p3, -0x439b0709e32061ccL    # -9.095374359530355E-18

    invoke-static {p3, p4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/easyvictory/cheto/FloatLogo;->access$200(Lcom/easyvictory/cheto/FloatLogo;Ljava/lang/String;I)V

    :cond_2
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
