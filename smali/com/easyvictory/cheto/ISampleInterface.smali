.class public interface abstract Lcom/easyvictory/cheto/ISampleInterface;
.super Ljava/lang/Object;
.source "ISampleInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easyvictory/cheto/ISampleInterface$Stub;,
        Lcom/easyvictory/cheto/ISampleInterface$Default;
    }
.end annotation


# virtual methods
.method public abstract getRowBytes()[C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
