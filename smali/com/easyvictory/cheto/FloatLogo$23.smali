.class Lcom/easyvictory/cheto/FloatLogo$23;
.super Ljava/lang/Object;
.source "FloatLogo.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    .line 825
    iput-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$23;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    iput-object p2, p0, Lcom/easyvictory/cheto/FloatLogo$23;->val$maxWinsText:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 828
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$23;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    const-wide v0, -0x439b05e0e32061ccL    # -9.09733974066578E-18

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/easyvictory/cheto/FloatLogo$23;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {v0}, Lcom/easyvictory/cheto/FloatLogo;->access$500(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/easyvictory/cheto/FloatLogo;->access$1800(Lcom/easyvictory/cheto/FloatLogo;Ljava/lang/String;Z)V

    .line 829
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$23;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {p1}, Lcom/easyvictory/cheto/FloatLogo;->access$500(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/Switch;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 831
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$23;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {p1}, Lcom/easyvictory/cheto/FloatLogo;->access$2300(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/SeekBar;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 832
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$23;->val$maxWinsText:Landroid/widget/TextView;

    const-wide v0, -0x439b05efe32061ccL    # -9.097240478992274E-18

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p1, p2

    .line 834
    iget-object p2, p0, Lcom/easyvictory/cheto/FloatLogo$23;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    const-wide v0, -0x439b060ae32061ccL    # -9.097061807979963E-18

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/easyvictory/cheto/FloatLogo;->access$600(Lcom/easyvictory/cheto/FloatLogo;Ljava/lang/String;F)V

    :cond_0
    return-void
.end method
