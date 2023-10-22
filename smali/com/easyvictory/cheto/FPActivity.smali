.class public Lcom/easyvictory/cheto/FPActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "FPActivity.java"


# static fields
.field private static isAnyRequestProcessing:Z = false


# instance fields
.field private passwordConfirmationInput:Landroid/widget/EditText;

.field private passwordInput:Landroid/widget/EditText;

.field private pinInput:Landroid/widget/EditText;

.field private securityAnswerInput:Landroid/widget/EditText;

.field private securityQuestionInput:Landroid/widget/EditText;

.field private usernameInput:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private native XXX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native XXXX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method static synthetic access$000(Lcom/easyvictory/cheto/FPActivity;)Landroid/widget/EditText;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/easyvictory/cheto/FPActivity;->securityQuestionInput:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/easyvictory/cheto/FPActivity;)Landroid/widget/EditText;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/easyvictory/cheto/FPActivity;->securityAnswerInput:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/easyvictory/cheto/FPActivity;)Landroid/widget/EditText;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/easyvictory/cheto/FPActivity;->pinInput:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/easyvictory/cheto/FPActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/easyvictory/cheto/FPActivity;->XXXX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/easyvictory/cheto/FPActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/easyvictory/cheto/FPActivity;->XXX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    .line 16
    sput-boolean p0, Lcom/easyvictory/cheto/FPActivity;->isAnyRequestProcessing:Z

    return p0
.end method


# virtual methods
.method createOver()V
    .locals 3

    const v0, 0x7f09005d

    .line 43
    invoke-virtual {p0, v0}, Lcom/easyvictory/cheto/FPActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09005e

    .line 44
    invoke-virtual {p0, v1}, Lcom/easyvictory/cheto/FPActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 46
    new-instance v2, Lcom/easyvictory/cheto/FPActivity$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/easyvictory/cheto/FPActivity$1;-><init>(Lcom/easyvictory/cheto/FPActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    new-instance v2, Lcom/easyvictory/cheto/FPActivity$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/easyvictory/cheto/FPActivity$2;-><init>(Lcom/easyvictory/cheto/FPActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    const v0, 0x7f090154

    .line 72
    invoke-virtual {p0, v0}, Lcom/easyvictory/cheto/FPActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f09000e

    if-eq p1, v1, :cond_6

    const v1, 0x7f090045

    if-eq p1, v1, :cond_1

    goto/16 :goto_2

    .line 81
    :cond_1
    sget-boolean p1, Lcom/easyvictory/cheto/FPActivity;->isAnyRequestProcessing:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const p1, 0x7f1100ec

    .line 82
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 86
    :cond_2
    iget-object p1, p0, Lcom/easyvictory/cheto/FPActivity;->usernameInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 87
    iget-object p1, p0, Lcom/easyvictory/cheto/FPActivity;->passwordInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 88
    iget-object p1, p0, Lcom/easyvictory/cheto/FPActivity;->passwordConfirmationInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    const p1, 0x7f1100e4

    .line 91
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    :cond_3
    const-wide v2, -0x439b0e48e32061ccL    # -9.083098999240068E-18

    .line 95
    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object p1

    const-wide v2, -0x439b0e49e32061ccL    # -9.083092381795167E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    const-wide v3, -0x439b0e4ae32061ccL    # -9.083085764350267E-18

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v3

    .line 96
    iget-object v4, p0, Lcom/easyvictory/cheto/FPActivity;->pinInput:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getVisibility()I

    move-result v4

    const/4 v7, 0x1

    if-nez v4, :cond_4

    move v4, v7

    goto :goto_0

    :cond_4
    move v4, v1

    :goto_0
    if-eqz v4, :cond_5

    .line 98
    iget-object p1, p0, Lcom/easyvictory/cheto/FPActivity;->pinInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 101
    :cond_5
    iget-object v2, p0, Lcom/easyvictory/cheto/FPActivity;->securityQuestionInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    iget-object v3, p0, Lcom/easyvictory/cheto/FPActivity;->securityAnswerInput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v8, v2

    move-object v9, v3

    .line 105
    sput-boolean v7, Lcom/easyvictory/cheto/FPActivity;->isAnyRequestProcessing:Z

    .line 106
    invoke-virtual {p0, v0}, Lcom/easyvictory/cheto/FPActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/easyvictory/cheto/FPActivity$3;

    move-object v2, v1

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v9}, Lcom/easyvictory/cheto/FPActivity$3;-><init>(Lcom/easyvictory/cheto/FPActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 137
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_2

    .line 78
    :cond_6
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    :goto_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 27
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001e

    .line 28
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/FPActivity;->setContentView(I)V

    const p1, 0x7f090252

    .line 30
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/FPActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/easyvictory/cheto/FPActivity;->usernameInput:Landroid/widget/EditText;

    const p1, 0x7f0901b0

    .line 31
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/FPActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/easyvictory/cheto/FPActivity;->passwordInput:Landroid/widget/EditText;

    const p1, 0x7f0901b1

    .line 32
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/FPActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/easyvictory/cheto/FPActivity;->passwordConfirmationInput:Landroid/widget/EditText;

    const p1, 0x7f0901ee

    .line 33
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/FPActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/easyvictory/cheto/FPActivity;->securityQuestionInput:Landroid/widget/EditText;

    const p1, 0x7f0901ed

    .line 34
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/FPActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/easyvictory/cheto/FPActivity;->securityAnswerInput:Landroid/widget/EditText;

    const p1, 0x7f09003f

    .line 35
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/FPActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/easyvictory/cheto/FPActivity;->pinInput:Landroid/widget/EditText;

    .line 37
    invoke-virtual {p0}, Lcom/easyvictory/cheto/FPActivity;->createOver()V

    const p1, 0x7f090154

    .line 38
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/FPActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
