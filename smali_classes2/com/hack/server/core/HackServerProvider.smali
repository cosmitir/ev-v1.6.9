.class public Lcom/hack/server/core/HackServerProvider;
.super Lcom/hack/agent/ProviderBase;
.source "HackServerProvider.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "HackServerProvider"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/hack/agent/ProviderBase;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getProviderCallType()I
    .locals 1

    const/16 v0, 0x9a

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method synthetic lambda$onCreate$0$com-hack-server-core-HackServerProvider()V
    .locals 4

    .line 36
    invoke-virtual {p0}, Lcom/hack/server/core/HackServerProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/hack/server/core/HackServerProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/hack/server/core/ForgroundService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public onCreate()Z
    .locals 4

    .line 35
    new-instance v0, Lcom/hack/server/core/HackServerProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/hack/server/core/HackServerProvider$$ExternalSyntheticLambda0;-><init>(Lcom/hack/server/core/HackServerProvider;)V

    invoke-static {v0}, Lcom/hack/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 38
    invoke-static {}, Lcom/hack/opensdk/Cmd;->INSTANCE()Lcom/hack/opensdk/Cmd;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/hack/server/core/HackServerProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x99

    invoke-virtual {v0, v2, v1}, Lcom/hack/opensdk/Cmd;->exec(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
