.class Lcom/easyvictory/cheto/FloatLogo$8;
.super Ljava/lang/Object;
.source "FloatLogo.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

.field final synthetic val$maxWinsText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/FloatLogo;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 562
    iput-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$8;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    iput-object p2, p0, Lcom/easyvictory/cheto/FloatLogo$8;->val$maxWinsText:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    .line 565
    iget-object p3, p0, Lcom/easyvictory/cheto/FloatLogo$8;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {p3}, Lcom/easyvictory/cheto/FloatLogo;->access$500(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/Switch;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/Switch;->isChecked()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 567
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    move p2, v0

    .line 570
    :cond_0
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$8;->val$maxWinsText:Landroid/widget/TextView;

    const-wide v1, -0x439b077ae32061ccL    # -9.094626588256607E-18

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p1, p2

    .line 572
    iget-object p2, p0, Lcom/easyvictory/cheto/FloatLogo$8;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    const-wide v0, -0x439b0795e32061ccL    # -9.094447917244295E-18

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/easyvictory/cheto/FloatLogo;->access$600(Lcom/easyvictory/cheto/FloatLogo;Ljava/lang/String;F)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
