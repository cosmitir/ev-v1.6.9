.class public interface abstract Lcom/hack/opensdk/HackApi$ApplicationCallback;
.super Ljava/lang/Object;
.source "HackApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hack/opensdk/HackApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ApplicationCallback"
.end annotation


# virtual methods
.method public abstract onAttachBaseContext(Landroid/app/Application;)V
.end method

.method public abstract onCreate(Landroid/app/Application;)V
.end method

.method public abstract onInitAppContext(Ljava/lang/Object;Landroid/content/Context;)V
.end method

.method public abstract onInstallProviders(Landroid/app/Application;)V
.end method
