.class final Lcom/google/android/gms/measurement/internal/zzir;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@21.2.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Landroid/os/Bundle;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzip;

.field final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzip;

.field final synthetic zzd:J

.field final synthetic zze:Lcom/google/android/gms/measurement/internal/zzix;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzix;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzip;Lcom/google/android/gms/measurement/internal/zzip;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzir;->zze:Lcom/google/android/gms/measurement/internal/zzix;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzir;->zza:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzir;->zzb:Lcom/google/android/gms/measurement/internal/zzip;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzir;->zzc:Lcom/google/android/gms/measurement/internal/zzip;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/zzir;->zzd:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzir;->zze:Lcom/google/android/gms/measurement/internal/zzix;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzir;->zza:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzir;->zzb:Lcom/google/android/gms/measurement/internal/zzip;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzir;->zzc:Lcom/google/android/gms/measurement/internal/zzip;

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzir;->zzd:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzix;->zzp(Lcom/google/android/gms/measurement/internal/zzix;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/zzip;Lcom/google/android/gms/measurement/internal/zzip;J)V

    return-void
.end method
