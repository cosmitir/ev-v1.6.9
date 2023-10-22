.class public Lcom/easyvictory/cheto/Record;
.super Ljava/lang/Object;
.source "Record.java"


# static fields
.field private static final KEY_VERSION_BLACKSHARK:Ljava/lang/String; = "ro.blackshark.rom"

.field private static final KEY_VERSION_EMUI:Ljava/lang/String; = "ro.build.version.emui"

.field private static final KEY_VERSION_MIUI:Ljava/lang/String; = "ro.miui.ui.version.name"

.field private static final KEY_VERSION_NUBIA:Ljava/lang/String; = "ro.build.nubia.rom.name"

.field private static final KEY_VERSION_ONEPLIS:Ljava/lang/String; = "ro.build.ota.versionname"

.field private static final KEY_VERSION_OPPO:Ljava/lang/String; = "ro.build.version.opporom"

.field private static final KEY_VERSION_ROG:Ljava/lang/String; = "ro.build.fota.version"

.field private static final KEY_VERSION_SAMSUNG:Ljava/lang/String; = "ro.channel.officehubrow"

.field private static final KEY_VERSION_SMARTISAN:Ljava/lang/String; = "ro.smartisan.version"

.field private static final KEY_VERSION_VIVO:Ljava/lang/String; = "ro.vivo.os.version"

.field public static final ROM_BLACKSHARK:Ljava/lang/String; = "JOYUI"

.field public static final ROM_EMUI:Ljava/lang/String; = "EMUI"

.field public static final ROM_FLYME:Ljava/lang/String; = "FLYME"

.field public static final ROM_MIUI:Ljava/lang/String; = "MIUI"

.field public static final ROM_NUBIAUI:Ljava/lang/String; = "NUBIAUI"

.field public static final ROM_ONEPLUS:Ljava/lang/String; = "HYDROGEN"

.field public static final ROM_OPPO:Ljava/lang/String; = "OPPO"

.field public static final ROM_QIKU:Ljava/lang/String; = "QIKU"

.field public static final ROM_ROG:Ljava/lang/String; = "REPLIBLIC"

.field public static final ROM_SAMSUNG:Ljava/lang/String; = "ONEUI"

.field public static final ROM_SMARTISAN:Ljava/lang/String; = "SMARTISAN"

.field public static final ROM_VIVO:Ljava/lang/String; = "VIVO"

.field private static sName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static check(Ljava/lang/String;)Z
    .locals 2

    .line 205
    sget-object v0, Lcom/easyvictory/cheto/Record;->sName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const-string/jumbo v0, "ro.miui.ui.version.name"

    .line 208
    invoke-static {v0}, Lcom/easyvictory/cheto/Record;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MIUI"

    .line 209
    sput-object v0, Lcom/easyvictory/cheto/Record;->sName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v0, "ro.blackshark.rom"

    .line 210
    invoke-static {v0}, Lcom/easyvictory/cheto/Record;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "JOYUI"

    .line 211
    sput-object v0, Lcom/easyvictory/cheto/Record;->sName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v0, "ro.build.version.emui"

    .line 212
    invoke-static {v0}, Lcom/easyvictory/cheto/Record;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "EMUI"

    .line 213
    sput-object v0, Lcom/easyvictory/cheto/Record;->sName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v0, "ro.build.version.opporom"

    .line 214
    invoke-static {v0}, Lcom/easyvictory/cheto/Record;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "OPPO"

    .line 215
    sput-object v0, Lcom/easyvictory/cheto/Record;->sName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v0, "ro.vivo.os.version"

    .line 216
    invoke-static {v0}, Lcom/easyvictory/cheto/Record;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "VIVO"

    .line 217
    sput-object v0, Lcom/easyvictory/cheto/Record;->sName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v0, "ro.smartisan.version"

    .line 218
    invoke-static {v0}, Lcom/easyvictory/cheto/Record;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "SMARTISAN"

    .line 219
    sput-object v0, Lcom/easyvictory/cheto/Record;->sName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v0, "ro.build.nubia.rom.name"

    .line 220
    invoke-static {v0}, Lcom/easyvictory/cheto/Record;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "NUBIAUI"

    .line 221
    sput-object v0, Lcom/easyvictory/cheto/Record;->sName:Ljava/lang/String;

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "ro.build.ota.versionname"

    .line 222
    invoke-static {v0}, Lcom/easyvictory/cheto/Record;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v0}, Lcom/easyvictory/cheto/Record;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hydrogen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "HYDROGEN"

    .line 223
    sput-object v0, Lcom/easyvictory/cheto/Record;->sName:Ljava/lang/String;

    goto :goto_0

    :cond_8
    const-string/jumbo v0, "ro.build.fota.version"

    .line 224
    invoke-static {v0}, Lcom/easyvictory/cheto/Record;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {v0}, Lcom/easyvictory/cheto/Record;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN_Phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "REPLIBLIC"

    .line 225
    sput-object v0, Lcom/easyvictory/cheto/Record;->sName:Ljava/lang/String;

    goto :goto_0

    :cond_9
    const-string/jumbo v0, "ro.channel.officehubrow"

    .line 226
    invoke-static {v0}, Lcom/easyvictory/cheto/Record;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "ONEUI"

    .line 227
    sput-object v0, Lcom/easyvictory/cheto/Record;->sName:Ljava/lang/String;

    goto :goto_0

    .line 229
    :cond_a
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 230
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FLYME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 231
    sput-object v1, Lcom/easyvictory/cheto/Record;->sName:Ljava/lang/String;

    goto :goto_0

    .line 233
    :cond_b
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/easyvictory/cheto/Record;->sName:Ljava/lang/String;

    .line 236
    :goto_0
    sget-object v0, Lcom/easyvictory/cheto/Record;->sName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static getFakeRecordWindowTitle()Ljava/lang/String;
    .locals 4

    .line 175
    sget-object v0, Lcom/easyvictory/cheto/Record;->sName:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 176
    invoke-static {v1}, Lcom/easyvictory/cheto/Record;->check(Ljava/lang/String;)Z

    .line 178
    :cond_0
    sget-object v0, Lcom/easyvictory/cheto/Record;->sName:Ljava/lang/String;

    if-nez v0, :cond_1

    return-object v1

    .line 181
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "HYDROGEN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "JOYUI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_2
    const-string v2, "FLYME"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_3
    const-string v2, "VIVO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_4
    const-string v2, "OPPO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "MIUI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_6
    const-string v2, "EMUI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_7
    const-string v2, "NUBIAUI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_8
    const-string v2, "REPLIBLIC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    return-object v1

    :pswitch_0
    const-string/jumbo v0, "op_screenrecord"

    return-object v0

    :pswitch_1
    const-string v0, "com.blackshark.screenrecorder"

    return-object v0

    :pswitch_2
    const-string v0, "SysScreenRecorder"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "screen_record_menu"

    return-object v0

    :pswitch_4
    const-string v0, "com.coloros.screenrecorder.FloatView"

    return-object v0

    :pswitch_5
    const-string v0, "com.miui.screenrecorder"

    return-object v0

    :pswitch_6
    const-string v0, "ScreenRecoderTimer"

    return-object v0

    :pswitch_7
    const-string v0, "NubiaScreenDecorOverlay"

    return-object v0

    :pswitch_8
    const-string v0, "com.asus.force.layer.transparent.SR.floatingpanel"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x749cab62 -> :sswitch_8
        -0x4d09c879 -> :sswitch_7
        0x20893c -> :sswitch_6
        0x241d30 -> :sswitch_5
        0x251fa0 -> :sswitch_4
        0x2834ac -> :sswitch_3
        0x3fe512b -> :sswitch_2
        0x4380d48 -> :sswitch_1
        0x14114660 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "getprop "

    const/4 v1, 0x0

    .line 243
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 244
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 p0, 0x400

    invoke-direct {v0, v2, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 245
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    .line 246
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 254
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object p0

    :catchall_0
    move-exception p0

    move-object v1, v0

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v1, :cond_0

    .line 252
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 254
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 257
    :cond_0
    :goto_2
    throw p0

    :catch_2
    move-object v0, v1

    :catch_3
    if-eqz v0, :cond_1

    .line 252
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    move-exception p0

    .line 254
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_3
    return-object v1
.end method

.method public static isActivice()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isBLACKSHARK()Z
    .locals 1

    const-string v0, "JOYUI"

    .line 74
    invoke-static {v0}, Lcom/easyvictory/cheto/Record;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEmui()Z
    .locals 1

    const-string v0, "EMUI"

    .line 42
    invoke-static {v0}, Lcom/easyvictory/cheto/Record;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isFlyme()Z
    .locals 1

    const-string v0, "FLYME"

    .line 58
    invoke-static {v0}, Lcom/easyvictory/cheto/Record;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMiui()Z
    .locals 1

    const-string v0, "MIUI"

    .line 46
    invoke-static {v0}, Lcom/easyvictory/cheto/Record;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isNubia()Z
    .locals 1

    const-string v0, "NUBIAUI"

    .line 62
    invoke-static {v0}, Lcom/easyvictory/cheto/Record;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isOnePlus()Z
    .locals 1

    const-string v0, "HYDROGEN"

    .line 66
    invoke-static {v0}, Lcom/easyvictory/cheto/Record;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isOppo()Z
    .locals 1

    const-string v0, "OPPO"

    .line 54
    invoke-static {v0}, Lcom/easyvictory/cheto/Record;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isRog()Z
    .locals 1

    const-string v0, "REPLIBLIC"

    .line 78
    invoke-static {v0}, Lcom/easyvictory/cheto/Record;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSanSung()Z
    .locals 1

    const-string v0, "ONEUI"

    .line 70
    invoke-static {v0}, Lcom/easyvictory/cheto/Record;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isVivo()Z
    .locals 1

    const-string v0, "VIVO"

    .line 50
    invoke-static {v0}, Lcom/easyvictory/cheto/Record;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setFakeRecorderWindowLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    .line 85
    :try_start_0
    invoke-static {}, Lcom/easyvictory/cheto/Record;->getFakeRecordWindowTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "FLYME"

    .line 87
    invoke-static {v0}, Lcom/easyvictory/cheto/Record;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2000

    .line 89
    invoke-static {p0, v0}, Lcom/easyvictory/cheto/Record;->setMeizuParams(Landroid/view/WindowManager$LayoutParams;I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 90
    invoke-static {}, Lcom/easyvictory/cheto/Record;->isActivice()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x400

    .line 91
    invoke-static {p0, v0}, Lcom/easyvictory/cheto/Record;->setMeizuParams_new(Landroid/view/WindowManager$LayoutParams;I)Z

    goto :goto_1

    :cond_0
    const-string v0, "MIUI"

    .line 94
    invoke-static {v0}, Lcom/easyvictory/cheto/Record;->check(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "JOYUI"

    invoke-static {v0}, Lcom/easyvictory/cheto/Record;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "HYDROGEN"

    .line 97
    invoke-static {v0}, Lcom/easyvictory/cheto/Record;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/easyvictory/cheto/Record;->isActivice()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_3

    .line 99
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "PRIVATE_FLAG_IS_ROUNDED_CORNERS_OVERLAY"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/easyvictory/cheto/Record;->setOnePulsParams(Landroid/view/WindowManager$LayoutParams;I)V

    goto :goto_1

    .line 102
    :cond_3
    invoke-static {}, Lcom/easyvictory/cheto/Record;->isSanSung()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    invoke-static {p0}, Lcom/easyvictory/cheto/Record;->setSamsungFlags(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_1

    :cond_4
    const-string v0, "REPLIBLIC"

    .line 105
    invoke-static {v0}, Lcom/easyvictory/cheto/Record;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 107
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->memoryType:I

    goto :goto_1

    :cond_5
    :goto_0
    const/16 v0, 0x1a0a

    .line 96
    invoke-static {p0, v0}, Lcom/easyvictory/cheto/Record;->setXiaomiParams(Landroid/view/WindowManager$LayoutParams;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 110
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_1
    return-void
.end method

.method private static setMeizuParams(Landroid/view/WindowManager$LayoutParams;I)Z
    .locals 3

    :try_start_0
    const-string v0, "android.view.MeizuLayoutParams"

    .line 128
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "flags"

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 131
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 132
    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-string/jumbo v1, "meizuParams"

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 134
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static setMeizuParams_new(Landroid/view/WindowManager$LayoutParams;I)Z
    .locals 2

    .line 142
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "meizuFlags"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 144
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private static setOnePulsParams(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 2

    .line 152
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "privateFlags"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 154
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 156
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static setSamsungFlags(Landroid/view/WindowManager$LayoutParams;)V
    .locals 7

    .line 161
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "semAddExtensionFlags"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 162
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v3, "semAddPrivateFlags"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    const/high16 v4, -0x7ffe0000

    .line 163
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v2, [Ljava/lang/Object;

    .line 164
    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v5

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 166
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static setXiaomiParams(Landroid/view/WindowManager$LayoutParams;I)Z
    .locals 0

    .line 117
    :try_start_0
    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 120
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method
