.class Lcom/easyvictory/cheto/AutoQueue$2$2;
.super Ljava/lang/Object;
.source "AutoQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/AutoQueue$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/easyvictory/cheto/AutoQueue$2;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/AutoQueue$2;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/easyvictory/cheto/AutoQueue$2$2;->this$1:Lcom/easyvictory/cheto/AutoQueue$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/easyvictory/cheto/AutoQueue$2$2;->this$1:Lcom/easyvictory/cheto/AutoQueue$2;

    iget-object v0, v0, Lcom/easyvictory/cheto/AutoQueue$2;->this$0:Lcom/easyvictory/cheto/AutoQueue;

    const v1, 0x7f090154

    invoke-virtual {v0, v1}, Lcom/easyvictory/cheto/AutoQueue;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
