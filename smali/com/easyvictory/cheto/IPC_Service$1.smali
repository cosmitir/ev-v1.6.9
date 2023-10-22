.class Lcom/easyvictory/cheto/IPC_Service$1;
.super Lcom/easyvictory/cheto/ISampleInterface$Stub;
.source "IPC_Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easyvictory/cheto/IPC_Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easyvictory/cheto/IPC_Service;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/IPC_Service;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/easyvictory/cheto/IPC_Service$1;->this$0:Lcom/easyvictory/cheto/IPC_Service;

    invoke-direct {p0}, Lcom/easyvictory/cheto/ISampleInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getRowBytes()[C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/easyvictory/cheto/IPC_Service$1;->this$0:Lcom/easyvictory/cheto/IPC_Service;

    invoke-static {v0}, Lcom/easyvictory/cheto/IPC_Service;->access$000(Lcom/easyvictory/cheto/IPC_Service;)[C

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
