.class public abstract Lcom/hack/agent/ProviderBase;
.super Lcom/hack/agent/AppAgentFileProvider;
.source "ProviderBase.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ProviderBase"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/hack/agent/AppAgentFileProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 2

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 20
    sget-object v1, Lcom/hack/server/core/transact/TransactActivityLifecycle;->INSTANCE:Lcom/hack/server/core/transact/TransactActivityLifecycle;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 21
    invoke-static {p2}, Lcom/hack/opensdk/HackRuntime;->attachProviderInfo(Landroid/content/pm/ProviderInfo;)V

    .line 22
    invoke-super {p0, p1, p2}, Lcom/hack/agent/AppAgentFileProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    .line 32
    invoke-static {}, Lcom/hack/opensdk/Cmd;->INSTANCE()Lcom/hack/opensdk/Cmd;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hack/agent/ProviderBase;->getProviderCallType()I

    move-result v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/hack/opensdk/Cmd;->exec(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    return-object p1
.end method

.method public abstract getProviderCallType()I
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
