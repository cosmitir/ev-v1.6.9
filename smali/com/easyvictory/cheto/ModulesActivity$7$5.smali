.class Lcom/easyvictory/cheto/ModulesActivity$7$5;
.super Ljava/lang/Object;
.source "ModulesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/ModulesActivity$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/easyvictory/cheto/ModulesActivity$7;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/ModulesActivity$7;)V
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/easyvictory/cheto/ModulesActivity$7$5;->this$1:Lcom/easyvictory/cheto/ModulesActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/easyvictory/cheto/ModulesActivity$7$5;->this$1:Lcom/easyvictory/cheto/ModulesActivity$7;

    iget-object v0, v0, Lcom/easyvictory/cheto/ModulesActivity$7;->this$0:Lcom/easyvictory/cheto/ModulesActivity;

    invoke-virtual {v0}, Lcom/easyvictory/cheto/ModulesActivity;->switchProgressBar()V

    return-void
.end method
