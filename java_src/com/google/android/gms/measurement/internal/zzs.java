package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.hack.opensdk.CmdConstants;
import kotlinx.coroutines.DebugKt;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@21.2.1 */
/* loaded from: classes2.dex */
public final class zzs {
    private final zzgd zza;

    public zzs(zzgd zzgdVar) {
        this.zza = zzgdVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(String str, Bundle bundle) {
        String uri;
        this.zza.zzaB().zzg();
        if (this.zza.zzJ()) {
            return;
        }
        if (bundle.isEmpty()) {
            uri = null;
        } else {
            if (true == str.isEmpty()) {
                str = DebugKt.DEBUG_PROPERTY_VALUE_AUTO;
            }
            Uri.Builder builder = new Uri.Builder();
            builder.path(str);
            for (String str2 : bundle.keySet()) {
                builder.appendQueryParameter(str2, bundle.getString(str2));
            }
            uri = builder.build().toString();
        }
        if (TextUtils.isEmpty(uri)) {
            return;
        }
        this.zza.zzm().zzq.zzb(uri);
        this.zza.zzm().zzr.zzb(this.zza.zzax().currentTimeMillis());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzb() {
        this.zza.zzaB().zzg();
        if (zzd()) {
            if (zze()) {
                this.zza.zzm().zzq.zzb(null);
                Bundle bundle = new Bundle();
                bundle.putString(FirebaseAnalytics.Param.SOURCE, "(not set)");
                bundle.putString(FirebaseAnalytics.Param.MEDIUM, "(not set)");
                bundle.putString("_cis", CmdConstants.TRANSACT_KEY_INTENT);
                bundle.putLong("_cc", 1L);
                this.zza.zzq().zzG(DebugKt.DEBUG_PROPERTY_VALUE_AUTO, "_cmpx", bundle);
            } else {
                String zza = this.zza.zzm().zzq.zza();
                if (TextUtils.isEmpty(zza)) {
                    this.zza.zzaA().zzh().zza("Cache still valid but referrer not found");
                } else {
                    long zza2 = this.zza.zzm().zzr.zza() / 3600000;
                    Uri parse = Uri.parse(zza);
                    Bundle bundle2 = new Bundle();
                    Pair pair = new Pair(parse.getPath(), bundle2);
                    for (String str : parse.getQueryParameterNames()) {
                        bundle2.putString(str, parse.getQueryParameter(str));
                    }
                    ((Bundle) pair.second).putLong("_cc", (zza2 - 1) * 3600000);
                    this.zza.zzq().zzG(pair.first == null ? "app" : (String) pair.first, "_cmp", (Bundle) pair.second);
                }
                this.zza.zzm().zzq.zzb(null);
            }
            this.zza.zzm().zzr.zzb(0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzc() {
        if (zzd() && zze()) {
            this.zza.zzm().zzq.zzb(null);
        }
    }

    final boolean zzd() {
        return this.zza.zzm().zzr.zza() > 0;
    }

    final boolean zze() {
        return zzd() && this.zza.zzax().currentTimeMillis() - this.zza.zzm().zzr.zza() > this.zza.zzf().zzi(null, zzeg.zzS);
    }
}
