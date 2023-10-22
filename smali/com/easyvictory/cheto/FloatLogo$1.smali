.class Lcom/easyvictory/cheto/FloatLogo$1;
.super Ljava/lang/Object;
.source "FloatLogo.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 359
    iput-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$1;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 375
    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const-wide/16 v0, 0x0

    .line 381
    :goto_0
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$1;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    const-wide v2, -0x439b0525e32061ccL    # -9.09857720286216E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0, v1}, Lcom/easyvictory/cheto/FloatLogo;->access$000(Lcom/easyvictory/cheto/FloatLogo;Ljava/lang/String;J)V

    .line 382
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$1;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    const/16 v2, 0x12c

    invoke-virtual {p1, v2, v0, v1}, Lcom/easyvictory/cheto/FloatLogo;->SettingLongValueWrapper(IJ)Z

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
