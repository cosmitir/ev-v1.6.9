.class public Lcom/hack/server/core/TransactRegistry;
.super Ljava/lang/Object;
.source "TransactRegistry.java"

# interfaces
.implements Lcom/hack/server/core/TransactCallback;


# instance fields
.field private final transactCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/hack/server/core/TransactCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/hack/server/core/TransactRegistry;->transactCallbacks:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final registerTransactCallback(ILcom/hack/server/core/TransactCallback;)V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/hack/server/core/TransactRegistry;->transactCallbacks:Landroid/util/SparseArray;

    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/hack/server/core/TransactRegistry;->transactCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public transact(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/hack/server/core/TransactRegistry;->transactCallbacks:Landroid/util/SparseArray;

    monitor-enter v0

    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/hack/server/core/TransactRegistry;->transactCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hack/server/core/TransactCallback;

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 33
    invoke-interface {v1, p1, p2, p3}, Lcom/hack/server/core/TransactCallback;->transact(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 31
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final unregisterTransactCallback(I)V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/hack/server/core/TransactRegistry;->transactCallbacks:Landroid/util/SparseArray;

    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/hack/server/core/TransactRegistry;->transactCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 22
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
