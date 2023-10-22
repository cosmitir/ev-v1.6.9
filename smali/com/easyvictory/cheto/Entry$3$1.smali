.class Lcom/easyvictory/cheto/Entry$3$1;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/Entry$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/easyvictory/cheto/Entry$3;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/Entry$3;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/easyvictory/cheto/Entry$3$1;->this$1:Lcom/easyvictory/cheto/Entry$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/easyvictory/cheto/Entry$3$1;->this$1:Lcom/easyvictory/cheto/Entry$3;

    iget-object v0, v0, Lcom/easyvictory/cheto/Entry$3;->this$0:Lcom/easyvictory/cheto/Entry;

    invoke-virtual {v0}, Lcom/easyvictory/cheto/Entry;->isSystemKeyboardVisible()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 152
    invoke-static {}, Lcom/easyvictory/cheto/Entry;->access$200()Lcom/easyvictory/cheto/ESPView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyvictory/cheto/ESPView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-static {}, Lcom/easyvictory/cheto/Entry;->access$200()Lcom/easyvictory/cheto/ESPView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/easyvictory/cheto/ESPView;->setVisibility(I)V

    const-wide v2, -0x439b01a8e32061ccL    # -9.104486581158239E-18

    .line 154
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/easyvictory/cheto/Logger;->d(Ljava/lang/String;Z)V

    goto :goto_0

    .line 157
    :cond_0
    invoke-static {}, Lcom/easyvictory/cheto/Entry;->access$200()Lcom/easyvictory/cheto/ESPView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easyvictory/cheto/ESPView;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_1

    .line 158
    invoke-static {}, Lcom/easyvictory/cheto/Entry;->access$200()Lcom/easyvictory/cheto/ESPView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/easyvictory/cheto/ESPView;->setVisibility(I)V

    const-wide v2, -0x439b01c0e32061ccL    # -9.104327762480629E-18

    .line 159
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/easyvictory/cheto/Logger;->d(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method
