package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzqr;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@21.2.1 */
/* loaded from: classes2.dex */
public final class zzid implements Runnable {
    final /* synthetic */ zzai zza;
    final /* synthetic */ long zzb;
    final /* synthetic */ int zzc;
    final /* synthetic */ long zzd;
    final /* synthetic */ boolean zze;
    final /* synthetic */ zzai zzf;
    final /* synthetic */ zzii zzg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzid(zzii zziiVar, zzai zzaiVar, long j, int i, long j2, boolean z, zzai zzaiVar2) {
        this.zzg = zziiVar;
        this.zza = zzaiVar;
        this.zzb = j;
        this.zzc = i;
        this.zzd = j2;
        this.zze = z;
        this.zzf = zzaiVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzg.zzV(this.zza);
        this.zzg.zzL(this.zzb, false);
        zzii.zzw(this.zzg, this.zza, this.zzc, this.zzd, true, this.zze);
        zzqr.zzc();
        if (this.zzg.zzt.zzf().zzs(null, zzeg.zzan)) {
            zzii.zzv(this.zzg, this.zza, this.zzf);
        }
    }
}
