.class public Lcom/hack/assist/AssistActivity$BaseActivity;
.super Landroid/app/Activity;
.source "AssistActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hack/assist/AssistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-static {}, Lcom/hack/opensdk/Cmd;->INSTANCE()Lcom/hack/opensdk/Cmd;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/16 v1, 0xe0

    invoke-virtual {p1, v1, v0}, Lcom/hack/opensdk/Cmd;->exec(I[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
