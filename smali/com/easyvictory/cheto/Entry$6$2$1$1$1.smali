.class Lcom/easyvictory/cheto/Entry$6$2$1$1$1;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/Entry$6$2$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/easyvictory/cheto/Entry$6$2$1$1;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/Entry$6$2$1$1;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 660
    iput-object p1, p0, Lcom/easyvictory/cheto/Entry$6$2$1$1$1;->this$3:Lcom/easyvictory/cheto/Entry$6$2$1$1;

    iput-object p2, p0, Lcom/easyvictory/cheto/Entry$6$2$1$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPixelCopyFinished(I)V
    .locals 9

    .line 664
    :try_start_0
    iget-object p1, p0, Lcom/easyvictory/cheto/Entry$6$2$1$1$1;->this$3:Lcom/easyvictory/cheto/Entry$6$2$1$1;

    iget-object p1, p1, Lcom/easyvictory/cheto/Entry$6$2$1$1;->this$2:Lcom/easyvictory/cheto/Entry$6$2$1;

    iget-object p1, p1, Lcom/easyvictory/cheto/Entry$6$2$1;->val$mainActivityClass:Ljava/lang/Class;

    const-wide v0, -0x439b01dae32061ccL    # -9.104155708913218E-18

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-class v3, Ljava/lang/Class;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-class v3, [Z

    const/4 v8, 0x4

    aput-object v3, v2, v8

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 666
    invoke-virtual {p1, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 667
    iget-object v0, p0, Lcom/easyvictory/cheto/Entry$6$2$1$1$1;->this$3:Lcom/easyvictory/cheto/Entry$6$2$1$1;

    iget-object v0, v0, Lcom/easyvictory/cheto/Entry$6$2$1$1;->this$2:Lcom/easyvictory/cheto/Entry$6$2$1;

    iget-object v0, v0, Lcom/easyvictory/cheto/Entry$6$2$1;->val$instance:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/easyvictory/cheto/Entry$6$2$1$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    aput-object v2, v1, v4

    const-class v2, Lcom/easyvictory/cheto/Entry;

    aput-object v2, v1, v5

    const-class v2, Lcom/easyvictory/cheto/AutoController;

    aput-object v2, v1, v6

    const-class v2, Lcom/easyvictory/cheto/FloatLogo;

    aput-object v2, v1, v7

    sget-object v2, Lcom/easyvictory/cheto/Entry;->isAQTaskFinished:[Z

    aput-object v2, v1, v8

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x439b01ebe32061ccL    # -9.10404321234991E-18

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
