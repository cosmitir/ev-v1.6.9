package com.google.android.gms.measurement.internal;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@21.2.1 */
/* loaded from: classes2.dex */
final class zzkf implements Runnable {
    final /* synthetic */ long zza;
    final /* synthetic */ zzkn zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkf(zzkn zzknVar, long j) {
        this.zzb = zzknVar;
        this.zza = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkn.zzl(this.zzb, this.zza);
    }
}
