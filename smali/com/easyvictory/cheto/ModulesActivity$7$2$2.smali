.class Lcom/easyvictory/cheto/ModulesActivity$7$2$2;
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

    .line 420
    iput-object p1, p0, Lcom/easyvictory/cheto/ModulesActivity$7$2$2;->this$2:Lcom/easyvictory/cheto/ModulesActivity$7$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 423
    iget-object p1, p0, Lcom/easyvictory/cheto/ModulesActivity$7$2$2;->this$2:Lcom/easyvictory/cheto/ModulesActivity$7$2;

    iget-object p1, p1, Lcom/easyvictory/cheto/ModulesActivity$7$2;->this$1:Lcom/easyvictory/cheto/ModulesActivity$7;

    iget-object p1, p1, Lcom/easyvictory/cheto/ModulesActivity$7;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finishAffinity()V

    const/4 p1, 0x0

    .line 424
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
