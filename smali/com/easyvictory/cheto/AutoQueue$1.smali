.class Lcom/easyvictory/cheto/AutoQueue$1;
.super Ljava/lang/Object;
.source "AutoQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/AutoQueue;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easyvictory/cheto/AutoQueue;

.field final synthetic val$subKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/AutoQueue;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/easyvictory/cheto/AutoQueue$1;->this$0:Lcom/easyvictory/cheto/AutoQueue;

    iput-object p2, p0, Lcom/easyvictory/cheto/AutoQueue$1;->val$subKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 50
    iget-object v0, p0, Lcom/easyvictory/cheto/AutoQueue$1;->this$0:Lcom/easyvictory/cheto/AutoQueue;

    .line 51
    iget-object v1, p0, Lcom/easyvictory/cheto/AutoQueue$1;->val$subKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/easyvictory/cheto/AutoQueue;->access$000(Lcom/easyvictory/cheto/AutoQueue;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 52
    invoke-static {v2}, Lcom/easyvictory/cheto/AutoQueue;->access$102(Z)Z

    .line 53
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 54
    new-instance v2, Lcom/easyvictory/cheto/AutoQueue$1$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/easyvictory/cheto/AutoQueue$1$1;-><init>(Lcom/easyvictory/cheto/AutoQueue$1;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const-string v2, "Success"

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/easyvictory/cheto/AutoQueue$1;->this$0:Lcom/easyvictory/cheto/AutoQueue;

    const v2, 0x7f090048

    invoke-virtual {v1, v2}, Lcom/easyvictory/cheto/AutoQueue;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/easyvictory/cheto/AutoQueue$1;->this$0:Lcom/easyvictory/cheto/AutoQueue;

    invoke-virtual {v3}, Lcom/easyvictory/cheto/AutoQueue;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1100f4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":\n "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/AutoQueue$1;->this$0:Lcom/easyvictory/cheto/AutoQueue;

    invoke-static {v3}, Lcom/easyvictory/cheto/AutoQueue;->access$200(Lcom/easyvictory/cheto/AutoQueue;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_0
    new-instance v1, Lcom/easyvictory/cheto/AutoQueue$1$2;

    invoke-direct {v1, p0}, Lcom/easyvictory/cheto/AutoQueue$1$2;-><init>(Lcom/easyvictory/cheto/AutoQueue$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
