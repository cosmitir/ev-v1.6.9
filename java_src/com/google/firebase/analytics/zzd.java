package com.google.firebase.analytics;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.zzef;
import com.google.android.gms.measurement.internal.zzhd;
import com.google.android.gms.measurement.internal.zzhe;
import com.google.android.gms.measurement.internal.zzij;
import java.util.List;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-measurement-api@@21.2.1 */
/* loaded from: classes2.dex */
final class zzd implements zzij {
    final /* synthetic */ zzef zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzd(zzef zzefVar) {
        this.zza = zzefVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzij
    public final int zza(String str) {
        return this.zza.zza(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzij
    public final long zzb() {
        return this.zza.zzb();
    }

    @Override // com.google.android.gms.measurement.internal.zzij
    public final Object zzg(int i) {
        return this.zza.zzi(i);
    }

    @Override // com.google.android.gms.measurement.internal.zzij
    public final String zzh() {
        return this.zza.zzm();
    }

    @Override // com.google.android.gms.measurement.internal.zzij
    public final String zzi() {
        return this.zza.zzn();
    }

    @Override // com.google.android.gms.measurement.internal.zzij
    public final String zzj() {
        return this.zza.zzo();
    }

    @Override // com.google.android.gms.measurement.internal.zzij
    public final String zzk() {
        return this.zza.zzp();
    }

    @Override // com.google.android.gms.measurement.internal.zzij
    public final List zzm(String str, String str2) {
        return this.zza.zzq(str, str2);
    }

    @Override // com.google.android.gms.measurement.internal.zzij
    public final Map zzo(String str, String str2, boolean z) {
        return this.zza.zzr(str, str2, z);
    }

    @Override // com.google.android.gms.measurement.internal.zzij
    public final void zzp(String str) {
        this.zza.zzv(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzij
    public final void zzq(String str, String str2, Bundle bundle) {
        this.zza.zzw(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzij
    public final void zzr(String str) {
        this.zza.zzx(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzij
    public final void zzs(String str, String str2, Bundle bundle) {
        this.zza.zzz(str, str2, bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzij
    public final void zzt(String str, String str2, Bundle bundle, long j) {
        this.zza.zzA(str, str2, bundle, j);
    }

    @Override // com.google.android.gms.measurement.internal.zzij
    public final void zzu(zzhe zzheVar) {
        this.zza.zzC(zzheVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzij
    public final void zzv(Bundle bundle) {
        this.zza.zzE(bundle);
    }

    @Override // com.google.android.gms.measurement.internal.zzij
    public final void zzw(zzhd zzhdVar) {
        this.zza.zzK(zzhdVar);
    }

    @Override // com.google.android.gms.measurement.internal.zzij
    public final void zzx(zzhe zzheVar) {
        this.zza.zzP(zzheVar);
    }
}
