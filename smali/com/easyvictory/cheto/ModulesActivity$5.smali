.class Lcom/easyvictory/cheto/ModulesActivity$5;
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

    .line 201
    iput-object p1, p0, Lcom/easyvictory/cheto/ModulesActivity$5;->this$0:Lcom/easyvictory/cheto/ModulesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 204
    sget-object p1, Lcom/easyvictory/cheto/ModulesActivity;->gContext:Landroid/content/Context;

    const-wide v0, -0x439b14f9e32061ccL    # -9.071763316125641E-18

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/easyvictory/cheto/ModulesActivity$5;->this$0:Lcom/easyvictory/cheto/ModulesActivity;

    invoke-static {v1}, Lcom/easyvictory/cheto/ModulesActivity;->access$100(Lcom/easyvictory/cheto/ModulesActivity;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/easyvictory/cheto/ModulesActivity;->setValue(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 205
    iget-object p1, p0, Lcom/easyvictory/cheto/ModulesActivity$5;->this$0:Lcom/easyvictory/cheto/ModulesActivity;

    invoke-virtual {p1, p2}, Lcom/easyvictory/cheto/ModulesActivity;->facebookWebLoginChangeCallback(Z)V

    return-void
.end method
