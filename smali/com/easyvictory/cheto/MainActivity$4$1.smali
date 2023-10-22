.class Lcom/easyvictory/cheto/MainActivity$4$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/MainActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/easyvictory/cheto/MainActivity$4;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/MainActivity$4;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/easyvictory/cheto/MainActivity$4$1;->this$1:Lcom/easyvictory/cheto/MainActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 437
    iget-object v0, p0, Lcom/easyvictory/cheto/MainActivity$4$1;->this$1:Lcom/easyvictory/cheto/MainActivity$4;

    iget-object v0, v0, Lcom/easyvictory/cheto/MainActivity$4;->this$0:Lcom/easyvictory/cheto/MainActivity;

    invoke-virtual {v0}, Lcom/easyvictory/cheto/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 438
    iget-object v1, p0, Lcom/easyvictory/cheto/MainActivity$4$1;->this$1:Lcom/easyvictory/cheto/MainActivity$4;

    iget-object v1, v1, Lcom/easyvictory/cheto/MainActivity$4;->this$0:Lcom/easyvictory/cheto/MainActivity;

    const-wide v2, -0x439b0f2ce32061ccL    # -9.081590221802771E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/easyvictory/cheto/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 439
    invoke-virtual {v1, v0}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/easyvictory/cheto/MainActivity$4$1;->this$1:Lcom/easyvictory/cheto/MainActivity$4;

    iget-object v0, v0, Lcom/easyvictory/cheto/MainActivity$4;->this$0:Lcom/easyvictory/cheto/MainActivity;

    const v1, 0x7f09002f

    invoke-virtual {v0, v1}, Lcom/easyvictory/cheto/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 441
    iget-object v0, p0, Lcom/easyvictory/cheto/MainActivity$4$1;->this$1:Lcom/easyvictory/cheto/MainActivity$4;

    iget-object v0, v0, Lcom/easyvictory/cheto/MainActivity$4;->this$0:Lcom/easyvictory/cheto/MainActivity;

    const v2, 0x7f090018

    invoke-virtual {v0, v2}, Lcom/easyvictory/cheto/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 442
    iget-object v0, p0, Lcom/easyvictory/cheto/MainActivity$4$1;->this$1:Lcom/easyvictory/cheto/MainActivity$4;

    iget-object v0, v0, Lcom/easyvictory/cheto/MainActivity$4;->this$0:Lcom/easyvictory/cheto/MainActivity;

    const v2, 0x7f09011e

    invoke-virtual {v0, v2}, Lcom/easyvictory/cheto/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    return-void
.end method
