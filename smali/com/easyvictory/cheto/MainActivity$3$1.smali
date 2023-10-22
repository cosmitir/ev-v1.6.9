.class Lcom/easyvictory/cheto/MainActivity$3$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/MainActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/easyvictory/cheto/MainActivity$3;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/MainActivity$3;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/easyvictory/cheto/MainActivity$3$1;->this$1:Lcom/easyvictory/cheto/MainActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 270
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/easyvictory/cheto/MainActivity$3$1;->this$1:Lcom/easyvictory/cheto/MainActivity$3;

    iget-object p2, p2, Lcom/easyvictory/cheto/MainActivity$3;->val$activity:Landroid/app/Activity;

    const-class v0, Lcom/easyvictory/cheto/MainActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x10000000

    .line 271
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 272
    iget-object p2, p0, Lcom/easyvictory/cheto/MainActivity$3$1;->this$1:Lcom/easyvictory/cheto/MainActivity$3;

    iget-object p2, p2, Lcom/easyvictory/cheto/MainActivity$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 273
    iget-object p1, p0, Lcom/easyvictory/cheto/MainActivity$3$1;->this$1:Lcom/easyvictory/cheto/MainActivity$3;

    iget-object p1, p1, Lcom/easyvictory/cheto/MainActivity$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finishAffinity()V

    const/4 p1, 0x0

    .line 274
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
