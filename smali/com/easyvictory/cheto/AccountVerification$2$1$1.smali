.class Lcom/easyvictory/cheto/AccountVerification$2$1$1;
.super Ljava/lang/Object;
.source "AccountVerification.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/AccountVerification$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/easyvictory/cheto/AccountVerification$2$1;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/AccountVerification$2$1;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/easyvictory/cheto/AccountVerification$2$1$1;->this$2:Lcom/easyvictory/cheto/AccountVerification$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 112
    iget-object p1, p0, Lcom/easyvictory/cheto/AccountVerification$2$1$1;->this$2:Lcom/easyvictory/cheto/AccountVerification$2$1;

    iget-object p1, p1, Lcom/easyvictory/cheto/AccountVerification$2$1;->val$result:Ljava/lang/String;

    const-string/jumbo p2, "verified"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/easyvictory/cheto/AccountVerification$2$1$1;->this$2:Lcom/easyvictory/cheto/AccountVerification$2$1;

    iget-object p1, p1, Lcom/easyvictory/cheto/AccountVerification$2$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
