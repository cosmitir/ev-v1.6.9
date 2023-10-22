.class public Lcom/hack/opensdk/HackApi;
.super Ljava/lang/Object;
.source "HackApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hack/opensdk/HackApi$ApplicationCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HackApi"

.field private static final sTransactRegistry:Lcom/hack/server/core/TransactRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/hack/server/core/TransactRegistry;

    invoke-direct {v0}, Lcom/hack/server/core/TransactRegistry;-><init>()V

    sput-object v0, Lcom/hack/opensdk/HackApi;->sTransactRegistry:Lcom/hack/server/core/TransactRegistry;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attachBaseContext(Landroid/app/Application;Landroid/content/Context;)V
    .locals 3

    .line 28
    invoke-static {}, Lcom/hack/opensdk/Cmd;->INSTANCE()Lcom/hack/opensdk/Cmd;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-virtual {v0, p0, v1}, Lcom/hack/opensdk/Cmd;->exec(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static deletePackageCache(Ljava/lang/String;I)I
    .locals 3

    .line 122
    invoke-static {}, Lcom/hack/opensdk/Cmd;->INSTANCE()Lcom/hack/opensdk/Cmd;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 124
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const/4 p0, 0x2

    .line 126
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/16 p0, 0xe

    .line 122
    invoke-virtual {v0, p0, v1}, Lcom/hack/opensdk/Cmd;->exec(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static deletePackageData(Ljava/lang/String;I)I
    .locals 3

    .line 108
    invoke-static {}, Lcom/hack/opensdk/Cmd;->INSTANCE()Lcom/hack/opensdk/Cmd;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const/4 p0, 0x2

    .line 112
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/16 p0, 0xd

    .line 108
    invoke-virtual {v0, p0, v1}, Lcom/hack/opensdk/Cmd;->exec(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    .locals 3

    .line 160
    invoke-static {}, Lcom/hack/opensdk/Cmd;->INSTANCE()Lcom/hack/opensdk/Cmd;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    .line 163
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    .line 164
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/16 p0, 0x18

    .line 160
    invoke-virtual {v0, p0, v1}, Lcom/hack/opensdk/Cmd;->exec(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ActivityInfo;

    return-object p0
.end method

.method public static getAvailableUser(Ljava/lang/String;)I
    .locals 7

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 286
    invoke-static {p0}, Lcom/hack/opensdk/HackApi;->getInstallUsersForPackage(Ljava/lang/String;)[I

    move-result-object p0

    const/4 v2, 0x0

    if-eqz p0, :cond_3

    move v3, v2

    :goto_0
    const v4, 0x7fffffff

    if-ge v3, v4, :cond_3

    .line 290
    array-length v4, p0

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_1

    aget v6, p0, v5

    if-ne v6, v3, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_2
    if-nez v4, :cond_2

    move v2, v3

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 302
    :cond_3
    :goto_3
    sget-object p0, Lcom/hack/opensdk/HackApi;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getUsers consume: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hack/Slog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static getAvailableUserSpace()[I
    .locals 3

    .line 274
    invoke-static {}, Lcom/hack/opensdk/Cmd;->INSTANCE()Lcom/hack/opensdk/Cmd;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0xa3

    invoke-virtual {v0, v2, v1}, Lcom/hack/opensdk/Cmd;->exec(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static getInstallUsersForPackage(Ljava/lang/String;)[I
    .locals 3

    .line 280
    invoke-static {}, Lcom/hack/opensdk/Cmd;->INSTANCE()Lcom/hack/opensdk/Cmd;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/16 p0, 0xa4

    invoke-virtual {v0, p0, v1}, Lcom/hack/opensdk/Cmd;->exec(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public static getInstalledPackages(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 169
    invoke-static {}, Lcom/hack/opensdk/Cmd;->INSTANCE()Lcom/hack/opensdk/Cmd;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 171
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    .line 172
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/16 p0, 0x19

    .line 169
    invoke-virtual {v0, p0, v1}, Lcom/hack/opensdk/Cmd;->exec(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getLaunchIntentForPackage(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 6

    .line 315
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.INFO"

    .line 316
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 318
    invoke-static {v0, v2, v3, p1}, Lcom/hack/opensdk/HackApi;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 321
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 323
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 324
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    invoke-static {v0, v2, v3, p1}, Lcom/hack/opensdk/HackApi;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4

    :cond_1
    if-eqz v4, :cond_3

    .line 328
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p0

    if-gtz p0, :cond_2

    goto :goto_0

    .line 331
    :cond_2
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 p1, 0x10000000

    .line 332
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 333
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    :cond_3
    :goto_0
    return-object v2
.end method

.method public static getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 3

    .line 131
    invoke-static {}, Lcom/hack/opensdk/Cmd;->INSTANCE()Lcom/hack/opensdk/Cmd;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 133
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const/4 p0, 0x2

    .line 135
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/16 p0, 0x15

    .line 131
    invoke-virtual {v0, p0, v1}, Lcom/hack/opensdk/Cmd;->exec(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageInfo;

    return-object p0
.end method

.method public static getPackageSetting(Ljava/lang/String;II)Landroid/os/Bundle;
    .locals 3

    .line 36
    invoke-static {}, Lcom/hack/opensdk/Cmd;->INSTANCE()Lcom/hack/opensdk/Cmd;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/16 p0, 0x1a

    invoke-virtual {v0, p0, v1}, Lcom/hack/opensdk/Cmd;->exec(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method

.method public static getRuntimeProperties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 338
    invoke-static {}, Lcom/hack/opensdk/Cmd;->INSTANCE()Lcom/hack/opensdk/Cmd;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x12f

    invoke-virtual {v0, v2, v1}, Lcom/hack/opensdk/Cmd;->exec(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public static getRuntimeProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 344
    :try_start_0
    invoke-static {}, Lcom/hack/opensdk/HackApi;->getRuntimeProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    return-object p0

    :catchall_0
    return-object p1
.end method

.method public static getTransactRegistry()Lcom/hack/server/core/TransactRegistry;
    .locals 1

    .line 307
    sget-object v0, Lcom/hack/opensdk/HackApi;->sTransactRegistry:Lcom/hack/server/core/TransactRegistry;

    return-object v0
.end method

.method public static getUnavailablePackages(I)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 178
    invoke-static {}, Lcom/hack/opensdk/Cmd;->INSTANCE()Lcom/hack/opensdk/Cmd;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 180
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p0

    const/16 p0, 0x1c

    .line 178
    invoke-virtual {v0, p0, v1}, Lcom/hack/opensdk/Cmd;->exec(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public static hasAnyRunningActivity(ILjava/lang/String;)Z
    .locals 3

    .line 232
    invoke-static {}, Lcom/hack/opensdk/Cmd;->INSTANCE()Lcom/hack/opensdk/Cmd;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/16 p0, 0x10

    invoke-virtual {v0, p0, v1}, Lcom/hack/opensdk/Cmd;->exec(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static installApkFiles(Ljava/lang/String;IZ)I
    .locals 3

    .line 79
    sget v0, Lcom/hack/opensdk/CmdConstants;->MODE_INSTALL_ALONE:I

    if-eqz p2, :cond_0

    .line 81
    sget p2, Lcom/hack/opensdk/CmdConstants;->MODE_FORCE_INSTALL:I

    or-int/2addr v0, p2

    .line 83
    :cond_0
    invoke-static {}, Lcom/hack/opensdk/Cmd;->INSTANCE()Lcom/hack/opensdk/Cmd;

    move-result-object p2

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const/4 p0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/16 p0, 0xa

    .line 83
    invoke-virtual {p2, p0, v1}, Lcom/hack/opensdk/Cmd;->exec(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static installPackageFromHost(Ljava/lang/String;IZ)I
    .locals 3

    .line 58
    invoke-static {}, Lcom/hack/opensdk/Cmd;->INSTANCE()Lcom/hack/opensdk/Cmd;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p0, v1, p1

    if-eqz p2, :cond_0

    .line 61
    sget v2, Lcom/hack/opensdk/CmdConstants;->MODE_FORCE_INSTALL:I

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v1, p1

    const/16 p0, 0xa

    .line 58
    invoke-virtual {v0, p0, v1}, Lcom/hack/opensdk/Cmd;->exec(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static isSupportBpf()Z
    .locals 4

    const/4 v0, 0x0

    .line 41
    :try_start_0
    invoke-static {}, Lcom/hack/opensdk/Cmd;->INSTANCE()Lcom/hack/opensdk/Cmd;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Lcom/hack/opensdk/Cmd;->exec(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return v0
.end method

.method public static killApplication(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 228
    invoke-static {}, Lcom/hack/opensdk/Cmd;->INSTANCE()Lcom/hack/opensdk/Cmd;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/16 p0, 0xf

    invoke-virtual {v0, p0, v1}, Lcom/hack/opensdk/Cmd;->exec(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static onCreate()V
    .locals 3

    .line 32
    invoke-static {}, Lcom/hack/opensdk/Cmd;->INSTANCE()Lcom/hack/opensdk/Cmd;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/hack/opensdk/Cmd;->exec(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 150
    invoke-static {}, Lcom/hack/opensdk/Cmd;->INSTANCE()Lcom/hack/opensdk/Cmd;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    .line 154
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x3

    .line 155
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/16 p0, 0x17

    .line 150
    invoke-virtual {v0, p0, v1}, Lcom/hack/opensdk/Cmd;->exec(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static registerApplicationCallback(Lcom/hack/opensdk/HackApi$ApplicationCallback;)V
    .locals 3

    .line 355
    invoke-static {}, Lcom/hack/opensdk/Cmd;->INSTANCE()Lcom/hack/opensdk/Cmd;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Lcom/hack/opensdk/HackApi$1;

    invoke-direct {v2, p0}, Lcom/hack/opensdk/HackApi$1;-><init>(Lcom/hack/opensdk/HackApi$ApplicationCallback;)V

    const/4 p0, 0x0

    aput-object v2, v1, p0

    const/16 p0, 0x193

    invoke-virtual {v0, p0, v1}, Lcom/hack/opensdk/Cmd;->exec(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static registerDeleteObserver(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 241
    invoke-static {}, Lcom/hack/opensdk/Cmd;->INSTANCE()Lcom/hack/opensdk/Cmd;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/16 p0, 0x2a

    invoke-virtual {v0, p0, v1}, Lcom/hack/opensdk/Cmd;->exec(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static registerInstallObserver(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 260
    invoke-static {}, Lcom/hack/opensdk/Cmd;->INSTANCE()Lcom/hack/opensdk/Cmd;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/16 p0, 0x2c

    invoke-virtual {v0, p0, v1}, Lcom/hack/opensdk/Cmd;->exec(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static registerTransactCallback(ILcom/hack/server/core/TransactCallback;)V
    .locals 1

    .line 184
    sget-object v0, Lcom/hack/opensdk/HackApi;->sTransactRegistry:Lcom/hack/server/core/TransactRegistry;

    invoke-virtual {v0, p0, p1}, Lcom/hack/server/core/TransactRegistry;->registerTransactCallback(ILcom/hack/server/core/TransactCallback;)V

    return-void
.end method

.method public static resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    .locals 3

    .line 140
    invoke-static {}, Lcom/hack/opensdk/Cmd;->INSTANCE()Lcom/hack/opensdk/Cmd;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    .line 144
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x3

    .line 145
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/16 p0, 0x16

    .line 140
    invoke-virtual {v0, p0, v1}, Lcom/hack/opensdk/Cmd;->exec(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    return-object p0
.end method

.method public static startActivity(Landroid/content/Intent;I)I
    .locals 3

    .line 219
    invoke-static {}, Lcom/hack/opensdk/Cmd;->INSTANCE()Lcom/hack/opensdk/Cmd;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    const/4 v2, 0x0

    aput-object v2, v1, p0

    const/4 p0, 0x2

    .line 223
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/16 p0, 0x21

    .line 219
    invoke-virtual {v0, p0, v1}, Lcom/hack/opensdk/Cmd;->exec(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static startPackage(Ljava/lang/String;I)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    invoke-static {}, Lcom/hack/opensdk/Cmd;->INSTANCE()Lcom/hack/opensdk/Cmd;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    .line 202
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    .line 203
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/16 p0, 0x20

    .line 199
    invoke-virtual {v0, p0, v1}, Lcom/hack/opensdk/Cmd;->exec(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static uninstallPackage(Ljava/lang/String;I)I
    .locals 3

    .line 94
    invoke-static {}, Lcom/hack/opensdk/Cmd;->INSTANCE()Lcom/hack/opensdk/Cmd;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const/4 p0, 0x2

    .line 98
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const/16 p0, 0xb

    .line 94
    invoke-virtual {v0, p0, v1}, Lcom/hack/opensdk/Cmd;->exec(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static unregisterDeleteObserver(Ljava/lang/Object;)V
    .locals 3

    .line 248
    invoke-static {}, Lcom/hack/opensdk/Cmd;->INSTANCE()Lcom/hack/opensdk/Cmd;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/16 p0, 0x2b

    invoke-virtual {v0, p0, v1}, Lcom/hack/opensdk/Cmd;->exec(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static unregisterInstallObserver(Ljava/lang/Object;)V
    .locals 3

    .line 267
    invoke-static {}, Lcom/hack/opensdk/Cmd;->INSTANCE()Lcom/hack/opensdk/Cmd;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/16 p0, 0x2d

    invoke-virtual {v0, p0, v1}, Lcom/hack/opensdk/Cmd;->exec(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static unregisterTransactCallback(I)V
    .locals 1

    .line 188
    sget-object v0, Lcom/hack/opensdk/HackApi;->sTransactRegistry:Lcom/hack/server/core/TransactRegistry;

    invoke-virtual {v0, p0}, Lcom/hack/server/core/TransactRegistry;->unregisterTransactCallback(I)V

    return-void
.end method
