.class public Lcom/hack/utils/RefUtils$FieldRef;
.super Ljava/lang/Object;
.source "RefUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hack/utils/RefUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mField:Ljava/lang/reflect/Field;

.field mIsStatic:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;ZLjava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean p2, p0, Lcom/hack/utils/RefUtils$FieldRef;->mIsStatic:Z

    .line 36
    invoke-static {p1, p2, p3}, Lcom/hack/utils/RefUtils;->getField(Ljava/lang/Class;ZLjava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lcom/hack/utils/RefUtils$FieldRef;->mField:Ljava/lang/reflect/Field;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 44
    invoke-static {p1, p2, p3}, Lcom/hack/utils/RefUtils;->getField(Ljava/lang/Class;ZLjava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lcom/hack/utils/RefUtils$FieldRef;->mField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :catch_0
    iput-boolean p2, p0, Lcom/hack/utils/RefUtils$FieldRef;->mIsStatic:Z

    .line 48
    iget-object p1, p0, Lcom/hack/utils/RefUtils$FieldRef;->mField:Ljava/lang/reflect/Field;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 49
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/hack/utils/RefUtils$FieldRef;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isValid()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/hack/utils/RefUtils$FieldRef;->mField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/hack/utils/RefUtils$FieldRef;->mField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
