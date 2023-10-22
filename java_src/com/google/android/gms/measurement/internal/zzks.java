package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement@@21.2.1 */
/* loaded from: classes2.dex */
public abstract class zzks extends zzkr {
    private boolean zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzks(zzlf zzlfVar) {
        super(zzlfVar);
        this.zzf.zzM();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzW() {
        if (!zzY()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void zzX() {
        if (this.zza) {
            throw new IllegalStateException("Can't initialize twice");
        }
        zzb();
        this.zzf.zzH();
        this.zza = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean zzY() {
        return this.zza;
    }

    protected abstract boolean zzb();
}
