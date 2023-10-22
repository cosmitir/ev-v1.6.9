.class Lcom/easyvictory/cheto/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/MainActivity;->createOver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easyvictory/cheto/MainActivity;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/MainActivity;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/easyvictory/cheto/MainActivity$5;->this$0:Lcom/easyvictory/cheto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 463
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/easyvictory/cheto/MainActivity$5;->this$0:Lcom/easyvictory/cheto/MainActivity;

    const-class v1, Lcom/easyvictory/cheto/FPActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 464
    iget-object v0, p0, Lcom/easyvictory/cheto/MainActivity$5;->this$0:Lcom/easyvictory/cheto/MainActivity;

    invoke-virtual {v0, p1}, Lcom/easyvictory/cheto/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
