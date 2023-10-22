.class public final synthetic Lcom/hack/server/core/HackServerProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/hack/server/core/HackServerProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/hack/server/core/HackServerProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hack/server/core/HackServerProvider$$ExternalSyntheticLambda0;->f$0:Lcom/hack/server/core/HackServerProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/hack/server/core/HackServerProvider$$ExternalSyntheticLambda0;->f$0:Lcom/hack/server/core/HackServerProvider;

    invoke-virtual {v0}, Lcom/hack/server/core/HackServerProvider;->lambda$onCreate$0$com-hack-server-core-HackServerProvider()V

    return-void
.end method
