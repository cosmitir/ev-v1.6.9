.class Lcom/easyvictory/cheto/FloatLogo$4;
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

    .line 461
    iput-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$4;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 466
    :try_start_0
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$4;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {p1}, Lcom/easyvictory/cheto/FloatLogo;->access$400(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 469
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 474
    iget-object v0, p0, Lcom/easyvictory/cheto/FloatLogo$4;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {v0}, Lcom/easyvictory/cheto/FloatLogo;->access$400(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    iget-object v0, p0, Lcom/easyvictory/cheto/FloatLogo$4;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    const-wide v1, -0x439b0760e32061ccL    # -9.094798641824018E-18

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/easyvictory/cheto/FloatLogo;->access$200(Lcom/easyvictory/cheto/FloatLogo;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
