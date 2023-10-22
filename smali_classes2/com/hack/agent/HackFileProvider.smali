.class public Lcom/hack/agent/HackFileProvider;
.super Lcom/hack/agent/BaseAgentFileProvider;
.source "HackFileProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/hack/agent/BaseAgentFileProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()Z
    .locals 1

    .line 6
    invoke-super {p0}, Lcom/hack/agent/BaseAgentFileProvider;->onCreate()Z

    move-result v0

    return v0
.end method
