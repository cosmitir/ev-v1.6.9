.class Lcom/easyvictory/cheto/App$2;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/App;->monitorApplicationEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easyvictory/cheto/App;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/App;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/easyvictory/cheto/App$2;->this$0:Lcom/easyvictory/cheto/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 143
    invoke-static {p1}, Lcom/easyvictory/cheto/App;->access$002(Landroid/app/Activity;)Landroid/app/Activity;

    .line 144
    invoke-static {}, Lcom/easyvictory/cheto/App;->access$000()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 145
    iget-object p1, p0, Lcom/easyvictory/cheto/App$2;->this$0:Lcom/easyvictory/cheto/App;

    invoke-static {}, Lcom/easyvictory/cheto/App;->INSTANCE()Lcom/easyvictory/cheto/App;

    move-result-object v0

    invoke-static {}, Lcom/easyvictory/cheto/App;->access$000()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/easyvictory/cheto/App;->access$100(Lcom/easyvictory/cheto/App;Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
