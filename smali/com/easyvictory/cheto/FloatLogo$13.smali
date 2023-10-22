.class Lcom/easyvictory/cheto/FloatLogo$13;
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

.field final synthetic val$angleStepSizeText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/FloatLogo;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 678
    iput-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$13;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    iput-object p2, p0, Lcom/easyvictory/cheto/FloatLogo$13;->val$angleStepSizeText:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    if-ge p2, v0, :cond_0

    .line 683
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    move p2, v0

    .line 686
    :cond_0
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$13;->val$angleStepSizeText:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/easyvictory/cheto/FloatLogo$13;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {p3}, Lcom/easyvictory/cheto/FloatLogo;->access$1100(Lcom/easyvictory/cheto/FloatLogo;)Ljava/lang/String;

    move-result-object p3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p1, p2

    .line 688
    iget-object p2, p0, Lcom/easyvictory/cheto/FloatLogo$13;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    const-wide v0, -0x439b0565e32061ccL    # -9.098153686388533E-18

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/easyvictory/cheto/FloatLogo;->access$600(Lcom/easyvictory/cheto/FloatLogo;Ljava/lang/String;F)V

    .line 689
    iget-object p2, p0, Lcom/easyvictory/cheto/FloatLogo$13;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    const/16 p3, 0xcb

    invoke-virtual {p2, p3, p1}, Lcom/easyvictory/cheto/FloatLogo;->SettingFloatValueWrapper(IF)Z

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
