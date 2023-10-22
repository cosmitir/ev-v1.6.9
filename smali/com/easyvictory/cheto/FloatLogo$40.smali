.class Lcom/easyvictory/cheto/FloatLogo$40;
.super Ljava/lang/Object;
.source "FloatLogo.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/FloatLogo;->createOver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private initialTouchX:F

.field private initialTouchY:F

.field private initialX:I

.field private initialY:I

.field final synthetic this$0:Lcom/easyvictory/cheto/FloatLogo;

.field final synthetic val$gestureDetector:Landroid/view/GestureDetector;

.field final synthetic val$params:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/FloatLogo;Landroid/view/GestureDetector;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1211
    iput-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$40;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    iput-object p2, p0, Lcom/easyvictory/cheto/FloatLogo$40;->val$gestureDetector:Landroid/view/GestureDetector;

    iput-object p3, p0, Lcom/easyvictory/cheto/FloatLogo$40;->val$params:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1220
    iget-object v0, p0, Lcom/easyvictory/cheto/FloatLogo$40;->val$gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1221
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$40;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {p1}, Lcom/easyvictory/cheto/FloatLogo;->access$1200(Lcom/easyvictory/cheto/FloatLogo;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1222
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$40;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {p1}, Lcom/easyvictory/cheto/FloatLogo;->access$1300(Lcom/easyvictory/cheto/FloatLogo;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return v2

    .line 1225
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    goto/16 :goto_1

    .line 1234
    :cond_1
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$40;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Lcom/easyvictory/cheto/FloatLogo$40;->initialX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v3, p0, Lcom/easyvictory/cheto/FloatLogo$40;->initialTouchX:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1235
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$40;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Lcom/easyvictory/cheto/FloatLogo$40;->initialY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v1, p0, Lcom/easyvictory/cheto/FloatLogo$40;->initialTouchY:F

    sub-float/2addr p2, v1

    float-to-int p2, p2

    add-int/2addr v0, p2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1237
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$40;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {p1}, Lcom/easyvictory/cheto/FloatLogo;->access$4000(Lcom/easyvictory/cheto/FloatLogo;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Lcom/easyvictory/cheto/FloatLogo$40;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {p2}, Lcom/easyvictory/cheto/FloatLogo;->access$3800(Lcom/easyvictory/cheto/FloatLogo;)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/easyvictory/cheto/FloatLogo$40;->val$params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return v2

    .line 1240
    :cond_2
    iget-object p2, p0, Lcom/easyvictory/cheto/FloatLogo$40;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {p2}, Lcom/easyvictory/cheto/FloatLogo;->access$4100(Lcom/easyvictory/cheto/FloatLogo;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/easyvictory/cheto/Utils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p2

    .line 1241
    iget v0, p2, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    float-to-int v0, v0

    .line 1242
    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    div-float/2addr p2, v3

    float-to-int p2, p2

    .line 1243
    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo$40;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int v4, p2, v4

    if-ge v3, v4, :cond_4

    iget-object v3, p0, Lcom/easyvictory/cheto/FloatLogo$40;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr p2, p1

    neg-int p1, p2

    if-le v3, p1, :cond_4

    .line 1244
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$40;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-lez p1, :cond_3

    .line 1245
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$40;->val$params:Landroid/view/WindowManager$LayoutParams;

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    .line 1247
    :cond_3
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$40;->val$params:Landroid/view/WindowManager$LayoutParams;

    neg-int p2, v0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1250
    :goto_0
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$40;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {p1}, Lcom/easyvictory/cheto/FloatLogo;->access$4000(Lcom/easyvictory/cheto/FloatLogo;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Lcom/easyvictory/cheto/FloatLogo$40;->this$0:Lcom/easyvictory/cheto/FloatLogo;

    invoke-static {p2}, Lcom/easyvictory/cheto/FloatLogo;->access$3800(Lcom/easyvictory/cheto/FloatLogo;)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/easyvictory/cheto/FloatLogo$40;->val$params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return v2

    :cond_4
    :goto_1
    return v1

    .line 1227
    :cond_5
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$40;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, p0, Lcom/easyvictory/cheto/FloatLogo$40;->initialX:I

    .line 1228
    iget-object p1, p0, Lcom/easyvictory/cheto/FloatLogo$40;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Lcom/easyvictory/cheto/FloatLogo$40;->initialY:I

    .line 1229
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/easyvictory/cheto/FloatLogo$40;->initialTouchX:F

    .line 1230
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/easyvictory/cheto/FloatLogo$40;->initialTouchY:F

    return v2
.end method
