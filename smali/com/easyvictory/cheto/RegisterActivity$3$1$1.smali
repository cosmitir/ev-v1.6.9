.class Lcom/easyvictory/cheto/RegisterActivity$3$1$1;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/RegisterActivity$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/easyvictory/cheto/RegisterActivity$3$1;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/RegisterActivity$3$1;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/easyvictory/cheto/RegisterActivity$3$1$1;->this$2:Lcom/easyvictory/cheto/RegisterActivity$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 148
    iget-object p1, p0, Lcom/easyvictory/cheto/RegisterActivity$3$1$1;->this$2:Lcom/easyvictory/cheto/RegisterActivity$3$1;

    iget-object p1, p1, Lcom/easyvictory/cheto/RegisterActivity$3$1;->val$activity:Landroid/app/Activity;

    const p2, 0x7f090047

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    return-void
.end method
