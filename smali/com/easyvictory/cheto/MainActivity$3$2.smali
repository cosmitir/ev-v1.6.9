.class Lcom/easyvictory/cheto/MainActivity$3$2;
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

    .line 261
    iput-object p1, p0, Lcom/easyvictory/cheto/MainActivity$3$2;->this$1:Lcom/easyvictory/cheto/MainActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 264
    iget-object p1, p0, Lcom/easyvictory/cheto/MainActivity$3$2;->this$1:Lcom/easyvictory/cheto/MainActivity$3;

    iget-object p1, p1, Lcom/easyvictory/cheto/MainActivity$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finishAffinity()V

    const/4 p1, 0x0

    .line 265
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
