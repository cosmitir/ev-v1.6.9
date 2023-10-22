.class public Lcom/easyvictory/cheto/FloatLogo;
.super Ljava/lang/Object;
.source "FloatLogo.java"


# static fields
.field private static Instance:Lcom/easyvictory/cheto/FloatLogo;


# instance fields
.field private adBlock:Landroid/widget/Switch;

.field private angleStepSizeRText:Ljava/lang/String;

.field private aqHumanizationMode:Landroid/widget/Spinner;

.field private aqMode:Landroid/widget/Spinner;

.field private autoAction:Landroid/widget/Spinner;

.field autoQueueLimit:Landroid/widget/EditText;

.field private choosePocketsManually:Landroid/widget/Switch;

.field private chosenTable:Landroid/widget/TextView;

.field private chosenTable2:Landroid/widget/TextView;

.field private closeButton:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private drawPrediction:Landroid/widget/Switch;

.field private drawShotState:Landroid/widget/Switch;

.field private enableAQ:Landroid/widget/Switch;

.field private exportSettings:Landroid/widget/Button;

.field private extraHumanization:Landroid/widget/Switch;

.field private fastAutoPlayMode:Landroid/widget/Switch;

.field private fastAutoQueueMode:Landroid/widget/Switch;

.field private findBestShot:Landroid/widget/Switch;

.field private floatingView:Landroid/view/View;

.field private freezeLines:Landroid/widget/Switch;

.field private gAngleStepSize:Landroid/widget/SeekBar;

.field private gLinesThickness:Landroid/widget/SeekBar;

.field private gLinesTransparency:Landroid/widget/SeekBar;

.field private gMainTab:Landroid/view/View;

.field private gMainTabButton:Landroid/widget/ImageButton;

.field private gMaxBreaks:Landroid/widget/SeekBar;

.field private gMaxWins:Landroid/widget/SeekBar;

.field private gMiscTab:Landroid/view/View;

.field private gMiscTabButton:Landroid/widget/ImageButton;

.field private gPredictionDrawPower:Landroid/widget/SeekBar;

.field private gVisualsTab:Landroid/view/View;

.field private gVisualsTabButton:Landroid/widget/ImageButton;

.field private humanizedAngle:Landroid/widget/Switch;

.field private humanizedPower:Landroid/widget/Switch;

.field private importSettings:Landroid/widget/Button;

.field private lineThicknessRText:Ljava/lang/String;

.field private lineTransparencyRText:Ljava/lang/String;

.field private logoView:Landroid/view/View;

.field private mainView:Landroid/view/View;

.field private maxTableSwipes:I

.field private openVictoryBoxes:Landroid/widget/Switch;

.field private playGoldenShot:Landroid/widget/Switch;

.field private predictionDrawPowerRText:Ljava/lang/String;

.field private randomBetId:Landroid/widget/Switch;

.field private smartMatchLose:Landroid/widget/Switch;

.field private tableMinus:Landroid/widget/Button;

.field private tableMinus2:Landroid/widget/Button;

.field private tableSum:Landroid/widget/Button;

.field private tableSum2:Landroid/widget/Button;

.field private targetStripeYellowBall:Landroid/widget/Switch;

.field private useFullPowerAtBreak:Landroid/widget/Switch;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/easyvictory/cheto/FloatLogo;->context:Landroid/content/Context;

    const/16 v0, 0x14

    .line 103
    iput v0, p0, Lcom/easyvictory/cheto/FloatLogo;->maxTableSwipes:I

    return-void
.end method

.method static synthetic access$000(Lcom/easyvictory/cheto/FloatLogo;Ljava/lang/String;J)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/easyvictory/cheto/FloatLogo;->setValue(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$100(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/TextView;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->chosenTable:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/easyvictory/cheto/FloatLogo;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->lineTransparencyRText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/easyvictory/cheto/FloatLogo;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->angleStepSizeRText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/easyvictory/cheto/FloatLogo;)Landroid/view/View;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->mainView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/easyvictory/cheto/FloatLogo;)Landroid/view/View;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->logoView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/easyvictory/cheto/FloatLogo;)Landroid/view/View;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->gMainTab:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/easyvictory/cheto/FloatLogo;)Landroid/view/View;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->gVisualsTab:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/easyvictory/cheto/FloatLogo;)Landroid/view/View;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->gMiscTab:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->drawPrediction:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/easyvictory/cheto/FloatLogo;Ljava/lang/String;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/easyvictory/cheto/FloatLogo;->setValue(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->enableAQ:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$200(Lcom/easyvictory/cheto/FloatLogo;Ljava/lang/String;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/easyvictory/cheto/FloatLogo;->setValue(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->drawShotState:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->adBlock:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->randomBetId:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/SeekBar;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->gMaxWins:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->freezeLines:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->findBestShot:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->useFullPowerAtBreak:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->humanizedPower:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->humanizedAngle:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->fastAutoPlayMode:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$300(Lcom/easyvictory/cheto/FloatLogo;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/easyvictory/cheto/FloatLogo;->maxTableSwipes:I

    return p0
.end method

.method static synthetic access$3000(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->fastAutoQueueMode:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$302(Lcom/easyvictory/cheto/FloatLogo;I)I
    .locals 0

    .line 53
    iput p1, p0, Lcom/easyvictory/cheto/FloatLogo;->maxTableSwipes:I

    return p1
.end method

.method static synthetic access$3100(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->openVictoryBoxes:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->targetStripeYellowBall:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->choosePocketsManually:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->playGoldenShot:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->extraHumanization:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/Spinner;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->autoAction:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/Spinner;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->aqMode:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/easyvictory/cheto/FloatLogo;)Landroid/view/View;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/SeekBar;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->gMaxBreaks:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$400(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/TextView;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->chosenTable2:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/easyvictory/cheto/FloatLogo;)Landroid/view/WindowManager;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->windowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/easyvictory/cheto/FloatLogo;)Landroid/content/Context;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/Switch;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->smartMatchLose:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$600(Lcom/easyvictory/cheto/FloatLogo;Ljava/lang/String;F)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/easyvictory/cheto/FloatLogo;->setValue(Ljava/lang/String;F)V

    return-void
.end method

.method static synthetic access$700(Lcom/easyvictory/cheto/FloatLogo;)Landroid/widget/Spinner;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->aqHumanizationMode:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$800(Lcom/easyvictory/cheto/FloatLogo;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->predictionDrawPowerRText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/easyvictory/cheto/FloatLogo;)Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/easyvictory/cheto/FloatLogo;->lineThicknessRText:Ljava/lang/String;

    return-object p0
.end method

.method public static getInstance()Lcom/easyvictory/cheto/FloatLogo;
    .locals 1

    .line 96
    sget-object v0, Lcom/easyvictory/cheto/FloatLogo;->Instance:Lcom/easyvictory/cheto/FloatLogo;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/easyvictory/cheto/FloatLogo;

    invoke-direct {v0}, Lcom/easyvictory/cheto/FloatLogo;-><init>()V

    sput-object v0, Lcom/easyvictory/cheto/FloatLogo;->Instance:Lcom/easyvictory/cheto/FloatLogo;

    .line 100
    :cond_0
    sget-object v0, Lcom/easyvictory/cheto/FloatLogo;->Instance:Lcom/easyvictory/cheto/FloatLogo;

    return-object v0
.end method

.method private getIntValue(Ljava/lang/String;)I
    .locals 3

    .line 1313
    iget-object v0, p0, Lcom/easyvictory/cheto/FloatLogo;->context:Landroid/content/Context;

    const-wide v1, -0x439b0e2de32061ccL    # -9.083277670252379E-18

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1315
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private getIntValue(Ljava/lang/String;I)I
    .locals 3

    .line 1320
    iget-object v0, p0, Lcom/easyvictory/cheto/FloatLogo;->context:Landroid/content/Context;

    const-wide v1, -0x439b0e36e32061ccL    # -9.083218113248275E-18

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1322
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private getLongValue(Ljava/lang/String;J)J
    .locals 3

    .line 1327
    iget-object v0, p0, Lcom/easyvictory/cheto/FloatLogo;->context:Landroid/content/Context;

    const-wide v1, -0x439b0e3fe32061ccL    # -9.083158556244171E-18

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1329
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method private getValue(Ljava/lang/String;F)F
    .locals 3

    .line 1306
    iget-object v0, p0, Lcom/easyvictory/cheto/FloatLogo;->context:Landroid/content/Context;

    const-wide v1, -0x439b0e24e32061ccL    # -9.083337227256483E-18

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1308
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method private getValue(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1294
    invoke-direct {p0, p1, v0}, Lcom/easyvictory/cheto/FloatLogo;->getValue(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private getValue(Ljava/lang/String;Z)Z
    .locals 3

    .line 1299
    iget-object v0, p0, Lcom/easyvictory/cheto/FloatLogo;->context:Landroid/content/Context;

    const-wide v1, -0x439b0e1be32061ccL    # -9.083396784260587E-18

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1301
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private load()V
    .locals 19

    move-object/from16 v1, p0

    .line 358
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f09000a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->autoQueueLimit:Landroid/widget/EditText;

    .line 359
    new-instance v2, Lcom/easyvictory/cheto/FloatLogo$1;

    invoke-direct {v2, v1}, Lcom/easyvictory/cheto/FloatLogo$1;-><init>(Lcom/easyvictory/cheto/FloatLogo;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const-wide v2, -0x439b0bdee32061ccL    # -9.08718858018853E-18

    const-wide/16 v4, 0x0

    .line 388
    :try_start_0
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v4, v5}, Lcom/easyvictory/cheto/FloatLogo;->getLongValue(Ljava/lang/String;J)J

    move-result-wide v4

    .line 389
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->autoQueueLimit:Landroid/widget/EditText;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 392
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;)V

    :goto_0
    const/16 v0, 0x12c

    .line 395
    invoke-virtual {v1, v0, v4, v5}, Lcom/easyvictory/cheto/FloatLogo;->SettingLongValueWrapper(IJ)Z

    .line 397
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f0900ce

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->closeButton:Landroid/widget/TextView;

    .line 399
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f090008

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gMainTabButton:Landroid/widget/ImageButton;

    .line 400
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f090061

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gVisualsTabButton:Landroid/widget/ImageButton;

    .line 401
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f090039

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gMiscTabButton:Landroid/widget/ImageButton;

    .line 403
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f090015

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->chosenTable:Landroid/widget/TextView;

    .line 404
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f090016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->chosenTable2:Landroid/widget/TextView;

    .line 406
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f090035

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gMaxWins:Landroid/widget/SeekBar;

    .line 407
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f090033

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gMaxBreaks:Landroid/widget/SeekBar;

    .line 409
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f09021b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->tableMinus:Landroid/widget/Button;

    .line 410
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f09021d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->tableSum:Landroid/widget/Button;

    .line 412
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->tableMinus:Landroid/widget/Button;

    const-wide v2, -0x439b0be9e32061ccL    # -9.087115788294625E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->tableSum:Landroid/widget/Button;

    const-wide v2, -0x439b0bece32061ccL    # -9.087095935959924E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f09021c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->tableMinus2:Landroid/widget/Button;

    .line 416
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f09021e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->tableSum2:Landroid/widget/Button;

    .line 418
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f090001

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->aqHumanizationMode:Landroid/widget/Spinner;

    .line 420
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->tableMinus2:Landroid/widget/Button;

    const-wide v2, -0x439b0befe32061ccL    # -9.087076083625223E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->tableSum2:Landroid/widget/Button;

    const-wide v2, -0x439b0bf2e32061ccL    # -9.087056231290521E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->tableMinus:Landroid/widget/Button;

    new-instance v2, Lcom/easyvictory/cheto/FloatLogo$2;

    invoke-direct {v2, v1}, Lcom/easyvictory/cheto/FloatLogo$2;-><init>(Lcom/easyvictory/cheto/FloatLogo;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->tableSum:Landroid/widget/Button;

    new-instance v2, Lcom/easyvictory/cheto/FloatLogo$3;

    invoke-direct {v2, v1}, Lcom/easyvictory/cheto/FloatLogo$3;-><init>(Lcom/easyvictory/cheto/FloatLogo;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->tableMinus2:Landroid/widget/Button;

    new-instance v2, Lcom/easyvictory/cheto/FloatLogo$4;

    invoke-direct {v2, v1}, Lcom/easyvictory/cheto/FloatLogo$4;-><init>(Lcom/easyvictory/cheto/FloatLogo;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->tableSum2:Landroid/widget/Button;

    new-instance v2, Lcom/easyvictory/cheto/FloatLogo$5;

    invoke-direct {v2, v1}, Lcom/easyvictory/cheto/FloatLogo$5;-><init>(Lcom/easyvictory/cheto/FloatLogo;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f090029

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->importSettings:Landroid/widget/Button;

    .line 500
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f090020

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->exportSettings:Landroid/widget/Button;

    .line 502
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->importSettings:Landroid/widget/Button;

    new-instance v2, Lcom/easyvictory/cheto/FloatLogo$6;

    invoke-direct {v2, v1}, Lcom/easyvictory/cheto/FloatLogo$6;-><init>(Lcom/easyvictory/cheto/FloatLogo;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->exportSettings:Landroid/widget/Button;

    new-instance v2, Lcom/easyvictory/cheto/FloatLogo$7;

    invoke-direct {v2, v1}, Lcom/easyvictory/cheto/FloatLogo$7;-><init>(Lcom/easyvictory/cheto/FloatLogo;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f090007

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gMainTab:Landroid/view/View;

    .line 517
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f090060

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gVisualsTab:Landroid/view/View;

    .line 518
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f090038

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gMiscTab:Landroid/view/View;

    .line 521
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f090042

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gPredictionDrawPower:Landroid/widget/SeekBar;

    .line 522
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f09002a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gLinesThickness:Landroid/widget/SeekBar;

    .line 523
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f09002c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gLinesTransparency:Landroid/widget/SeekBar;

    .line 524
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f090004

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gAngleStepSize:Landroid/widget/SeekBar;

    .line 526
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f090043

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/TextView;

    .line 527
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v3, 0x7f09002b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    .line 528
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v4, 0x7f09002d

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    .line 529
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v5, 0x7f090005

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    .line 530
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v6, 0x7f090036

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    .line 531
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v7, 0x7f090034

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const-wide v8, -0x439b0bf5e32061ccL    # -9.08703637895582E-18

    .line 533
    invoke-static {v8, v9}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    iget-object v8, v1, Lcom/easyvictory/cheto/FloatLogo;->gPredictionDrawPower:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getProgress()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v1, v0, v8}, Lcom/easyvictory/cheto/FloatLogo;->getValue(Ljava/lang/String;F)F

    move-result v0

    float-to-int v8, v0

    const-wide v9, -0x439b0c09e32061ccL    # -9.086904030057812E-18

    .line 534
    invoke-static {v9, v10}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    iget-object v9, v1, Lcom/easyvictory/cheto/FloatLogo;->gLinesThickness:Landroid/widget/SeekBar;

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getProgress()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v1, v0, v9}, Lcom/easyvictory/cheto/FloatLogo;->getValue(Ljava/lang/String;F)F

    move-result v0

    float-to-int v9, v0

    const-wide v10, -0x439b0c18e32061ccL    # -9.086804768384305E-18

    .line 535
    invoke-static {v10, v11}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    iget-object v10, v1, Lcom/easyvictory/cheto/FloatLogo;->gLinesTransparency:Landroid/widget/SeekBar;

    invoke-virtual {v10}, Landroid/widget/SeekBar;->getProgress()I

    move-result v10

    int-to-float v10, v10

    invoke-direct {v1, v0, v10}, Lcom/easyvictory/cheto/FloatLogo;->getValue(Ljava/lang/String;F)F

    move-result v0

    float-to-int v10, v0

    const-wide v11, -0x439b0c2ae32061ccL    # -9.086685654376098E-18

    .line 536
    invoke-static {v11, v12}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    iget-object v11, v1, Lcom/easyvictory/cheto/FloatLogo;->gAngleStepSize:Landroid/widget/SeekBar;

    invoke-virtual {v11}, Landroid/widget/SeekBar;->getProgress()I

    move-result v11

    int-to-float v11, v11

    invoke-direct {v1, v0, v11}, Lcom/easyvictory/cheto/FloatLogo;->getValue(Ljava/lang/String;F)F

    move-result v0

    float-to-int v11, v0

    const-wide v12, -0x439b0c38e32061ccL

    .line 537
    invoke-static {v12, v13}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    iget-object v12, v1, Lcom/easyvictory/cheto/FloatLogo;->gMaxWins:Landroid/widget/SeekBar;

    invoke-virtual {v12}, Landroid/widget/SeekBar;->getProgress()I

    move-result v12

    int-to-float v12, v12

    invoke-direct {v1, v0, v12}, Lcom/easyvictory/cheto/FloatLogo;->getValue(Ljava/lang/String;F)F

    move-result v0

    float-to-int v12, v0

    const-wide v13, -0x439b0c40e32061ccL    # -9.086540070588288E-18

    .line 538
    invoke-static {v13, v14}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    iget-object v13, v1, Lcom/easyvictory/cheto/FloatLogo;->gMaxBreaks:Landroid/widget/SeekBar;

    invoke-virtual {v13}, Landroid/widget/SeekBar;->getProgress()I

    move-result v13

    int-to-float v13, v13

    invoke-direct {v1, v0, v13}, Lcom/easyvictory/cheto/FloatLogo;->getValue(Ljava/lang/String;F)F

    move-result v0

    float-to-int v13, v0

    const/4 v15, 0x1

    .line 541
    :try_start_1
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->predictionDrawPowerRText:Ljava/lang/String;

    new-array v14, v15, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v16, 0x0

    aput-object v17, v14, v16

    invoke-static {v0, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->lineThicknessRText:Ljava/lang/String;

    new-array v14, v15, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v16, 0x0

    aput-object v17, v14, v16

    invoke-static {v0, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->lineTransparencyRText:Ljava/lang/String;

    new-array v14, v15, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v16, 0x0

    aput-object v17, v14, v16

    invoke-static {v0, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->angleStepSizeRText:Ljava/lang/String;

    new-array v14, v15, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v16, 0x0

    aput-object v17, v14, v16

    invoke-static {v0, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide v17, -0x439b0c4ae32061ccL    # -9.086473896139284E-18

    .line 545
    invoke-static/range {v17 .. v18}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    new-array v14, v15, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v16, 0x0

    aput-object v17, v14, v16

    invoke-static {v0, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->aqHumanizationMode:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v15, :cond_0

    const-wide v17, -0x439b0c65e32061ccL    # -9.086295225126973E-18

    .line 549
    invoke-static/range {v17 .. v18}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const-wide v17, -0x439b0c81e32061ccL    # -9.08610993666976E-18

    .line 552
    invoke-static/range {v17 .. v18}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-array v14, v15, [Ljava/lang/Object;

    .line 555
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v16, 0x0

    aput-object v17, v14, v16

    invoke-static {v0, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 557
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;)V

    .line 560
    :goto_2
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gMaxWins:Landroid/widget/SeekBar;

    invoke-virtual {v0, v15}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 561
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gMaxWins:Landroid/widget/SeekBar;

    new-instance v14, Lcom/easyvictory/cheto/FloatLogo$8;

    invoke-direct {v14, v1, v6}, Lcom/easyvictory/cheto/FloatLogo$8;-><init>(Lcom/easyvictory/cheto/FloatLogo;Landroid/widget/TextView;)V

    invoke-virtual {v0, v14}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 585
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gMaxBreaks:Landroid/widget/SeekBar;

    invoke-virtual {v0, v15}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 586
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gMaxBreaks:Landroid/widget/SeekBar;

    new-instance v14, Lcom/easyvictory/cheto/FloatLogo$9;

    invoke-direct {v14, v1, v7}, Lcom/easyvictory/cheto/FloatLogo$9;-><init>(Lcom/easyvictory/cheto/FloatLogo;Landroid/widget/TextView;)V

    invoke-virtual {v0, v14}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 613
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gPredictionDrawPower:Landroid/widget/SeekBar;

    invoke-virtual {v0, v15}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 614
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gPredictionDrawPower:Landroid/widget/SeekBar;

    new-instance v7, Lcom/easyvictory/cheto/FloatLogo$10;

    invoke-direct {v7, v1, v2}, Lcom/easyvictory/cheto/FloatLogo$10;-><init>(Lcom/easyvictory/cheto/FloatLogo;Landroid/widget/TextView;)V

    invoke-virtual {v0, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 634
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gLinesThickness:Landroid/widget/SeekBar;

    invoke-virtual {v0, v15}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 635
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gLinesThickness:Landroid/widget/SeekBar;

    new-instance v2, Lcom/easyvictory/cheto/FloatLogo$11;

    invoke-direct {v2, v1, v3}, Lcom/easyvictory/cheto/FloatLogo$11;-><init>(Lcom/easyvictory/cheto/FloatLogo;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 655
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gLinesTransparency:Landroid/widget/SeekBar;

    invoke-virtual {v0, v15}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 656
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gLinesTransparency:Landroid/widget/SeekBar;

    new-instance v2, Lcom/easyvictory/cheto/FloatLogo$12;

    invoke-direct {v2, v1, v4}, Lcom/easyvictory/cheto/FloatLogo$12;-><init>(Lcom/easyvictory/cheto/FloatLogo;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 676
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gAngleStepSize:Landroid/widget/SeekBar;

    invoke-virtual {v0, v15}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 677
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gAngleStepSize:Landroid/widget/SeekBar;

    new-instance v2, Lcom/easyvictory/cheto/FloatLogo$13;

    invoke-direct {v2, v1, v5}, Lcom/easyvictory/cheto/FloatLogo$13;-><init>(Lcom/easyvictory/cheto/FloatLogo;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 702
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f090006

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->autoAction:Landroid/widget/Spinner;

    .line 703
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f090002

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->aqMode:Landroid/widget/Spinner;

    .line 706
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f090009

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->fastAutoPlayMode:Landroid/widget/Switch;

    .line 707
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f090024

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->fastAutoQueueMode:Landroid/widget/Switch;

    .line 708
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f09003c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->openVictoryBoxes:Landroid/widget/Switch;

    .line 709
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f09001d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->targetStripeYellowBall:Landroid/widget/Switch;

    .line 710
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f090041

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->choosePocketsManually:Landroid/widget/Switch;

    .line 711
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f090040

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->playGoldenShot:Landroid/widget/Switch;

    .line 712
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f090021

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->extraHumanization:Landroid/widget/Switch;

    .line 714
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f090025

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->findBestShot:Landroid/widget/Switch;

    .line 715
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f09005b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->useFullPowerAtBreak:Landroid/widget/Switch;

    .line 717
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f090028

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->humanizedPower:Landroid/widget/Switch;

    .line 718
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f090027

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->humanizedAngle:Landroid/widget/Switch;

    .line 722
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f090003

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->adBlock:Landroid/widget/Switch;

    .line 724
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f090044

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->randomBetId:Landroid/widget/Switch;

    .line 725
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f090053

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->smartMatchLose:Landroid/widget/Switch;

    .line 729
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f09001a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->drawPrediction:Landroid/widget/Switch;

    .line 730
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f09001b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->drawShotState:Landroid/widget/Switch;

    .line 731
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f090026

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->freezeLines:Landroid/widget/Switch;

    .line 732
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v2, 0x7f09001e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->enableAQ:Landroid/widget/Switch;

    .line 736
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->closeButton:Landroid/widget/TextView;

    new-instance v2, Lcom/easyvictory/cheto/FloatLogo$14;

    invoke-direct {v2, v1}, Lcom/easyvictory/cheto/FloatLogo$14;-><init>(Lcom/easyvictory/cheto/FloatLogo;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 744
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gMainTabButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/easyvictory/cheto/FloatLogo$15;

    invoke-direct {v2, v1}, Lcom/easyvictory/cheto/FloatLogo$15;-><init>(Lcom/easyvictory/cheto/FloatLogo;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 753
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gVisualsTabButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/easyvictory/cheto/FloatLogo$16;

    invoke-direct {v2, v1}, Lcom/easyvictory/cheto/FloatLogo$16;-><init>(Lcom/easyvictory/cheto/FloatLogo;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 762
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gMiscTabButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/easyvictory/cheto/FloatLogo$17;

    invoke-direct {v2, v1}, Lcom/easyvictory/cheto/FloatLogo$17;-><init>(Lcom/easyvictory/cheto/FloatLogo;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 771
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->drawPrediction:Landroid/widget/Switch;

    new-instance v2, Lcom/easyvictory/cheto/FloatLogo$18;

    invoke-direct {v2, v1}, Lcom/easyvictory/cheto/FloatLogo$18;-><init>(Lcom/easyvictory/cheto/FloatLogo;)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 779
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->enableAQ:Landroid/widget/Switch;

    new-instance v2, Lcom/easyvictory/cheto/FloatLogo$19;

    invoke-direct {v2, v1}, Lcom/easyvictory/cheto/FloatLogo$19;-><init>(Lcom/easyvictory/cheto/FloatLogo;)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 793
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->drawShotState:Landroid/widget/Switch;

    new-instance v2, Lcom/easyvictory/cheto/FloatLogo$20;

    invoke-direct {v2, v1}, Lcom/easyvictory/cheto/FloatLogo$20;-><init>(Lcom/easyvictory/cheto/FloatLogo;)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 801
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->adBlock:Landroid/widget/Switch;

    new-instance v2, Lcom/easyvictory/cheto/FloatLogo$21;

    invoke-direct {v2, v1}, Lcom/easyvictory/cheto/FloatLogo$21;-><init>(Lcom/easyvictory/cheto/FloatLogo;)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 817
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->randomBetId:Landroid/widget/Switch;

    new-instance v2, Lcom/easyvictory/cheto/FloatLogo$22;

    invoke-direct {v2, v1}, Lcom/easyvictory/cheto/FloatLogo$22;-><init>(Lcom/easyvictory/cheto/FloatLogo;)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 825
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->smartMatchLose:Landroid/widget/Switch;

    new-instance v2, Lcom/easyvictory/cheto/FloatLogo$23;

    invoke-direct {v2, v1, v6}, Lcom/easyvictory/cheto/FloatLogo$23;-><init>(Lcom/easyvictory/cheto/FloatLogo;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 840
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->freezeLines:Landroid/widget/Switch;

    new-instance v2, Lcom/easyvictory/cheto/FloatLogo$24;

    invoke-direct {v2, v1}, Lcom/easyvictory/cheto/FloatLogo$24;-><init>(Lcom/easyvictory/cheto/FloatLogo;)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 848
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->findBestShot:Landroid/widget/Switch;

    new-instance v2, Lcom/easyvictory/cheto/FloatLogo$25;

    invoke-direct {v2, v1}, Lcom/easyvictory/cheto/FloatLogo$25;-><init>(Lcom/easyvictory/cheto/FloatLogo;)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 856
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->useFullPowerAtBreak:Landroid/widget/Switch;

    new-instance v2, Lcom/easyvictory/cheto/FloatLogo$26;

    invoke-direct {v2, v1}, Lcom/easyvictory/cheto/FloatLogo$26;-><init>(Lcom/easyvictory/cheto/FloatLogo;)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 864
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->humanizedPower:Landroid/widget/Switch;

    new-instance v2, Lcom/easyvictory/cheto/FloatLogo$27;

    invoke-direct {v2, v1}, Lcom/easyvictory/cheto/FloatLogo$27;-><init>(Lcom/easyvictory/cheto/FloatLogo;)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 872
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->humanizedAngle:Landroid/widget/Switch;

    new-instance v2, Lcom/easyvictory/cheto/FloatLogo$28;

    invoke-direct {v2, v1}, Lcom/easyvictory/cheto/FloatLogo$28;-><init>(Lcom/easyvictory/cheto/FloatLogo;)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 880
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->fastAutoPlayMode:Landroid/widget/Switch;

    new-instance v2, Lcom/easyvictory/cheto/FloatLogo$29;

    invoke-direct {v2, v1}, Lcom/easyvictory/cheto/FloatLogo$29;-><init>(Lcom/easyvictory/cheto/FloatLogo;)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 888
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->fastAutoQueueMode:Landroid/widget/Switch;

    new-instance v2, Lcom/easyvictory/cheto/FloatLogo$30;

    invoke-direct {v2, v1}, Lcom/easyvictory/cheto/FloatLogo$30;-><init>(Lcom/easyvictory/cheto/FloatLogo;)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 895
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->openVictoryBoxes:Landroid/widget/Switch;

    new-instance v2, Lcom/easyvictory/cheto/FloatLogo$31;

    invoke-direct {v2, v1}, Lcom/easyvictory/cheto/FloatLogo$31;-><init>(Lcom/easyvictory/cheto/FloatLogo;)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 902
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->targetStripeYellowBall:Landroid/widget/Switch;

    new-instance v2, Lcom/easyvictory/cheto/FloatLogo$32;

    invoke-direct {v2, v1}, Lcom/easyvictory/cheto/FloatLogo$32;-><init>(Lcom/easyvictory/cheto/FloatLogo;)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 910
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->choosePocketsManually:Landroid/widget/Switch;

    new-instance v2, Lcom/easyvictory/cheto/FloatLogo$33;

    invoke-direct {v2, v1}, Lcom/easyvictory/cheto/FloatLogo$33;-><init>(Lcom/easyvictory/cheto/FloatLogo;)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 918
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->playGoldenShot:Landroid/widget/Switch;

    new-instance v2, Lcom/easyvictory/cheto/FloatLogo$34;

    invoke-direct {v2, v1}, Lcom/easyvictory/cheto/FloatLogo$34;-><init>(Lcom/easyvictory/cheto/FloatLogo;)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 926
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->extraHumanization:Landroid/widget/Switch;

    new-instance v2, Lcom/easyvictory/cheto/FloatLogo$35;

    invoke-direct {v2, v1}, Lcom/easyvictory/cheto/FloatLogo$35;-><init>(Lcom/easyvictory/cheto/FloatLogo;)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 934
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->autoAction:Landroid/widget/Spinner;

    new-instance v2, Lcom/easyvictory/cheto/FloatLogo$36;

    invoke-direct {v2, v1}, Lcom/easyvictory/cheto/FloatLogo$36;-><init>(Lcom/easyvictory/cheto/FloatLogo;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 955
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->aqMode:Landroid/widget/Spinner;

    new-instance v2, Lcom/easyvictory/cheto/FloatLogo$37;

    invoke-direct {v2, v1}, Lcom/easyvictory/cheto/FloatLogo$37;-><init>(Lcom/easyvictory/cheto/FloatLogo;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1007
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->aqHumanizationMode:Landroid/widget/Spinner;

    new-instance v2, Lcom/easyvictory/cheto/FloatLogo$38;

    invoke-direct {v2, v1}, Lcom/easyvictory/cheto/FloatLogo$38;-><init>(Lcom/easyvictory/cheto/FloatLogo;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1045
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->chosenTable:Landroid/widget/TextView;

    const-wide v2, -0x439b0c9ce32061ccL

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/easyvictory/cheto/FloatLogo;->getIntValue(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1046
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->chosenTable2:Landroid/widget/TextView;

    const-wide v2, -0x439b0ca8e32061ccL    # -9.085851856318644E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/easyvictory/cheto/FloatLogo;->getIntValue(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1048
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->enableAQ:Landroid/widget/Switch;

    const-wide v2, -0x439b0cb5e32061ccL

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/easyvictory/cheto/FloatLogo;->getValue(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1049
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->drawPrediction:Landroid/widget/Switch;

    const-wide v2, -0x439b0cbee32061ccL    # -9.085706272530835E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v15}, Lcom/easyvictory/cheto/FloatLogo;->getValue(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1050
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->drawShotState:Landroid/widget/Switch;

    const-wide v2, -0x439b0ccde32061ccL    # -9.085607010857328E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/easyvictory/cheto/FloatLogo;->getValue(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1051
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->adBlock:Landroid/widget/Switch;

    const-wide v2, -0x439b0cdbe32061ccL    # -9.085514366628723E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/easyvictory/cheto/FloatLogo;->getValue(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1053
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->randomBetId:Landroid/widget/Switch;

    const-wide v2, -0x439b0ce3e32061ccL    # -9.085461427069519E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/easyvictory/cheto/FloatLogo;->getValue(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1054
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->smartMatchLose:Landroid/widget/Switch;

    const-wide v2, -0x439b0cefe32061ccL    # -9.085382017730714E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/easyvictory/cheto/FloatLogo;->getValue(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1055
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->freezeLines:Landroid/widget/Switch;

    const-wide v2, -0x439b0cfee32061ccL    # -9.085282756057208E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/easyvictory/cheto/FloatLogo;->getValue(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1059
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->autoAction:Landroid/widget/Spinner;

    const-wide v2, -0x439b0d0ae32061ccL    # -9.085203346718403E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/easyvictory/cheto/FloatLogo;->getIntValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1060
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->aqMode:Landroid/widget/Spinner;

    const-wide v2, -0x439b0d15e32061ccL    # -9.085130554824498E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/easyvictory/cheto/FloatLogo;->getIntValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1061
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->aqHumanizationMode:Landroid/widget/Spinner;

    const-wide v2, -0x439b0d1ce32061ccL    # -9.085084232710195E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/easyvictory/cheto/FloatLogo;->getIntValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1062
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->aqMode:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x14

    .line 1064
    iput v0, v1, Lcom/easyvictory/cheto/FloatLogo;->maxTableSwipes:I

    goto :goto_3

    :cond_1
    const/4 v0, 0x2

    .line 1067
    iput v0, v1, Lcom/easyvictory/cheto/FloatLogo;->maxTableSwipes:I

    .line 1072
    :goto_3
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->fastAutoPlayMode:Landroid/widget/Switch;

    const-wide v2, -0x439b0d2fe32061ccL    # -9.084958501257087E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/easyvictory/cheto/FloatLogo;->getValue(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1073
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->fastAutoQueueMode:Landroid/widget/Switch;

    const-wide v2, -0x439b0d40e32061ccL    # -9.08484600469378E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/easyvictory/cheto/FloatLogo;->getValue(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1074
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->openVictoryBoxes:Landroid/widget/Switch;

    const-wide v2, -0x439b0d52e32061ccL    # -9.084726890685572E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/easyvictory/cheto/FloatLogo;->getValue(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1075
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->targetStripeYellowBall:Landroid/widget/Switch;

    const-wide v2, -0x439b0d63e32061ccL    # -9.084614394122265E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/easyvictory/cheto/FloatLogo;->getValue(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1076
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->choosePocketsManually:Landroid/widget/Switch;

    const-wide v2, -0x439b0d7ae32061ccL    # -9.084462192889555E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/easyvictory/cheto/FloatLogo;->getValue(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1077
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->playGoldenShot:Landroid/widget/Switch;

    const-wide v2, -0x439b0d90e32061ccL    # -9.084316609101746E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/easyvictory/cheto/FloatLogo;->getValue(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1078
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->extraHumanization:Landroid/widget/Switch;

    const-wide v2, -0x439b0d9fe32061ccL    # -9.08421734742824E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/easyvictory/cheto/FloatLogo;->getValue(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1080
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->findBestShot:Landroid/widget/Switch;

    const-wide v2, -0x439b0db1e32061ccL    # -9.084098233420032E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/easyvictory/cheto/FloatLogo;->getValue(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1081
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->useFullPowerAtBreak:Landroid/widget/Switch;

    const-wide v2, -0x439b0dbee32061ccL    # -9.084012206636326E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/easyvictory/cheto/FloatLogo;->getValue(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1083
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->humanizedPower:Landroid/widget/Switch;

    const-wide v2, -0x439b0dd2e32061ccL    # -9.083879857738318E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/easyvictory/cheto/FloatLogo;->getValue(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1084
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->humanizedAngle:Landroid/widget/Switch;

    const-wide v2, -0x439b0de1e32061ccL

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/easyvictory/cheto/FloatLogo;->getValue(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1087
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->drawPrediction:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/easyvictory/cheto/FloatLogo;->SettingValueWrapper(IZ)Z

    .line 1088
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->drawShotState:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-virtual {v1, v15, v0}, Lcom/easyvictory/cheto/FloatLogo;->SettingValueWrapper(IZ)Z

    .line 1090
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->adBlock:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/easyvictory/cheto/FloatLogo;->SettingValueWrapper(IZ)Z

    .line 1091
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->freezeLines:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/easyvictory/cheto/FloatLogo;->SettingValueWrapper(IZ)Z

    .line 1092
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->findBestShot:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lcom/easyvictory/cheto/FloatLogo;->SettingValueWrapper(IZ)Z

    .line 1093
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->useFullPowerAtBreak:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/easyvictory/cheto/FloatLogo;->SettingValueWrapper(IZ)Z

    .line 1094
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->humanizedPower:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Lcom/easyvictory/cheto/FloatLogo;->SettingValueWrapper(IZ)Z

    .line 1095
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->humanizedAngle:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/easyvictory/cheto/FloatLogo;->SettingValueWrapper(IZ)Z

    .line 1098
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->fastAutoPlayMode:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v0}, Lcom/easyvictory/cheto/FloatLogo;->SettingValueWrapper(IZ)Z

    .line 1099
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->targetStripeYellowBall:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v0}, Lcom/easyvictory/cheto/FloatLogo;->SettingValueWrapper(IZ)Z

    .line 1100
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->choosePocketsManually:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Lcom/easyvictory/cheto/FloatLogo;->SettingValueWrapper(IZ)Z

    .line 1102
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->playGoldenShot:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v0}, Lcom/easyvictory/cheto/FloatLogo;->SettingValueWrapper(IZ)Z

    .line 1103
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->extraHumanization:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v0}, Lcom/easyvictory/cheto/FloatLogo;->SettingValueWrapper(IZ)Z

    .line 1106
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->autoAction:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Lcom/easyvictory/cheto/FloatLogo;->SettingIntValueWrapper(II)Z

    .line 1112
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gPredictionDrawPower:Landroid/widget/SeekBar;

    invoke-virtual {v0, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1113
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gLinesThickness:Landroid/widget/SeekBar;

    invoke-virtual {v0, v9}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1114
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gLinesTransparency:Landroid/widget/SeekBar;

    invoke-virtual {v0, v10}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1115
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gAngleStepSize:Landroid/widget/SeekBar;

    invoke-virtual {v0, v11}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1116
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gMaxWins:Landroid/widget/SeekBar;

    invoke-virtual {v0, v12}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1117
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gMaxBreaks:Landroid/widget/SeekBar;

    invoke-virtual {v0, v13}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1120
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gPredictionDrawPower:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    const/16 v2, 0xc8

    invoke-virtual {v1, v2, v0}, Lcom/easyvictory/cheto/FloatLogo;->SettingFloatValueWrapper(IF)Z

    .line 1121
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gLinesThickness:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    const/16 v2, 0xc9

    invoke-virtual {v1, v2, v0}, Lcom/easyvictory/cheto/FloatLogo;->SettingFloatValueWrapper(IF)Z

    .line 1122
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gLinesTransparency:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    const/16 v2, 0xca

    invoke-virtual {v1, v2, v0}, Lcom/easyvictory/cheto/FloatLogo;->SettingFloatValueWrapper(IF)Z

    .line 1123
    iget-object v0, v1, Lcom/easyvictory/cheto/FloatLogo;->gAngleStepSize:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    const/16 v2, 0xcb

    invoke-virtual {v1, v2, v0}, Lcom/easyvictory/cheto/FloatLogo;->SettingFloatValueWrapper(IF)Z

    return-void
.end method

.method public static loadBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1146
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1147
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1148
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private setValue(Ljava/lang/String;F)V
    .locals 3

    .line 1278
    iget-object v0, p0, Lcom/easyvictory/cheto/FloatLogo;->context:Landroid/content/Context;

    const-wide v1, -0x439b0e09e32061ccL    # -9.083515898268794E-18

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1279
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1280
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1281
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setValue(Ljava/lang/String;I)V
    .locals 3

    .line 1270
    iget-object v0, p0, Lcom/easyvictory/cheto/FloatLogo;->context:Landroid/content/Context;

    const-wide v1, -0x439b0e00e32061ccL    # -9.083575455272898E-18

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1271
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1272
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1273
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setValue(Ljava/lang/String;J)V
    .locals 3

    .line 1286
    iget-object v0, p0, Lcom/easyvictory/cheto/FloatLogo;->context:Landroid/content/Context;

    const-wide v1, -0x439b0e12e32061ccL    # -9.08345634126469E-18

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1287
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1288
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1289
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setValue(Ljava/lang/String;Z)V
    .locals 3

    .line 1262
    iget-object v0, p0, Lcom/easyvictory/cheto/FloatLogo;->context:Landroid/content/Context;

    const-wide v1, -0x439b0df7e32061ccL    # -9.083635012277002E-18

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1263
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1264
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1265
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public native SettingFloatValue(IF)V
.end method

.method SettingFloatValueWrapper(IF)Z
    .locals 0

    .line 1361
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/easyvictory/cheto/FloatLogo;->SettingFloatValue(IF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    const/4 p1, 0x0

    .line 1365
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return p1
.end method

.method public native SettingIntValue(II)V
.end method

.method SettingIntValueWrapper(II)Z
    .locals 0

    .line 1348
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/easyvictory/cheto/FloatLogo;->SettingIntValue(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    const/4 p1, 0x0

    .line 1352
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return p1
.end method

.method public native SettingLongValue(IJ)V
.end method

.method SettingLongValueWrapper(IJ)Z
    .locals 0

    .line 1374
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/easyvictory/cheto/FloatLogo;->SettingLongValue(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    const/4 p1, 0x0

    .line 1378
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return p1
.end method

.method public native SettingValue(IZ)V
.end method

.method SettingValueWrapper(IZ)Z
    .locals 0

    .line 1335
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/easyvictory/cheto/FloatLogo;->SettingValue(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    const/4 p1, 0x0

    .line 1339
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return p1
.end method

.method chooseRandomTable()Z
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/easyvictory/cheto/FloatLogo;->randomBetId:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    return v0
.end method

.method createOver()V
    .locals 10

    const/high16 v0, 0x20000

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    .line 1160
    iget-object v1, p0, Lcom/easyvictory/cheto/FloatLogo;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/easyvictory/cheto/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v5, v1

    const/16 v7, 0x3ea

    .line 1163
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/4 v6, 0x0

    const v2, 0x2000108

    or-int v8, v0, v2

    const/4 v9, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 1176
    :try_start_0
    invoke-static {v1}, Lcom/easyvictory/cheto/Record;->setFakeRecorderWindowLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1179
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;)V

    .line 1183
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/easyvictory/cheto/FloatLogo;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 1186
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;)V

    .line 1189
    :goto_1
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/easyvictory/cheto/FloatLogo;->context:Landroid/content/Context;

    new-instance v3, Lcom/easyvictory/cheto/SingleTapConfirm;

    invoke-direct {v3}, Lcom/easyvictory/cheto/SingleTapConfirm;-><init>()V

    invoke-direct {v0, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 1191
    iget-object v2, p0, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v3, 0x7f09001f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    .line 1192
    new-instance v3, Lcom/easyvictory/cheto/FloatLogo$39;

    invoke-direct {v3, p0, v1}, Lcom/easyvictory/cheto/FloatLogo$39;-><init>(Lcom/easyvictory/cheto/FloatLogo;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1211
    iget-object v2, p0, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v3, 0x7f0901c2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/easyvictory/cheto/FloatLogo$40;

    invoke-direct {v3, p0, v0, v1}, Lcom/easyvictory/cheto/FloatLogo$40;-><init>(Lcom/easyvictory/cheto/FloatLogo;Landroid/view/GestureDetector;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method exportConfig()V
    .locals 4

    .line 107
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 108
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-wide v2, -0x439b07dee32061ccL    # -9.093964843766564E-18

    .line 110
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->autoQueueLimit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-wide v2, -0x439b07e9e32061ccL    # -9.09389205187266E-18

    .line 111
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->chosenTable:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-wide v2, -0x439b07f5e32061ccL    # -9.093812642533854E-18

    .line 112
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->chosenTable2:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-wide v2, -0x439b0802e32061ccL    # -9.093726615750149E-18

    .line 114
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->gMaxWins:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-wide v2, -0x439b080ae32061ccL    # -9.093673676190946E-18

    .line 115
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->gMaxBreaks:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-wide v2, -0x439b0814e32061ccL    # -9.093607501741941E-18

    .line 116
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->gPredictionDrawPower:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-wide v2, -0x439b0828e32061ccL    # -9.093475152843933E-18

    .line 117
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->gLinesThickness:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-wide v2, -0x439b0837e32061ccL

    .line 118
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->gLinesTransparency:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-wide v2, -0x439b0849e32061ccL    # -9.093256777162219E-18

    .line 119
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->gAngleStepSize:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-wide v2, -0x439b0857e32061ccL    # -9.093164132933613E-18

    .line 122
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->drawPrediction:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-wide v2, -0x439b0866e32061ccL    # -9.093064871260107E-18

    .line 123
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->enableAQ:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-wide v2, -0x439b086fe32061ccL    # -9.093005314256003E-18

    .line 124
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->drawShotState:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-wide v2, -0x439b087de32061ccL    # -9.092912670027397E-18

    .line 125
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->adBlock:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-wide v2, -0x439b0885e32061ccL    # -9.092859730468193E-18

    .line 126
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->randomBetId:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-wide v2, -0x439b0891e32061ccL    # -9.092780321129388E-18

    .line 127
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->smartMatchLose:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-wide v2, -0x439b08a0e32061ccL    # -9.092681059455882E-18

    .line 128
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->freezeLines:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-wide v2, -0x439b08ace32061ccL    # -9.092601650117077E-18

    .line 129
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->findBestShot:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-wide v2, -0x439b08b9e32061ccL    # -9.092515623333371E-18

    .line 130
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->useFullPowerAtBreak:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-wide v2, -0x439b08cde32061ccL

    .line 131
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->humanizedPower:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-wide v2, -0x439b08dce32061ccL    # -9.092284012761856E-18

    .line 132
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->humanizedAngle:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-wide v2, -0x439b08ebe32061ccL    # -9.09218475108835E-18

    .line 133
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->fastAutoPlayMode:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-wide v2, -0x439b08fce32061ccL    # -9.092072254525043E-18

    .line 134
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->fastAutoQueueMode:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-wide v2, -0x439b090ee32061ccL    # -9.091953140516835E-18

    .line 135
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->openVictoryBoxes:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-wide v2, -0x439b091fe32061ccL    # -9.091840643953528E-18

    .line 136
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->targetStripeYellowBall:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-wide v2, -0x439b0936e32061ccL    # -9.091688442720818E-18

    .line 137
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->choosePocketsManually:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-wide v2, -0x439b094ce32061ccL    # -9.091542858933009E-18

    .line 138
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->playGoldenShot:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-wide v2, -0x439b095be32061ccL    # -9.091443597259503E-18

    .line 139
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->extraHumanization:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-wide v2, -0x439b096de32061ccL    # -9.091324483251295E-18

    .line 140
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->autoAction:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-wide v2, -0x439b0978e32061ccL    # -9.09125169135739E-18

    .line 141
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->aqMode:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-wide v2, -0x439b097fe32061ccL    # -9.091205369243087E-18

    .line 142
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->aqHumanizationMode:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 144
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 146
    iget-object v1, p0, Lcom/easyvictory/cheto/FloatLogo;->context:Landroid/content/Context;

    const-wide v2, -0x439b0992e32061ccL    # -9.09107963778998E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    const-wide v2, -0x439b099ce32061ccL    # -9.091013463340975E-18

    .line 147
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 148
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x439b09a3e32061ccL    # -9.090967141226672E-18

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

.method getAQHumanizationMode()I
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/easyvictory/cheto/FloatLogo;->aqHumanizationMode:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method getAQMode()I
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/easyvictory/cheto/FloatLogo;->aqMode:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method getChosenTable()I
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/easyvictory/cheto/FloatLogo;->chosenTable:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getChosenTable2()I
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/easyvictory/cheto/FloatLogo;->chosenTable2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getCoinsLimit()J
    .locals 6

    const-wide v0, -0x439b0bd3e32061ccL    # -9.087261372082434E-18

    const-wide/16 v2, 0x0

    .line 301
    :try_start_0
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2, v3}, Lcom/easyvictory/cheto/FloatLogo;->getLongValue(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/32 v4, 0xf4240

    mul-long/2addr v0, v4

    .line 302
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    return-wide v2
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/easyvictory/cheto/FloatLogo;->context:Landroid/content/Context;

    return-object v0
.end method

.method getMaxBreaks()I
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/easyvictory/cheto/FloatLogo;->gMaxBreaks:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    return v0
.end method

.method getMaxWins()I
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/easyvictory/cheto/FloatLogo;->gMaxWins:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public native haqs()Z
.end method

.method importConfig()V
    .locals 6

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/easyvictory/cheto/FloatLogo;->context:Landroid/content/Context;

    const-wide v1, -0x439b09cbe32061ccL    # -9.090702443430655E-18

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 201
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-wide v2, -0x439b09d5e32061ccL    # -9.090636268981651E-18

    .line 205
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->autoQueueLimit:Landroid/widget/EditText;

    invoke-virtual {p0, v0, v2, v3}, Lcom/easyvictory/cheto/FloatLogo;->tryImportSetting(Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/TextView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide v2, -0x439b09e0e32061ccL

    .line 207
    :try_start_1
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/easyvictory/cheto/FloatLogo;->getLongValue(Ljava/lang/String;J)J

    move-result-wide v2

    const/16 v4, 0x12c

    .line 208
    invoke-virtual {p0, v4, v2, v3}, Lcom/easyvictory/cheto/FloatLogo;->SettingLongValueWrapper(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 211
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;)V

    :goto_0
    const-wide v2, -0x439b09ebe32061ccL    # -9.090490685193842E-18

    .line 214
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->chosenTable:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2, v3}, Lcom/easyvictory/cheto/FloatLogo;->tryImportSetting(Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/TextView;)V

    const-wide v2, -0x439b09f7e32061ccL    # -9.090411275855036E-18

    .line 215
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->chosenTable2:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2, v3}, Lcom/easyvictory/cheto/FloatLogo;->tryImportSetting(Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/TextView;)V

    const-wide v2, -0x439b0a04e32061ccL    # -9.090325249071331E-18

    .line 217
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->gMaxWins:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0, v2, v3}, Lcom/easyvictory/cheto/FloatLogo;->tryImportSetting(Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/SeekBar;)V

    const-wide v2, -0x439b0a0ce32061ccL    # -9.090272309512128E-18

    .line 218
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->gMaxBreaks:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0, v2, v3}, Lcom/easyvictory/cheto/FloatLogo;->tryImportSetting(Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/SeekBar;)V

    const-wide v2, -0x439b0a16e32061ccL    # -9.090206135063123E-18

    .line 219
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->gPredictionDrawPower:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0, v2, v3}, Lcom/easyvictory/cheto/FloatLogo;->tryImportSetting(Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/SeekBar;)V

    .line 220
    iget-object v2, p0, Lcom/easyvictory/cheto/FloatLogo;->gPredictionDrawPower:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0xc8

    invoke-virtual {p0, v3, v2}, Lcom/easyvictory/cheto/FloatLogo;->SettingFloatValueWrapper(IF)Z

    const-wide v2, -0x439b0a2ae32061ccL    # -9.090073786165115E-18

    .line 222
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->gLinesThickness:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0, v2, v3}, Lcom/easyvictory/cheto/FloatLogo;->tryImportSetting(Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/SeekBar;)V

    .line 223
    iget-object v2, p0, Lcom/easyvictory/cheto/FloatLogo;->gLinesThickness:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0xc9

    invoke-virtual {p0, v3, v2}, Lcom/easyvictory/cheto/FloatLogo;->SettingFloatValueWrapper(IF)Z

    const-wide v2, -0x439b0a39e32061ccL    # -9.089974524491608E-18

    .line 225
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->gLinesTransparency:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0, v2, v3}, Lcom/easyvictory/cheto/FloatLogo;->tryImportSetting(Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/SeekBar;)V

    .line 226
    iget-object v2, p0, Lcom/easyvictory/cheto/FloatLogo;->gLinesTransparency:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0xca

    invoke-virtual {p0, v3, v2}, Lcom/easyvictory/cheto/FloatLogo;->SettingFloatValueWrapper(IF)Z

    const-wide v2, -0x439b0a4be32061ccL    # -9.089855410483401E-18

    .line 228
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->gAngleStepSize:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0, v2, v3}, Lcom/easyvictory/cheto/FloatLogo;->tryImportSetting(Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/SeekBar;)V

    .line 229
    iget-object v2, p0, Lcom/easyvictory/cheto/FloatLogo;->gAngleStepSize:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0xcb

    invoke-virtual {p0, v3, v2}, Lcom/easyvictory/cheto/FloatLogo;->SettingFloatValueWrapper(IF)Z

    const-wide v2, -0x439b0a59e32061ccL    # -9.089762766254795E-18

    .line 232
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->drawPrediction:Landroid/widget/Switch;

    invoke-virtual {p0, v0, v2, v3}, Lcom/easyvictory/cheto/FloatLogo;->tryImportSetting(Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/Switch;)V

    .line 233
    iget-object v2, p0, Lcom/easyvictory/cheto/FloatLogo;->drawPrediction:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/easyvictory/cheto/FloatLogo;->SettingValueWrapper(IZ)Z

    const-wide v2, -0x439b0a68e32061ccL    # -9.089663504581288E-18

    .line 235
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->enableAQ:Landroid/widget/Switch;

    invoke-virtual {p0, v0, v2, v3}, Lcom/easyvictory/cheto/FloatLogo;->tryImportSetting(Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/Switch;)V

    const-wide v2, -0x439b0a71e32061ccL    # -9.089603947577185E-18

    .line 236
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo;->drawShotState:Landroid/widget/Switch;

    invoke-virtual {p0, v0, v2, v3}, Lcom/easyvictory/cheto/FloatLogo;->tryImportSetting(Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/Switch;)V

    .line 237
    iget-object v2, p0, Lcom/easyvictory/cheto/FloatLogo;->drawShotState:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/easyvictory/cheto/FloatLogo;->SettingValueWrapper(IZ)Z

    const-wide v4, -0x439b0a7fe32061ccL    # -9.089511303348579E-18

    .line 239
    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/easyvictory/cheto/FloatLogo;->adBlock:Landroid/widget/Switch;

    invoke-virtual {p0, v0, v2, v4}, Lcom/easyvictory/cheto/FloatLogo;->tryImportSetting(Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/Switch;)V

    .line 240
    iget-object v2, p0, Lcom/easyvictory/cheto/FloatLogo;->adBlock:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    const/4 v4, 0x3

    invoke-virtual {p0, v4, v2}, Lcom/easyvictory/cheto/FloatLogo;->SettingValueWrapper(IZ)Z

    const-wide v4, -0x439b0a87e32061ccL    # -9.089458363789375E-18

    .line 242
    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/easyvictory/cheto/FloatLogo;->randomBetId:Landroid/widget/Switch;

    invoke-virtual {p0, v0, v2, v4}, Lcom/easyvictory/cheto/FloatLogo;->tryImportSetting(Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/Switch;)V

    const-wide v4, -0x439b0a93e32061ccL    # -9.08937895445057E-18

    .line 243
    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/easyvictory/cheto/FloatLogo;->smartMatchLose:Landroid/widget/Switch;

    invoke-virtual {p0, v0, v2, v4}, Lcom/easyvictory/cheto/FloatLogo;->tryImportSetting(Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/Switch;)V

    const-wide v4, -0x439b0aa2e32061ccL    # -9.089279692777064E-18

    .line 245
    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/easyvictory/cheto/FloatLogo;->freezeLines:Landroid/widget/Switch;

    invoke-virtual {p0, v0, v2, v4}, Lcom/easyvictory/cheto/FloatLogo;->tryImportSetting(Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/Switch;)V

    .line 246
    iget-object v2, p0, Lcom/easyvictory/cheto/FloatLogo;->freezeLines:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    const/4 v4, 0x4

    invoke-virtual {p0, v4, v2}, Lcom/easyvictory/cheto/FloatLogo;->SettingValueWrapper(IZ)Z

    const-wide v4, -0x439b0aaee32061ccL    # -9.089200283438259E-18

    .line 248
    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/easyvictory/cheto/FloatLogo;->findBestShot:Landroid/widget/Switch;

    invoke-virtual {p0, v0, v2, v4}, Lcom/easyvictory/cheto/FloatLogo;->tryImportSetting(Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/Switch;)V

    .line 249
    iget-object v2, p0, Lcom/easyvictory/cheto/FloatLogo;->findBestShot:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    const/4 v4, 0x5

    invoke-virtual {p0, v4, v2}, Lcom/easyvictory/cheto/FloatLogo;->SettingValueWrapper(IZ)Z

    const-wide v4, -0x439b0abbe32061ccL    # -9.089114256654553E-18

    .line 251
    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/easyvictory/cheto/FloatLogo;->useFullPowerAtBreak:Landroid/widget/Switch;

    invoke-virtual {p0, v0, v2, v4}, Lcom/easyvictory/cheto/FloatLogo;->tryImportSetting(Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/Switch;)V

    .line 252
    iget-object v2, p0, Lcom/easyvictory/cheto/FloatLogo;->useFullPowerAtBreak:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    const/4 v4, 0x6

    invoke-virtual {p0, v4, v2}, Lcom/easyvictory/cheto/FloatLogo;->SettingValueWrapper(IZ)Z

    const-wide v4, -0x439b0acfe32061ccL    # -9.088981907756545E-18

    .line 254
    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/easyvictory/cheto/FloatLogo;->humanizedPower:Landroid/widget/Switch;

    invoke-virtual {p0, v0, v2, v4}, Lcom/easyvictory/cheto/FloatLogo;->tryImportSetting(Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/Switch;)V

    .line 255
    iget-object v2, p0, Lcom/easyvictory/cheto/FloatLogo;->humanizedPower:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    const/4 v4, 0x7

    invoke-virtual {p0, v4, v2}, Lcom/easyvictory/cheto/FloatLogo;->SettingValueWrapper(IZ)Z

    const-wide v4, -0x439b0adee32061ccL    # -9.088882646083038E-18

    .line 257
    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/easyvictory/cheto/FloatLogo;->humanizedAngle:Landroid/widget/Switch;

    invoke-virtual {p0, v0, v2, v4}, Lcom/easyvictory/cheto/FloatLogo;->tryImportSetting(Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/Switch;)V

    .line 258
    iget-object v2, p0, Lcom/easyvictory/cheto/FloatLogo;->humanizedAngle:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    const/16 v4, 0x8

    invoke-virtual {p0, v4, v2}, Lcom/easyvictory/cheto/FloatLogo;->SettingValueWrapper(IZ)Z

    const-wide v4, -0x439b0aede32061ccL    # -9.088783384409532E-18

    .line 260
    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/easyvictory/cheto/FloatLogo;->fastAutoPlayMode:Landroid/widget/Switch;

    invoke-virtual {p0, v0, v2, v4}, Lcom/easyvictory/cheto/FloatLogo;->tryImportSetting(Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/Switch;)V

    .line 261
    iget-object v2, p0, Lcom/easyvictory/cheto/FloatLogo;->fastAutoPlayMode:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    const/16 v4, 0xb

    invoke-virtual {p0, v4, v2}, Lcom/easyvictory/cheto/FloatLogo;->SettingValueWrapper(IZ)Z

    const-wide v4, -0x439b0afee32061ccL    # -9.088670887846225E-18

    .line 263
    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/easyvictory/cheto/FloatLogo;->fastAutoQueueMode:Landroid/widget/Switch;

    invoke-virtual {p0, v0, v2, v4}, Lcom/easyvictory/cheto/FloatLogo;->tryImportSetting(Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/Switch;)V

    const-wide v4, -0x439b0b10e32061ccL    # -9.088551773838017E-18

    .line 264
    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/easyvictory/cheto/FloatLogo;->openVictoryBoxes:Landroid/widget/Switch;

    invoke-virtual {p0, v0, v2, v4}, Lcom/easyvictory/cheto/FloatLogo;->tryImportSetting(Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/Switch;)V

    const-wide v4, -0x439b0b21e32061ccL    # -9.08843927727471E-18

    .line 265
    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/easyvictory/cheto/FloatLogo;->targetStripeYellowBall:Landroid/widget/Switch;

    invoke-virtual {p0, v0, v2, v4}, Lcom/easyvictory/cheto/FloatLogo;->tryImportSetting(Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/Switch;)V

    .line 266
    iget-object v2, p0, Lcom/easyvictory/cheto/FloatLogo;->targetStripeYellowBall:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    const/16 v4, 0xc

    invoke-virtual {p0, v4, v2}, Lcom/easyvictory/cheto/FloatLogo;->SettingValueWrapper(IZ)Z

    const-wide v4, -0x439b0b38e32061ccL    # -9.088287076042E-18

    .line 268
    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/easyvictory/cheto/FloatLogo;->choosePocketsManually:Landroid/widget/Switch;

    invoke-virtual {p0, v0, v2, v4}, Lcom/easyvictory/cheto/FloatLogo;->tryImportSetting(Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/Switch;)V

    .line 269
    iget-object v2, p0, Lcom/easyvictory/cheto/FloatLogo;->choosePocketsManually:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    const/16 v4, 0xd

    invoke-virtual {p0, v4, v2}, Lcom/easyvictory/cheto/FloatLogo;->SettingValueWrapper(IZ)Z

    const-wide v4, -0x439b0b4ee32061ccL    # -9.088141492254191E-18

    .line 271
    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/easyvictory/cheto/FloatLogo;->playGoldenShot:Landroid/widget/Switch;

    invoke-virtual {p0, v0, v2, v4}, Lcom/easyvictory/cheto/FloatLogo;->tryImportSetting(Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/Switch;)V

    .line 272
    iget-object v2, p0, Lcom/easyvictory/cheto/FloatLogo;->playGoldenShot:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    const/16 v4, 0xf

    invoke-virtual {p0, v4, v2}, Lcom/easyvictory/cheto/FloatLogo;->SettingValueWrapper(IZ)Z

    const-wide v4, -0x439b0b5de32061ccL    # -9.088042230580685E-18

    .line 274
    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/easyvictory/cheto/FloatLogo;->extraHumanization:Landroid/widget/Switch;

    invoke-virtual {p0, v0, v2, v4}, Lcom/easyvictory/cheto/FloatLogo;->tryImportSetting(Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/Switch;)V

    .line 275
    iget-object v2, p0, Lcom/easyvictory/cheto/FloatLogo;->extraHumanization:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    const/16 v4, 0x10

    invoke-virtual {p0, v4, v2}, Lcom/easyvictory/cheto/FloatLogo;->SettingValueWrapper(IZ)Z

    const-wide v4, -0x439b0b6fe32061ccL    # -9.087923116572477E-18

    .line 277
    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/easyvictory/cheto/FloatLogo;->autoAction:Landroid/widget/Spinner;

    invoke-virtual {p0, v0, v2, v4}, Lcom/easyvictory/cheto/FloatLogo;->tryImportSetting(Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/Spinner;)V

    .line 278
    iget-object v2, p0, Lcom/easyvictory/cheto/FloatLogo;->autoAction:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/16 v4, 0x64

    invoke-virtual {p0, v4, v2}, Lcom/easyvictory/cheto/FloatLogo;->SettingIntValueWrapper(II)Z

    const-wide v4, -0x439b0b7ae32061ccL    # -9.087850324678572E-18

    .line 280
    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/easyvictory/cheto/FloatLogo;->aqMode:Landroid/widget/Spinner;

    invoke-virtual {p0, v0, v2, v4}, Lcom/easyvictory/cheto/FloatLogo;->tryImportSetting(Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/Spinner;)V

    const-wide v4, -0x439b0b81e32061ccL    # -9.08780400256427E-18

    .line 281
    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/easyvictory/cheto/FloatLogo;->aqHumanizationMode:Landroid/widget/Spinner;

    invoke-virtual {p0, v0, v2, v4}, Lcom/easyvictory/cheto/FloatLogo;->tryImportSetting(Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/Spinner;)V

    .line 284
    iget-object v0, p0, Lcom/easyvictory/cheto/FloatLogo;->aqHumanizationMode:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v3, :cond_0

    const-wide v4, -0x439b0b94e32061ccL    # -9.087678271111161E-18

    .line 285
    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const-wide v4, -0x439b0bb0e32061ccL    # -9.08749298265395E-18

    .line 288
    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    .line 291
    :goto_1
    iget-object v2, p0, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    const v4, 0x7f090034

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    .line 292
    iget-object v4, p0, Lcom/easyvictory/cheto/FloatLogo;->gMaxBreaks:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x439b0bcbe32061ccL    # -9.087314311641638E-18

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

    :goto_2
    return-void
.end method

.method isAQEnabled()Z
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/easyvictory/cheto/FloatLogo;->enableAQ:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    return v0
.end method

.method isAQFastModeEnabled()Z
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/easyvictory/cheto/FloatLogo;->fastAutoQueueMode:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1128
    iput-object p1, p0, Lcom/easyvictory/cheto/FloatLogo;->floatingView:Landroid/view/View;

    .line 1129
    iget-object v0, p0, Lcom/easyvictory/cheto/FloatLogo;->context:Landroid/content/Context;

    const-wide v1, -0x439b0df0e32061ccL    # -9.083681334391305E-18

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/easyvictory/cheto/FloatLogo;->windowManager:Landroid/view/WindowManager;

    .line 1131
    iput-object p2, p0, Lcom/easyvictory/cheto/FloatLogo;->predictionDrawPowerRText:Ljava/lang/String;

    .line 1132
    iput-object p3, p0, Lcom/easyvictory/cheto/FloatLogo;->lineThicknessRText:Ljava/lang/String;

    .line 1133
    iput-object p4, p0, Lcom/easyvictory/cheto/FloatLogo;->lineTransparencyRText:Ljava/lang/String;

    .line 1134
    iput-object p5, p0, Lcom/easyvictory/cheto/FloatLogo;->angleStepSizeRText:Ljava/lang/String;

    .line 1136
    invoke-virtual {p0}, Lcom/easyvictory/cheto/FloatLogo;->createOver()V

    const p2, 0x7f0901c2

    .line 1137
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/easyvictory/cheto/FloatLogo;->logoView:Landroid/view/View;

    const p2, 0x7f090031

    .line 1138
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/easyvictory/cheto/FloatLogo;->mainView:Landroid/view/View;

    const/16 p2, 0x8

    .line 1139
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1140
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo;->logoView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1142
    invoke-direct {p0}, Lcom/easyvictory/cheto/FloatLogo;->load()V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/easyvictory/cheto/FloatLogo;->context:Landroid/content/Context;

    return-void
.end method

.method shouldOpenVictoryBoxes()Z
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/easyvictory/cheto/FloatLogo;->openVictoryBoxes:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    return v0
.end method

.method smartMatchLose()Z
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/easyvictory/cheto/FloatLogo;->smartMatchLose:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    return v0
.end method

.method tryImportSetting(Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/SeekBar;)V
    .locals 2

    .line 167
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 168
    invoke-virtual {p3, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    int-to-float p1, p1

    .line 169
    invoke-direct {p0, p2, p1}, Lcom/easyvictory/cheto/FloatLogo;->setValue(Ljava/lang/String;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 172
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v0, -0x439b09b3e32061ccL    # -9.090861262108265E-18

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method tryImportSetting(Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/Spinner;)V
    .locals 2

    .line 189
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 190
    invoke-virtual {p3, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 191
    invoke-direct {p0, p2, p1}, Lcom/easyvictory/cheto/FloatLogo;->setValue(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 194
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v0, -0x439b09c3e32061ccL    # -9.090755382989858E-18

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method tryImportSetting(Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/Switch;)V
    .locals 2

    .line 178
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 179
    invoke-virtual {p3, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 180
    invoke-direct {p0, p2, p1}, Lcom/easyvictory/cheto/FloatLogo;->setValue(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 183
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v0, -0x439b09bbe32061ccL    # -9.090808322549062E-18

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method tryImportSetting(Lorg/json/JSONObject;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 2

    .line 157
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 161
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v0, -0x439b09abe32061ccL    # -9.090914201667469E-18

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
