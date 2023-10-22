package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement@@21.2.1 */
/* loaded from: classes2.dex */
public final class zzlc {
    com.google.android.gms.internal.measurement.zzgd zza;
    List zzb;
    List zzc;
    long zzd;
    final /* synthetic */ zzlf zze;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzlc(zzlf zzlfVar, zzlb zzlbVar) {
        this.zze = zzlfVar;
    }

    private static final long zzb(com.google.android.gms.internal.measurement.zzft zzftVar) {
        return ((zzftVar.zzd() / 1000) / 60) / 60;
    }

    public final boolean zza(long j, com.google.android.gms.internal.measurement.zzft zzftVar) {
        Preconditions.checkNotNull(zzftVar);
        if (this.zzc == null) {
            this.zzc = new ArrayList();
        }
        if (this.zzb == null) {
            this.zzb = new ArrayList();
        }
        if (this.zzc.isEmpty() || zzb((com.google.android.gms.internal.measurement.zzft) this.zzc.get(0)) == zzb(zzftVar)) {
            long zzbz = this.zzd + zzftVar.zzbz();
            this.zze.zzg();
            if (zzbz >= Math.max(0, ((Integer) zzeg.zzi.zza(null)).intValue())) {
                return false;
            }
            this.zzd = zzbz;
            this.zzc.add(zzftVar);
            this.zzb.add(Long.valueOf(j));
            int size = this.zzc.size();
            this.zze.zzg();
            return size < Math.max(1, ((Integer) zzeg.zzj.zza(null)).intValue());
        }
        return false;
    }
}
