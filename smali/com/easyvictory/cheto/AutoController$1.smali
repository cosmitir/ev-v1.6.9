.class Lcom/easyvictory/cheto/AutoController$1;
.super Ljava/lang/Object;
.source "AutoController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/AutoController;->createOver()V
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

.field final synthetic this$0:Lcom/easyvictory/cheto/AutoController;

.field final synthetic val$gestureDetector:Landroid/view/GestureDetector;

.field final synthetic val$params:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/AutoController;Landroid/view/GestureDetector;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lcom/easyvictory/cheto/AutoController$1;->this$0:Lcom/easyvictory/cheto/AutoController;

    iput-object p2, p0, Lcom/easyvictory/cheto/AutoController$1;->val$gestureDetector:Landroid/view/GestureDetector;

    iput-object p3, p0, Lcom/easyvictory/cheto/AutoController$1;->val$params:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 132
    iget-object v0, p0, Lcom/easyvictory/cheto/AutoController$1;->val$gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 134
    :try_start_0
    iget-object p1, p0, Lcom/easyvictory/cheto/AutoController$1;->this$0:Lcom/easyvictory/cheto/AutoController;

    invoke-static {p1}, Lcom/easyvictory/cheto/AutoController;->access$000(Lcom/easyvictory/cheto/AutoController;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 135
    iget-object p1, p0, Lcom/easyvictory/cheto/AutoController$1;->this$0:Lcom/easyvictory/cheto/AutoController;

    invoke-virtual {p1, v1, v2}, Lcom/easyvictory/cheto/AutoController;->SettingValueWrapper(IZ)Z

    .line 136
    iget-object p1, p0, Lcom/easyvictory/cheto/AutoController$1;->this$0:Lcom/easyvictory/cheto/AutoController;

    invoke-static {p1}, Lcom/easyvictory/cheto/AutoController;->access$100(Lcom/easyvictory/cheto/AutoController;)Landroid/widget/ImageView;

    move-result-object p1

    const p2, 0x7f080107

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/easyvictory/cheto/AutoController$1;->this$0:Lcom/easyvictory/cheto/AutoController;

    invoke-virtual {p1, v1, v1}, Lcom/easyvictory/cheto/AutoController;->SettingValueWrapper(IZ)Z

    .line 139
    iget-object p1, p0, Lcom/easyvictory/cheto/AutoController$1;->this$0:Lcom/easyvictory/cheto/AutoController;

    invoke-static {p1}, Lcom/easyvictory/cheto/AutoController;->access$100(Lcom/easyvictory/cheto/AutoController;)Landroid/widget/ImageView;

    move-result-object p1

    const p2, 0x7f080106

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    :goto_0
    iget-object p1, p0, Lcom/easyvictory/cheto/AutoController$1;->this$0:Lcom/easyvictory/cheto/AutoController;

    invoke-static {p1}, Lcom/easyvictory/cheto/AutoController;->access$000(Lcom/easyvictory/cheto/AutoController;)Z

    move-result p2

    if-nez p2, :cond_1

    move v1, v2

    :cond_1
    invoke-static {p1, v1}, Lcom/easyvictory/cheto/AutoController;->access$002(Lcom/easyvictory/cheto/AutoController;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 145
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;)V

    :goto_1
    return v2

    .line 150
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_7

    if-eq v0, v2, :cond_4

    const/4 p1, 0x2

    if-eq v0, p1, :cond_3

    goto/16 :goto_3

    .line 161
    :cond_3
    iget-object p1, p0, Lcom/easyvictory/cheto/AutoController$1;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Lcom/easyvictory/cheto/AutoController$1;->initialX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v3, p0, Lcom/easyvictory/cheto/AutoController$1;->initialTouchX:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 162
    iget-object p1, p0, Lcom/easyvictory/cheto/AutoController$1;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Lcom/easyvictory/cheto/AutoController$1;->initialY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v1, p0, Lcom/easyvictory/cheto/AutoController$1;->initialTouchY:F

    sub-float/2addr p2, v1

    float-to-int p2, p2

    add-int/2addr v0, p2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 164
    iget-object p1, p0, Lcom/easyvictory/cheto/AutoController$1;->this$0:Lcom/easyvictory/cheto/AutoController;

    invoke-static {p1}, Lcom/easyvictory/cheto/AutoController;->access$200(Lcom/easyvictory/cheto/AutoController;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Lcom/easyvictory/cheto/AutoController$1;->this$0:Lcom/easyvictory/cheto/AutoController;

    iget-object p2, p2, Lcom/easyvictory/cheto/AutoController;->floatingView:Landroid/view/View;

    iget-object v0, p0, Lcom/easyvictory/cheto/AutoController$1;->val$params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return v2

    .line 167
    :cond_4
    iget-object p2, p0, Lcom/easyvictory/cheto/AutoController$1;->this$0:Lcom/easyvictory/cheto/AutoController;

    invoke-static {p2}, Lcom/easyvictory/cheto/AutoController;->access$300(Lcom/easyvictory/cheto/AutoController;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/easyvictory/cheto/Utils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p2

    .line 168
    iget v0, p2, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    float-to-int v0, v0

    .line 169
    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    div-float/2addr p2, v3

    float-to-int p2, p2

    .line 170
    iget-object v3, p0, Lcom/easyvictory/cheto/AutoController$1;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int v4, p2, v4

    if-ge v3, v4, :cond_6

    iget-object v3, p0, Lcom/easyvictory/cheto/AutoController$1;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr p2, p1

    neg-int p1, p2

    if-le v3, p1, :cond_6

    .line 171
    iget-object p1, p0, Lcom/easyvictory/cheto/AutoController$1;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-lez p1, :cond_5

    .line 172
    iget-object p1, p0, Lcom/easyvictory/cheto/AutoController$1;->val$params:Landroid/view/WindowManager$LayoutParams;

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_2

    .line 174
    :cond_5
    iget-object p1, p0, Lcom/easyvictory/cheto/AutoController$1;->val$params:Landroid/view/WindowManager$LayoutParams;

    neg-int p2, v0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 177
    :goto_2
    iget-object p1, p0, Lcom/easyvictory/cheto/AutoController$1;->this$0:Lcom/easyvictory/cheto/AutoController;

    invoke-static {p1}, Lcom/easyvictory/cheto/AutoController;->access$200(Lcom/easyvictory/cheto/AutoController;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Lcom/easyvictory/cheto/AutoController$1;->this$0:Lcom/easyvictory/cheto/AutoController;

    iget-object p2, p2, Lcom/easyvictory/cheto/AutoController;->floatingView:Landroid/view/View;

    iget-object v0, p0, Lcom/easyvictory/cheto/AutoController$1;->val$params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return v2

    :cond_6
    :goto_3
    return v1

    .line 152
    :cond_7
    iget-object p1, p0, Lcom/easyvictory/cheto/AutoController$1;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, p0, Lcom/easyvictory/cheto/AutoController$1;->initialX:I

    .line 153
    iget-object p1, p0, Lcom/easyvictory/cheto/AutoController$1;->val$params:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Lcom/easyvictory/cheto/AutoController$1;->initialY:I

    .line 154
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/easyvictory/cheto/AutoController$1;->initialTouchX:F

    .line 155
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/easyvictory/cheto/AutoController$1;->initialTouchY:F

    return v2
.end method
