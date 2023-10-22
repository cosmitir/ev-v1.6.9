.class Lcom/easyvictory/cheto/ModulesActivity$7$2$1;
.super Ljava/lang/Object;
.source "ModulesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/ModulesActivity$7$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/easyvictory/cheto/ModulesActivity$7$2;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/ModulesActivity$7$2;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/easyvictory/cheto/ModulesActivity$7$2$1;->this$2:Lcom/easyvictory/cheto/ModulesActivity$7$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 429
    iget-object p1, p0, Lcom/easyvictory/cheto/ModulesActivity$7$2$1;->this$2:Lcom/easyvictory/cheto/ModulesActivity$7$2;

    iget-object p1, p1, Lcom/easyvictory/cheto/ModulesActivity$7$2;->this$1:Lcom/easyvictory/cheto/ModulesActivity$7;

    iget-object p1, p1, Lcom/easyvictory/cheto/ModulesActivity$7;->this$0:Lcom/easyvictory/cheto/ModulesActivity;

    const p2, 0x7f09002e

    invoke-virtual {p1, p2}, Lcom/easyvictory/cheto/ModulesActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    return-void
.end method
