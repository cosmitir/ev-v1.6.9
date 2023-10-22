.class Lcom/easyvictory/cheto/FloatLogo$9;
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

.field final synthetic val$maxBreaksText:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/FloatLogo;Landroid/widget/TextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 587
    iput-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$9;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    iput-object p2, p0, Lcom/easyvictory/cheto/FloatLogo$9;->val$maxBreaksText:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    .line 591
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$9;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {p1}, Lcom/easyvictory/cheto/FloatLogo;->access$700(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const-wide v0, -0x439b079de32061ccL    # -9.094394977685092E-18

    .line 592
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-wide v0, -0x439b07b9e32061ccL    # -9.09420968922788E-18

    .line 595
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p1

    .line 598
    :goto_0
    iget-object v0, p0, Lcom/easyvictory/cheto/FloatLogo$9;->val$maxBreaksText:Landroid/widget/TextView;

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p3, v1

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p1, p2

    .line 600
    iget-object p2, p0, Lcom/easyvictory/cheto/FloatLogo$9;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    const-wide v0, -0x439b07d4e32061ccL    # -9.094031018215568E-18

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
