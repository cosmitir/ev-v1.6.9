.class Lcom/easyvictory/cheto/ModulesActivity$6;
.super Ljava/lang/Object;
.source "ModulesActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/ModulesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easyvictory/cheto/ModulesActivity;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/ModulesActivity;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/easyvictory/cheto/ModulesActivity$6;->this$0:Lcom/easyvictory/cheto/ModulesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 216
    sget-object p1, Lcom/easyvictory/cheto/ModulesActivity;->gContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/easyvictory/cheto/ModulesActivity$6;->this$0:Lcom/easyvictory/cheto/ModulesActivity;

    invoke-static {p2}, Lcom/easyvictory/cheto/ModulesActivity;->access$200(Lcom/easyvictory/cheto/ModulesActivity;)Landroid/widget/Switch;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/easyvictory/cheto/ModulesActivity$6;->this$0:Lcom/easyvictory/cheto/ModulesActivity;

    invoke-static {v0}, Lcom/easyvictory/cheto/ModulesActivity;->access$200(Lcom/easyvictory/cheto/ModulesActivity;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/easyvictory/cheto/ModulesActivity;->setValue(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
