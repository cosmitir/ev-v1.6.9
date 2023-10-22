.class Lcom/easyvictory/cheto/MainActivity$6$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/MainActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/easyvictory/cheto/MainActivity$6;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/MainActivity$6;)V
    .locals 0

    .line 594
    iput-object p1, p0, Lcom/easyvictory/cheto/MainActivity$6$3;->this$1:Lcom/easyvictory/cheto/MainActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/easyvictory/cheto/MainActivity$6$3;->this$1:Lcom/easyvictory/cheto/MainActivity$6;

    iget-object v0, v0, Lcom/easyvictory/cheto/MainActivity$6;->this$0:Lcom/easyvictory/cheto/MainActivity;

    invoke-virtual {v0}, Lcom/easyvictory/cheto/MainActivity;->switchProgressBar()V

    return-void
.end method
