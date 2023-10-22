.class public Lcom/hack/utils/ProcessUtils;
.super Ljava/lang/Object;
.source "ProcessUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hack/utils/ProcessUtils$ProcessType;
    }
.end annotation


# static fields
.field private static sCurProcessName:Ljava/lang/String;

.field private static sProcessType:Lcom/hack/utils/ProcessUtils$ProcessType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    sget-object v0, Lcom/hack/utils/ProcessUtils$ProcessType;->TYPE_UNKNOWN:Lcom/hack/utils/ProcessUtils$ProcessType;

    sput-object v0, Lcom/hack/utils/ProcessUtils;->sProcessType:Lcom/hack/utils/ProcessUtils$ProcessType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 60
    sget-object v0, Lcom/hack/utils/ProcessUtils;->sCurProcessName:Ljava/lang/String;

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 65
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const-string v1, "activity"

    .line 66
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 67
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 68
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v0, :cond_1

    .line 69
    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    sput-object p0, Lcom/hack/utils/ProcessUtils;->sCurProcessName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    const/4 p0, -0x1

    .line 76
    invoke-static {p0}, Lcom/hack/utils/ProcessUtils;->getProcessNameFromProc(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/hack/utils/ProcessUtils;->sCurProcessName:Ljava/lang/String;

    return-object p0
.end method

.method public static getProcessNameFromProc(I)Ljava/lang/String;
    .locals 6

    const-string v0, "/proc/"

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    .line 83
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    :cond_0
    const/4 v1, 0x0

    .line 86
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/cmdline"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string p0, "iso-8859-1"

    invoke-direct {v3, v4, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v0

    if-lez v0, :cond_1

    int-to-char v0, v0

    .line 93
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object p0

    :catchall_0
    move-object v2, v1

    :catchall_1
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_2
    return-object v1
.end method

.method public static isApp()Z
    .locals 2

    .line 56
    sget-object v0, Lcom/hack/utils/ProcessUtils;->sProcessType:Lcom/hack/utils/ProcessUtils$ProcessType;

    sget-object v1, Lcom/hack/utils/ProcessUtils$ProcessType;->TYPE_APP:Lcom/hack/utils/ProcessUtils$ProcessType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAssist()Z
    .locals 2

    .line 52
    sget-object v0, Lcom/hack/utils/ProcessUtils;->sProcessType:Lcom/hack/utils/ProcessUtils$ProcessType;

    sget-object v1, Lcom/hack/utils/ProcessUtils$ProcessType;->TYPE_ASSIST:Lcom/hack/utils/ProcessUtils$ProcessType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isClient()Z
    .locals 2

    .line 48
    sget-object v0, Lcom/hack/utils/ProcessUtils;->sProcessType:Lcom/hack/utils/ProcessUtils$ProcessType;

    sget-object v1, Lcom/hack/utils/ProcessUtils$ProcessType;->TYPE_CLIENT:Lcom/hack/utils/ProcessUtils$ProcessType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isService()Z
    .locals 2

    .line 44
    sget-object v0, Lcom/hack/utils/ProcessUtils;->sProcessType:Lcom/hack/utils/ProcessUtils$ProcessType;

    sget-object v1, Lcom/hack/utils/ProcessUtils$ProcessType;->TYPE_SERVICE:Lcom/hack/utils/ProcessUtils$ProcessType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static tryGetProcessType(Landroid/content/Context;)Lcom/hack/utils/ProcessUtils$ProcessType;
    .locals 3

    .line 25
    sget-object v0, Lcom/hack/utils/ProcessUtils;->sProcessType:Lcom/hack/utils/ProcessUtils$ProcessType;

    sget-object v1, Lcom/hack/utils/ProcessUtils$ProcessType;->TYPE_UNKNOWN:Lcom/hack/utils/ProcessUtils$ProcessType;

    if-ne v0, v1, :cond_4

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {p0}, Lcom/hack/utils/ProcessUtils;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 28
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":client"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":core"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    sget-object p0, Lcom/hack/utils/ProcessUtils$ProcessType;->TYPE_SERVICE:Lcom/hack/utils/ProcessUtils$ProcessType;

    sput-object p0, Lcom/hack/utils/ProcessUtils;->sProcessType:Lcom/hack/utils/ProcessUtils$ProcessType;

    goto :goto_1

    .line 33
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":assist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 34
    sget-object p0, Lcom/hack/utils/ProcessUtils$ProcessType;->TYPE_ASSIST:Lcom/hack/utils/ProcessUtils$ProcessType;

    sput-object p0, Lcom/hack/utils/ProcessUtils;->sProcessType:Lcom/hack/utils/ProcessUtils$ProcessType;

    goto :goto_1

    .line 36
    :cond_2
    sget-object p0, Lcom/hack/utils/ProcessUtils$ProcessType;->TYPE_APP:Lcom/hack/utils/ProcessUtils$ProcessType;

    sput-object p0, Lcom/hack/utils/ProcessUtils;->sProcessType:Lcom/hack/utils/ProcessUtils$ProcessType;

    goto :goto_1

    .line 30
    :cond_3
    :goto_0
    sget-object p0, Lcom/hack/utils/ProcessUtils$ProcessType;->TYPE_CLIENT:Lcom/hack/utils/ProcessUtils$ProcessType;

    sput-object p0, Lcom/hack/utils/ProcessUtils;->sProcessType:Lcom/hack/utils/ProcessUtils$ProcessType;

    .line 40
    :cond_4
    :goto_1
    sget-object p0, Lcom/hack/utils/ProcessUtils;->sProcessType:Lcom/hack/utils/ProcessUtils$ProcessType;

    return-object p0
.end method

.method public static typeToString(Lcom/hack/utils/ProcessUtils$ProcessType;)Ljava/lang/String;
    .locals 2

    .line 111
    sget-object v0, Lcom/hack/utils/ProcessUtils$1;->$SwitchMap$com$hack$utils$ProcessUtils$ProcessType:[I

    invoke-virtual {p0}, Lcom/hack/utils/ProcessUtils$ProcessType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "#TYPE_ASSIST"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 117
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "#TYPE_SERVICE"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 115
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "#TYPE_CLIENT"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 113
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "#TYPE_APP"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
