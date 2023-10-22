.class public Lcom/easyvictory/cheto/RegisterActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "RegisterActivity.java"


# static fields
.field private static isAnyRequestProcessing:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private native XXX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native XXXX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method static synthetic access$000(Lcom/easyvictory/cheto/RegisterActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/easyvictory/cheto/RegisterActivity;->XXX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/easyvictory/cheto/RegisterActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p5}, Lcom/easyvictory/cheto/RegisterActivity;->XXXX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .line 21
    sput-boolean p0, Lcom/easyvictory/cheto/RegisterActivity;->isAnyRequestProcessing:Z

    return p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 16

    move-object/from16 v9, p0

    const v0, 0x7f090154

    .line 62
    invoke-virtual {v9, v0}, Lcom/easyvictory/cheto/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 66
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f09000e

    if-eq v1, v2, :cond_4

    const v2, 0x7f090047

    if-eq v1, v2, :cond_1

    goto/16 :goto_1

    .line 71
    :cond_1
    sget-boolean v1, Lcom/easyvictory/cheto/RegisterActivity;->isAnyRequestProcessing:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const v0, 0x7f1100ec

    .line 72
    invoke-static {v9, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_2
    const v1, 0x7f090252

    .line 76
    invoke-virtual {v9, v1}, Lcom/easyvictory/cheto/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const v3, 0x7f0901b0

    .line 77
    invoke-virtual {v9, v3}, Lcom/easyvictory/cheto/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const v4, 0x7f090106

    .line 78
    invoke-virtual {v9, v4}, Lcom/easyvictory/cheto/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const v5, 0x7f090216

    .line 79
    invoke-virtual {v9, v5}, Lcom/easyvictory/cheto/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    const v6, 0x7f090051

    .line 81
    invoke-virtual {v9, v6}, Lcom/easyvictory/cheto/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    const v7, 0x7f090050

    .line 82
    invoke-virtual {v9, v7}, Lcom/easyvictory/cheto/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 84
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 85
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 86
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 87
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const-wide v13, -0x439b17dbe32061ccL    # -9.066879641789128E-18

    .line 89
    invoke-static {v13, v14}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    const-wide v13, -0x439b17dce32061ccL    # -9.066873024344227E-18

    invoke-static {v13, v14}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    .line 90
    invoke-virtual {v4}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    move v4, v2

    .line 91
    :goto_0
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 92
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 98
    sput-boolean v3, Lcom/easyvictory/cheto/RegisterActivity;->isAnyRequestProcessing:Z

    .line 99
    invoke-virtual {v9, v0}, Lcom/easyvictory/cheto/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 100
    new-instance v15, Ljava/lang/Thread;

    new-instance v7, Lcom/easyvictory/cheto/RegisterActivity$3;

    move-object v0, v7

    move-object/from16 v1, p0

    move v2, v4

    move-object v3, v8

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object v10, v7

    move-object v7, v13

    move-object v8, v14

    invoke-direct/range {v0 .. v8}, Lcom/easyvictory/cheto/RegisterActivity$3;-><init>(Lcom/easyvictory/cheto/RegisterActivity;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v15, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 163
    invoke-virtual {v15}, Ljava/lang/Thread;->start()V

    goto :goto_1

    .line 68
    :cond_4
    invoke-super/range {p0 .. p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 25
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0021

    .line 26
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/RegisterActivity;->setContentView(I)V

    const p1, 0x7f090154

    .line 27
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f09005c

    .line 29
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f09005e

    .line 30
    invoke-virtual {p0, v0}, Lcom/easyvictory/cheto/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const v0, 0x7f090051

    .line 32
    invoke-virtual {p0, v0}, Lcom/easyvictory/cheto/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v0, 0x7f090050

    .line 33
    invoke-virtual {p0, v0}, Lcom/easyvictory/cheto/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v0, 0x7f090106

    .line 34
    invoke-virtual {p0, v0}, Lcom/easyvictory/cheto/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 36
    new-instance v11, Lcom/easyvictory/cheto/RegisterActivity$1;

    move-object v0, v11

    move-object v1, p0

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/easyvictory/cheto/RegisterActivity$1;-><init>(Lcom/easyvictory/cheto/RegisterActivity;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;)V

    invoke-virtual {p1, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    new-instance v11, Lcom/easyvictory/cheto/RegisterActivity$2;

    move-object v0, v11

    invoke-direct/range {v0 .. v6}, Lcom/easyvictory/cheto/RegisterActivity$2;-><init>(Lcom/easyvictory/cheto/RegisterActivity;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;)V

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
