package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlinx.coroutines.DebugKt;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@21.2.1 */
/* loaded from: classes2.dex */
public final class zzix extends zzf {
    protected zzip zza;
    private volatile zzip zzb;
    private volatile zzip zzc;
    private final Map zzd;
    private Activity zze;
    private volatile boolean zzf;
    private volatile zzip zzg;
    private zzip zzh;
    private boolean zzi;
    private final Object zzj;

    public zzix(zzgd zzgdVar) {
        super(zzgdVar);
        this.zzj = new Object();
        this.zzd = new ConcurrentHashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzA(zzip zzipVar, zzip zzipVar2, long j, boolean z, Bundle bundle) {
        long j2;
        long j3;
        zzg();
        boolean z2 = false;
        boolean z3 = (zzipVar2 != null && zzipVar2.zzc == zzipVar.zzc && zziq.zza(zzipVar2.zzb, zzipVar.zzb) && zziq.zza(zzipVar2.zza, zzipVar.zza)) ? false : true;
        if (z && this.zza != null) {
            z2 = true;
        }
        if (z3) {
            Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
            zzln.zzK(zzipVar, bundle2, true);
            if (zzipVar2 != null) {
                String str = zzipVar2.zza;
                if (str != null) {
                    bundle2.putString("_pn", str);
                }
                String str2 = zzipVar2.zzb;
                if (str2 != null) {
                    bundle2.putString("_pc", str2);
                }
                bundle2.putLong("_pi", zzipVar2.zzc);
            }
            if (z2) {
                zzkl zzklVar = this.zzt.zzu().zzb;
                long j4 = j - zzklVar.zzb;
                zzklVar.zzb = j;
                if (j4 > 0) {
                    this.zzt.zzv().zzI(bundle2, j4);
                }
            }
            if (!this.zzt.zzf().zzu()) {
                bundle2.putLong("_mst", 1L);
            }
            String str3 = true != zzipVar.zze ? DebugKt.DEBUG_PROPERTY_VALUE_AUTO : "app";
            long currentTimeMillis = this.zzt.zzax().currentTimeMillis();
            if (zzipVar.zze) {
                j2 = currentTimeMillis;
                long j5 = zzipVar.zzf;
                if (j5 != 0) {
                    j3 = j5;
                    this.zzt.zzq().zzH(str3, "_vs", j3, bundle2);
                }
            } else {
                j2 = currentTimeMillis;
            }
            j3 = j2;
            this.zzt.zzq().zzH(str3, "_vs", j3, bundle2);
        }
        if (z2) {
            zzB(this.zza, true, j);
        }
        this.zza = zzipVar;
        if (zzipVar.zze) {
            this.zzh = zzipVar;
        }
        this.zzt.zzt().zzG(zzipVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzB(zzip zzipVar, boolean z, long j) {
        this.zzt.zzd().zzf(this.zzt.zzax().elapsedRealtime());
        if (!this.zzt.zzu().zzb.zzd(zzipVar != null && zzipVar.zzd, z, j) || zzipVar == null) {
            return;
        }
        zzipVar.zzd = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zzp(zzix zzixVar, Bundle bundle, zzip zzipVar, zzip zzipVar2, long j) {
        bundle.remove(FirebaseAnalytics.Param.SCREEN_NAME);
        bundle.remove(FirebaseAnalytics.Param.SCREEN_CLASS);
        zzixVar.zzA(zzipVar, zzipVar2, j, true, zzixVar.zzt.zzv().zzu(null, FirebaseAnalytics.Event.SCREEN_VIEW, bundle, null, false));
    }

    private final zzip zzy(Activity activity) {
        Preconditions.checkNotNull(activity);
        zzip zzipVar = (zzip) this.zzd.get(activity);
        if (zzipVar == null) {
            zzip zzipVar2 = new zzip(null, zzl(activity.getClass(), "Activity"), this.zzt.zzv().zzq());
            this.zzd.put(activity, zzipVar2);
            zzipVar = zzipVar2;
        }
        return this.zzg != null ? this.zzg : zzipVar;
    }

    private final void zzz(Activity activity, zzip zzipVar, boolean z) {
        zzip zzipVar2;
        zzip zzipVar3 = this.zzb == null ? this.zzc : this.zzb;
        if (zzipVar.zzb == null) {
            zzipVar2 = new zzip(zzipVar.zza, activity != null ? zzl(activity.getClass(), "Activity") : null, zzipVar.zzc, zzipVar.zze, zzipVar.zzf);
        } else {
            zzipVar2 = zzipVar;
        }
        this.zzc = this.zzb;
        this.zzb = zzipVar2;
        this.zzt.zzaB().zzp(new zzis(this, zzipVar2, zzipVar3, this.zzt.zzax().elapsedRealtime(), z));
    }

    @Override // com.google.android.gms.measurement.internal.zzf
    protected final boolean zzf() {
        return false;
    }

    public final zzip zzi() {
        return this.zzb;
    }

    public final zzip zzj(boolean z) {
        zza();
        zzg();
        if (z) {
            zzip zzipVar = this.zza;
            return zzipVar != null ? zzipVar : this.zzh;
        }
        return this.zza;
    }

    final String zzl(Class cls, String str) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            return "Activity";
        }
        String[] split = canonicalName.split("\\.");
        int length = split.length;
        String str2 = length > 0 ? split[length - 1] : "";
        int length2 = str2.length();
        this.zzt.zzf();
        if (length2 > 100) {
            this.zzt.zzf();
            return str2.substring(0, 100);
        }
        return str2;
    }

    public final void zzr(Activity activity, Bundle bundle) {
        Bundle bundle2;
        if (!this.zzt.zzf().zzu() || bundle == null || (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) == null) {
            return;
        }
        this.zzd.put(activity, new zzip(bundle2.getString("name"), bundle2.getString("referrer_name"), bundle2.getLong("id")));
    }

    public final void zzs(Activity activity) {
        synchronized (this.zzj) {
            if (activity == this.zze) {
                this.zze = null;
            }
        }
        if (this.zzt.zzf().zzu()) {
            this.zzd.remove(activity);
        }
    }

    public final void zzt(Activity activity) {
        synchronized (this.zzj) {
            this.zzi = false;
            this.zzf = true;
        }
        long elapsedRealtime = this.zzt.zzax().elapsedRealtime();
        if (!this.zzt.zzf().zzu()) {
            this.zzb = null;
            this.zzt.zzaB().zzp(new zziu(this, elapsedRealtime));
            return;
        }
        zzip zzy = zzy(activity);
        this.zzc = this.zzb;
        this.zzb = null;
        this.zzt.zzaB().zzp(new zziv(this, zzy, elapsedRealtime));
    }

    public final void zzu(Activity activity) {
        synchronized (this.zzj) {
            this.zzi = true;
            if (activity != this.zze) {
                synchronized (this.zzj) {
                    this.zze = activity;
                    this.zzf = false;
                }
                if (this.zzt.zzf().zzu()) {
                    this.zzg = null;
                    this.zzt.zzaB().zzp(new zziw(this));
                }
            }
        }
        if (!this.zzt.zzf().zzu()) {
            this.zzb = this.zzg;
            this.zzt.zzaB().zzp(new zzit(this));
            return;
        }
        zzz(activity, zzy(activity), false);
        zzd zzd = this.zzt.zzd();
        zzd.zzt.zzaB().zzp(new zzc(zzd, zzd.zzt.zzax().elapsedRealtime()));
    }

    public final void zzv(Activity activity, Bundle bundle) {
        zzip zzipVar;
        if (!this.zzt.zzf().zzu() || bundle == null || (zzipVar = (zzip) this.zzd.get(activity)) == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putLong("id", zzipVar.zzc);
        bundle2.putString("name", zzipVar.zza);
        bundle2.putString("referrer_name", zzipVar.zzb);
        bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0088, code lost:
        if (r1 <= 100) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00b4, code lost:
        if (r1 <= 100) goto L36;
     */
    @java.lang.Deprecated
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzw(android.app.Activity r4, java.lang.String r5, java.lang.String r6) {
        /*
            r3 = this;
            com.google.android.gms.measurement.internal.zzgd r0 = r3.zzt
            com.google.android.gms.measurement.internal.zzag r0 = r0.zzf()
            boolean r0 = r0.zzu()
            if (r0 != 0) goto L1c
            com.google.android.gms.measurement.internal.zzgd r4 = r3.zzt
            com.google.android.gms.measurement.internal.zzet r4 = r4.zzaA()
            com.google.android.gms.measurement.internal.zzer r4 = r4.zzl()
            java.lang.String r5 = "setCurrentScreen cannot be called while screen reporting is disabled."
            r4.zza(r5)
            return
        L1c:
            com.google.android.gms.measurement.internal.zzip r0 = r3.zzb
            if (r0 != 0) goto L30
            com.google.android.gms.measurement.internal.zzgd r4 = r3.zzt
            com.google.android.gms.measurement.internal.zzet r4 = r4.zzaA()
            com.google.android.gms.measurement.internal.zzer r4 = r4.zzl()
            java.lang.String r5 = "setCurrentScreen cannot be called while no activity active"
            r4.zza(r5)
            return
        L30:
            java.util.Map r1 = r3.zzd
            java.lang.Object r1 = r1.get(r4)
            if (r1 != 0) goto L48
            com.google.android.gms.measurement.internal.zzgd r4 = r3.zzt
            com.google.android.gms.measurement.internal.zzet r4 = r4.zzaA()
            com.google.android.gms.measurement.internal.zzer r4 = r4.zzl()
            java.lang.String r5 = "setCurrentScreen must be called with an activity in the activity lifecycle"
            r4.zza(r5)
            return
        L48:
            if (r6 != 0) goto L54
            java.lang.Class r6 = r4.getClass()
            java.lang.String r1 = "Activity"
            java.lang.String r6 = r3.zzl(r6, r1)
        L54:
            java.lang.String r1 = r0.zzb
            boolean r1 = com.google.android.gms.measurement.internal.zziq.zza(r1, r6)
            java.lang.String r0 = r0.zza
            boolean r0 = com.google.android.gms.measurement.internal.zziq.zza(r0, r5)
            if (r1 == 0) goto L75
            if (r0 != 0) goto L65
            goto L75
        L65:
            com.google.android.gms.measurement.internal.zzgd r4 = r3.zzt
            com.google.android.gms.measurement.internal.zzet r4 = r4.zzaA()
            com.google.android.gms.measurement.internal.zzer r4 = r4.zzl()
            java.lang.String r5 = "setCurrentScreen cannot be called with the same class and name"
            r4.zza(r5)
            return
        L75:
            r0 = 100
            if (r5 == 0) goto La3
            int r1 = r5.length()
            if (r1 <= 0) goto L8b
            int r1 = r5.length()
            com.google.android.gms.measurement.internal.zzgd r2 = r3.zzt
            r2.zzf()
            if (r1 > r0) goto L8b
            goto La3
        L8b:
            com.google.android.gms.measurement.internal.zzgd r4 = r3.zzt
            com.google.android.gms.measurement.internal.zzet r4 = r4.zzaA()
            com.google.android.gms.measurement.internal.zzer r4 = r4.zzl()
            int r5 = r5.length()
            java.lang.String r6 = "Invalid screen name length in setCurrentScreen. Length"
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            r4.zzb(r6, r5)
            return
        La3:
            if (r6 == 0) goto Lcf
            int r1 = r6.length()
            if (r1 <= 0) goto Lb7
            int r1 = r6.length()
            com.google.android.gms.measurement.internal.zzgd r2 = r3.zzt
            r2.zzf()
            if (r1 > r0) goto Lb7
            goto Lcf
        Lb7:
            com.google.android.gms.measurement.internal.zzgd r4 = r3.zzt
            com.google.android.gms.measurement.internal.zzet r4 = r4.zzaA()
            com.google.android.gms.measurement.internal.zzer r4 = r4.zzl()
            int r5 = r6.length()
            java.lang.String r6 = "Invalid class name length in setCurrentScreen. Length"
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            r4.zzb(r6, r5)
            return
        Lcf:
            com.google.android.gms.measurement.internal.zzgd r0 = r3.zzt
            com.google.android.gms.measurement.internal.zzet r0 = r0.zzaA()
            com.google.android.gms.measurement.internal.zzer r0 = r0.zzj()
            if (r5 != 0) goto Lde
            java.lang.String r1 = "null"
            goto Ldf
        Lde:
            r1 = r5
        Ldf:
            java.lang.String r2 = "Setting current screen to name, class"
            r0.zzc(r2, r1, r6)
            com.google.android.gms.measurement.internal.zzip r0 = new com.google.android.gms.measurement.internal.zzip
            com.google.android.gms.measurement.internal.zzgd r1 = r3.zzt
            com.google.android.gms.measurement.internal.zzln r1 = r1.zzv()
            long r1 = r1.zzq()
            r0.<init>(r5, r6, r1)
            java.util.Map r5 = r3.zzd
            r5.put(r4, r0)
            r5 = 1
            r3.zzz(r4, r0, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzix.zzw(android.app.Activity, java.lang.String, java.lang.String):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0031, code lost:
        if (r2 > 100) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0063, code lost:
        if (r4 > 100) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzx(android.os.Bundle r13, long r14) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzix.zzx(android.os.Bundle, long):void");
    }
}
