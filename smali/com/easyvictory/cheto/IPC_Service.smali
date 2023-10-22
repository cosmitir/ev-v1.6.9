.class public Lcom/easyvictory/cheto/IPC_Service;
.super Landroid/app/Service;
.source "IPC_Service.java"


# instance fields
.field private stub:Lcom/easyvictory/cheto/ISampleInterface$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 14
    new-instance v0, Lcom/easyvictory/cheto/IPC_Service$1;

    invoke-direct {v0, p0}, Lcom/easyvictory/cheto/IPC_Service$1;-><init>(Lcom/easyvictory/cheto/IPC_Service;)V

    iput-object v0, p0, Lcom/easyvictory/cheto/IPC_Service;->stub:Lcom/easyvictory/cheto/ISampleInterface$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/easyvictory/cheto/IPC_Service;)[C
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/easyvictory/cheto/IPC_Service;->rowBytes()[C

    move-result-object p0

    return-object p0
.end method

.method private native rowBytes()[C
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 30
    iget-object p1, p0, Lcom/easyvictory/cheto/IPC_Service;->stub:Lcom/easyvictory/cheto/ISampleInterface$Stub;

    return-object p1
.end method
