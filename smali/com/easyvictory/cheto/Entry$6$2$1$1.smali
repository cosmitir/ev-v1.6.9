.class Lcom/easyvictory/cheto/Entry$6$2$1$1;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/Entry$6$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/easyvictory/cheto/Entry$6$2$1;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/Entry$6$2$1;)V
    .locals 0

    .line 647
    iput-object p1, p0, Lcom/easyvictory/cheto/Entry$6$2$1$1;->this$2:Lcom/easyvictory/cheto/Entry$6$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 651
    :try_start_0
    invoke-static {}, Lcom/easyvictory/cheto/Entry;->access$500()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 652
    invoke-static {}, Lcom/easyvictory/cheto/Entry;->access$500()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 656
    invoke-static {}, Lcom/easyvictory/cheto/Entry;->access$1100()Landroid/view/SurfaceView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 659
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 660
    new-instance v1, Lcom/easyvictory/cheto/Entry$6$2$1$1$1;

    invoke-direct {v1, p0, v0}, Lcom/easyvictory/cheto/Entry$6$2$1$1$1;-><init>(Lcom/easyvictory/cheto/Entry$6$2$1$1;Landroid/graphics/Bitmap;)V

    .line 675
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v2, v0, v1, v3}, Landroid/view/PixelCopy;->request(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 678
    invoke-static {v2, v2, v0, v1}, Lcom/easyvictory/cheto/Entry;->createBitmapFromGLSurface(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 680
    iget-object v1, p0, Lcom/easyvictory/cheto/Entry$6$2$1$1;->this$2:Lcom/easyvictory/cheto/Entry$6$2$1;

    iget-object v1, v1, Lcom/easyvictory/cheto/Entry$6$2$1;->val$mainActivityClass:Ljava/lang/Class;

    const-wide v3, -0x439b01f3e32061ccL    # -9.103990272790707E-18

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/graphics/Bitmap;

    aput-object v6, v5, v2

    const-class v6, Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    const-class v6, Ljava/lang/Class;

    const/4 v9, 0x3

    aput-object v6, v5, v9

    const-class v6, [Z

    const/4 v10, 0x4

    aput-object v6, v5, v10

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 682
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 683
    iget-object v3, p0, Lcom/easyvictory/cheto/Entry$6$2$1$1;->this$2:Lcom/easyvictory/cheto/Entry$6$2$1;

    iget-object v3, v3, Lcom/easyvictory/cheto/Entry$6$2$1;->val$instance:Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    const-class v0, Lcom/easyvictory/cheto/Entry;

    aput-object v0, v4, v7

    const-class v0, Lcom/easyvictory/cheto/AutoController;

    aput-object v0, v4, v8

    const-class v0, Lcom/easyvictory/cheto/FloatLogo;

    aput-object v0, v4, v9

    sget-object v0, Lcom/easyvictory/cheto/Entry;->isAQTaskFinished:[Z

    aput-object v0, v4, v10

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x439b0204e32061ccL    # -9.1038777762274E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
