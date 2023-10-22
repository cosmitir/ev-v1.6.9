.class Lcom/easyvictory/cheto/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/MainActivity;->checkMatchWithGameABI()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easyvictory/cheto/MainActivity;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/MainActivity;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/easyvictory/cheto/MainActivity$2;->this$0:Lcom/easyvictory/cheto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-wide p1, -0x439b0e63e32061ccL    # -9.082920328227756E-18

    .line 94
    invoke-static {p1, p2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    .line 96
    :try_start_0
    iget-object p1, p0, Lcom/easyvictory/cheto/MainActivity$2;->this$0:Lcom/easyvictory/cheto/MainActivity;

    new-instance p2, Landroid/content/Intent;

    const-wide v0, -0x439b0e7ee32061ccL    # -9.082741657215445E-18

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x439b0e99e32061ccL    # -9.082562986203133E-18

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, p2}, Lcom/easyvictory/cheto/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    :catch_0
    iget-object p1, p0, Lcom/easyvictory/cheto/MainActivity$2;->this$0:Lcom/easyvictory/cheto/MainActivity;

    new-instance p2, Landroid/content/Intent;

    const-wide v0, -0x439b0ec8e32061ccL    # -9.082251966292813E-18

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x439b0ee3e32061ccL    # -9.082073295280502E-18

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, p2}, Lcom/easyvictory/cheto/MainActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
