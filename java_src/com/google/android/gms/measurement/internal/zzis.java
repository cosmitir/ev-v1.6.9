package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@21.2.1 */
/* loaded from: classes2.dex */
public final class zzis implements Runnable {
    final /* synthetic */ zzip zza;
    final /* synthetic */ zzip zzb;
    final /* synthetic */ long zzc;
    final /* synthetic */ boolean zzd;
    final /* synthetic */ zzix zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzis(zzix zzixVar, zzip zzipVar, zzip zzipVar2, long j, boolean z) {
        this.zze = zzixVar;
        this.zza = zzipVar;
        this.zzb = zzipVar2;
        this.zzc = j;
        this.zzd = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zze.zzA(this.zza, this.zzb, this.zzc, this.zzd, null);
    }
}
