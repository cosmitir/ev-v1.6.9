.class Lcom/easyvictory/cheto/SettingsActivity$1$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/SettingsActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/easyvictory/cheto/SettingsActivity$1;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/SettingsActivity$1;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/easyvictory/cheto/SettingsActivity$1$2;->this$1:Lcom/easyvictory/cheto/SettingsActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/easyvictory/cheto/SettingsActivity$1$2;->this$1:Lcom/easyvictory/cheto/SettingsActivity$1;

    iget-object v0, v0, Lcom/easyvictory/cheto/SettingsActivity$1;->this$0:Lcom/easyvictory/cheto/SettingsActivity;

    const v1, 0x7f090154

    invoke-virtual {v0, v1}, Lcom/easyvictory/cheto/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
