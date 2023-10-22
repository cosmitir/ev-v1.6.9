.class Lcom/easyvictory/cheto/Entry$1;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easyvictory/cheto/Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 84
    invoke-static {p2}, Lcom/easyvictory/cheto/ISampleInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/easyvictory/cheto/ISampleInterface;

    move-result-object p1

    invoke-static {p1}, Lcom/easyvictory/cheto/Entry;->access$002(Lcom/easyvictory/cheto/ISampleInterface;)Lcom/easyvictory/cheto/ISampleInterface;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 90
    invoke-static {p1}, Lcom/easyvictory/cheto/Entry;->access$002(Lcom/easyvictory/cheto/ISampleInterface;)Lcom/easyvictory/cheto/ISampleInterface;

    return-void
.end method
