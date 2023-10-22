.class public Lcom/easyvictory/cheto/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static enabled:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static d(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-static {p0, v0}, Lcom/easyvictory/cheto/Logger;->d(Ljava/lang/String;Z)V

    return-void
.end method

.method static d(Ljava/lang/String;Z)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 34
    invoke-static {}, Lcom/easyvictory/cheto/Logger;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const-wide v0, -0x439b0e57e32061ccL    # -9.082999737566561E-18

    .line 35
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method static e(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 12
    invoke-static {p0, v0}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;Z)V

    return-void
.end method

.method static e(Ljava/lang/String;Z)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 20
    invoke-static {}, Lcom/easyvictory/cheto/Logger;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const-wide v0, -0x439b0e4be32061ccL    # -9.083079146905366E-18

    .line 21
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method static isEnabled()Z
    .locals 1

    .line 40
    sget-boolean v0, Lcom/easyvictory/cheto/Logger;->enabled:Z

    return v0
.end method
