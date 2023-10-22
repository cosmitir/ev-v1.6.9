.class public Lcom/easyvictory/cheto/AccountVerification;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AccountVerification.java"


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

.method private native XXX(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native XXXX(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method static synthetic access$000(Lcom/easyvictory/cheto/AccountVerification;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/easyvictory/cheto/AccountVerification;->XXX(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .line 16
    sput-boolean p0, Lcom/easyvictory/cheto/AccountVerification;->isAnyRequestProcessing:Z

    return p0
.end method

.method static synthetic access$200(Lcom/easyvictory/cheto/AccountVerification;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/easyvictory/cheto/AccountVerification;->XXXX(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCredentials()V
    .locals 4

    const-string v0, "credentials"

    const/4 v1, 0x0

    .line 152
    invoke-virtual {p0, v0, v1}, Lcom/easyvictory/cheto/AccountVerification;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "username"

    const/4 v2, 0x0

    .line 153
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "email"

    .line 154
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f090252

    .line 156
    invoke-virtual {p0, v2}, Lcom/easyvictory/cheto/AccountVerification;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090106

    .line 157
    invoke-virtual {p0, v3}, Lcom/easyvictory/cheto/AccountVerification;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 158
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static saveUserInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    const-string v0, "credentials"

    const/4 v1, 0x0

    .line 163
    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 164
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string/jumbo v0, "username"

    .line 165
    invoke-interface {p2, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p0, "email"

    .line 166
    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 167
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const v0, 0x7f090154

    .line 26
    invoke-virtual {p0, v0}, Lcom/easyvictory/cheto/AccountVerification;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const v1, 0x7f090252

    .line 30
    invoke-virtual {p0, v1}, Lcom/easyvictory/cheto/AccountVerification;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 31
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v2, 0x7f09000e

    if-eq p1, v2, :cond_5

    const v2, 0x7f090049

    const v3, 0x7f1100ec

    const/4 v4, 0x1

    const v5, 0x7f090106

    const/4 v6, 0x0

    if-eq p1, v2, :cond_3

    const v2, 0x7f09005f

    if-eq p1, v2, :cond_1

    goto/16 :goto_0

    .line 72
    :cond_1
    sget-boolean p1, Lcom/easyvictory/cheto/AccountVerification;->isAnyRequestProcessing:Z

    if-eqz p1, :cond_2

    .line 73
    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p0, v5}, Lcom/easyvictory/cheto/AccountVerification;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const v2, 0x7f090253

    .line 78
    invoke-virtual {p0, v2}, Lcom/easyvictory/cheto/AccountVerification;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 80
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 81
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 83
    sput-boolean v4, Lcom/easyvictory/cheto/AccountVerification;->isAnyRequestProcessing:Z

    .line 84
    invoke-virtual {p0, v0}, Lcom/easyvictory/cheto/AccountVerification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 85
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/easyvictory/cheto/AccountVerification$2;

    invoke-direct {v2, p0, v1, p1}, Lcom/easyvictory/cheto/AccountVerification$2;-><init>(Lcom/easyvictory/cheto/AccountVerification;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 139
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 38
    :cond_3
    sget-boolean p1, Lcom/easyvictory/cheto/AccountVerification;->isAnyRequestProcessing:Z

    if-eqz p1, :cond_4

    .line 39
    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 43
    :cond_4
    invoke-virtual {p0, v5}, Lcom/easyvictory/cheto/AccountVerification;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 44
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 46
    sput-boolean v4, Lcom/easyvictory/cheto/AccountVerification;->isAnyRequestProcessing:Z

    .line 47
    invoke-virtual {p0, v0}, Lcom/easyvictory/cheto/AccountVerification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 48
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/easyvictory/cheto/AccountVerification$1;

    invoke-direct {v2, p0, v1, p1}, Lcom/easyvictory/cheto/AccountVerification$1;-><init>(Lcom/easyvictory/cheto/AccountVerification;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 69
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 35
    :cond_5
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 20
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001c

    .line 21
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/AccountVerification;->setContentView(I)V

    const p1, 0x7f090154

    .line 22
    invoke-virtual {p0, p1}, Lcom/easyvictory/cheto/AccountVerification;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 147
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 148
    invoke-direct {p0}, Lcom/easyvictory/cheto/AccountVerification;->getCredentials()V

    return-void
.end method
