package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import kotlinx.coroutines.DebugKt;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement-impl@@21.2.1 */
/* loaded from: classes2.dex */
public final class zzki implements Runnable {
    final long zza;
    final long zzb;
    final /* synthetic */ zzkj zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzki(zzkj zzkjVar, long j, long j2) {
        this.zzc = zzkjVar;
        this.zza = j;
        this.zzb = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzc.zza.zzt.zzaB().zzp(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzkh
            @Override // java.lang.Runnable
            public final void run() {
                zzki zzkiVar = zzki.this;
                zzkj zzkjVar = zzkiVar.zzc;
                long j = zzkiVar.zza;
                long j2 = zzkiVar.zzb;
                zzkjVar.zza.zzg();
                zzkjVar.zza.zzt.zzaA().zzc().zza("Application going to the background");
                zzkjVar.zza.zzt.zzm().zzm.zza(true);
                Bundle bundle = new Bundle();
                if (!zzkjVar.zza.zzt.zzf().zzu()) {
                    zzkjVar.zza.zzb.zzb(j2);
                    zzkjVar.zza.zzb.zzd(false, false, j2);
                }
                zzkjVar.zza.zzt.zzq().zzH(DebugKt.DEBUG_PROPERTY_VALUE_AUTO, "_ab", j, bundle);
            }
        });
    }
}
