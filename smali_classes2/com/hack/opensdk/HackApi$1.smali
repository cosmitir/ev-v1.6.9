.class Lcom/hack/opensdk/HackApi$1;
.super Ljava/lang/Object;
.source "HackApi.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hack/opensdk/HackApi;->registerApplicationCallback(Lcom/hack/opensdk/HackApi$ApplicationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/hack/opensdk/HackApi$ApplicationCallback;


# direct methods
.method constructor <init>(Lcom/hack/opensdk/HackApi$ApplicationCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 355
    iput-object p1, p0, Lcom/hack/opensdk/HackApi$1;->val$callback:Lcom/hack/opensdk/HackApi$ApplicationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p1, 0x0

    .line 358
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x2

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 373
    :cond_0
    iget-object p1, p0, Lcom/hack/opensdk/HackApi$1;->val$callback:Lcom/hack/opensdk/HackApi$ApplicationCallback;

    aget-object p2, p3, v0

    check-cast p2, Landroid/app/Application;

    invoke-interface {p1, p2}, Lcom/hack/opensdk/HackApi$ApplicationCallback;->onCreate(Landroid/app/Application;)V

    goto :goto_0

    .line 369
    :cond_1
    iget-object p1, p0, Lcom/hack/opensdk/HackApi$1;->val$callback:Lcom/hack/opensdk/HackApi$ApplicationCallback;

    aget-object p2, p3, v0

    check-cast p2, Landroid/app/Application;

    invoke-interface {p1, p2}, Lcom/hack/opensdk/HackApi$ApplicationCallback;->onInstallProviders(Landroid/app/Application;)V

    goto :goto_0

    .line 365
    :cond_2
    iget-object p1, p0, Lcom/hack/opensdk/HackApi$1;->val$callback:Lcom/hack/opensdk/HackApi$ApplicationCallback;

    aget-object p2, p3, v0

    check-cast p2, Landroid/app/Application;

    invoke-interface {p1, p2}, Lcom/hack/opensdk/HackApi$ApplicationCallback;->onAttachBaseContext(Landroid/app/Application;)V

    goto :goto_0

    .line 361
    :cond_3
    iget-object p1, p0, Lcom/hack/opensdk/HackApi$1;->val$callback:Lcom/hack/opensdk/HackApi$ApplicationCallback;

    aget-object v0, p3, v0

    aget-object p2, p3, p2

    check-cast p2, Landroid/content/Context;

    invoke-interface {p1, v0, p2}, Lcom/hack/opensdk/HackApi$ApplicationCallback;->onInitAppContext(Ljava/lang/Object;Landroid/content/Context;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
