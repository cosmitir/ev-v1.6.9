.class Lcom/easyvictory/cheto/ModulesActivity$4$1;
.super Ljava/lang/Object;
.source "ModulesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/ModulesActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/easyvictory/cheto/ModulesActivity$4;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/ModulesActivity$4;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/easyvictory/cheto/ModulesActivity$4$1;->this$1:Lcom/easyvictory/cheto/ModulesActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/easyvictory/cheto/ModulesActivity$4$1;->this$1:Lcom/easyvictory/cheto/ModulesActivity$4;

    iget-object v0, v0, Lcom/easyvictory/cheto/ModulesActivity$4;->this$0:Lcom/easyvictory/cheto/ModulesActivity;

    const v1, 0x7f09002e

    invoke-virtual {v0, v1}, Lcom/easyvictory/cheto/ModulesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    return-void
.end method
