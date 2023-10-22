.class Lcom/easyvictory/cheto/FloatLogo$39;
.super Ljava/lang/Object;
.source "FloatLogo.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/FloatLogo;->createOver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easyvictory/cheto/FloatLogo;

.field final synthetic val$params:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/FloatLogo;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1192
    iput-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$39;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    iput-object p2, p0, Lcom/easyvictory/cheto/FloatLogo$39;->val$params:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1196
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$39;->val$params:Landroid/view/WindowManager$LayoutParams;

    const/16 p2, 0x20

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 1199
    :cond_0
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$39;->val$params:Landroid/view/WindowManager$LayoutParams;

    const/16 p2, 0x8

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1203
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$39;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {p1}, Lcom/easyvictory/cheto/FloatLogo;->access$4000(Lcom/easyvictory/cheto/FloatLogo;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Lcom/easyvictory/cheto/FloatLogo$39;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {p2}, Lcom/easyvictory/cheto/FloatLogo;->access$3800(Lcom/easyvictory/cheto/FloatLogo;)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/easyvictory/cheto/FloatLogo$39;->val$params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
