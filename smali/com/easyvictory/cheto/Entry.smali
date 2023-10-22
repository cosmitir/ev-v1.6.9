.class public Lcom/easyvictory/cheto/Entry;
.super Landroid/app/Application;
.source "Entry.java"


# static fields
.field private static angleStepSizeText:Ljava/lang/String;

.field private static baseContext:Landroid/content/Context;

.field static controllerView:Landroid/view/View;

.field static floatingView:Landroid/view/View;

.field private static iSampleInterface:Lcom/easyvictory/cheto/ISampleInterface;

.field public static final isAQTaskFinished:[Z

.field private static lineThicknessText:Ljava/lang/String;

.field private static lineTransparencyText:Ljava/lang/String;

.field private static mQueuedEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static mainActivity:Landroid/app/Activity;

.field private static overlayView:Lcom/easyvictory/cheto/ESPView;

.field private static predictionDrawPowerText:Ljava/lang/String;

.field private static serviceConnection:Landroid/content/ServiceConnection;


# instance fields
.field final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 80
    new-instance v0, Lcom/easyvictory/cheto/Entry$1;

    invoke-direct {v0}, Lcom/easyvictory/cheto/Entry$1;-><init>()V

    sput-object v0, Lcom/easyvictory/cheto/Entry;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    .line 93
    sput-object v0, Lcom/easyvictory/cheto/Entry;->baseContext:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v0, v1, v2

    .line 570
    sput-object v1, Lcom/easyvictory/cheto/Entry;->isAQTaskFinished:[Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const-wide v0, -0x439b02ace32061ccL    # -9.102766045484128E-18

    .line 70
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easyvictory/cheto/Entry;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/easyvictory/cheto/ISampleInterface;)Lcom/easyvictory/cheto/ISampleInterface;
    .locals 0

    .line 68
    sput-object p0, Lcom/easyvictory/cheto/Entry;->iSampleInterface:Lcom/easyvictory/cheto/ISampleInterface;

    return-object p0
.end method

.method static synthetic access$100()V
    .locals 0

    .line 68
    invoke-static {}, Lcom/easyvictory/cheto/Entry;->xxxxxxxx()V

    return-void
.end method

.method static synthetic access$1000()Landroid/content/Context;
    .locals 1

    .line 68
    sget-object v0, Lcom/easyvictory/cheto/Entry;->baseContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100()Landroid/view/SurfaceView;
    .locals 1

    .line 68
    invoke-static {}, Lcom/easyvictory/cheto/Entry;->getGlView()Landroid/view/SurfaceView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Lcom/easyvictory/cheto/ESPView;
    .locals 1

    .line 68
    sget-object v0, Lcom/easyvictory/cheto/Entry;->overlayView:Lcom/easyvictory/cheto/ESPView;

    return-object v0
.end method

.method static synthetic access$300(JI)V
    .locals 0

    .line 68
    invoke-static {p0, p1, p2}, Lcom/easyvictory/cheto/Entry;->chsPkt(JI)V

    return-void
.end method

.method static synthetic access$400(J)V
    .locals 0

    .line 68
    invoke-static {p0, p1}, Lcom/easyvictory/cheto/Entry;->tkShtNative(J)V

    return-void
.end method

.method static synthetic access$500()Landroid/app/Activity;
    .locals 1

    .line 68
    sget-object v0, Lcom/easyvictory/cheto/Entry;->mainActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$502(Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    .line 68
    sput-object p0, Lcom/easyvictory/cheto/Entry;->mainActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Lcom/easyvictory/cheto/Entry;->predictionDrawPowerText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Lcom/easyvictory/cheto/Entry;->lineThicknessText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Lcom/easyvictory/cheto/Entry;->lineTransparencyText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Lcom/easyvictory/cheto/Entry;->angleStepSizeText:Ljava/lang/String;

    return-object v0
.end method

.method static addOverlay(Landroid/content/Context;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-wide v0, -0x439b0515e32061ccL    # -9.098683081980567E-18

    .line 820
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 821
    new-instance v1, Lcom/easyvictory/cheto/ESPView;

    invoke-direct {v1, p0, v0}, Lcom/easyvictory/cheto/ESPView;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    sput-object v1, Lcom/easyvictory/cheto/Entry;->overlayView:Lcom/easyvictory/cheto/ESPView;

    const/4 v5, 0x2

    .line 823
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v6, 0x518

    const/4 v7, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 829
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    .line 830
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_0
    const v1, 0x800033

    .line 832
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 836
    :try_start_0
    invoke-static {p0}, Lcom/easyvictory/cheto/Record;->setFakeRecorderWindowLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 839
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;)V

    .line 843
    :goto_0
    :try_start_1
    sget-object v1, Lcom/easyvictory/cheto/Entry;->overlayView:Lcom/easyvictory/cheto/ESPView;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void
.end method

.method private static backButtonHandlerInstance()Ljava/lang/Object;
    .locals 5

    const-wide v0, -0x439b040ce32061ccL    # -9.100436704879179E-18

    const/4 v2, 0x0

    .line 483
    :try_start_0
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-wide v3, -0x439b0431e32061ccL    # -9.100191859417863E-18

    .line 484
    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 486
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 487
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, -0x439b043ae32061ccL    # -9.10013230241376E-18

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;)V

    :cond_0
    return-object v2
.end method

.method private static native chsPkt(JI)V
.end method

.method private native className()Ljava/lang/String;
.end method

.method public static copyAssets(Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 321
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 322
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 324
    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 325
    :try_start_1
    invoke-static {v2, p1}, Lcom/easyvictory/cheto/Entry;->findAndCopyAssets(Ljava/util/zip/ZipFile;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 327
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x439b031ee32061ccL    # -9.10201165676548E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-wide v0, -0x439b0326e32061ccL    # -9.101958717206277E-18

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/easyvictory/cheto/Logger;->d(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 324
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p0

    .line 327
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x439b0329e32061ccL    # -9.101938864871575E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-wide v0, -0x439b0331e32061ccL    # -9.101885925312372E-18

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/easyvictory/cheto/Logger;->d(Ljava/lang/String;)V

    .line 328
    throw p0
.end method

.method public static copyNativeLib(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 305
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 306
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 308
    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipFile;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 309
    :try_start_1
    sget-object p0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v2, p0, p1}, Lcom/easyvictory/cheto/Entry;->findAndCopyNativeLib(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    .line 314
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 315
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x439b02f5e32061ccL    # -9.102282972006397E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-wide v0, -0x439b02fde32061ccL    # -9.102230032447194E-18

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/easyvictory/cheto/Logger;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    const-wide v3, -0x439b0300e32061ccL    # -9.102210180112493E-18

    .line 313
    :try_start_3
    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, p1}, Lcom/easyvictory/cheto/Entry;->findAndCopyNativeLib(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 314
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 315
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x439b0308e32061ccL    # -9.10215724055329E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-wide v0, -0x439b0310e32061ccL    # -9.102104300994086E-18

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/easyvictory/cheto/Logger;->d(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 308
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    .line 315
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x439b0313e32061ccL    # -9.102084448659385E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-wide v0, -0x439b031be32061ccL    # -9.102031509100181E-18

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/easyvictory/cheto/Logger;->d(Ljava/lang/String;)V

    .line 316
    throw p0
.end method

.method private static copySo([BLjava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 430
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 433
    :goto_0
    invoke-virtual {v0, p0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    .line 434
    invoke-virtual {v1, p0, v3, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_0

    .line 436
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 437
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 438
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 439
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 440
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public static createBitmapFromGLSurface(IIII)Landroid/graphics/Bitmap;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    mul-int v0, p2, p3

    .line 445
    new-array v1, v0, [I

    .line 446
    new-array v0, v0, [I

    .line 447
    invoke-static {v1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v8

    const/4 v9, 0x0

    .line 448
    invoke-virtual {v8, v9}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 450
    :try_start_0
    invoke-static/range {v2 .. v8}, Landroid/opengl/GLES10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    move p0, v9

    :goto_0
    if-ge p0, p3, :cond_1

    move p1, v9

    :goto_1
    if-ge p1, p2, :cond_0

    mul-int v2, p0, p2

    add-int/2addr v2, p1

    .line 453
    aget v2, v1, v2

    sub-int v3, p3, p0

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v3, p2

    add-int/2addr v3, p1

    shr-int/lit8 v4, v2, 0x10

    and-int/lit16 v4, v4, 0xff

    const v5, -0xff0100

    and-int/2addr v5, v2

    or-int/2addr v4, v5

    shl-int/lit8 v2, v2, 0x10

    const/high16 v5, 0xff0000

    and-int/2addr v2, v5

    or-int/2addr v2, v4

    .line 454
    aput v2, v0, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 457
    :cond_1
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p2, p3, p0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Landroid/opengl/GLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 459
    throw p0
.end method

.method public static draw(Lcom/easyvictory/cheto/ESPView;Landroid/graphics/Canvas;)V
    .locals 1

    .line 812
    :try_start_0
    iget-object v0, p0, Lcom/easyvictory/cheto/ESPView;->windowManager:Landroid/view/WindowManager;

    invoke-static {v0}, Lcom/easyvictory/cheto/Entry;->isLandscapeLeftOrRight(Landroid/view/WindowManager;)Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/easyvictory/cheto/Entry;->nativeDraw(Lcom/easyvictory/cheto/ESPView;Landroid/graphics/Canvas;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 815
    :catchall_0
    iget-object p1, p0, Lcom/easyvictory/cheto/ESPView;->windowManager:Landroid/view/WindowManager;

    invoke-interface {p1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method static findAndCopyAssets(Ljava/util/zip/ZipFile;Ljava/io/File;)V
    .locals 10

    .line 335
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 337
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 338
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 339
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    if-nez v1, :cond_0

    const-wide v5, -0x439b0334e32061ccL    # -9.10186607297767E-18

    .line 340
    invoke-static {v5, v6}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    const/16 v1, 0x2000

    new-array v1, v1, [B

    move-object v2, v1

    :cond_1
    const/16 v1, 0x2f

    .line 349
    invoke-virtual {v4, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v5, 0x1

    add-int/2addr v1, v5

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 350
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v6, -0x439b033ce32061ccL

    invoke-static {v6, v7}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/easyvictory/cheto/Logger;->d(Ljava/lang/String;)V

    .line 356
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 358
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide v3, -0x439b0347e32061ccL    # -9.101740341524563E-18

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/easyvictory/cheto/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 364
    :cond_2
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 368
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v6, -0x439b0352e32061ccL    # -9.101667549630658E-18

    invoke-static {v6, v7}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/easyvictory/cheto/Logger;->d(Ljava/lang/String;)V

    .line 370
    :try_start_1
    invoke-virtual {p0, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/easyvictory/cheto/Entry;->copySo([BLjava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    move v1, v5

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 372
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 366
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    return-void
.end method

.method private static findAndCopyNativeLib(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/io/File;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x439b0358e32061ccL    # -9.101627844961255E-18

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easyvictory/cheto/Logger;->d(Ljava/lang/String;)V

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x439b0378e32061ccL    # -9.101416086724442E-18

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x439b037de32061ccL    # -9.10138299949994E-18

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    move v3, v2

    .line 386
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    .line 387
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 388
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    if-nez v2, :cond_0

    const-wide v8, -0x439b037fe32061ccL    # -9.101369764610139E-18

    .line 389
    invoke-static {v8, v9}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    const-wide v8, -0x439b0384e32061ccL    # -9.101336677385637E-18

    .line 393
    invoke-static {v8, v9}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    if-nez v4, :cond_2

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, -0x439b0388e32061ccL    # -9.101310207606035E-18

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/easyvictory/cheto/Logger;->d(Ljava/lang/String;)V

    const/16 v2, 0x2000

    new-array v2, v2, [B

    move-object v4, v2

    move v3, v6

    :cond_2
    const/16 v2, 0x2f

    .line 403
    invoke-virtual {v7, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/2addr v2, v6

    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 404
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v8, -0x439b03a6e32061ccL    # -9.101111684259022E-18

    invoke-static {v8, v9}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/easyvictory/cheto/Logger;->d(Ljava/lang/String;)V

    .line 410
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 411
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 412
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide v7, -0x439b03b1e32061ccL    # -9.101038892365118E-18

    invoke-static {v7, v8}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/easyvictory/cheto/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 415
    :cond_3
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 416
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v8, -0x439b03bce32061ccL    # -9.100966100471213E-18

    invoke-static {v8, v9}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide v8, -0x439b03c5e32061ccL    # -9.10090654346711E-18

    invoke-static {v8, v9}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/easyvictory/cheto/Logger;->d(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/easyvictory/cheto/Entry;->copySo([BLjava/io/InputStream;Ljava/io/OutputStream;)V

    :cond_4
    :goto_1
    move v2, v6

    goto/16 :goto_0

    :cond_5
    if-nez v2, :cond_6

    const-wide p0, -0x439b03cae32061ccL    # -9.100873456242607E-18

    .line 421
    invoke-static {p0, p1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/easyvictory/cheto/Logger;->d(Ljava/lang/String;)V

    return v6

    :cond_6
    return v3
.end method

.method public static forceFB(Z)V
    .locals 0

    .line 562
    invoke-static {p0}, Lcom/easyvictory/cheto/Entry;->forceFBNative(Z)V

    return-void
.end method

.method static native forceFBNative(Z)V
.end method

.method public static gca()J
    .locals 2

    .line 529
    invoke-static {}, Lcom/easyvictory/cheto/Entry;->gcaNative()J

    move-result-wide v0

    return-wide v0
.end method

.method static native gcaNative()J
.end method

.method private static getGlView()Landroid/view/SurfaceView;
    .locals 5

    const-wide v0, -0x439b03d9e32061ccL    # -9.1007741945691E-18

    const/4 v2, 0x0

    .line 465
    :try_start_0
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-wide v3, -0x439b03fde32061ccL    # -9.100535966552685E-18

    .line 466
    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 468
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 469
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 471
    check-cast v0, Landroid/view/SurfaceView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, -0x439b0404e32061ccL

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;)V

    :cond_0
    return-object v2
.end method

.method public static getMCMS()I
    .locals 1

    .line 549
    invoke-static {}, Lcom/easyvictory/cheto/Entry;->getMCMSNative()I

    move-result v0

    return v0
.end method

.method static native getMCMSNative()I
.end method

.method public static getMS()I
    .locals 1

    .line 553
    invoke-static {}, Lcom/easyvictory/cheto/Entry;->getMSNative()I

    move-result v0

    return v0
.end method

.method static native getMSNative()I
.end method

.method static getMainActivity()Landroid/app/Activity;
    .locals 5

    const-wide v0, -0x439b048de32061ccL    # -9.099583054487024E-18

    const/4 v2, 0x0

    .line 743
    :try_start_0
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-wide v3, -0x439b04ade32061ccL    # -9.099371296250211E-18

    .line 744
    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 745
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v3, [Ljava/lang/Object;

    .line 746
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 748
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;)V

    return-object v2
.end method

.method static getRowBytes()[C
    .locals 3

    .line 174
    sget-object v0, Lcom/easyvictory/cheto/Entry;->iSampleInterface:Lcom/easyvictory/cheto/ISampleInterface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 176
    :try_start_0
    invoke-interface {v0}, Lcom/easyvictory/cheto/ISampleInterface;->getRowBytes()[C

    move-result-object v1

    if-eqz v1, :cond_0

    .line 177
    array-length v0, v1

    if-lez v0, :cond_0

    .line 178
    sget-object v0, Lcom/easyvictory/cheto/Entry;->baseContext:Landroid/content/Context;

    sget-object v2, Lcom/easyvictory/cheto/Entry;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 182
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v1
.end method

.method public static hAPO()Z
    .locals 1

    .line 557
    invoke-static {}, Lcom/easyvictory/cheto/Entry;->hAPONative()Z

    move-result v0

    return v0
.end method

.method static native hAPONative()Z
.end method

.method public static iGS()Z
    .locals 1

    .line 539
    invoke-static {}, Lcom/easyvictory/cheto/Entry;->iGSNative()Z

    move-result v0

    return v0
.end method

.method static native iGSNative()Z
.end method

.method public static iPB()Z
    .locals 1

    .line 534
    invoke-static {}, Lcom/easyvictory/cheto/Entry;->iPBNative()Z

    move-result v0

    return v0
.end method

.method static native iPBNative()Z
.end method

.method public static iPT()Z
    .locals 1

    .line 544
    invoke-static {}, Lcom/easyvictory/cheto/Entry;->iPTNative()Z

    move-result v0

    return v0
.end method

.method static native iPTNative()Z
.end method

.method static initialize()V
    .locals 2

    .line 573
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/easyvictory/cheto/Entry$6;

    invoke-direct {v1}, Lcom/easyvictory/cheto/Entry$6;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 730
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static isLandscapeLeftOrRight(Landroid/view/WindowManager;)Z
    .locals 1

    .line 800
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 801
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static native nativeDraw(Lcom/easyvictory/cheto/ESPView;Landroid/graphics/Canvas;Z)V
.end method

.method static noPkt(JI)V
    .locals 1

    .line 191
    new-instance v0, Lcom/easyvictory/cheto/Entry$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/easyvictory/cheto/Entry$4;-><init>(JI)V

    invoke-static {v0}, Lcom/easyvictory/cheto/Entry;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static pTTD(Ljava/lang/String;I)V
    .locals 0

    .line 567
    invoke-static {p0, p1}, Lcom/easyvictory/cheto/Entry;->pTTDNative(Ljava/lang/String;I)V

    return-void
.end method

.method static native pTTDNative(Ljava/lang/String;I)V
.end method

.method public static queueEvent(Ljava/lang/Runnable;)V
    .locals 2

    .line 734
    sget-object v0, Lcom/easyvictory/cheto/Entry;->mQueuedEvents:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 735
    monitor-enter v0

    .line 736
    :try_start_0
    sget-object v1, Lcom/easyvictory/cheto/Entry;->mQueuedEvents:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 737
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method static simulateBackButton()V
    .locals 10

    const-wide v0, -0x439b0442e32061ccL    # -9.100079362854556E-18

    .line 502
    :try_start_0
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-wide v1, -0x439b0467e32061ccL    # -9.09983451739324E-18

    .line 504
    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 505
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 506
    invoke-static {}, Lcom/easyvictory/cheto/Entry;->backButtonHandlerInstance()Ljava/lang/Object;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v2, v7

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v1, -0x439b0473e32061ccL    # -9.099755108054435E-18

    .line 508
    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    const-class v3, Landroid/view/KeyEvent;

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 509
    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 511
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v5, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 512
    invoke-virtual {v2, v6}, Landroid/view/KeyEvent;->setSource(I)V

    .line 513
    invoke-static {}, Lcom/easyvictory/cheto/Entry;->backButtonHandlerInstance()Ljava/lang/Object;

    move-result-object v3

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    aput-object v2, v8, v6

    invoke-virtual {v1, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v1, -0x439b047de32061ccL    # -9.099688933605431E-18

    .line 515
    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    const-class v3, Landroid/view/KeyEvent;

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 516
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 518
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v6, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 519
    invoke-virtual {v1, v6}, Landroid/view/KeyEvent;->setSource(I)V

    .line 520
    invoke-static {}, Lcom/easyvictory/cheto/Entry;->backButtonHandlerInstance()Ljava/lang/Object;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x439b0485e32061ccL    # -9.099635994046228E-18

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

.method static tkSht(J)V
    .locals 1

    .line 295
    new-instance v0, Lcom/easyvictory/cheto/Entry$5;

    invoke-direct {v0, p0, p1}, Lcom/easyvictory/cheto/Entry$5;-><init>(J)V

    invoke-static {v0}, Lcom/easyvictory/cheto/Entry;->queueEvent(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static native tkShtNative(J)V
.end method

.method static tscr()V
    .locals 17

    .line 200
    sget-object v0, Lcom/easyvictory/cheto/Entry;->mainActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 203
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 204
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    int-to-float v6, v0

    const/16 v7, 0xa

    int-to-float v15, v7

    move v7, v15

    .line 210
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 211
    sget-object v2, Lcom/easyvictory/cheto/Entry;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 212
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 216
    :try_start_0
    sget-object v1, Lcom/easyvictory/cheto/Entry;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-float v1, v1

    goto :goto_0

    :catchall_0
    const/high16 v1, 0x447a0000    # 1000.0f

    :goto_0
    const-wide/16 v2, 0x5

    .line 223
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x5

    .line 229
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 230
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const/4 v13, 0x2

    const/16 v16, 0x0

    int-to-float v2, v0

    move v14, v2

    move v3, v15

    .line 234
    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v4

    .line 235
    sget-object v5, Lcom/easyvictory/cheto/Entry;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v5, v4}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 236
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    add-int/lit8 v4, v0, 0x5

    int-to-float v4, v4

    cmpg-float v4, v4, v1

    if-ltz v4, :cond_1

    .line 240
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const/4 v13, 0x1

    const/16 v16, 0x0

    move v14, v2

    move v15, v3

    .line 245
    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 246
    sget-object v1, Lcom/easyvictory/cheto/Entry;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 247
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :cond_1
    move v15, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 225
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static tscrAt(II)V
    .locals 14

    .line 259
    sget-object v0, Lcom/easyvictory/cheto/Entry;->mainActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 263
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v13, 0x0

    int-to-float v11, p0

    int-to-float v12, p1

    const/4 v8, 0x0

    move v6, v11

    move v7, v12

    .line 267
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p0

    .line 268
    sget-object p1, Lcom/easyvictory/cheto/Entry;->mainActivity:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 269
    invoke-virtual {p0}, Landroid/view/MotionEvent;->recycle()V

    const-wide/16 p0, 0x5

    .line 272
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 278
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v10, 0x1

    .line 280
    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p0

    .line 281
    sget-object p1, Lcom/easyvictory/cheto/Entry;->mainActivity:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 282
    invoke-virtual {p0}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :catch_0
    move-exception p0

    .line 274
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static tscrWrapper()V
    .locals 1

    .line 252
    :try_start_0
    invoke-static {}, Lcom/easyvictory/cheto/Entry;->tscr()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 254
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static tscrWrapper(II)V
    .locals 0

    .line 287
    :try_start_0
    invoke-static {p0, p1}, Lcom/easyvictory/cheto/Entry;->tscrAt(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 289
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static native xxxxxxxx()V
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 755
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 756
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/easyvictory/cheto/Logger;->d(Ljava/lang/String;Z)V

    .line 758
    sput-object p2, Lcom/easyvictory/cheto/Entry;->floatingView:Landroid/view/View;

    .line 759
    sput-object p3, Lcom/easyvictory/cheto/Entry;->controllerView:Landroid/view/View;

    .line 761
    sput-object p5, Lcom/easyvictory/cheto/Entry;->predictionDrawPowerText:Ljava/lang/String;

    .line 762
    sput-object p6, Lcom/easyvictory/cheto/Entry;->lineThicknessText:Ljava/lang/String;

    .line 763
    sput-object p7, Lcom/easyvictory/cheto/Entry;->lineTransparencyText:Ljava/lang/String;

    .line 764
    sput-object p8, Lcom/easyvictory/cheto/Entry;->angleStepSizeText:Ljava/lang/String;

    const-wide p2, -0x439b04b9e32061ccL    # -9.099291886911406E-18

    .line 768
    :try_start_0
    invoke-static {p2, p3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-wide p5, -0x439b04e9e32061ccL    # -9.098974249556185E-18

    .line 769
    invoke-static {p5, p6}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    .line 770
    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 p3, 0x0

    .line 771
    invoke-virtual {p2, p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    sput-object p2, Lcom/easyvictory/cheto/Entry;->mQueuedEvents:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 780
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-wide p3, -0x439b04f7e32061ccL    # -9.09888160532758E-18

    invoke-static {p3, p4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 782
    sput-object p1, Lcom/easyvictory/cheto/Entry;->baseContext:Landroid/content/Context;

    .line 783
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-wide p2, -0x439b04ffe32061ccL    # -9.098828665768376E-18

    .line 784
    invoke-static {p2, p3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p2

    const-class p3, Lcom/easyvictory/cheto/IPC_Service;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 785
    sget-object p2, Lcom/easyvictory/cheto/Entry;->baseContext:Landroid/content/Context;

    sget-object p3, Lcom/easyvictory/cheto/Entry;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p2, p1, p3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 788
    :try_start_2
    invoke-static {}, Lcom/easyvictory/cheto/Entry;->initialize()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 790
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;)V

    .line 793
    :goto_0
    invoke-virtual {p0}, Lcom/easyvictory/cheto/Entry;->start()V

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 774
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;Z)V

    .line 775
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    const/4 p1, 0x0

    .line 776
    invoke-static {p1}, Ljava/lang/System;->exit(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-void

    :catchall_2
    move-exception p1

    .line 795
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method public isSystemKeyboardVisible()Z
    .locals 6

    const/4 v0, 0x0

    .line 101
    :try_start_0
    sget-object v1, Lcom/easyvictory/cheto/Entry;->floatingView:Landroid/view/View;

    const v2, 0x7f09001f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    .line 102
    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move v1, v0

    :goto_0
    const-wide v2, -0x439b02b9e32061ccL    # -9.102680018700423E-18

    .line 108
    :try_start_1
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/easyvictory/cheto/Entry;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 109
    const-class v3, Landroid/view/inputmethod/InputMethodManager;

    const-wide v4, -0x439b02c6e32061ccL    # -9.102593991916717E-18

    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    .line 110
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v1, :cond_0

    if-lez v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :catch_0
    :cond_1
    return v0
.end method

.method start()V
    .locals 3

    .line 118
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/easyvictory/cheto/Entry$2;

    invoke-direct {v1, p0}, Lcom/easyvictory/cheto/Entry$2;-><init>(Lcom/easyvictory/cheto/Entry;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 127
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 130
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/easyvictory/cheto/Entry$3;

    invoke-direct {v1, p0}, Lcom/easyvictory/cheto/Entry$3;-><init>(Lcom/easyvictory/cheto/Entry;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 166
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-wide v1, -0x439b02e8e32061ccL    # -9.102368998790103E-18

    .line 168
    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
