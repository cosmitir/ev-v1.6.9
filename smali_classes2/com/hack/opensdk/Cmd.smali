.class public Lcom/hack/opensdk/Cmd;
.super Ljava/lang/Object;
.source "Cmd.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final ENGINE_CMD_CLASS:Ljava/lang/String; = "com.core.Cmd"

.field private static final TAG:Ljava/lang/String; = "Cmd"

.field private static singleton:Lcom/hack/utils/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hack/utils/Singleton<",
            "Lcom/hack/opensdk/Cmd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEngineExecMethod:Lcom/hack/utils/RefUtils$MethodRef;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/hack/opensdk/Cmd$1;

    invoke-direct {v0}, Lcom/hack/opensdk/Cmd$1;-><init>()V

    sput-object v0, Lcom/hack/opensdk/Cmd;->singleton:Lcom/hack/utils/Singleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    const-string v0, "com.core.Cmd"

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    .line 38
    :try_start_1
    invoke-static {}, Lcom/hack/opensdk/HackRuntime;->getHackClassLoader()Ldalvik/system/DexClassLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 44
    :cond_0
    :goto_1
    new-instance v0, Lcom/hack/utils/RefUtils$MethodRef;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const-class v3, [Ljava/lang/Object;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "exec"

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/hack/utils/RefUtils$MethodRef;-><init>(Ljava/lang/Class;ZLjava/lang/String;[Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/hack/opensdk/Cmd;->mEngineExecMethod:Lcom/hack/utils/RefUtils$MethodRef;

    return-void
.end method

.method synthetic constructor <init>(Lcom/hack/opensdk/Cmd$1;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/hack/opensdk/Cmd;-><init>()V

    return-void
.end method

.method public static INSTANCE()Lcom/hack/opensdk/Cmd;
    .locals 1

    .line 19
    sget-object v0, Lcom/hack/opensdk/Cmd;->singleton:Lcom/hack/utils/Singleton;

    invoke-virtual {v0}, Lcom/hack/utils/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hack/opensdk/Cmd;

    return-object v0
.end method


# virtual methods
.method public varargs exec(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/hack/opensdk/Cmd;->mEngineExecMethod:Lcom/hack/utils/RefUtils$MethodRef;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/hack/utils/RefUtils$MethodRef;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
