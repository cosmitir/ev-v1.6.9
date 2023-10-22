.class Lcom/easyvictory/cheto/FloatLogo$7;
.super Ljava/lang/Object;
.source "FloatLogo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/FloatLogo;->load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easyvictory/cheto/FloatLogo;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/FloatLogo;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$7;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 512
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$7;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-virtual {p1}, Lcom/easyvictory/cheto/FloatLogo;->exportConfig()V

    return-void
.end method
