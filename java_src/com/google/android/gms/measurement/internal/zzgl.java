package com.google.android.gms.measurement.internal;
/* compiled from: com.google.android.gms:play-services-measurement@@21.2.1 */
/* loaded from: classes2.dex */
final class zzgl implements Runnable {
    final /* synthetic */ zzq zza;
    final /* synthetic */ zzgv zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzgl(zzgv zzgvVar, zzq zzqVar) {
        this.zzb = zzgvVar;
        this.zza = zzqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzlf zzlfVar;
        zzlf zzlfVar2;
        zzlfVar = this.zzb.zza;
        zzlfVar.zzA();
        zzlfVar2 = this.zzb.zza;
        zzlfVar2.zzQ(this.zza);
    }
}
