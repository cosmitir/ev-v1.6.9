.class Lcom/hack/opensdk/Cmd$1;
.super Lcom/hack/utils/Singleton;
.source "Cmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hack/opensdk/Cmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hack/utils/Singleton<",
        "Lcom/hack/opensdk/Cmd;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/hack/utils/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/hack/opensdk/Cmd;
    .locals 2

    .line 25
    new-instance v0, Lcom/hack/opensdk/Cmd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hack/opensdk/Cmd;-><init>(Lcom/hack/opensdk/Cmd$1;)V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/hack/opensdk/Cmd$1;->create()Lcom/hack/opensdk/Cmd;

    move-result-object v0

    return-object v0
.end method
