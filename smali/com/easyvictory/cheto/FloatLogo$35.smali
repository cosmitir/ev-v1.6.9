.class Lcom/easyvictory/cheto/FloatLogo$35;
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

    .line 926
    iput-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$35;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 929
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$35;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    const-wide v0, -0x439b06d9e32061ccL

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/easyvictory/cheto/FloatLogo$35;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {v0}, Lcom/easyvictory/cheto/FloatLogo;->access$3500(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/easyvictory/cheto/FloatLogo;->access$1800(Lcom/easyvictory/cheto/FloatLogo;Ljava/lang/String;Z)V

    .line 930
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$35;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {p1}, Lcom/easyvictory/cheto/FloatLogo;->access$3500(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/Switch;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Switch;->isChecked()Z

    move-result p2

    const/16 v0, 0x10

    invoke-virtual {p1, v0, p2}, Lcom/easyvictory/cheto/FloatLogo;->SettingValueWrapper(IZ)Z

    return-void
.end method