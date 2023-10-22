.class public final enum Lcom/hack/utils/ProcessUtils$ProcessType;
.super Ljava/lang/Enum;
.source "ProcessUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hack/utils/ProcessUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProcessType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hack/utils/ProcessUtils$ProcessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hack/utils/ProcessUtils$ProcessType;

.field public static final enum TYPE_APP:Lcom/hack/utils/ProcessUtils$ProcessType;

.field public static final enum TYPE_ASSIST:Lcom/hack/utils/ProcessUtils$ProcessType;

.field public static final enum TYPE_CLIENT:Lcom/hack/utils/ProcessUtils$ProcessType;

.field public static final enum TYPE_SERVICE:Lcom/hack/utils/ProcessUtils$ProcessType;

.field public static final enum TYPE_UNKNOWN:Lcom/hack/utils/ProcessUtils$ProcessType;


# direct methods
.method private static synthetic $values()[Lcom/hack/utils/ProcessUtils$ProcessType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/hack/utils/ProcessUtils$ProcessType;

    const/4 v1, 0x0

    .line 16
    sget-object v2, Lcom/hack/utils/ProcessUtils$ProcessType;->TYPE_UNKNOWN:Lcom/hack/utils/ProcessUtils$ProcessType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/hack/utils/ProcessUtils$ProcessType;->TYPE_CLIENT:Lcom/hack/utils/ProcessUtils$ProcessType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/hack/utils/ProcessUtils$ProcessType;->TYPE_APP:Lcom/hack/utils/ProcessUtils$ProcessType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/hack/utils/ProcessUtils$ProcessType;->TYPE_ASSIST:Lcom/hack/utils/ProcessUtils$ProcessType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/hack/utils/ProcessUtils$ProcessType;->TYPE_SERVICE:Lcom/hack/utils/ProcessUtils$ProcessType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lcom/hack/utils/ProcessUtils$ProcessType;

    const-string v1, "TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hack/utils/ProcessUtils$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hack/utils/ProcessUtils$ProcessType;->TYPE_UNKNOWN:Lcom/hack/utils/ProcessUtils$ProcessType;

    .line 18
    new-instance v0, Lcom/hack/utils/ProcessUtils$ProcessType;

    const-string v1, "TYPE_CLIENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/hack/utils/ProcessUtils$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hack/utils/ProcessUtils$ProcessType;->TYPE_CLIENT:Lcom/hack/utils/ProcessUtils$ProcessType;

    .line 19
    new-instance v0, Lcom/hack/utils/ProcessUtils$ProcessType;

    const-string v1, "TYPE_APP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/hack/utils/ProcessUtils$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hack/utils/ProcessUtils$ProcessType;->TYPE_APP:Lcom/hack/utils/ProcessUtils$ProcessType;

    .line 20
    new-instance v0, Lcom/hack/utils/ProcessUtils$ProcessType;

    const-string v1, "TYPE_ASSIST"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/hack/utils/ProcessUtils$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hack/utils/ProcessUtils$ProcessType;->TYPE_ASSIST:Lcom/hack/utils/ProcessUtils$ProcessType;

    .line 21
    new-instance v0, Lcom/hack/utils/ProcessUtils$ProcessType;

    const-string v1, "TYPE_SERVICE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/hack/utils/ProcessUtils$ProcessType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hack/utils/ProcessUtils$ProcessType;->TYPE_SERVICE:Lcom/hack/utils/ProcessUtils$ProcessType;

    .line 16
    invoke-static {}, Lcom/hack/utils/ProcessUtils$ProcessType;->$values()[Lcom/hack/utils/ProcessUtils$ProcessType;

    move-result-object v0

    sput-object v0, Lcom/hack/utils/ProcessUtils$ProcessType;->$VALUES:[Lcom/hack/utils/ProcessUtils$ProcessType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hack/utils/ProcessUtils$ProcessType;
    .locals 1

    .line 16
    const-class v0, Lcom/hack/utils/ProcessUtils$ProcessType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hack/utils/ProcessUtils$ProcessType;

    return-object p0
.end method

.method public static values()[Lcom/hack/utils/ProcessUtils$ProcessType;
    .locals 1

    .line 16
    sget-object v0, Lcom/hack/utils/ProcessUtils$ProcessType;->$VALUES:[Lcom/hack/utils/ProcessUtils$ProcessType;

    invoke-virtual {v0}, [Lcom/hack/utils/ProcessUtils$ProcessType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hack/utils/ProcessUtils$ProcessType;

    return-object v0
.end method
