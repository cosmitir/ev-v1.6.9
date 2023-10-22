.class Lcom/easyvictory/cheto/FloatLogo$19;
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


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/FloatLogo;)V
    .locals 0

    .line 779
    iput-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$19;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 782
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$19;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-virtual {p1}, Lcom/easyvictory/cheto/FloatLogo;->haqs()Z

    move-result p1

    if-nez p1, :cond_0

    .line 783
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$19;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {p1}, Lcom/easyvictory/cheto/FloatLogo;->access$1900(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/Switch;

    move-result-object p1

    const-wide v0, -0x439b0582e32061ccL    # -9.09796178048642E-18

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 786
    :cond_0
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$19;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {p1}, Lcom/easyvictory/cheto/FloatLogo;->access$1900(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/Switch;

    move-result-object p1

    const-wide v0, -0x439b05a2e32061ccL    # -9.097750022249607E-18

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    .line 789
    :goto_0
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$19;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    const-wide v0, -0x439b05a9e32061ccL    # -9.097703700135304E-18

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/easyvictory/cheto/FloatLogo$19;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {v0}, Lcom/easyvictory/cheto/FloatLogo;->access$1900(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/easyvictory/cheto/FloatLogo;->access$1800(Lcom/easyvictory/cheto/FloatLogo;Ljava/lang/String;Z)V

    return-void
.end method
