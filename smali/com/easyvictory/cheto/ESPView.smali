.class public Lcom/easyvictory/cheto/ESPView;
.super Landroid/view/View;
.source "ESPView.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static sleepTime:J


# instance fields
.field FPS:I

.field formatter:Ljava/text/SimpleDateFormat;

.field mFilledPaint:Landroid/graphics/Paint;

.field mStrokePaint:Landroid/graphics/Paint;

.field mTextPaint:Landroid/graphics/Paint;

.field mThread:Ljava/lang/Thread;

.field time:Ljava/util/Date;

.field windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1, v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x3c

    .line 23
    iput p1, p0, Lcom/easyvictory/cheto/ESPView;->FPS:I

    .line 36
    iput-object p2, p0, Lcom/easyvictory/cheto/ESPView;->windowManager:Landroid/view/WindowManager;

    .line 37
    invoke-virtual {p0}, Lcom/easyvictory/cheto/ESPView;->InitializePaints()V

    .line 38
    invoke-virtual {p0, v1}, Lcom/easyvictory/cheto/ESPView;->setFocusableInTouchMode(Z)V

    .line 39
    invoke-virtual {p0, v1}, Lcom/easyvictory/cheto/ESPView;->setBackgroundColor(I)V

    .line 40
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/easyvictory/cheto/ESPView;->time:Ljava/util/Date;

    .line 41
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-wide v0, -0x439b051ce32061ccL    # -9.098636759866264E-18

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/easyvictory/cheto/ESPView;->formatter:Ljava/text/SimpleDateFormat;

    const/16 p1, 0x3e8

    .line 42
    iget p2, p0, Lcom/easyvictory/cheto/ESPView;->FPS:I

    div-int/2addr p1, p2

    int-to-long p1, p1

    sput-wide p1, Lcom/easyvictory/cheto/ESPView;->sleepTime:J

    .line 43
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/easyvictory/cheto/ESPView;->mThread:Ljava/lang/Thread;

    .line 44
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static ChangeFps(I)V
    .locals 2

    add-int/lit8 p0, p0, 0x14

    const/16 v0, 0x3e8

    .line 31
    div-int/2addr v0, p0

    int-to-long v0, v0

    sput-wide v0, Lcom/easyvictory/cheto/ESPView;->sleepTime:J

    return-void
.end method


# virtual methods
.method public ClearCanvas(Landroid/graphics/Canvas;)V
    .locals 2

    const/4 v0, 0x0

    .line 94
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public DrawCircle(Landroid/graphics/Canvas;IIIIFFF)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/easyvictory/cheto/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-static {p3, p4, p5}, Landroid/graphics/Color;->rgb(III)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object p3, p0, Lcom/easyvictory/cheto/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 124
    iget-object p2, p0, Lcom/easyvictory/cheto/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 125
    iget-object p2, p0, Lcom/easyvictory/cheto/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    const/high16 p3, 0x41000000    # 8.0f

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 126
    iget-object p2, p0, Lcom/easyvictory/cheto/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p6, p7, p8, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public DrawFilledCircle(Landroid/graphics/Canvas;IIIIFFF)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/easyvictory/cheto/ESPView;->mFilledPaint:Landroid/graphics/Paint;

    invoke-static {p3, p4, p5}, Landroid/graphics/Color;->rgb(III)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    iget-object p3, p0, Lcom/easyvictory/cheto/ESPView;->mFilledPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 132
    iget-object p2, p0, Lcom/easyvictory/cheto/ESPView;->mFilledPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    iget-object p2, p0, Lcom/easyvictory/cheto/ESPView;->mFilledPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p6, p7, p8, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public DrawFilledRect(Landroid/graphics/Canvas;IIIIFFFF)V
    .locals 6

    .line 110
    iget-object v0, p0, Lcom/easyvictory/cheto/ESPView;->mFilledPaint:Landroid/graphics/Paint;

    invoke-static {p3, p4, p5}, Landroid/graphics/Color;->rgb(III)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object p3, p0, Lcom/easyvictory/cheto/ESPView;->mFilledPaint:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 112
    iget-object v5, p0, Lcom/easyvictory/cheto/ESPView;->mFilledPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p6

    move v2, p7

    move v3, p8

    move v4, p9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public DrawLine(Landroid/graphics/Canvas;IIIIFFFFF)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/easyvictory/cheto/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-static {p3, p4, p5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v0, p0, Lcom/easyvictory/cheto/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 100
    iget-object v0, p0, Lcom/easyvictory/cheto/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 101
    iget-object v0, p0, Lcom/easyvictory/cheto/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    move p2, p7

    move p3, p8

    move p4, p9

    move p5, p10

    move-object p6, v0

    invoke-virtual/range {p1 .. p6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public DrawRect(Landroid/graphics/Canvas;IIIIFFFFF)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/easyvictory/cheto/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    iget-object v0, p0, Lcom/easyvictory/cheto/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-static {p3, p4, p5}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object v0, p0, Lcom/easyvictory/cheto/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 107
    iget-object v0, p0, Lcom/easyvictory/cheto/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    move p2, p7

    move p3, p8

    move p4, p9

    move p5, p10

    move-object p6, v0

    invoke-virtual/range {p1 .. p6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public DrawText(Landroid/graphics/Canvas;IIIILjava/lang/String;FFF)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/easyvictory/cheto/ESPView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 117
    iget-object p2, p0, Lcom/easyvictory/cheto/ESPView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 118
    iget-object p2, p0, Lcom/easyvictory/cheto/ESPView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p6, p7, p8, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public InitializePaints()V
    .locals 4

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/easyvictory/cheto/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    .line 76
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    iget-object v0, p0, Lcom/easyvictory/cheto/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 78
    iget-object v0, p0, Lcom/easyvictory/cheto/ESPView;->mStrokePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/easyvictory/cheto/ESPView;->mFilledPaint:Landroid/graphics/Paint;

    .line 81
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    iget-object v0, p0, Lcom/easyvictory/cheto/ESPView;->mFilledPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    iget-object v0, p0, Lcom/easyvictory/cheto/ESPView;->mFilledPaint:Landroid/graphics/Paint;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/easyvictory/cheto/ESPView;->mTextPaint:Landroid/graphics/Paint;

    .line 86
    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    iget-object v0, p0, Lcom/easyvictory/cheto/ESPView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    iget-object v0, p0, Lcom/easyvictory/cheto/ESPView;->mTextPaint:Landroid/graphics/Paint;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget-object v0, p0, Lcom/easyvictory/cheto/ESPView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 90
    iget-object v0, p0, Lcom/easyvictory/cheto/ESPView;->mTextPaint:Landroid/graphics/Paint;

    const v1, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/easyvictory/cheto/ESPView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/ESPView;->ClearCanvas(Landroid/graphics/Canvas;)V

    .line 51
    invoke-static {p0, p1}, Lcom/easyvictory/cheto/Entry;->draw(Lcom/easyvictory/cheto/ESPView;Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    const/16 v0, 0xa

    .line 58
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 59
    :goto_0
    iget-object v0, p0, Lcom/easyvictory/cheto/ESPView;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easyvictory/cheto/ESPView;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 62
    invoke-virtual {p0}, Lcom/easyvictory/cheto/ESPView;->postInvalidate()V

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 65
    sget-wide v0, Lcom/easyvictory/cheto/ESPView;->sleepTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sget-wide v2, Lcom/easyvictory/cheto/ESPView;->sleepTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method
