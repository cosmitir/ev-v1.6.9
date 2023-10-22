package com.google.android.gms.internal.measurement;

import androidx.core.internal.view.SupportMenu;
/* compiled from: com.google.android.gms:play-services-measurement-base@@21.2.1 */
/* loaded from: classes2.dex */
final class zzkm {
    private final Object zza;
    private final int zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzkm(Object obj, int i) {
        this.zza = obj;
        this.zzb = i;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzkm) {
            zzkm zzkmVar = (zzkm) obj;
            return this.zza == zzkmVar.zza && this.zzb == zzkmVar.zzb;
        }
        return false;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.zza) * SupportMenu.USER_MASK) + this.zzb;
    }
}
