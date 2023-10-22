.class public Lcom/easyvictory/cheto/AutoQueue;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AutoQueue.java"


# static fields
.field private static isAnyRequestProcessing:Z = false


# instance fields
.field handle:Landroid/os/Handler;

.field progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/easyvictory/cheto/AutoQueue;->progressDialog:Landroid/app/ProgressDialog;

    .line 165
    new-instance v0, Lcom/easyvictory/cheto/AutoQueue$4;

    invoke-direct {v0, p0}, Lcom/easyvictory/cheto/AutoQueue$4;-><init>(Lcom/easyvictory/cheto/AutoQueue;)V

    iput-object v0, p0, Lcom/easyvictory/cheto/AutoQueue;->handle:Landroid/os/Handler;

    return-void
.end method

.method private native XXX()Ljava/lang/String;
.end method

.method private native XXXX(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native XXXXX()Ljava/lang/String;
.end method

.method private native XXXXXX()I
.end method

.method static synthetic access$000(Lcom/easyvictory/cheto/AutoQueue;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/easyvictory/cheto/AutoQueue;->XXXX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 15
    sput-boolean p0, Lcom/easyvictory/cheto/AutoQueue;->isAnyRequestProcessing:Z

    return p0
.end method

.method static synthetic access$200(Lcom/easyvictory/cheto/AutoQueue;)Ljava/lang/String;
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/easyvictory/cheto/AutoQueue;->XXX()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/easyvictory/cheto/AutoQueue;)Ljava/lang/String;
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/easyvictory/cheto/AutoQueue;->XXXXX()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/easyvictory/cheto/AutoQueue;)I
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/easyvictory/cheto/AutoQueue;->XXXXXX()I

    move-result p0

    return p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f090154

    .line 31
    invoke-virtual {p0, v0}, Lcom/easyvictory/cheto/AutoQueue;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f09000e

    if-eq p1, v1, :cond_5

    const v1, 0x7f090019

    const v2, 0x7f1100ec

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p1, v1, :cond_3

    const v1, 0x7f090046

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 37
    :cond_1
    sget-boolean p1, Lcom/easyvictory/cheto/AutoQueue;->isAnyRequestProcessing:Z

    if-eqz p1, :cond_2

    .line 38
    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    const p1, 0x7f090054

    .line 42
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/AutoQueue;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 43
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 45
    sput-boolean v3, Lcom/easyvictory/cheto/AutoQueue;->isAnyRequestProcessing:Z

    .line 46
    invoke-virtual {p0, v0}, Lcom/easyvictory/cheto/AutoQueue;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 47
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/easyvictory/cheto/AutoQueue$1;

    invoke-direct {v1, p0, p1}, Lcom/easyvictory/cheto/AutoQueue$1;-><init>(Lcom/easyvictory/cheto/AutoQueue;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 72
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 76
    :cond_3
    sget-boolean p1, Lcom/easyvictory/cheto/AutoQueue;->isAnyRequestProcessing:Z

    if-eqz p1, :cond_4

    .line 77
    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 81
    :cond_4
    sput-boolean v3, Lcom/easyvictory/cheto/AutoQueue;->isAnyRequestProcessing:Z

    .line 82
    invoke-virtual {p0, v0}, Lcom/easyvictory/cheto/AutoQueue;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 83
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/easyvictory/cheto/AutoQueue$2;

    invoke-direct {v0, p0}, Lcom/easyvictory/cheto/AutoQueue$2;-><init>(Lcom/easyvictory/cheto/AutoQueue;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 116
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 118
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/easyvictory/cheto/AutoQueue$3;

    invoke-direct {v0, p0}, Lcom/easyvictory/cheto/AutoQueue$3;-><init>(Lcom/easyvictory/cheto/AutoQueue;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 157
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 160
    :cond_5
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 21
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001d

    .line 22
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/AutoQueue;->setContentView(I)V

    const p1, 0x7f090154

    .line 24
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/AutoQueue;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f090048

    .line 26
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/AutoQueue;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/easyvictory/cheto/AutoQueue;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":\n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/easyvictory/cheto/AutoQueue;->XXX()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
