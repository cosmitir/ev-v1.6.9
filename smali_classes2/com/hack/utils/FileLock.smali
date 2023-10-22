.class public Lcom/hack/utils/FileLock;
.super Ljava/lang/Object;
.source "FileLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hack/utils/FileLock$FileLockCount;
    }
.end annotation


# static fields
.field private static singleton:Lcom/hack/utils/FileLock;


# instance fields
.field private mRefCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hack/utils/FileLock$FileLockCount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/hack/utils/FileLock;->mRefCountMap:Ljava/util/Map;

    return-void
.end method

.method private RefCntDec(Ljava/lang/String;)I
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/hack/utils/FileLock;->mRefCountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/hack/utils/FileLock;->mRefCountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hack/utils/FileLock$FileLockCount;

    .line 41
    iget v1, v0, Lcom/hack/utils/FileLock$FileLockCount;->mRefCount:I

    add-int/lit8 v1, v1, -0x1

    .line 42
    iput v1, v0, Lcom/hack/utils/FileLock$FileLockCount;->mRefCount:I

    if-gtz v1, :cond_1

    .line 45
    iget-object v0, p0, Lcom/hack/utils/FileLock;->mRefCountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private RefCntInc(Ljava/lang/String;Ljava/nio/channels/FileLock;Ljava/io/RandomAccessFile;Ljava/nio/channels/FileChannel;)I
    .locals 9

    .line 24
    iget-object v0, p0, Lcom/hack/utils/FileLock;->mRefCountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    iget-object p2, p0, Lcom/hack/utils/FileLock;->mRefCountMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hack/utils/FileLock$FileLockCount;

    .line 26
    iget p2, p1, Lcom/hack/utils/FileLock$FileLockCount;->mRefCount:I

    add-int/lit8 p3, p2, 0x1

    .line 27
    iput p3, p1, Lcom/hack/utils/FileLock$FileLockCount;->mRefCount:I

    goto :goto_0

    :cond_0
    const/4 v6, 0x1

    .line 31
    iget-object v7, p0, Lcom/hack/utils/FileLock;->mRefCountMap:Ljava/util/Map;

    new-instance v8, Lcom/hack/utils/FileLock$FileLockCount;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p2

    move v3, v6

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/hack/utils/FileLock$FileLockCount;-><init>(Lcom/hack/utils/FileLock;Ljava/nio/channels/FileLock;ILjava/io/RandomAccessFile;Ljava/nio/channels/FileChannel;)V

    invoke-interface {v7, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p2, v6

    :goto_0
    return p2
.end method

.method public static getInstance()Lcom/hack/utils/FileLock;
    .locals 1

    .line 15
    sget-object v0, Lcom/hack/utils/FileLock;->singleton:Lcom/hack/utils/FileLock;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/hack/utils/FileLock;

    invoke-direct {v0}, Lcom/hack/utils/FileLock;-><init>()V

    sput-object v0, Lcom/hack/utils/FileLock;->singleton:Lcom/hack/utils/FileLock;

    .line 18
    :cond_0
    sget-object v0, Lcom/hack/utils/FileLock;->singleton:Lcom/hack/utils/FileLock;

    return-object v0
.end method


# virtual methods
.method public LockExclusive(Ljava/io/File;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 57
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v2, "/lock"

    invoke-virtual {p1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 59
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 61
    :cond_1
    new-instance p1, Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rw"

    invoke-direct {p1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 63
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v3

    .line 64
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v4

    if-nez v4, :cond_2

    return v0

    .line 67
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3, p1, v2}, Lcom/hack/utils/FileLock;->RefCntInc(Ljava/lang/String;Ljava/nio/channels/FileLock;Ljava/io/RandomAccessFile;Ljava/nio/channels/FileChannel;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method

.method public unLock(Ljava/io/File;)V
    .locals 3

    .line 79
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "/lock"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/hack/utils/FileLock;->mRefCountMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 84
    iget-object p1, p0, Lcom/hack/utils/FileLock;->mRefCountMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hack/utils/FileLock$FileLockCount;

    if-eqz p1, :cond_3

    .line 86
    iget-object v1, p1, Lcom/hack/utils/FileLock$FileLockCount;->mFileLock:Ljava/nio/channels/FileLock;

    .line 87
    iget-object v2, p1, Lcom/hack/utils/FileLock$FileLockCount;->fOs:Ljava/io/RandomAccessFile;

    .line 88
    iget-object p1, p1, Lcom/hack/utils/FileLock$FileLockCount;->fChannel:Ljava/nio/channels/FileChannel;

    .line 90
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/hack/utils/FileLock;->RefCntDec(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_3

    if-eqz v1, :cond_1

    .line 91
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V

    :cond_1
    if-eqz v2, :cond_2

    .line 95
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    :cond_2
    if-eqz p1, :cond_3

    .line 98
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 102
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method
