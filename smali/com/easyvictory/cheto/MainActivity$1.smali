.class Lcom/easyvictory/cheto/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/MainActivity;->checkMatchWithGameABI()Z
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

    .line 101
    iput-object p1, p0, Lcom/easyvictory/cheto/MainActivity$1;->this$0:Lcom/easyvictory/cheto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 104
    iget-object p1, p0, Lcom/easyvictory/cheto/MainActivity$1;->this$0:Lcom/easyvictory/cheto/MainActivity;

    iget-object p1, p1, Lcom/easyvictory/cheto/MainActivity;->gActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finishAffinity()V

    const/4 p1, 0x0

    .line 105
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
