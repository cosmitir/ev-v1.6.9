.class public Lcom/easyvictory/cheto/SettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SettingsActivity.java"


# static fields
.field private static isAnyRequestProcessing:Z = false


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

.method private native XXX()Ljava/lang/String;
.end method

.method private native XXXX(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native XXXXX(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native XXXXXX(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native XXXXXXX()Ljava/lang/String;
.end method

.method static synthetic access$000(Lcom/easyvictory/cheto/SettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/easyvictory/cheto/SettingsActivity;->XXXX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 16
    sput-boolean p0, Lcom/easyvictory/cheto/SettingsActivity;->isAnyRequestProcessing:Z

    return p0
.end method

.method static synthetic access$200(Lcom/easyvictory/cheto/SettingsActivity;)Ljava/lang/String;
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/easyvictory/cheto/SettingsActivity;->XXX()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/easyvictory/cheto/SettingsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/easyvictory/cheto/SettingsActivity;->XXXXX(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/easyvictory/cheto/SettingsActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/easyvictory/cheto/SettingsActivity;->XXXXXX(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/easyvictory/cheto/SettingsActivity;)Ljava/lang/String;
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/easyvictory/cheto/SettingsActivity;->XXXXXXX()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const v0, 0x7f090154

    .line 30
    invoke-virtual {p0, v0}, Lcom/easyvictory/cheto/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f1100ec

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 123
    :sswitch_0
    sget-boolean p1, Lcom/easyvictory/cheto/SettingsActivity;->isAnyRequestProcessing:Z

    if-eqz p1, :cond_1

    .line 124
    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_1
    const p1, 0x7f090051

    .line 128
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const v1, 0x7f090050

    .line 129
    invoke-virtual {p0, v1}, Lcom/easyvictory/cheto/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 131
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    sput-boolean v2, Lcom/easyvictory/cheto/SettingsActivity;->isAnyRequestProcessing:Z

    .line 135
    invoke-virtual {p0, v0}, Lcom/easyvictory/cheto/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 136
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/easyvictory/cheto/SettingsActivity$3;

    invoke-direct {v2, p0, p1, v1}, Lcom/easyvictory/cheto/SettingsActivity$3;-><init>(Lcom/easyvictory/cheto/SettingsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 162
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 75
    :sswitch_1
    sget-boolean p1, Lcom/easyvictory/cheto/SettingsActivity;->isAnyRequestProcessing:Z

    if-eqz p1, :cond_2

    .line 76
    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_2
    const p1, 0x7f09003e

    .line 80
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const v1, 0x7f09003d

    .line 81
    invoke-virtual {p0, v1}, Lcom/easyvictory/cheto/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 83
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const p1, 0x7f1100e4

    .line 87
    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 91
    :cond_3
    sput-boolean v2, Lcom/easyvictory/cheto/SettingsActivity;->isAnyRequestProcessing:Z

    .line 92
    invoke-virtual {p0, v0}, Lcom/easyvictory/cheto/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 93
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/easyvictory/cheto/SettingsActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/easyvictory/cheto/SettingsActivity$2;-><init>(Lcom/easyvictory/cheto/SettingsActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 119
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 169
    :sswitch_2
    sget-boolean p1, Lcom/easyvictory/cheto/SettingsActivity;->isAnyRequestProcessing:Z

    if-eqz p1, :cond_4

    .line 170
    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 174
    :cond_4
    sput-boolean v2, Lcom/easyvictory/cheto/SettingsActivity;->isAnyRequestProcessing:Z

    .line 175
    invoke-virtual {p0, v0}, Lcom/easyvictory/cheto/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 176
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/easyvictory/cheto/SettingsActivity$4;

    invoke-direct {v0, p0}, Lcom/easyvictory/cheto/SettingsActivity$4;-><init>(Lcom/easyvictory/cheto/SettingsActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 202
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 36
    :sswitch_3
    sget-boolean p1, Lcom/easyvictory/cheto/SettingsActivity;->isAnyRequestProcessing:Z

    if-eqz p1, :cond_5

    .line 37
    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    const p1, 0x7f090054

    .line 41
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 42
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 44
    sput-boolean v2, Lcom/easyvictory/cheto/SettingsActivity;->isAnyRequestProcessing:Z

    .line 45
    invoke-virtual {p0, v0}, Lcom/easyvictory/cheto/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 46
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/easyvictory/cheto/SettingsActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/easyvictory/cheto/SettingsActivity$1;-><init>(Lcom/easyvictory/cheto/SettingsActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 71
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 166
    :sswitch_4
    invoke-static {p0}, Lcom/easyvictory/cheto/ModulesActivity;->showPinInputDialog(Landroid/app/Activity;)V

    goto :goto_0

    .line 206
    :sswitch_5
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09000e -> :sswitch_5
        0x7f09001c -> :sswitch_4
        0x7f090046 -> :sswitch_3
        0x7f09004a -> :sswitch_2
        0x7f090059 -> :sswitch_1
        0x7f09005a -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 20
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0022

    .line 21
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/SettingsActivity;->setContentView(I)V

    const p1, 0x7f090154

    .line 23
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f090048

    .line 25
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/easyvictory/cheto/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1100f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x439b17f2e32061ccL    # -9.066727440556418E-18

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/easyvictory/cheto/SettingsActivity;->XXX()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
