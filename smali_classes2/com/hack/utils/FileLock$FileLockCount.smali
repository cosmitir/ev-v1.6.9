.class Lcom/hack/utils/FileLock$FileLockCount;
.super Ljava/lang/Object;
.source "FileLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hack/utils/FileLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileLockCount"
.end annotation


# instance fields
.field fChannel:Ljava/nio/channels/FileChannel;

.field fOs:Ljava/io/RandomAccessFile;

.field mFileLock:Ljava/nio/channels/FileLock;

.field mRefCount:I

.field final synthetic this$0:Lcom/hack/utils/FileLock;


# direct methods
.method constructor <init>(Lcom/hack/utils/FileLock;Ljava/nio/channels/FileLock;ILjava/io/RandomAccessFile;Ljava/nio/channels/FileChannel;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/hack/utils/FileLock$FileLockCount;->this$0:Lcom/hack/utils/FileLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p2, p0, Lcom/hack/utils/FileLock$FileLockCount;->mFileLock:Ljava/nio/channels/FileLock;

    .line 117
    iput p3, p0, Lcom/hack/utils/FileLock$FileLockCount;->mRefCount:I

    .line 118
    iput-object p4, p0, Lcom/hack/utils/FileLock$FileLockCount;->fOs:Ljava/io/RandomAccessFile;

    .line 119
    iput-object p5, p0, Lcom/hack/utils/FileLock$FileLockCount;->fChannel:Ljava/nio/channels/FileChannel;

    return-void
.end method
