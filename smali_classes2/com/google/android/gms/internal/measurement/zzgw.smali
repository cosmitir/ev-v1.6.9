.class final Lcom/google/android/gms/internal/measurement/zzgw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@21.2.1"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzlf;


# static fields
.field static final zza:Lcom/google/android/gms/internal/measurement/zzlf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzgw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzgw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzgw;->zza:Lcom/google/android/gms/internal/measurement/zzlf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Z
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzgx;->zza(I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method