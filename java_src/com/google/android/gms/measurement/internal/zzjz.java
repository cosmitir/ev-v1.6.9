package com.google.android.gms.measurement.internal;

import android.content.pm.PackageManager;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-measurement@@21.2.1 */
/* loaded from: classes2.dex */
public final class zzjz extends zzks {
    public final zzfe zza;
    public final zzfe zzb;
    public final zzfe zzc;
    public final zzfe zzd;
    public final zzfe zze;
    private final Map zzg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzjz(zzlf zzlfVar) {
        super(zzlfVar);
        this.zzg = new HashMap();
        zzfi zzm = this.zzt.zzm();
        zzm.getClass();
        this.zza = new zzfe(zzm, "last_delete_stale", 0L);
        zzfi zzm2 = this.zzt.zzm();
        zzm2.getClass();
        this.zzb = new zzfe(zzm2, "backoff", 0L);
        zzfi zzm3 = this.zzt.zzm();
        zzm3.getClass();
        this.zzc = new zzfe(zzm3, "last_upload", 0L);
        zzfi zzm4 = this.zzt.zzm();
        zzm4.getClass();
        this.zzd = new zzfe(zzm4, "last_upload_attempt", 0L);
        zzfi zzm5 = this.zzt.zzm();
        zzm5.getClass();
        this.zze = new zzfe(zzm5, "midnight_offset", 0L);
    }

    @Deprecated
    final Pair zza(String str) {
        zzjy zzjyVar;
        AdvertisingIdClient.Info info;
        zzg();
        long elapsedRealtime = this.zzt.zzax().elapsedRealtime();
        zzjy zzjyVar2 = (zzjy) this.zzg.get(str);
        if (zzjyVar2 == null || elapsedRealtime >= zzjyVar2.zzc) {
            AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
            long zzi = this.zzt.zzf().zzi(str, zzeg.zza) + elapsedRealtime;
            try {
                long zzi2 = this.zzt.zzf().zzi(str, zzeg.zzb);
                if (zzi2 > 0) {
                    try {
                        info = AdvertisingIdClient.getAdvertisingIdInfo(this.zzt.zzaw());
                    } catch (PackageManager.NameNotFoundException unused) {
                        if (zzjyVar2 != null && elapsedRealtime < zzjyVar2.zzc + zzi2) {
                            return new Pair(zzjyVar2.zza, Boolean.valueOf(zzjyVar2.zzb));
                        }
                        info = null;
                    }
                } else {
                    info = AdvertisingIdClient.getAdvertisingIdInfo(this.zzt.zzaw());
                }
            } catch (Exception e) {
                this.zzt.zzaA().zzc().zzb("Unable to get advertising id", e);
                zzjyVar = new zzjy("", false, zzi);
            }
            if (info == null) {
                return new Pair("00000000-0000-0000-0000-000000000000", false);
            }
            String id = info.getId();
            if (id != null) {
                zzjyVar = new zzjy(id, info.isLimitAdTrackingEnabled(), zzi);
            } else {
                zzjyVar = new zzjy("", info.isLimitAdTrackingEnabled(), zzi);
            }
            this.zzg.put(str, zzjyVar);
            AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
            return new Pair(zzjyVar.zza, Boolean.valueOf(zzjyVar.zzb));
        }
        return new Pair(zzjyVar2.zza, Boolean.valueOf(zzjyVar2.zzb));
    }

    @Override // com.google.android.gms.measurement.internal.zzks
    protected final boolean zzb() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Pair zzd(String str, zzai zzaiVar) {
        if (zzaiVar.zzi(zzah.AD_STORAGE)) {
            return zza(str);
        }
        return new Pair("", false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public final String zzf(String str, boolean z) {
        zzg();
        String str2 = z ? (String) zza(str).first : "00000000-0000-0000-0000-000000000000";
        MessageDigest zzF = zzln.zzF();
        if (zzF == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, zzF.digest(str2.getBytes())));
    }
}
