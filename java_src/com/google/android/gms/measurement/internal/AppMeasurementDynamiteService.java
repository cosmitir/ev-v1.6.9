package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* compiled from: com.google.android.gms:play-services-measurement-sdk@@21.2.1 */
/* loaded from: classes2.dex */
public class AppMeasurementDynamiteService extends com.google.android.gms.internal.measurement.zzcb {
    zzgd zza = null;
    private final Map zzb = new ArrayMap();

    @EnsuresNonNull({"scion"})
    private final void zzb() {
        if (this.zza == null) {
            throw new IllegalStateException("Attempting to perform action before initialize.");
        }
    }

    private final void zzc(com.google.android.gms.internal.measurement.zzcf zzcfVar, String str) {
        zzb();
        this.zza.zzv().zzW(zzcfVar, str);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void beginAdUnitExposure(String str, long j) throws RemoteException {
        zzb();
        this.zza.zzd().zzd(str, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) throws RemoteException {
        zzb();
        this.zza.zzq().zzA(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void clearMeasurementEnabled(long j) throws RemoteException {
        zzb();
        this.zza.zzq().zzU(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void endAdUnitExposure(String str, long j) throws RemoteException {
        zzb();
        this.zza.zzd().zze(str, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void generateEventId(com.google.android.gms.internal.measurement.zzcf zzcfVar) throws RemoteException {
        zzb();
        long zzq = this.zza.zzv().zzq();
        zzb();
        this.zza.zzv().zzV(zzcfVar, zzq);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void getAppInstanceId(com.google.android.gms.internal.measurement.zzcf zzcfVar) throws RemoteException {
        zzb();
        this.zza.zzaB().zzp(new zzi(this, zzcfVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void getCachedAppInstanceId(com.google.android.gms.internal.measurement.zzcf zzcfVar) throws RemoteException {
        zzb();
        zzc(zzcfVar, this.zza.zzq().zzo());
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void getConditionalUserProperties(String str, String str2, com.google.android.gms.internal.measurement.zzcf zzcfVar) throws RemoteException {
        zzb();
        this.zza.zzaB().zzp(new zzm(this, zzcfVar, str, str2));
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void getCurrentScreenClass(com.google.android.gms.internal.measurement.zzcf zzcfVar) throws RemoteException {
        zzb();
        zzc(zzcfVar, this.zza.zzq().zzp());
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void getCurrentScreenName(com.google.android.gms.internal.measurement.zzcf zzcfVar) throws RemoteException {
        zzb();
        zzc(zzcfVar, this.zza.zzq().zzq());
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void getGmpAppId(com.google.android.gms.internal.measurement.zzcf zzcfVar) throws RemoteException {
        String str;
        zzb();
        zzii zzq = this.zza.zzq();
        if (zzq.zzt.zzw() == null) {
            try {
                str = zzio.zzc(zzq.zzt.zzaw(), "google_app_id", zzq.zzt.zzz());
            } catch (IllegalStateException e) {
                zzq.zzt.zzaA().zzd().zzb("getGoogleAppId failed with exception", e);
                str = null;
            }
        } else {
            str = zzq.zzt.zzw();
        }
        zzc(zzcfVar, str);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void getMaxUserProperties(String str, com.google.android.gms.internal.measurement.zzcf zzcfVar) throws RemoteException {
        zzb();
        this.zza.zzq().zzh(str);
        zzb();
        this.zza.zzv().zzU(zzcfVar, 25);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void getSessionId(com.google.android.gms.internal.measurement.zzcf zzcfVar) throws RemoteException {
        zzb();
        zzii zzq = this.zza.zzq();
        zzq.zzt.zzaB().zzp(new zzhw(zzq, zzcfVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void getTestFlag(com.google.android.gms.internal.measurement.zzcf zzcfVar, int i) throws RemoteException {
        zzb();
        if (i == 0) {
            this.zza.zzv().zzW(zzcfVar, this.zza.zzq().zzr());
        } else if (i == 1) {
            this.zza.zzv().zzV(zzcfVar, this.zza.zzq().zzm().longValue());
        } else if (i != 2) {
            if (i == 3) {
                this.zza.zzv().zzU(zzcfVar, this.zza.zzq().zzl().intValue());
            } else if (i != 4) {
            } else {
                this.zza.zzv().zzQ(zzcfVar, this.zza.zzq().zzi().booleanValue());
            }
        } else {
            zzln zzv = this.zza.zzv();
            double doubleValue = this.zza.zzq().zzj().doubleValue();
            Bundle bundle = new Bundle();
            bundle.putDouble("r", doubleValue);
            try {
                zzcfVar.zze(bundle);
            } catch (RemoteException e) {
                zzv.zzt.zzaA().zzk().zzb("Error returning double value to wrapper", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void getUserProperties(String str, String str2, boolean z, com.google.android.gms.internal.measurement.zzcf zzcfVar) throws RemoteException {
        zzb();
        this.zza.zzaB().zzp(new zzk(this, zzcfVar, str, str2, z));
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void initForTests(Map map) throws RemoteException {
        zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void initialize(IObjectWrapper iObjectWrapper, com.google.android.gms.internal.measurement.zzcl zzclVar, long j) throws RemoteException {
        zzgd zzgdVar = this.zza;
        if (zzgdVar == null) {
            this.zza = zzgd.zzp((Context) Preconditions.checkNotNull((Context) ObjectWrapper.unwrap(iObjectWrapper)), zzclVar, Long.valueOf(j));
        } else {
            zzgdVar.zzaA().zzk().zza("Attempting to initialize multiple times");
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void isDataCollectionEnabled(com.google.android.gms.internal.measurement.zzcf zzcfVar) throws RemoteException {
        zzb();
        this.zza.zzaB().zzp(new zzn(this, zzcfVar));
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) throws RemoteException {
        zzb();
        this.zza.zzq().zzE(str, str2, bundle, z, z2, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void logEventAndBundle(String str, String str2, Bundle bundle, com.google.android.gms.internal.measurement.zzcf zzcfVar, long j) throws RemoteException {
        zzb();
        Preconditions.checkNotEmpty(str2);
        (bundle != null ? new Bundle(bundle) : new Bundle()).putString("_o", "app");
        this.zza.zzaB().zzp(new zzj(this, zzcfVar, new zzaw(str2, new zzau(bundle), "app", j), str));
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void logHealthData(int i, String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        zzb();
        this.zza.zzaA().zzu(i, true, false, str, iObjectWrapper == null ? null : ObjectWrapper.unwrap(iObjectWrapper), iObjectWrapper2 == null ? null : ObjectWrapper.unwrap(iObjectWrapper2), iObjectWrapper3 != null ? ObjectWrapper.unwrap(iObjectWrapper3) : null);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void onActivityCreated(IObjectWrapper iObjectWrapper, Bundle bundle, long j) throws RemoteException {
        zzb();
        zzih zzihVar = this.zza.zzq().zza;
        if (zzihVar != null) {
            this.zza.zzq().zzB();
            zzihVar.onActivityCreated((Activity) ObjectWrapper.unwrap(iObjectWrapper), bundle);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void onActivityDestroyed(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zzb();
        zzih zzihVar = this.zza.zzq().zza;
        if (zzihVar != null) {
            this.zza.zzq().zzB();
            zzihVar.onActivityDestroyed((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void onActivityPaused(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zzb();
        zzih zzihVar = this.zza.zzq().zza;
        if (zzihVar != null) {
            this.zza.zzq().zzB();
            zzihVar.onActivityPaused((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void onActivityResumed(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zzb();
        zzih zzihVar = this.zza.zzq().zza;
        if (zzihVar != null) {
            this.zza.zzq().zzB();
            zzihVar.onActivityResumed((Activity) ObjectWrapper.unwrap(iObjectWrapper));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void onActivitySaveInstanceState(IObjectWrapper iObjectWrapper, com.google.android.gms.internal.measurement.zzcf zzcfVar, long j) throws RemoteException {
        zzb();
        zzih zzihVar = this.zza.zzq().zza;
        Bundle bundle = new Bundle();
        if (zzihVar != null) {
            this.zza.zzq().zzB();
            zzihVar.onActivitySaveInstanceState((Activity) ObjectWrapper.unwrap(iObjectWrapper), bundle);
        }
        try {
            zzcfVar.zze(bundle);
        } catch (RemoteException e) {
            this.zza.zzaA().zzk().zzb("Error returning bundle value to wrapper", e);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void onActivityStarted(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zzb();
        if (this.zza.zzq().zza != null) {
            this.zza.zzq().zzB();
            Activity activity = (Activity) ObjectWrapper.unwrap(iObjectWrapper);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void onActivityStopped(IObjectWrapper iObjectWrapper, long j) throws RemoteException {
        zzb();
        if (this.zza.zzq().zza != null) {
            this.zza.zzq().zzB();
            Activity activity = (Activity) ObjectWrapper.unwrap(iObjectWrapper);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void performAction(Bundle bundle, com.google.android.gms.internal.measurement.zzcf zzcfVar, long j) throws RemoteException {
        zzb();
        zzcfVar.zze(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void registerOnMeasurementEventListener(com.google.android.gms.internal.measurement.zzci zzciVar) throws RemoteException {
        zzhe zzheVar;
        zzb();
        synchronized (this.zzb) {
            zzheVar = (zzhe) this.zzb.get(Integer.valueOf(zzciVar.zzd()));
            if (zzheVar == null) {
                zzheVar = new zzp(this, zzciVar);
                this.zzb.put(Integer.valueOf(zzciVar.zzd()), zzheVar);
            }
        }
        this.zza.zzq().zzJ(zzheVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void resetAnalyticsData(long j) throws RemoteException {
        zzb();
        this.zza.zzq().zzK(j);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setConditionalUserProperty(Bundle bundle, long j) throws RemoteException {
        zzb();
        if (bundle == null) {
            this.zza.zzaA().zzd().zza("Conditional user property must not be null");
        } else {
            this.zza.zzq().zzQ(bundle, j);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setConsent(final Bundle bundle, final long j) throws RemoteException {
        zzb();
        final zzii zzq = this.zza.zzq();
        zzq.zzt.zzaB().zzq(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzhh
            @Override // java.lang.Runnable
            public final void run() {
                zzii zziiVar = zzii.this;
                Bundle bundle2 = bundle;
                long j2 = j;
                if (TextUtils.isEmpty(zziiVar.zzt.zzh().zzm())) {
                    zziiVar.zzR(bundle2, 0, j2);
                } else {
                    zziiVar.zzt.zzaA().zzl().zza("Using developer consent only; google app id found");
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setConsentThirdParty(Bundle bundle, long j) throws RemoteException {
        zzb();
        this.zza.zzq().zzR(bundle, -20, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setCurrentScreen(IObjectWrapper iObjectWrapper, String str, String str2, long j) throws RemoteException {
        zzb();
        this.zza.zzs().zzw((Activity) ObjectWrapper.unwrap(iObjectWrapper), str, str2);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setDataCollectionEnabled(boolean z) throws RemoteException {
        zzb();
        zzii zzq = this.zza.zzq();
        zzq.zza();
        zzgd zzgdVar = zzq.zzt;
        zzq.zzt.zzaB().zzp(new zzif(zzq, z));
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setDefaultEventParameters(Bundle bundle) {
        zzb();
        final zzii zzq = this.zza.zzq();
        final Bundle bundle2 = bundle == null ? null : new Bundle(bundle);
        zzq.zzt.zzaB().zzp(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzhi
            @Override // java.lang.Runnable
            public final void run() {
                zzii.this.zzC(bundle2);
            }
        });
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setEventInterceptor(com.google.android.gms.internal.measurement.zzci zzciVar) throws RemoteException {
        zzb();
        zzo zzoVar = new zzo(this, zzciVar);
        if (this.zza.zzaB().zzs()) {
            this.zza.zzq().zzT(zzoVar);
        } else {
            this.zza.zzaB().zzp(new zzl(this, zzoVar));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setInstanceIdProvider(com.google.android.gms.internal.measurement.zzck zzckVar) throws RemoteException {
        zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setMeasurementEnabled(boolean z, long j) throws RemoteException {
        zzb();
        this.zza.zzq().zzU(Boolean.valueOf(z));
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setMinimumSessionDuration(long j) throws RemoteException {
        zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setSessionTimeoutDuration(long j) throws RemoteException {
        zzb();
        zzii zzq = this.zza.zzq();
        zzgd zzgdVar = zzq.zzt;
        zzq.zzt.zzaB().zzp(new zzhm(zzq, j));
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setUserId(final String str, long j) throws RemoteException {
        zzb();
        final zzii zzq = this.zza.zzq();
        if (str == null || !TextUtils.isEmpty(str)) {
            zzq.zzt.zzaB().zzp(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzhj
                @Override // java.lang.Runnable
                public final void run() {
                    zzii zziiVar = zzii.this;
                    if (zziiVar.zzt.zzh().zzp(str)) {
                        zziiVar.zzt.zzh().zzo();
                    }
                }
            });
            zzq.zzX(null, "_id", str, true, j);
            return;
        }
        zzq.zzt.zzaA().zzk().zza("User ID must be non-empty or null");
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void setUserProperty(String str, String str2, IObjectWrapper iObjectWrapper, boolean z, long j) throws RemoteException {
        zzb();
        this.zza.zzq().zzX(str, str2, ObjectWrapper.unwrap(iObjectWrapper), z, j);
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public void unregisterOnMeasurementEventListener(com.google.android.gms.internal.measurement.zzci zzciVar) throws RemoteException {
        zzhe zzheVar;
        zzb();
        synchronized (this.zzb) {
            zzheVar = (zzhe) this.zzb.remove(Integer.valueOf(zzciVar.zzd()));
        }
        if (zzheVar == null) {
            zzheVar = new zzp(this, zzciVar);
        }
        this.zza.zzq().zzZ(zzheVar);
    }
}
