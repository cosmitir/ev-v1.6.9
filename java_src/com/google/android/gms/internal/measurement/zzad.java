package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-measurement@@21.2.1 */
/* loaded from: classes2.dex */
public final class zzad implements Iterator {
    final /* synthetic */ zzae zza;
    private int zzb = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzad(zzae zzaeVar) {
        this.zza = zzaeVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb < this.zza.zzc();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        if (this.zzb < this.zza.zzc()) {
            zzae zzaeVar = this.zza;
            int i = this.zzb;
            this.zzb = i + 1;
            return zzaeVar.zze(i);
        }
        int i2 = this.zzb;
        throw new NoSuchElementException("Out of bounds index: " + i2);
    }
}
