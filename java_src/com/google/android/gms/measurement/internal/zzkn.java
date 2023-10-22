package com.google.android.gms.measurement.internal;

import android.os.Handler;
import android.os.Looper;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@21.2.1 */
/* loaded from: classes2.dex */
public final class zzkn extends zzf {
    protected final zzkm zza;
    protected final zzkl zzb;
    protected final zzkj zzc;
    private Handler zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkn(zzgd zzgdVar) {
        super(zzgdVar);
        this.zza = new zzkm(this);
        this.zzb = new zzkl(this);
        this.zzc = new zzkj(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zzj(zzkn zzknVar, long j) {
        zzknVar.zzg();
        zzknVar.zzm();
        zzknVar.zzt.zzaA().zzj().zzb("Activity paused, time", Long.valueOf(j));
        zzknVar.zzc.zza(j);
        if (zzknVar.zzt.zzf().zzu()) {
            zzknVar.zzb.zzb(j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zzl(zzkn zzknVar, long j) {
        zzknVar.zzg();
        zzknVar.zzm();
        zzknVar.zzt.zzaA().zzj().zzb("Activity resumed, time", Long.valueOf(j));
        if (zzknVar.zzt.zzf().zzu() || zzknVar.zzt.zzm().zzm.zzb()) {
            zzknVar.zzb.zzc(j);
        }
        zzknVar.zzc.zzb();
        zzkm zzkmVar = zzknVar.zza;
        zzkmVar.zza.zzg();
        if (zzkmVar.zza.zzt.zzJ()) {
            zzkmVar.zzb(zzkmVar.zza.zzt.zzax().currentTimeMillis(), false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzm() {
        zzg();
        if (this.zzd == null) {
            this.zzd = new com.google.android.gms.internal.measurement.zzby(Looper.getMainLooper());
        }
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    protected final boolean zzf() {
        return false;
    }
}
