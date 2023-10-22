package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.collection.ArrayMap;
import androidx.compose.runtime.ComposerKt;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzop;
import com.google.android.gms.internal.measurement.zzpw;
import com.google.android.gms.internal.measurement.zzqr;
import com.google.android.gms.internal.measurement.zzra;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import kotlinx.coroutines.DebugKt;
/* compiled from: com.google.android.gms:play-services-measurement@@21.2.1 */
/* loaded from: classes2.dex */
public final class zzlf implements zzgy {
    private static volatile zzlf zzb;
    private long zzA;
    private final Map zzB;
    private final Map zzC;
    private zzip zzD;
    private String zzE;
    long zza;
    private final zzfu zzc;
    private final zzez zzd;
    private zzam zze;
    private zzfb zzf;
    private zzkq zzg;
    private zzaa zzh;
    private final zzlh zzi;
    private zzin zzj;
    private zzjz zzk;
    private final zzku zzl;
    private zzfl zzm;
    private final zzgd zzn;
    private boolean zzp;
    private List zzq;
    private int zzr;
    private int zzs;
    private boolean zzt;
    private boolean zzu;
    private boolean zzv;
    private FileLock zzw;
    private FileChannel zzx;
    private List zzy;
    private List zzz;
    private boolean zzo = false;
    private final zzlm zzF = new zzla(this);

    zzlf(zzlg zzlgVar, zzgd zzgdVar) {
        Preconditions.checkNotNull(zzlgVar);
        this.zzn = zzgd.zzp(zzlgVar.zza, null, null);
        this.zzA = -1L;
        this.zzl = new zzku(this);
        zzlh zzlhVar = new zzlh(this);
        zzlhVar.zzX();
        this.zzi = zzlhVar;
        zzez zzezVar = new zzez(this);
        zzezVar.zzX();
        this.zzd = zzezVar;
        zzfu zzfuVar = new zzfu(this);
        zzfuVar.zzX();
        this.zzc = zzfuVar;
        this.zzB = new HashMap();
        this.zzC = new HashMap();
        zzaB().zzp(new zzkv(this, zzlgVar));
    }

    static final void zzaa(com.google.android.gms.internal.measurement.zzfs zzfsVar, int i, String str) {
        List zzp = zzfsVar.zzp();
        for (int i2 = 0; i2 < zzp.size(); i2++) {
            if ("_err".equals(((com.google.android.gms.internal.measurement.zzfx) zzp.get(i2)).zzg())) {
                return;
            }
        }
        com.google.android.gms.internal.measurement.zzfw zze = com.google.android.gms.internal.measurement.zzfx.zze();
        zze.zzj("_err");
        zze.zzi(Long.valueOf(i).longValue());
        com.google.android.gms.internal.measurement.zzfw zze2 = com.google.android.gms.internal.measurement.zzfx.zze();
        zze2.zzj("_ev");
        zze2.zzk(str);
        zzfsVar.zzf((com.google.android.gms.internal.measurement.zzfx) zze.zzaD());
        zzfsVar.zzf((com.google.android.gms.internal.measurement.zzfx) zze2.zzaD());
    }

    static final void zzab(com.google.android.gms.internal.measurement.zzfs zzfsVar, String str) {
        List zzp = zzfsVar.zzp();
        for (int i = 0; i < zzp.size(); i++) {
            if (str.equals(((com.google.android.gms.internal.measurement.zzfx) zzp.get(i)).zzg())) {
                zzfsVar.zzh(i);
                return;
            }
        }
    }

    private final zzq zzac(String str) {
        zzam zzamVar = this.zze;
        zzal(zzamVar);
        zzh zzj = zzamVar.zzj(str);
        if (zzj == null || TextUtils.isEmpty(zzj.zzx())) {
            zzaA().zzc().zzb("No app data available; dropping", str);
            return null;
        }
        Boolean zzad = zzad(zzj);
        if (zzad == null || zzad.booleanValue()) {
            String zzz = zzj.zzz();
            String zzx = zzj.zzx();
            long zzb2 = zzj.zzb();
            String zzw = zzj.zzw();
            long zzm = zzj.zzm();
            long zzj2 = zzj.zzj();
            boolean zzal = zzj.zzal();
            String zzy = zzj.zzy();
            zzj.zza();
            return new zzq(str, zzz, zzx, zzb2, zzw, zzm, zzj2, (String) null, zzal, false, zzy, 0L, 0L, 0, zzj.zzak(), false, zzj.zzs(), zzj.zzr(), zzj.zzk(), zzj.zzD(), (String) null, zzh(str).zzh(), "", (String) null, zzj.zzan(), zzj.zzq());
        }
        zzaA().zzd().zzb("App version does not match; dropping. appId", zzet.zzn(str));
        return null;
    }

    private final Boolean zzad(zzh zzhVar) {
        try {
            if (zzhVar.zzb() == -2147483648L) {
                String str = Wrappers.packageManager(this.zzn.zzaw()).getPackageInfo(zzhVar.zzu(), 0).versionName;
                String zzx = zzhVar.zzx();
                if (zzx != null && zzx.equals(str)) {
                    return true;
                }
            } else {
                if (zzhVar.zzb() == Wrappers.packageManager(this.zzn.zzaw()).getPackageInfo(zzhVar.zzu(), 0).versionCode) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    private final void zzae() {
        zzaB().zzg();
        if (this.zzt || this.zzu || this.zzv) {
            zzaA().zzj().zzd("Not stopping services. fetch, network, upload", Boolean.valueOf(this.zzt), Boolean.valueOf(this.zzu), Boolean.valueOf(this.zzv));
            return;
        }
        zzaA().zzj().zza("Stopping uploading service(s)");
        List<Runnable> list = this.zzq;
        if (list == null) {
            return;
        }
        for (Runnable runnable : list) {
            runnable.run();
        }
        ((List) Preconditions.checkNotNull(this.zzq)).clear();
    }

    private final void zzaf(com.google.android.gms.internal.measurement.zzgc zzgcVar, long j, boolean z) {
        zzlk zzlkVar;
        zzam zzamVar = this.zze;
        zzal(zzamVar);
        String str = true != z ? "_lte" : "_se";
        zzlk zzp = zzamVar.zzp(zzgcVar.zzaq(), str);
        if (zzp == null || zzp.zze == null) {
            zzlkVar = new zzlk(zzgcVar.zzaq(), DebugKt.DEBUG_PROPERTY_VALUE_AUTO, str, zzax().currentTimeMillis(), Long.valueOf(j));
        } else {
            zzlkVar = new zzlk(zzgcVar.zzaq(), DebugKt.DEBUG_PROPERTY_VALUE_AUTO, str, zzax().currentTimeMillis(), Long.valueOf(((Long) zzp.zze).longValue() + j));
        }
        com.google.android.gms.internal.measurement.zzgl zzd = com.google.android.gms.internal.measurement.zzgm.zzd();
        zzd.zzf(str);
        zzd.zzg(zzax().currentTimeMillis());
        zzd.zze(((Long) zzlkVar.zze).longValue());
        com.google.android.gms.internal.measurement.zzgm zzgmVar = (com.google.android.gms.internal.measurement.zzgm) zzd.zzaD();
        int zza = zzlh.zza(zzgcVar, str);
        if (zza < 0) {
            zzgcVar.zzm(zzgmVar);
        } else {
            zzgcVar.zzan(zza, zzgmVar);
        }
        if (j > 0) {
            zzam zzamVar2 = this.zze;
            zzal(zzamVar2);
            zzamVar2.zzL(zzlkVar);
            zzaA().zzj().zzc("Updated engagement user property. scope, value", true != z ? "lifetime" : "session-scoped", zzlkVar.zze);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0238  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzag() {
        /*
            Method dump skipped, instructions count: 626
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzlf.zzag():void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:353:0x0b36, code lost:
        if (r10 > (com.google.android.gms.measurement.internal.zzag.zzA() + r8)) goto L384;
     */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0447 A[Catch: all -> 0x0ccf, TryCatch #4 {all -> 0x0ccf, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:154:0x04ee, B:24:0x00f7, B:26:0x0105, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:97:0x0383, B:98:0x038f, B:101:0x0399, B:107:0x03bc, B:104:0x03ab, B:129:0x043b, B:131:0x0447, B:134:0x045c, B:136:0x046d, B:138:0x0479, B:153:0x04da, B:141:0x0489, B:143:0x0495, B:146:0x04aa, B:148:0x04bb, B:150:0x04c7, B:111:0x03c4, B:113:0x03d0, B:115:0x03dc, B:127:0x0421, B:119:0x03f9, B:122:0x040b, B:124:0x0411, B:126:0x041b, B:54:0x01c0, B:57:0x01ca, B:59:0x01d8, B:63:0x021f, B:60:0x01f5, B:62:0x0206, B:67:0x022e, B:69:0x025a, B:70:0x0284, B:72:0x02ba, B:74:0x02c0, B:77:0x02cc, B:79:0x0302, B:80:0x031d, B:82:0x0323, B:84:0x0331, B:88:0x0344, B:85:0x0339, B:91:0x034b, B:94:0x0352, B:95:0x036a, B:157:0x0506, B:159:0x0514, B:161:0x051f, B:172:0x0551, B:162:0x0527, B:164:0x0532, B:166:0x0538, B:169:0x0544, B:171:0x054c, B:173:0x0554, B:174:0x0560, B:177:0x0568, B:179:0x057a, B:180:0x0586, B:182:0x058e, B:186:0x05b3, B:188:0x05d8, B:190:0x05e9, B:192:0x05ef, B:194:0x05fb, B:195:0x062c, B:197:0x0632, B:199:0x0640, B:200:0x0644, B:201:0x0647, B:202:0x064a, B:203:0x0658, B:205:0x065e, B:207:0x066e, B:208:0x0675, B:210:0x0681, B:211:0x0688, B:212:0x068b, B:214:0x06cb, B:215:0x06de, B:217:0x06e4, B:220:0x06fe, B:222:0x0719, B:224:0x0732, B:226:0x0737, B:228:0x073b, B:230:0x073f, B:232:0x0749, B:233:0x0753, B:235:0x0757, B:237:0x075d, B:238:0x076b, B:239:0x0774, B:307:0x09c9, B:241:0x0780, B:243:0x0797, B:249:0x07b3, B:251:0x07d7, B:252:0x07df, B:254:0x07e5, B:256:0x07f7, B:263:0x0820, B:264:0x0843, B:266:0x084f, B:268:0x0864, B:270:0x08a5, B:274:0x08bd, B:276:0x08c4, B:278:0x08d3, B:280:0x08d7, B:282:0x08db, B:284:0x08df, B:285:0x08eb, B:286:0x08f0, B:288:0x08f6, B:290:0x0912, B:291:0x0917, B:306:0x09c6, B:292:0x0931, B:294:0x0939, B:298:0x0960, B:300:0x098e, B:301:0x0998, B:302:0x09aa, B:304:0x09b6, B:295:0x0946, B:261:0x080b, B:247:0x079e, B:308:0x09d4, B:310:0x09e1, B:311:0x09e7, B:312:0x09ef, B:314:0x09f5, B:316:0x0a0b, B:318:0x0a1c, B:338:0x0a90, B:340:0x0a96, B:342:0x0aae, B:345:0x0ab5, B:350:0x0ae4, B:352:0x0b26, B:355:0x0b5b, B:356:0x0b5f, B:357:0x0b6a, B:359:0x0bad, B:360:0x0bba, B:362:0x0bc9, B:366:0x0be3, B:368:0x0bfc, B:354:0x0b38, B:346:0x0abd, B:348:0x0ac9, B:349:0x0acd, B:369:0x0c14, B:370:0x0c2c, B:373:0x0c34, B:374:0x0c39, B:375:0x0c49, B:377:0x0c63, B:378:0x0c7e, B:379:0x0c87, B:384:0x0cab, B:383:0x0c98, B:319:0x0a34, B:321:0x0a3a, B:323:0x0a44, B:325:0x0a4b, B:331:0x0a5b, B:333:0x0a62, B:335:0x0a81, B:337:0x0a88, B:336:0x0a85, B:332:0x0a5f, B:324:0x0a48, B:183:0x0593, B:185:0x0599, B:387:0x0cbd), top: B:401:0x000e, inners: #0, #1, #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0489 A[Catch: all -> 0x0ccf, TryCatch #4 {all -> 0x0ccf, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:154:0x04ee, B:24:0x00f7, B:26:0x0105, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:97:0x0383, B:98:0x038f, B:101:0x0399, B:107:0x03bc, B:104:0x03ab, B:129:0x043b, B:131:0x0447, B:134:0x045c, B:136:0x046d, B:138:0x0479, B:153:0x04da, B:141:0x0489, B:143:0x0495, B:146:0x04aa, B:148:0x04bb, B:150:0x04c7, B:111:0x03c4, B:113:0x03d0, B:115:0x03dc, B:127:0x0421, B:119:0x03f9, B:122:0x040b, B:124:0x0411, B:126:0x041b, B:54:0x01c0, B:57:0x01ca, B:59:0x01d8, B:63:0x021f, B:60:0x01f5, B:62:0x0206, B:67:0x022e, B:69:0x025a, B:70:0x0284, B:72:0x02ba, B:74:0x02c0, B:77:0x02cc, B:79:0x0302, B:80:0x031d, B:82:0x0323, B:84:0x0331, B:88:0x0344, B:85:0x0339, B:91:0x034b, B:94:0x0352, B:95:0x036a, B:157:0x0506, B:159:0x0514, B:161:0x051f, B:172:0x0551, B:162:0x0527, B:164:0x0532, B:166:0x0538, B:169:0x0544, B:171:0x054c, B:173:0x0554, B:174:0x0560, B:177:0x0568, B:179:0x057a, B:180:0x0586, B:182:0x058e, B:186:0x05b3, B:188:0x05d8, B:190:0x05e9, B:192:0x05ef, B:194:0x05fb, B:195:0x062c, B:197:0x0632, B:199:0x0640, B:200:0x0644, B:201:0x0647, B:202:0x064a, B:203:0x0658, B:205:0x065e, B:207:0x066e, B:208:0x0675, B:210:0x0681, B:211:0x0688, B:212:0x068b, B:214:0x06cb, B:215:0x06de, B:217:0x06e4, B:220:0x06fe, B:222:0x0719, B:224:0x0732, B:226:0x0737, B:228:0x073b, B:230:0x073f, B:232:0x0749, B:233:0x0753, B:235:0x0757, B:237:0x075d, B:238:0x076b, B:239:0x0774, B:307:0x09c9, B:241:0x0780, B:243:0x0797, B:249:0x07b3, B:251:0x07d7, B:252:0x07df, B:254:0x07e5, B:256:0x07f7, B:263:0x0820, B:264:0x0843, B:266:0x084f, B:268:0x0864, B:270:0x08a5, B:274:0x08bd, B:276:0x08c4, B:278:0x08d3, B:280:0x08d7, B:282:0x08db, B:284:0x08df, B:285:0x08eb, B:286:0x08f0, B:288:0x08f6, B:290:0x0912, B:291:0x0917, B:306:0x09c6, B:292:0x0931, B:294:0x0939, B:298:0x0960, B:300:0x098e, B:301:0x0998, B:302:0x09aa, B:304:0x09b6, B:295:0x0946, B:261:0x080b, B:247:0x079e, B:308:0x09d4, B:310:0x09e1, B:311:0x09e7, B:312:0x09ef, B:314:0x09f5, B:316:0x0a0b, B:318:0x0a1c, B:338:0x0a90, B:340:0x0a96, B:342:0x0aae, B:345:0x0ab5, B:350:0x0ae4, B:352:0x0b26, B:355:0x0b5b, B:356:0x0b5f, B:357:0x0b6a, B:359:0x0bad, B:360:0x0bba, B:362:0x0bc9, B:366:0x0be3, B:368:0x0bfc, B:354:0x0b38, B:346:0x0abd, B:348:0x0ac9, B:349:0x0acd, B:369:0x0c14, B:370:0x0c2c, B:373:0x0c34, B:374:0x0c39, B:375:0x0c49, B:377:0x0c63, B:378:0x0c7e, B:379:0x0c87, B:384:0x0cab, B:383:0x0c98, B:319:0x0a34, B:321:0x0a3a, B:323:0x0a44, B:325:0x0a4b, B:331:0x0a5b, B:333:0x0a62, B:335:0x0a81, B:337:0x0a88, B:336:0x0a85, B:332:0x0a5f, B:324:0x0a48, B:183:0x0593, B:185:0x0599, B:387:0x0cbd), top: B:401:0x000e, inners: #0, #1, #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:251:0x07d7 A[Catch: all -> 0x0ccf, TryCatch #4 {all -> 0x0ccf, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:154:0x04ee, B:24:0x00f7, B:26:0x0105, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:97:0x0383, B:98:0x038f, B:101:0x0399, B:107:0x03bc, B:104:0x03ab, B:129:0x043b, B:131:0x0447, B:134:0x045c, B:136:0x046d, B:138:0x0479, B:153:0x04da, B:141:0x0489, B:143:0x0495, B:146:0x04aa, B:148:0x04bb, B:150:0x04c7, B:111:0x03c4, B:113:0x03d0, B:115:0x03dc, B:127:0x0421, B:119:0x03f9, B:122:0x040b, B:124:0x0411, B:126:0x041b, B:54:0x01c0, B:57:0x01ca, B:59:0x01d8, B:63:0x021f, B:60:0x01f5, B:62:0x0206, B:67:0x022e, B:69:0x025a, B:70:0x0284, B:72:0x02ba, B:74:0x02c0, B:77:0x02cc, B:79:0x0302, B:80:0x031d, B:82:0x0323, B:84:0x0331, B:88:0x0344, B:85:0x0339, B:91:0x034b, B:94:0x0352, B:95:0x036a, B:157:0x0506, B:159:0x0514, B:161:0x051f, B:172:0x0551, B:162:0x0527, B:164:0x0532, B:166:0x0538, B:169:0x0544, B:171:0x054c, B:173:0x0554, B:174:0x0560, B:177:0x0568, B:179:0x057a, B:180:0x0586, B:182:0x058e, B:186:0x05b3, B:188:0x05d8, B:190:0x05e9, B:192:0x05ef, B:194:0x05fb, B:195:0x062c, B:197:0x0632, B:199:0x0640, B:200:0x0644, B:201:0x0647, B:202:0x064a, B:203:0x0658, B:205:0x065e, B:207:0x066e, B:208:0x0675, B:210:0x0681, B:211:0x0688, B:212:0x068b, B:214:0x06cb, B:215:0x06de, B:217:0x06e4, B:220:0x06fe, B:222:0x0719, B:224:0x0732, B:226:0x0737, B:228:0x073b, B:230:0x073f, B:232:0x0749, B:233:0x0753, B:235:0x0757, B:237:0x075d, B:238:0x076b, B:239:0x0774, B:307:0x09c9, B:241:0x0780, B:243:0x0797, B:249:0x07b3, B:251:0x07d7, B:252:0x07df, B:254:0x07e5, B:256:0x07f7, B:263:0x0820, B:264:0x0843, B:266:0x084f, B:268:0x0864, B:270:0x08a5, B:274:0x08bd, B:276:0x08c4, B:278:0x08d3, B:280:0x08d7, B:282:0x08db, B:284:0x08df, B:285:0x08eb, B:286:0x08f0, B:288:0x08f6, B:290:0x0912, B:291:0x0917, B:306:0x09c6, B:292:0x0931, B:294:0x0939, B:298:0x0960, B:300:0x098e, B:301:0x0998, B:302:0x09aa, B:304:0x09b6, B:295:0x0946, B:261:0x080b, B:247:0x079e, B:308:0x09d4, B:310:0x09e1, B:311:0x09e7, B:312:0x09ef, B:314:0x09f5, B:316:0x0a0b, B:318:0x0a1c, B:338:0x0a90, B:340:0x0a96, B:342:0x0aae, B:345:0x0ab5, B:350:0x0ae4, B:352:0x0b26, B:355:0x0b5b, B:356:0x0b5f, B:357:0x0b6a, B:359:0x0bad, B:360:0x0bba, B:362:0x0bc9, B:366:0x0be3, B:368:0x0bfc, B:354:0x0b38, B:346:0x0abd, B:348:0x0ac9, B:349:0x0acd, B:369:0x0c14, B:370:0x0c2c, B:373:0x0c34, B:374:0x0c39, B:375:0x0c49, B:377:0x0c63, B:378:0x0c7e, B:379:0x0c87, B:384:0x0cab, B:383:0x0c98, B:319:0x0a34, B:321:0x0a3a, B:323:0x0a44, B:325:0x0a4b, B:331:0x0a5b, B:333:0x0a62, B:335:0x0a81, B:337:0x0a88, B:336:0x0a85, B:332:0x0a5f, B:324:0x0a48, B:183:0x0593, B:185:0x0599, B:387:0x0cbd), top: B:401:0x000e, inners: #0, #1, #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:263:0x0820 A[Catch: all -> 0x0ccf, TryCatch #4 {all -> 0x0ccf, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:154:0x04ee, B:24:0x00f7, B:26:0x0105, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:97:0x0383, B:98:0x038f, B:101:0x0399, B:107:0x03bc, B:104:0x03ab, B:129:0x043b, B:131:0x0447, B:134:0x045c, B:136:0x046d, B:138:0x0479, B:153:0x04da, B:141:0x0489, B:143:0x0495, B:146:0x04aa, B:148:0x04bb, B:150:0x04c7, B:111:0x03c4, B:113:0x03d0, B:115:0x03dc, B:127:0x0421, B:119:0x03f9, B:122:0x040b, B:124:0x0411, B:126:0x041b, B:54:0x01c0, B:57:0x01ca, B:59:0x01d8, B:63:0x021f, B:60:0x01f5, B:62:0x0206, B:67:0x022e, B:69:0x025a, B:70:0x0284, B:72:0x02ba, B:74:0x02c0, B:77:0x02cc, B:79:0x0302, B:80:0x031d, B:82:0x0323, B:84:0x0331, B:88:0x0344, B:85:0x0339, B:91:0x034b, B:94:0x0352, B:95:0x036a, B:157:0x0506, B:159:0x0514, B:161:0x051f, B:172:0x0551, B:162:0x0527, B:164:0x0532, B:166:0x0538, B:169:0x0544, B:171:0x054c, B:173:0x0554, B:174:0x0560, B:177:0x0568, B:179:0x057a, B:180:0x0586, B:182:0x058e, B:186:0x05b3, B:188:0x05d8, B:190:0x05e9, B:192:0x05ef, B:194:0x05fb, B:195:0x062c, B:197:0x0632, B:199:0x0640, B:200:0x0644, B:201:0x0647, B:202:0x064a, B:203:0x0658, B:205:0x065e, B:207:0x066e, B:208:0x0675, B:210:0x0681, B:211:0x0688, B:212:0x068b, B:214:0x06cb, B:215:0x06de, B:217:0x06e4, B:220:0x06fe, B:222:0x0719, B:224:0x0732, B:226:0x0737, B:228:0x073b, B:230:0x073f, B:232:0x0749, B:233:0x0753, B:235:0x0757, B:237:0x075d, B:238:0x076b, B:239:0x0774, B:307:0x09c9, B:241:0x0780, B:243:0x0797, B:249:0x07b3, B:251:0x07d7, B:252:0x07df, B:254:0x07e5, B:256:0x07f7, B:263:0x0820, B:264:0x0843, B:266:0x084f, B:268:0x0864, B:270:0x08a5, B:274:0x08bd, B:276:0x08c4, B:278:0x08d3, B:280:0x08d7, B:282:0x08db, B:284:0x08df, B:285:0x08eb, B:286:0x08f0, B:288:0x08f6, B:290:0x0912, B:291:0x0917, B:306:0x09c6, B:292:0x0931, B:294:0x0939, B:298:0x0960, B:300:0x098e, B:301:0x0998, B:302:0x09aa, B:304:0x09b6, B:295:0x0946, B:261:0x080b, B:247:0x079e, B:308:0x09d4, B:310:0x09e1, B:311:0x09e7, B:312:0x09ef, B:314:0x09f5, B:316:0x0a0b, B:318:0x0a1c, B:338:0x0a90, B:340:0x0a96, B:342:0x0aae, B:345:0x0ab5, B:350:0x0ae4, B:352:0x0b26, B:355:0x0b5b, B:356:0x0b5f, B:357:0x0b6a, B:359:0x0bad, B:360:0x0bba, B:362:0x0bc9, B:366:0x0be3, B:368:0x0bfc, B:354:0x0b38, B:346:0x0abd, B:348:0x0ac9, B:349:0x0acd, B:369:0x0c14, B:370:0x0c2c, B:373:0x0c34, B:374:0x0c39, B:375:0x0c49, B:377:0x0c63, B:378:0x0c7e, B:379:0x0c87, B:384:0x0cab, B:383:0x0c98, B:319:0x0a34, B:321:0x0a3a, B:323:0x0a44, B:325:0x0a4b, B:331:0x0a5b, B:333:0x0a62, B:335:0x0a81, B:337:0x0a88, B:336:0x0a85, B:332:0x0a5f, B:324:0x0a48, B:183:0x0593, B:185:0x0599, B:387:0x0cbd), top: B:401:0x000e, inners: #0, #1, #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:264:0x0843 A[Catch: all -> 0x0ccf, TryCatch #4 {all -> 0x0ccf, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:154:0x04ee, B:24:0x00f7, B:26:0x0105, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:97:0x0383, B:98:0x038f, B:101:0x0399, B:107:0x03bc, B:104:0x03ab, B:129:0x043b, B:131:0x0447, B:134:0x045c, B:136:0x046d, B:138:0x0479, B:153:0x04da, B:141:0x0489, B:143:0x0495, B:146:0x04aa, B:148:0x04bb, B:150:0x04c7, B:111:0x03c4, B:113:0x03d0, B:115:0x03dc, B:127:0x0421, B:119:0x03f9, B:122:0x040b, B:124:0x0411, B:126:0x041b, B:54:0x01c0, B:57:0x01ca, B:59:0x01d8, B:63:0x021f, B:60:0x01f5, B:62:0x0206, B:67:0x022e, B:69:0x025a, B:70:0x0284, B:72:0x02ba, B:74:0x02c0, B:77:0x02cc, B:79:0x0302, B:80:0x031d, B:82:0x0323, B:84:0x0331, B:88:0x0344, B:85:0x0339, B:91:0x034b, B:94:0x0352, B:95:0x036a, B:157:0x0506, B:159:0x0514, B:161:0x051f, B:172:0x0551, B:162:0x0527, B:164:0x0532, B:166:0x0538, B:169:0x0544, B:171:0x054c, B:173:0x0554, B:174:0x0560, B:177:0x0568, B:179:0x057a, B:180:0x0586, B:182:0x058e, B:186:0x05b3, B:188:0x05d8, B:190:0x05e9, B:192:0x05ef, B:194:0x05fb, B:195:0x062c, B:197:0x0632, B:199:0x0640, B:200:0x0644, B:201:0x0647, B:202:0x064a, B:203:0x0658, B:205:0x065e, B:207:0x066e, B:208:0x0675, B:210:0x0681, B:211:0x0688, B:212:0x068b, B:214:0x06cb, B:215:0x06de, B:217:0x06e4, B:220:0x06fe, B:222:0x0719, B:224:0x0732, B:226:0x0737, B:228:0x073b, B:230:0x073f, B:232:0x0749, B:233:0x0753, B:235:0x0757, B:237:0x075d, B:238:0x076b, B:239:0x0774, B:307:0x09c9, B:241:0x0780, B:243:0x0797, B:249:0x07b3, B:251:0x07d7, B:252:0x07df, B:254:0x07e5, B:256:0x07f7, B:263:0x0820, B:264:0x0843, B:266:0x084f, B:268:0x0864, B:270:0x08a5, B:274:0x08bd, B:276:0x08c4, B:278:0x08d3, B:280:0x08d7, B:282:0x08db, B:284:0x08df, B:285:0x08eb, B:286:0x08f0, B:288:0x08f6, B:290:0x0912, B:291:0x0917, B:306:0x09c6, B:292:0x0931, B:294:0x0939, B:298:0x0960, B:300:0x098e, B:301:0x0998, B:302:0x09aa, B:304:0x09b6, B:295:0x0946, B:261:0x080b, B:247:0x079e, B:308:0x09d4, B:310:0x09e1, B:311:0x09e7, B:312:0x09ef, B:314:0x09f5, B:316:0x0a0b, B:318:0x0a1c, B:338:0x0a90, B:340:0x0a96, B:342:0x0aae, B:345:0x0ab5, B:350:0x0ae4, B:352:0x0b26, B:355:0x0b5b, B:356:0x0b5f, B:357:0x0b6a, B:359:0x0bad, B:360:0x0bba, B:362:0x0bc9, B:366:0x0be3, B:368:0x0bfc, B:354:0x0b38, B:346:0x0abd, B:348:0x0ac9, B:349:0x0acd, B:369:0x0c14, B:370:0x0c2c, B:373:0x0c34, B:374:0x0c39, B:375:0x0c49, B:377:0x0c63, B:378:0x0c7e, B:379:0x0c87, B:384:0x0cab, B:383:0x0c98, B:319:0x0a34, B:321:0x0a3a, B:323:0x0a44, B:325:0x0a4b, B:331:0x0a5b, B:333:0x0a62, B:335:0x0a81, B:337:0x0a88, B:336:0x0a85, B:332:0x0a5f, B:324:0x0a48, B:183:0x0593, B:185:0x0599, B:387:0x0cbd), top: B:401:0x000e, inners: #0, #1, #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:272:0x08ba  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x08bc  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x08c4 A[Catch: all -> 0x0ccf, TryCatch #4 {all -> 0x0ccf, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:154:0x04ee, B:24:0x00f7, B:26:0x0105, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:97:0x0383, B:98:0x038f, B:101:0x0399, B:107:0x03bc, B:104:0x03ab, B:129:0x043b, B:131:0x0447, B:134:0x045c, B:136:0x046d, B:138:0x0479, B:153:0x04da, B:141:0x0489, B:143:0x0495, B:146:0x04aa, B:148:0x04bb, B:150:0x04c7, B:111:0x03c4, B:113:0x03d0, B:115:0x03dc, B:127:0x0421, B:119:0x03f9, B:122:0x040b, B:124:0x0411, B:126:0x041b, B:54:0x01c0, B:57:0x01ca, B:59:0x01d8, B:63:0x021f, B:60:0x01f5, B:62:0x0206, B:67:0x022e, B:69:0x025a, B:70:0x0284, B:72:0x02ba, B:74:0x02c0, B:77:0x02cc, B:79:0x0302, B:80:0x031d, B:82:0x0323, B:84:0x0331, B:88:0x0344, B:85:0x0339, B:91:0x034b, B:94:0x0352, B:95:0x036a, B:157:0x0506, B:159:0x0514, B:161:0x051f, B:172:0x0551, B:162:0x0527, B:164:0x0532, B:166:0x0538, B:169:0x0544, B:171:0x054c, B:173:0x0554, B:174:0x0560, B:177:0x0568, B:179:0x057a, B:180:0x0586, B:182:0x058e, B:186:0x05b3, B:188:0x05d8, B:190:0x05e9, B:192:0x05ef, B:194:0x05fb, B:195:0x062c, B:197:0x0632, B:199:0x0640, B:200:0x0644, B:201:0x0647, B:202:0x064a, B:203:0x0658, B:205:0x065e, B:207:0x066e, B:208:0x0675, B:210:0x0681, B:211:0x0688, B:212:0x068b, B:214:0x06cb, B:215:0x06de, B:217:0x06e4, B:220:0x06fe, B:222:0x0719, B:224:0x0732, B:226:0x0737, B:228:0x073b, B:230:0x073f, B:232:0x0749, B:233:0x0753, B:235:0x0757, B:237:0x075d, B:238:0x076b, B:239:0x0774, B:307:0x09c9, B:241:0x0780, B:243:0x0797, B:249:0x07b3, B:251:0x07d7, B:252:0x07df, B:254:0x07e5, B:256:0x07f7, B:263:0x0820, B:264:0x0843, B:266:0x084f, B:268:0x0864, B:270:0x08a5, B:274:0x08bd, B:276:0x08c4, B:278:0x08d3, B:280:0x08d7, B:282:0x08db, B:284:0x08df, B:285:0x08eb, B:286:0x08f0, B:288:0x08f6, B:290:0x0912, B:291:0x0917, B:306:0x09c6, B:292:0x0931, B:294:0x0939, B:298:0x0960, B:300:0x098e, B:301:0x0998, B:302:0x09aa, B:304:0x09b6, B:295:0x0946, B:261:0x080b, B:247:0x079e, B:308:0x09d4, B:310:0x09e1, B:311:0x09e7, B:312:0x09ef, B:314:0x09f5, B:316:0x0a0b, B:318:0x0a1c, B:338:0x0a90, B:340:0x0a96, B:342:0x0aae, B:345:0x0ab5, B:350:0x0ae4, B:352:0x0b26, B:355:0x0b5b, B:356:0x0b5f, B:357:0x0b6a, B:359:0x0bad, B:360:0x0bba, B:362:0x0bc9, B:366:0x0be3, B:368:0x0bfc, B:354:0x0b38, B:346:0x0abd, B:348:0x0ac9, B:349:0x0acd, B:369:0x0c14, B:370:0x0c2c, B:373:0x0c34, B:374:0x0c39, B:375:0x0c49, B:377:0x0c63, B:378:0x0c7e, B:379:0x0c87, B:384:0x0cab, B:383:0x0c98, B:319:0x0a34, B:321:0x0a3a, B:323:0x0a44, B:325:0x0a4b, B:331:0x0a5b, B:333:0x0a62, B:335:0x0a81, B:337:0x0a88, B:336:0x0a85, B:332:0x0a5f, B:324:0x0a48, B:183:0x0593, B:185:0x0599, B:387:0x0cbd), top: B:401:0x000e, inners: #0, #1, #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:286:0x08f0 A[Catch: all -> 0x0ccf, TryCatch #4 {all -> 0x0ccf, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:154:0x04ee, B:24:0x00f7, B:26:0x0105, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:97:0x0383, B:98:0x038f, B:101:0x0399, B:107:0x03bc, B:104:0x03ab, B:129:0x043b, B:131:0x0447, B:134:0x045c, B:136:0x046d, B:138:0x0479, B:153:0x04da, B:141:0x0489, B:143:0x0495, B:146:0x04aa, B:148:0x04bb, B:150:0x04c7, B:111:0x03c4, B:113:0x03d0, B:115:0x03dc, B:127:0x0421, B:119:0x03f9, B:122:0x040b, B:124:0x0411, B:126:0x041b, B:54:0x01c0, B:57:0x01ca, B:59:0x01d8, B:63:0x021f, B:60:0x01f5, B:62:0x0206, B:67:0x022e, B:69:0x025a, B:70:0x0284, B:72:0x02ba, B:74:0x02c0, B:77:0x02cc, B:79:0x0302, B:80:0x031d, B:82:0x0323, B:84:0x0331, B:88:0x0344, B:85:0x0339, B:91:0x034b, B:94:0x0352, B:95:0x036a, B:157:0x0506, B:159:0x0514, B:161:0x051f, B:172:0x0551, B:162:0x0527, B:164:0x0532, B:166:0x0538, B:169:0x0544, B:171:0x054c, B:173:0x0554, B:174:0x0560, B:177:0x0568, B:179:0x057a, B:180:0x0586, B:182:0x058e, B:186:0x05b3, B:188:0x05d8, B:190:0x05e9, B:192:0x05ef, B:194:0x05fb, B:195:0x062c, B:197:0x0632, B:199:0x0640, B:200:0x0644, B:201:0x0647, B:202:0x064a, B:203:0x0658, B:205:0x065e, B:207:0x066e, B:208:0x0675, B:210:0x0681, B:211:0x0688, B:212:0x068b, B:214:0x06cb, B:215:0x06de, B:217:0x06e4, B:220:0x06fe, B:222:0x0719, B:224:0x0732, B:226:0x0737, B:228:0x073b, B:230:0x073f, B:232:0x0749, B:233:0x0753, B:235:0x0757, B:237:0x075d, B:238:0x076b, B:239:0x0774, B:307:0x09c9, B:241:0x0780, B:243:0x0797, B:249:0x07b3, B:251:0x07d7, B:252:0x07df, B:254:0x07e5, B:256:0x07f7, B:263:0x0820, B:264:0x0843, B:266:0x084f, B:268:0x0864, B:270:0x08a5, B:274:0x08bd, B:276:0x08c4, B:278:0x08d3, B:280:0x08d7, B:282:0x08db, B:284:0x08df, B:285:0x08eb, B:286:0x08f0, B:288:0x08f6, B:290:0x0912, B:291:0x0917, B:306:0x09c6, B:292:0x0931, B:294:0x0939, B:298:0x0960, B:300:0x098e, B:301:0x0998, B:302:0x09aa, B:304:0x09b6, B:295:0x0946, B:261:0x080b, B:247:0x079e, B:308:0x09d4, B:310:0x09e1, B:311:0x09e7, B:312:0x09ef, B:314:0x09f5, B:316:0x0a0b, B:318:0x0a1c, B:338:0x0a90, B:340:0x0a96, B:342:0x0aae, B:345:0x0ab5, B:350:0x0ae4, B:352:0x0b26, B:355:0x0b5b, B:356:0x0b5f, B:357:0x0b6a, B:359:0x0bad, B:360:0x0bba, B:362:0x0bc9, B:366:0x0be3, B:368:0x0bfc, B:354:0x0b38, B:346:0x0abd, B:348:0x0ac9, B:349:0x0acd, B:369:0x0c14, B:370:0x0c2c, B:373:0x0c34, B:374:0x0c39, B:375:0x0c49, B:377:0x0c63, B:378:0x0c7e, B:379:0x0c87, B:384:0x0cab, B:383:0x0c98, B:319:0x0a34, B:321:0x0a3a, B:323:0x0a44, B:325:0x0a4b, B:331:0x0a5b, B:333:0x0a62, B:335:0x0a81, B:337:0x0a88, B:336:0x0a85, B:332:0x0a5f, B:324:0x0a48, B:183:0x0593, B:185:0x0599, B:387:0x0cbd), top: B:401:0x000e, inners: #0, #1, #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:352:0x0b26 A[Catch: all -> 0x0ccf, TryCatch #4 {all -> 0x0ccf, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:154:0x04ee, B:24:0x00f7, B:26:0x0105, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:97:0x0383, B:98:0x038f, B:101:0x0399, B:107:0x03bc, B:104:0x03ab, B:129:0x043b, B:131:0x0447, B:134:0x045c, B:136:0x046d, B:138:0x0479, B:153:0x04da, B:141:0x0489, B:143:0x0495, B:146:0x04aa, B:148:0x04bb, B:150:0x04c7, B:111:0x03c4, B:113:0x03d0, B:115:0x03dc, B:127:0x0421, B:119:0x03f9, B:122:0x040b, B:124:0x0411, B:126:0x041b, B:54:0x01c0, B:57:0x01ca, B:59:0x01d8, B:63:0x021f, B:60:0x01f5, B:62:0x0206, B:67:0x022e, B:69:0x025a, B:70:0x0284, B:72:0x02ba, B:74:0x02c0, B:77:0x02cc, B:79:0x0302, B:80:0x031d, B:82:0x0323, B:84:0x0331, B:88:0x0344, B:85:0x0339, B:91:0x034b, B:94:0x0352, B:95:0x036a, B:157:0x0506, B:159:0x0514, B:161:0x051f, B:172:0x0551, B:162:0x0527, B:164:0x0532, B:166:0x0538, B:169:0x0544, B:171:0x054c, B:173:0x0554, B:174:0x0560, B:177:0x0568, B:179:0x057a, B:180:0x0586, B:182:0x058e, B:186:0x05b3, B:188:0x05d8, B:190:0x05e9, B:192:0x05ef, B:194:0x05fb, B:195:0x062c, B:197:0x0632, B:199:0x0640, B:200:0x0644, B:201:0x0647, B:202:0x064a, B:203:0x0658, B:205:0x065e, B:207:0x066e, B:208:0x0675, B:210:0x0681, B:211:0x0688, B:212:0x068b, B:214:0x06cb, B:215:0x06de, B:217:0x06e4, B:220:0x06fe, B:222:0x0719, B:224:0x0732, B:226:0x0737, B:228:0x073b, B:230:0x073f, B:232:0x0749, B:233:0x0753, B:235:0x0757, B:237:0x075d, B:238:0x076b, B:239:0x0774, B:307:0x09c9, B:241:0x0780, B:243:0x0797, B:249:0x07b3, B:251:0x07d7, B:252:0x07df, B:254:0x07e5, B:256:0x07f7, B:263:0x0820, B:264:0x0843, B:266:0x084f, B:268:0x0864, B:270:0x08a5, B:274:0x08bd, B:276:0x08c4, B:278:0x08d3, B:280:0x08d7, B:282:0x08db, B:284:0x08df, B:285:0x08eb, B:286:0x08f0, B:288:0x08f6, B:290:0x0912, B:291:0x0917, B:306:0x09c6, B:292:0x0931, B:294:0x0939, B:298:0x0960, B:300:0x098e, B:301:0x0998, B:302:0x09aa, B:304:0x09b6, B:295:0x0946, B:261:0x080b, B:247:0x079e, B:308:0x09d4, B:310:0x09e1, B:311:0x09e7, B:312:0x09ef, B:314:0x09f5, B:316:0x0a0b, B:318:0x0a1c, B:338:0x0a90, B:340:0x0a96, B:342:0x0aae, B:345:0x0ab5, B:350:0x0ae4, B:352:0x0b26, B:355:0x0b5b, B:356:0x0b5f, B:357:0x0b6a, B:359:0x0bad, B:360:0x0bba, B:362:0x0bc9, B:366:0x0be3, B:368:0x0bfc, B:354:0x0b38, B:346:0x0abd, B:348:0x0ac9, B:349:0x0acd, B:369:0x0c14, B:370:0x0c2c, B:373:0x0c34, B:374:0x0c39, B:375:0x0c49, B:377:0x0c63, B:378:0x0c7e, B:379:0x0c87, B:384:0x0cab, B:383:0x0c98, B:319:0x0a34, B:321:0x0a3a, B:323:0x0a44, B:325:0x0a4b, B:331:0x0a5b, B:333:0x0a62, B:335:0x0a81, B:337:0x0a88, B:336:0x0a85, B:332:0x0a5f, B:324:0x0a48, B:183:0x0593, B:185:0x0599, B:387:0x0cbd), top: B:401:0x000e, inners: #0, #1, #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:359:0x0bad A[Catch: all -> 0x0ccf, TRY_LEAVE, TryCatch #4 {all -> 0x0ccf, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:154:0x04ee, B:24:0x00f7, B:26:0x0105, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:97:0x0383, B:98:0x038f, B:101:0x0399, B:107:0x03bc, B:104:0x03ab, B:129:0x043b, B:131:0x0447, B:134:0x045c, B:136:0x046d, B:138:0x0479, B:153:0x04da, B:141:0x0489, B:143:0x0495, B:146:0x04aa, B:148:0x04bb, B:150:0x04c7, B:111:0x03c4, B:113:0x03d0, B:115:0x03dc, B:127:0x0421, B:119:0x03f9, B:122:0x040b, B:124:0x0411, B:126:0x041b, B:54:0x01c0, B:57:0x01ca, B:59:0x01d8, B:63:0x021f, B:60:0x01f5, B:62:0x0206, B:67:0x022e, B:69:0x025a, B:70:0x0284, B:72:0x02ba, B:74:0x02c0, B:77:0x02cc, B:79:0x0302, B:80:0x031d, B:82:0x0323, B:84:0x0331, B:88:0x0344, B:85:0x0339, B:91:0x034b, B:94:0x0352, B:95:0x036a, B:157:0x0506, B:159:0x0514, B:161:0x051f, B:172:0x0551, B:162:0x0527, B:164:0x0532, B:166:0x0538, B:169:0x0544, B:171:0x054c, B:173:0x0554, B:174:0x0560, B:177:0x0568, B:179:0x057a, B:180:0x0586, B:182:0x058e, B:186:0x05b3, B:188:0x05d8, B:190:0x05e9, B:192:0x05ef, B:194:0x05fb, B:195:0x062c, B:197:0x0632, B:199:0x0640, B:200:0x0644, B:201:0x0647, B:202:0x064a, B:203:0x0658, B:205:0x065e, B:207:0x066e, B:208:0x0675, B:210:0x0681, B:211:0x0688, B:212:0x068b, B:214:0x06cb, B:215:0x06de, B:217:0x06e4, B:220:0x06fe, B:222:0x0719, B:224:0x0732, B:226:0x0737, B:228:0x073b, B:230:0x073f, B:232:0x0749, B:233:0x0753, B:235:0x0757, B:237:0x075d, B:238:0x076b, B:239:0x0774, B:307:0x09c9, B:241:0x0780, B:243:0x0797, B:249:0x07b3, B:251:0x07d7, B:252:0x07df, B:254:0x07e5, B:256:0x07f7, B:263:0x0820, B:264:0x0843, B:266:0x084f, B:268:0x0864, B:270:0x08a5, B:274:0x08bd, B:276:0x08c4, B:278:0x08d3, B:280:0x08d7, B:282:0x08db, B:284:0x08df, B:285:0x08eb, B:286:0x08f0, B:288:0x08f6, B:290:0x0912, B:291:0x0917, B:306:0x09c6, B:292:0x0931, B:294:0x0939, B:298:0x0960, B:300:0x098e, B:301:0x0998, B:302:0x09aa, B:304:0x09b6, B:295:0x0946, B:261:0x080b, B:247:0x079e, B:308:0x09d4, B:310:0x09e1, B:311:0x09e7, B:312:0x09ef, B:314:0x09f5, B:316:0x0a0b, B:318:0x0a1c, B:338:0x0a90, B:340:0x0a96, B:342:0x0aae, B:345:0x0ab5, B:350:0x0ae4, B:352:0x0b26, B:355:0x0b5b, B:356:0x0b5f, B:357:0x0b6a, B:359:0x0bad, B:360:0x0bba, B:362:0x0bc9, B:366:0x0be3, B:368:0x0bfc, B:354:0x0b38, B:346:0x0abd, B:348:0x0ac9, B:349:0x0acd, B:369:0x0c14, B:370:0x0c2c, B:373:0x0c34, B:374:0x0c39, B:375:0x0c49, B:377:0x0c63, B:378:0x0c7e, B:379:0x0c87, B:384:0x0cab, B:383:0x0c98, B:319:0x0a34, B:321:0x0a3a, B:323:0x0a44, B:325:0x0a4b, B:331:0x0a5b, B:333:0x0a62, B:335:0x0a81, B:337:0x0a88, B:336:0x0a85, B:332:0x0a5f, B:324:0x0a48, B:183:0x0593, B:185:0x0599, B:387:0x0cbd), top: B:401:0x000e, inners: #0, #1, #2, #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:362:0x0bc9 A[Catch: SQLiteException -> 0x0be1, all -> 0x0ccf, TRY_LEAVE, TryCatch #1 {SQLiteException -> 0x0be1, blocks: (B:360:0x0bba, B:362:0x0bc9), top: B:395:0x0bba, outer: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0383 A[Catch: all -> 0x0ccf, TryCatch #4 {all -> 0x0ccf, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:154:0x04ee, B:24:0x00f7, B:26:0x0105, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:97:0x0383, B:98:0x038f, B:101:0x0399, B:107:0x03bc, B:104:0x03ab, B:129:0x043b, B:131:0x0447, B:134:0x045c, B:136:0x046d, B:138:0x0479, B:153:0x04da, B:141:0x0489, B:143:0x0495, B:146:0x04aa, B:148:0x04bb, B:150:0x04c7, B:111:0x03c4, B:113:0x03d0, B:115:0x03dc, B:127:0x0421, B:119:0x03f9, B:122:0x040b, B:124:0x0411, B:126:0x041b, B:54:0x01c0, B:57:0x01ca, B:59:0x01d8, B:63:0x021f, B:60:0x01f5, B:62:0x0206, B:67:0x022e, B:69:0x025a, B:70:0x0284, B:72:0x02ba, B:74:0x02c0, B:77:0x02cc, B:79:0x0302, B:80:0x031d, B:82:0x0323, B:84:0x0331, B:88:0x0344, B:85:0x0339, B:91:0x034b, B:94:0x0352, B:95:0x036a, B:157:0x0506, B:159:0x0514, B:161:0x051f, B:172:0x0551, B:162:0x0527, B:164:0x0532, B:166:0x0538, B:169:0x0544, B:171:0x054c, B:173:0x0554, B:174:0x0560, B:177:0x0568, B:179:0x057a, B:180:0x0586, B:182:0x058e, B:186:0x05b3, B:188:0x05d8, B:190:0x05e9, B:192:0x05ef, B:194:0x05fb, B:195:0x062c, B:197:0x0632, B:199:0x0640, B:200:0x0644, B:201:0x0647, B:202:0x064a, B:203:0x0658, B:205:0x065e, B:207:0x066e, B:208:0x0675, B:210:0x0681, B:211:0x0688, B:212:0x068b, B:214:0x06cb, B:215:0x06de, B:217:0x06e4, B:220:0x06fe, B:222:0x0719, B:224:0x0732, B:226:0x0737, B:228:0x073b, B:230:0x073f, B:232:0x0749, B:233:0x0753, B:235:0x0757, B:237:0x075d, B:238:0x076b, B:239:0x0774, B:307:0x09c9, B:241:0x0780, B:243:0x0797, B:249:0x07b3, B:251:0x07d7, B:252:0x07df, B:254:0x07e5, B:256:0x07f7, B:263:0x0820, B:264:0x0843, B:266:0x084f, B:268:0x0864, B:270:0x08a5, B:274:0x08bd, B:276:0x08c4, B:278:0x08d3, B:280:0x08d7, B:282:0x08db, B:284:0x08df, B:285:0x08eb, B:286:0x08f0, B:288:0x08f6, B:290:0x0912, B:291:0x0917, B:306:0x09c6, B:292:0x0931, B:294:0x0939, B:298:0x0960, B:300:0x098e, B:301:0x0998, B:302:0x09aa, B:304:0x09b6, B:295:0x0946, B:261:0x080b, B:247:0x079e, B:308:0x09d4, B:310:0x09e1, B:311:0x09e7, B:312:0x09ef, B:314:0x09f5, B:316:0x0a0b, B:318:0x0a1c, B:338:0x0a90, B:340:0x0a96, B:342:0x0aae, B:345:0x0ab5, B:350:0x0ae4, B:352:0x0b26, B:355:0x0b5b, B:356:0x0b5f, B:357:0x0b6a, B:359:0x0bad, B:360:0x0bba, B:362:0x0bc9, B:366:0x0be3, B:368:0x0bfc, B:354:0x0b38, B:346:0x0abd, B:348:0x0ac9, B:349:0x0acd, B:369:0x0c14, B:370:0x0c2c, B:373:0x0c34, B:374:0x0c39, B:375:0x0c49, B:377:0x0c63, B:378:0x0c7e, B:379:0x0c87, B:384:0x0cab, B:383:0x0c98, B:319:0x0a34, B:321:0x0a3a, B:323:0x0a44, B:325:0x0a4b, B:331:0x0a5b, B:333:0x0a62, B:335:0x0a81, B:337:0x0a88, B:336:0x0a85, B:332:0x0a5f, B:324:0x0a48, B:183:0x0593, B:185:0x0599, B:387:0x0cbd), top: B:401:0x000e, inners: #0, #1, #2, #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zzah(java.lang.String r41, long r42) {
        /*
            Method dump skipped, instructions count: 3290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzlf.zzah(java.lang.String, long):boolean");
    }

    private final boolean zzai() {
        zzaB().zzg();
        zzB();
        zzam zzamVar = this.zze;
        zzal(zzamVar);
        if (zzamVar.zzF()) {
            return true;
        }
        zzam zzamVar2 = this.zze;
        zzal(zzamVar2);
        return !TextUtils.isEmpty(zzamVar2.zzr());
    }

    private final boolean zzaj(com.google.android.gms.internal.measurement.zzfs zzfsVar, com.google.android.gms.internal.measurement.zzfs zzfsVar2) {
        Preconditions.checkArgument("_e".equals(zzfsVar.zzo()));
        zzal(this.zzi);
        com.google.android.gms.internal.measurement.zzfx zzB = zzlh.zzB((com.google.android.gms.internal.measurement.zzft) zzfsVar.zzaD(), "_sc");
        String zzh = zzB == null ? null : zzB.zzh();
        zzal(this.zzi);
        com.google.android.gms.internal.measurement.zzfx zzB2 = zzlh.zzB((com.google.android.gms.internal.measurement.zzft) zzfsVar2.zzaD(), "_pc");
        String zzh2 = zzB2 != null ? zzB2.zzh() : null;
        if (zzh2 == null || !zzh2.equals(zzh)) {
            return false;
        }
        Preconditions.checkArgument("_e".equals(zzfsVar.zzo()));
        zzal(this.zzi);
        com.google.android.gms.internal.measurement.zzfx zzB3 = zzlh.zzB((com.google.android.gms.internal.measurement.zzft) zzfsVar.zzaD(), "_et");
        if (zzB3 == null || !zzB3.zzw() || zzB3.zzd() <= 0) {
            return true;
        }
        long zzd = zzB3.zzd();
        zzal(this.zzi);
        com.google.android.gms.internal.measurement.zzfx zzB4 = zzlh.zzB((com.google.android.gms.internal.measurement.zzft) zzfsVar2.zzaD(), "_et");
        if (zzB4 != null && zzB4.zzd() > 0) {
            zzd += zzB4.zzd();
        }
        zzal(this.zzi);
        zzlh.zzz(zzfsVar2, "_et", Long.valueOf(zzd));
        zzal(this.zzi);
        zzlh.zzz(zzfsVar, "_fr", 1L);
        return true;
    }

    private static final boolean zzak(zzq zzqVar) {
        return (TextUtils.isEmpty(zzqVar.zzb) && TextUtils.isEmpty(zzqVar.zzq)) ? false : true;
    }

    private static final zzks zzal(zzks zzksVar) {
        if (zzksVar != null) {
            if (zzksVar.zzY()) {
                return zzksVar;
            }
            throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(String.valueOf(zzksVar.getClass()))));
        }
        throw new IllegalStateException("Upload Component not created");
    }

    public static zzlf zzt(Context context) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (zzb == null) {
            synchronized (zzlf.class) {
                if (zzb == null) {
                    zzb = new zzlf((zzlg) Preconditions.checkNotNull(new zzlg(context)), null);
                }
            }
        }
        return zzb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zzy(zzlf zzlfVar, zzlg zzlgVar) {
        zzlfVar.zzaB().zzg();
        zzlfVar.zzm = new zzfl(zzlfVar);
        zzam zzamVar = new zzam(zzlfVar);
        zzamVar.zzX();
        zzlfVar.zze = zzamVar;
        zzlfVar.zzg().zzq((zzaf) Preconditions.checkNotNull(zzlfVar.zzc));
        zzjz zzjzVar = new zzjz(zzlfVar);
        zzjzVar.zzX();
        zzlfVar.zzk = zzjzVar;
        zzaa zzaaVar = new zzaa(zzlfVar);
        zzaaVar.zzX();
        zzlfVar.zzh = zzaaVar;
        zzin zzinVar = new zzin(zzlfVar);
        zzinVar.zzX();
        zzlfVar.zzj = zzinVar;
        zzkq zzkqVar = new zzkq(zzlfVar);
        zzkqVar.zzX();
        zzlfVar.zzg = zzkqVar;
        zzlfVar.zzf = new zzfb(zzlfVar);
        if (zzlfVar.zzr != zzlfVar.zzs) {
            zzlfVar.zzaA().zzd().zzc("Not all upload components initialized", Integer.valueOf(zzlfVar.zzr), Integer.valueOf(zzlfVar.zzs));
        }
        zzlfVar.zzo = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzA() {
        zzaB().zzg();
        zzB();
        if (this.zzp) {
            return;
        }
        this.zzp = true;
        if (zzZ()) {
            FileChannel fileChannel = this.zzx;
            zzaB().zzg();
            int i = 0;
            if (fileChannel == null || !fileChannel.isOpen()) {
                zzaA().zzd().zza("Bad channel to read from");
            } else {
                ByteBuffer allocate = ByteBuffer.allocate(4);
                try {
                    fileChannel.position(0L);
                    int read = fileChannel.read(allocate);
                    if (read == 4) {
                        allocate.flip();
                        i = allocate.getInt();
                    } else if (read != -1) {
                        zzaA().zzk().zzb("Unexpected data length. Bytes read", Integer.valueOf(read));
                    }
                } catch (IOException e) {
                    zzaA().zzd().zzb("Failed to read from channel", e);
                }
            }
            int zzi = this.zzn.zzh().zzi();
            zzaB().zzg();
            if (i > zzi) {
                zzaA().zzd().zzc("Panic: can't downgrade version. Previous, current version", Integer.valueOf(i), Integer.valueOf(zzi));
            } else if (i < zzi) {
                FileChannel fileChannel2 = this.zzx;
                zzaB().zzg();
                if (fileChannel2 == null || !fileChannel2.isOpen()) {
                    zzaA().zzd().zza("Bad channel to read from");
                } else {
                    ByteBuffer allocate2 = ByteBuffer.allocate(4);
                    allocate2.putInt(zzi);
                    allocate2.flip();
                    try {
                        fileChannel2.truncate(0L);
                        fileChannel2.write(allocate2);
                        fileChannel2.force(true);
                        if (fileChannel2.size() != 4) {
                            zzaA().zzd().zzb("Error writing to channel. Bytes written", Long.valueOf(fileChannel2.size()));
                        }
                        zzaA().zzj().zzc("Storage version upgraded. Previous, current version", Integer.valueOf(i), Integer.valueOf(zzi));
                        return;
                    } catch (IOException e2) {
                        zzaA().zzd().zzb("Failed to write to channel", e2);
                    }
                }
                zzaA().zzd().zzc("Storage version upgrade failed. Previous, current version", Integer.valueOf(i), Integer.valueOf(zzi));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzB() {
        if (!this.zzo) {
            throw new IllegalStateException("UploadController is not initialized");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzC(String str, com.google.android.gms.internal.measurement.zzgc zzgcVar) {
        int zza;
        int indexOf;
        zzfu zzfuVar = this.zzc;
        zzal(zzfuVar);
        Set zzk = zzfuVar.zzk(str);
        if (zzk != null) {
            zzgcVar.zzi(zzk);
        }
        zzfu zzfuVar2 = this.zzc;
        zzal(zzfuVar2);
        if (zzfuVar2.zzv(str)) {
            zzgcVar.zzp();
        }
        zzfu zzfuVar3 = this.zzc;
        zzal(zzfuVar3);
        if (zzfuVar3.zzy(str)) {
            if (zzg().zzs(str, zzeg.zzar)) {
                String zzas = zzgcVar.zzas();
                if (!TextUtils.isEmpty(zzas) && (indexOf = zzas.indexOf(".")) != -1) {
                    zzgcVar.zzY(zzas.substring(0, indexOf));
                }
            } else {
                zzgcVar.zzu();
            }
        }
        zzfu zzfuVar4 = this.zzc;
        zzal(zzfuVar4);
        if (zzfuVar4.zzz(str) && (zza = zzlh.zza(zzgcVar, "_id")) != -1) {
            zzgcVar.zzB(zza);
        }
        zzfu zzfuVar5 = this.zzc;
        zzal(zzfuVar5);
        if (zzfuVar5.zzx(str)) {
            zzgcVar.zzq();
        }
        zzfu zzfuVar6 = this.zzc;
        zzal(zzfuVar6);
        if (zzfuVar6.zzu(str)) {
            zzgcVar.zzn();
            zzle zzleVar = (zzle) this.zzC.get(str);
            if (zzleVar == null || zzleVar.zzb + zzg().zzi(str, zzeg.zzT) < zzax().elapsedRealtime()) {
                zzleVar = new zzle(this);
                this.zzC.put(str, zzleVar);
            }
            zzgcVar.zzR(zzleVar.zza);
        }
        zzfu zzfuVar7 = this.zzc;
        zzal(zzfuVar7);
        if (zzfuVar7.zzw(str)) {
            zzgcVar.zzy();
        }
    }

    final void zzD(zzh zzhVar) {
        zzaB().zzg();
        if (!TextUtils.isEmpty(zzhVar.zzz()) || !TextUtils.isEmpty(zzhVar.zzs())) {
            zzku zzkuVar = this.zzl;
            Uri.Builder builder = new Uri.Builder();
            String zzz = zzhVar.zzz();
            if (TextUtils.isEmpty(zzz)) {
                zzz = zzhVar.zzs();
            }
            ArrayMap arrayMap = null;
            Uri.Builder appendQueryParameter = builder.scheme((String) zzeg.zze.zza(null)).encodedAuthority((String) zzeg.zzf.zza(null)).path("config/app/".concat(String.valueOf(zzz))).appendQueryParameter("platform", "android");
            zzkuVar.zzt.zzf().zzh();
            appendQueryParameter.appendQueryParameter("gmp_version", String.valueOf(76003L)).appendQueryParameter("runtime_version", "0");
            String uri = builder.build().toString();
            try {
                String str = (String) Preconditions.checkNotNull(zzhVar.zzu());
                URL url = new URL(uri);
                zzaA().zzj().zzb("Fetching remote configuration", str);
                zzfu zzfuVar = this.zzc;
                zzal(zzfuVar);
                com.google.android.gms.internal.measurement.zzff zze = zzfuVar.zze(str);
                zzfu zzfuVar2 = this.zzc;
                zzal(zzfuVar2);
                String zzh = zzfuVar2.zzh(str);
                if (zze != null) {
                    if (!TextUtils.isEmpty(zzh)) {
                        ArrayMap arrayMap2 = new ArrayMap();
                        arrayMap2.put("If-Modified-Since", zzh);
                        arrayMap = arrayMap2;
                    }
                    zzfu zzfuVar3 = this.zzc;
                    zzal(zzfuVar3);
                    String zzf = zzfuVar3.zzf(str);
                    if (!TextUtils.isEmpty(zzf)) {
                        if (arrayMap == null) {
                            arrayMap = new ArrayMap();
                        }
                        arrayMap.put("If-None-Match", zzf);
                    }
                }
                this.zzt = true;
                zzez zzezVar = this.zzd;
                zzal(zzezVar);
                zzkx zzkxVar = new zzkx(this);
                zzezVar.zzg();
                zzezVar.zzW();
                Preconditions.checkNotNull(url);
                Preconditions.checkNotNull(zzkxVar);
                zzezVar.zzt.zzaB().zzo(new zzey(zzezVar, str, url, null, arrayMap, zzkxVar));
                return;
            } catch (MalformedURLException unused) {
                zzaA().zzd().zzc("Failed to parse config URL. Not fetching. appId", zzet.zzn(zzhVar.zzu()), uri);
                return;
            }
        }
        zzI((String) Preconditions.checkNotNull(zzhVar.zzu()), ComposerKt.providerMapsKey, null, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzE(zzaw zzawVar, zzq zzqVar) {
        zzaw zzawVar2;
        List<zzac> zzt;
        List<zzac> zzt2;
        List<zzac> zzt3;
        String str;
        Preconditions.checkNotNull(zzqVar);
        Preconditions.checkNotEmpty(zzqVar.zza);
        zzaB().zzg();
        zzB();
        String str2 = zzqVar.zza;
        long j = zzawVar.zzd;
        zzeu zzb2 = zzeu.zzb(zzawVar);
        zzaB().zzg();
        zzip zzipVar = null;
        if (this.zzD != null && (str = this.zzE) != null && str.equals(str2)) {
            zzipVar = this.zzD;
        }
        zzln.zzK(zzipVar, zzb2.zzd, false);
        zzaw zza = zzb2.zza();
        zzal(this.zzi);
        if (zzlh.zzA(zza, zzqVar)) {
            if (!zzqVar.zzh) {
                zzd(zzqVar);
                return;
            }
            List list = zzqVar.zzt;
            if (list == null) {
                zzawVar2 = zza;
            } else if (list.contains(zza.zza)) {
                Bundle zzc = zza.zzb.zzc();
                zzc.putLong("ga_safelisted", 1L);
                zzawVar2 = new zzaw(zza.zza, new zzau(zzc), zza.zzc, zza.zzd);
            } else {
                zzaA().zzc().zzd("Dropping non-safelisted event. appId, event name, origin", str2, zza.zza, zza.zzc);
                return;
            }
            zzam zzamVar = this.zze;
            zzal(zzamVar);
            zzamVar.zzw();
            try {
                zzam zzamVar2 = this.zze;
                zzal(zzamVar2);
                Preconditions.checkNotEmpty(str2);
                zzamVar2.zzg();
                zzamVar2.zzW();
                int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
                if (i < 0) {
                    zzamVar2.zzt.zzaA().zzk().zzc("Invalid time querying timed out conditional properties", zzet.zzn(str2), Long.valueOf(j));
                    zzt = Collections.emptyList();
                } else {
                    zzt = zzamVar2.zzt("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[]{str2, String.valueOf(j)});
                }
                for (zzac zzacVar : zzt) {
                    if (zzacVar != null) {
                        zzaA().zzj().zzd("User property timed out", zzacVar.zza, this.zzn.zzj().zzf(zzacVar.zzc.zzb), zzacVar.zzc.zza());
                        zzaw zzawVar3 = zzacVar.zzg;
                        if (zzawVar3 != null) {
                            zzY(new zzaw(zzawVar3, j), zzqVar);
                        }
                        zzam zzamVar3 = this.zze;
                        zzal(zzamVar3);
                        zzamVar3.zza(str2, zzacVar.zzc.zzb);
                    }
                }
                zzam zzamVar4 = this.zze;
                zzal(zzamVar4);
                Preconditions.checkNotEmpty(str2);
                zzamVar4.zzg();
                zzamVar4.zzW();
                if (i < 0) {
                    zzamVar4.zzt.zzaA().zzk().zzc("Invalid time querying expired conditional properties", zzet.zzn(str2), Long.valueOf(j));
                    zzt2 = Collections.emptyList();
                } else {
                    zzt2 = zzamVar4.zzt("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[]{str2, String.valueOf(j)});
                }
                ArrayList<zzaw> arrayList = new ArrayList(zzt2.size());
                for (zzac zzacVar2 : zzt2) {
                    if (zzacVar2 != null) {
                        zzaA().zzj().zzd("User property expired", zzacVar2.zza, this.zzn.zzj().zzf(zzacVar2.zzc.zzb), zzacVar2.zzc.zza());
                        zzam zzamVar5 = this.zze;
                        zzal(zzamVar5);
                        zzamVar5.zzA(str2, zzacVar2.zzc.zzb);
                        zzaw zzawVar4 = zzacVar2.zzk;
                        if (zzawVar4 != null) {
                            arrayList.add(zzawVar4);
                        }
                        zzam zzamVar6 = this.zze;
                        zzal(zzamVar6);
                        zzamVar6.zza(str2, zzacVar2.zzc.zzb);
                    }
                }
                for (zzaw zzawVar5 : arrayList) {
                    zzY(new zzaw(zzawVar5, j), zzqVar);
                }
                zzam zzamVar7 = this.zze;
                zzal(zzamVar7);
                String str3 = zzawVar2.zza;
                Preconditions.checkNotEmpty(str2);
                Preconditions.checkNotEmpty(str3);
                zzamVar7.zzg();
                zzamVar7.zzW();
                if (i < 0) {
                    zzamVar7.zzt.zzaA().zzk().zzd("Invalid time querying triggered conditional properties", zzet.zzn(str2), zzamVar7.zzt.zzj().zzd(str3), Long.valueOf(j));
                    zzt3 = Collections.emptyList();
                } else {
                    zzt3 = zzamVar7.zzt("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[]{str2, str3, String.valueOf(j)});
                }
                ArrayList<zzaw> arrayList2 = new ArrayList(zzt3.size());
                for (zzac zzacVar3 : zzt3) {
                    if (zzacVar3 != null) {
                        zzli zzliVar = zzacVar3.zzc;
                        zzlk zzlkVar = new zzlk((String) Preconditions.checkNotNull(zzacVar3.zza), zzacVar3.zzb, zzliVar.zzb, j, Preconditions.checkNotNull(zzliVar.zza()));
                        zzam zzamVar8 = this.zze;
                        zzal(zzamVar8);
                        if (zzamVar8.zzL(zzlkVar)) {
                            zzaA().zzj().zzd("User property triggered", zzacVar3.zza, this.zzn.zzj().zzf(zzlkVar.zzc), zzlkVar.zze);
                        } else {
                            zzaA().zzd().zzd("Too many active user properties, ignoring", zzet.zzn(zzacVar3.zza), this.zzn.zzj().zzf(zzlkVar.zzc), zzlkVar.zze);
                        }
                        zzaw zzawVar6 = zzacVar3.zzi;
                        if (zzawVar6 != null) {
                            arrayList2.add(zzawVar6);
                        }
                        zzacVar3.zzc = new zzli(zzlkVar);
                        zzacVar3.zze = true;
                        zzam zzamVar9 = this.zze;
                        zzal(zzamVar9);
                        zzamVar9.zzK(zzacVar3);
                    }
                }
                zzY(zzawVar2, zzqVar);
                for (zzaw zzawVar7 : arrayList2) {
                    zzY(new zzaw(zzawVar7, j), zzqVar);
                }
                zzam zzamVar10 = this.zze;
                zzal(zzamVar10);
                zzamVar10.zzC();
            } finally {
                zzam zzamVar11 = this.zze;
                zzal(zzamVar11);
                zzamVar11.zzx();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzF(zzaw zzawVar, String str) {
        zzam zzamVar = this.zze;
        zzal(zzamVar);
        zzh zzj = zzamVar.zzj(str);
        if (zzj == null || TextUtils.isEmpty(zzj.zzx())) {
            zzaA().zzc().zzb("No app data available; dropping event", str);
            return;
        }
        Boolean zzad = zzad(zzj);
        if (zzad == null) {
            if (!"_ui".equals(zzawVar.zza)) {
                zzaA().zzk().zzb("Could not find package. appId", zzet.zzn(str));
            }
        } else if (!zzad.booleanValue()) {
            zzaA().zzd().zzb("App version does not match; dropping event. appId", zzet.zzn(str));
            return;
        }
        String zzz = zzj.zzz();
        String zzx = zzj.zzx();
        long zzb2 = zzj.zzb();
        String zzw = zzj.zzw();
        long zzm = zzj.zzm();
        long zzj2 = zzj.zzj();
        boolean zzal = zzj.zzal();
        String zzy = zzj.zzy();
        zzj.zza();
        zzG(zzawVar, new zzq(str, zzz, zzx, zzb2, zzw, zzm, zzj2, (String) null, zzal, false, zzy, 0L, 0L, 0, zzj.zzak(), false, zzj.zzs(), zzj.zzr(), zzj.zzk(), zzj.zzD(), (String) null, zzh(str).zzh(), "", (String) null, zzj.zzan(), zzj.zzq()));
    }

    final void zzG(zzaw zzawVar, zzq zzqVar) {
        Preconditions.checkNotEmpty(zzqVar.zza);
        zzeu zzb2 = zzeu.zzb(zzawVar);
        zzln zzv = zzv();
        Bundle bundle = zzb2.zzd;
        zzam zzamVar = this.zze;
        zzal(zzamVar);
        zzv.zzL(bundle, zzamVar.zzi(zzqVar.zza));
        zzv().zzN(zzb2, zzg().zzd(zzqVar.zza));
        zzaw zza = zzb2.zza();
        if ("_cmp".equals(zza.zza) && "referrer API v2".equals(zza.zzb.zzg("_cis"))) {
            String zzg = zza.zzb.zzg("gclid");
            if (!TextUtils.isEmpty(zzg)) {
                zzW(new zzli("_lgclid", zza.zzd, zzg, DebugKt.DEBUG_PROPERTY_VALUE_AUTO), zzqVar);
            }
        }
        zzE(zza, zzqVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzH() {
        this.zzs++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0049 A[Catch: all -> 0x0176, TryCatch #2 {all -> 0x0180, blocks: (B:4:0x0010, B:5:0x0012, B:62:0x0168, B:6:0x002c, B:16:0x0049, B:61:0x0160, B:21:0x0063, B:26:0x00b5, B:25:0x00a6, B:29:0x00bd, B:32:0x00c9, B:34:0x00cf, B:37:0x00d9, B:40:0x00e5, B:42:0x00eb, B:47:0x00f8, B:51:0x0114, B:53:0x0129, B:55:0x0148, B:57:0x0153, B:59:0x0159, B:60:0x015d, B:54:0x0137, B:48:0x0101, B:50:0x010c), top: B:71:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0129 A[Catch: all -> 0x0176, TryCatch #2 {all -> 0x0180, blocks: (B:4:0x0010, B:5:0x0012, B:62:0x0168, B:6:0x002c, B:16:0x0049, B:61:0x0160, B:21:0x0063, B:26:0x00b5, B:25:0x00a6, B:29:0x00bd, B:32:0x00c9, B:34:0x00cf, B:37:0x00d9, B:40:0x00e5, B:42:0x00eb, B:47:0x00f8, B:51:0x0114, B:53:0x0129, B:55:0x0148, B:57:0x0153, B:59:0x0159, B:60:0x015d, B:54:0x0137, B:48:0x0101, B:50:0x010c), top: B:71:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0137 A[Catch: all -> 0x0176, TryCatch #2 {all -> 0x0180, blocks: (B:4:0x0010, B:5:0x0012, B:62:0x0168, B:6:0x002c, B:16:0x0049, B:61:0x0160, B:21:0x0063, B:26:0x00b5, B:25:0x00a6, B:29:0x00bd, B:32:0x00c9, B:34:0x00cf, B:37:0x00d9, B:40:0x00e5, B:42:0x00eb, B:47:0x00f8, B:51:0x0114, B:53:0x0129, B:55:0x0148, B:57:0x0153, B:59:0x0159, B:60:0x015d, B:54:0x0137, B:48:0x0101, B:50:0x010c), top: B:71:0x0010 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzI(java.lang.String r8, int r9, java.lang.Throwable r10, byte[] r11, java.util.Map r12) {
        /*
            Method dump skipped, instructions count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzlf.zzI(java.lang.String, int, java.lang.Throwable, byte[], java.util.Map):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzJ(boolean z) {
        zzag();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzK(int i, Throwable th, byte[] bArr, String str) {
        zzam zzamVar;
        long longValue;
        zzaB().zzg();
        zzB();
        if (bArr == null) {
            try {
                bArr = new byte[0];
            } finally {
                this.zzu = false;
                zzae();
            }
        }
        List<Long> list = (List) Preconditions.checkNotNull(this.zzy);
        this.zzy = null;
        if (i != 200) {
            if (i == 204) {
                i = 204;
            }
            zzaA().zzj().zzc("Network upload failed. Will retry later. code, error", Integer.valueOf(i), th);
            this.zzk.zzd.zzb(zzax().currentTimeMillis());
            if (i != 503 || i == 429) {
                this.zzk.zzb.zzb(zzax().currentTimeMillis());
            }
            zzam zzamVar2 = this.zze;
            zzal(zzamVar2);
            zzamVar2.zzy(list);
            zzag();
        }
        if (th == null) {
            try {
                this.zzk.zzc.zzb(zzax().currentTimeMillis());
                this.zzk.zzd.zzb(0L);
                zzag();
                zzaA().zzj().zzc("Successful upload. Got network response. code, size", Integer.valueOf(i), Integer.valueOf(bArr.length));
                zzam zzamVar3 = this.zze;
                zzal(zzamVar3);
                zzamVar3.zzw();
            } catch (SQLiteException e) {
                zzaA().zzd().zzb("Database error while trying to delete uploaded bundles", e);
                this.zza = zzax().elapsedRealtime();
                zzaA().zzj().zzb("Disable upload, time", Long.valueOf(this.zza));
            }
            try {
                for (Long l : list) {
                    try {
                        zzamVar = this.zze;
                        zzal(zzamVar);
                        longValue = l.longValue();
                        zzamVar.zzg();
                        zzamVar.zzW();
                    } catch (SQLiteException e2) {
                        List list2 = this.zzz;
                        if (list2 == null || !list2.contains(l)) {
                            throw e2;
                        }
                    }
                    try {
                        if (zzamVar.zzh().delete("queue", "rowid=?", new String[]{String.valueOf(longValue)}) != 1) {
                            throw new SQLiteException("Deleted fewer rows from queue than expected");
                            break;
                        }
                    } catch (SQLiteException e3) {
                        zzamVar.zzt.zzaA().zzd().zzb("Failed to delete a bundle in a queue table", e3);
                        throw e3;
                        break;
                    }
                }
                zzam zzamVar4 = this.zze;
                zzal(zzamVar4);
                zzamVar4.zzC();
                zzam zzamVar5 = this.zze;
                zzal(zzamVar5);
                zzamVar5.zzx();
                this.zzz = null;
                zzez zzezVar = this.zzd;
                zzal(zzezVar);
                if (zzezVar.zza() && zzai()) {
                    zzX();
                } else {
                    this.zzA = -1L;
                    zzag();
                }
                this.zza = 0L;
            } catch (Throwable th2) {
                zzam zzamVar6 = this.zze;
                zzal(zzamVar6);
                zzamVar6.zzx();
                throw th2;
            }
        }
        zzaA().zzj().zzc("Network upload failed. Will retry later. code, error", Integer.valueOf(i), th);
        this.zzk.zzd.zzb(zzax().currentTimeMillis());
        if (i != 503) {
        }
        this.zzk.zzb.zzb(zzax().currentTimeMillis());
        zzam zzamVar22 = this.zze;
        zzal(zzamVar22);
        zzamVar22.zzy(list);
        zzag();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:129:0x03db A[Catch: all -> 0x0575, TryCatch #0 {all -> 0x0575, blocks: (B:23:0x00a6, B:25:0x00b6, B:43:0x00fd, B:45:0x0110, B:47:0x0126, B:48:0x014d, B:50:0x01a7, B:52:0x01ac, B:54:0x01b2, B:56:0x01bb, B:68:0x01f5, B:70:0x0200, B:74:0x020d, B:77:0x021b, B:81:0x0226, B:83:0x0229, B:84:0x0249, B:86:0x024e, B:89:0x026d, B:92:0x0280, B:94:0x02a7, B:97:0x02af, B:99:0x02be, B:127:0x03a7, B:129:0x03db, B:130:0x03de, B:132:0x0407, B:171:0x04e0, B:172:0x04e3, B:180:0x0564, B:134:0x041c, B:139:0x0441, B:141:0x0449, B:143:0x0455, B:147:0x0468, B:151:0x0479, B:155:0x0485, B:158:0x049b, B:161:0x04ac, B:163:0x04c0, B:165:0x04c6, B:166:0x04cd, B:168:0x04d3, B:149:0x0471, B:137:0x042d, B:100:0x02cf, B:102:0x02fa, B:103:0x030b, B:105:0x0312, B:107:0x0318, B:109:0x0322, B:111:0x032c, B:113:0x0332, B:115:0x0338, B:116:0x033d, B:120:0x035f, B:123:0x0364, B:124:0x0378, B:125:0x0388, B:126:0x0398, B:173:0x04fa, B:175:0x052b, B:176:0x052e, B:177:0x0545, B:179:0x0549, B:87:0x025d, B:64:0x01da, B:29:0x00c3, B:31:0x00c7, B:35:0x00d8, B:37:0x00e9, B:39:0x00f3, B:42:0x00fa), top: B:187:0x00a6, inners: #1, #5, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0407 A[Catch: all -> 0x0575, TRY_LEAVE, TryCatch #0 {all -> 0x0575, blocks: (B:23:0x00a6, B:25:0x00b6, B:43:0x00fd, B:45:0x0110, B:47:0x0126, B:48:0x014d, B:50:0x01a7, B:52:0x01ac, B:54:0x01b2, B:56:0x01bb, B:68:0x01f5, B:70:0x0200, B:74:0x020d, B:77:0x021b, B:81:0x0226, B:83:0x0229, B:84:0x0249, B:86:0x024e, B:89:0x026d, B:92:0x0280, B:94:0x02a7, B:97:0x02af, B:99:0x02be, B:127:0x03a7, B:129:0x03db, B:130:0x03de, B:132:0x0407, B:171:0x04e0, B:172:0x04e3, B:180:0x0564, B:134:0x041c, B:139:0x0441, B:141:0x0449, B:143:0x0455, B:147:0x0468, B:151:0x0479, B:155:0x0485, B:158:0x049b, B:161:0x04ac, B:163:0x04c0, B:165:0x04c6, B:166:0x04cd, B:168:0x04d3, B:149:0x0471, B:137:0x042d, B:100:0x02cf, B:102:0x02fa, B:103:0x030b, B:105:0x0312, B:107:0x0318, B:109:0x0322, B:111:0x032c, B:113:0x0332, B:115:0x0338, B:116:0x033d, B:120:0x035f, B:123:0x0364, B:124:0x0378, B:125:0x0388, B:126:0x0398, B:173:0x04fa, B:175:0x052b, B:176:0x052e, B:177:0x0545, B:179:0x0549, B:87:0x025d, B:64:0x01da, B:29:0x00c3, B:31:0x00c7, B:35:0x00d8, B:37:0x00e9, B:39:0x00f3, B:42:0x00fa), top: B:187:0x00a6, inners: #1, #5, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:171:0x04e0 A[Catch: all -> 0x0575, TryCatch #0 {all -> 0x0575, blocks: (B:23:0x00a6, B:25:0x00b6, B:43:0x00fd, B:45:0x0110, B:47:0x0126, B:48:0x014d, B:50:0x01a7, B:52:0x01ac, B:54:0x01b2, B:56:0x01bb, B:68:0x01f5, B:70:0x0200, B:74:0x020d, B:77:0x021b, B:81:0x0226, B:83:0x0229, B:84:0x0249, B:86:0x024e, B:89:0x026d, B:92:0x0280, B:94:0x02a7, B:97:0x02af, B:99:0x02be, B:127:0x03a7, B:129:0x03db, B:130:0x03de, B:132:0x0407, B:171:0x04e0, B:172:0x04e3, B:180:0x0564, B:134:0x041c, B:139:0x0441, B:141:0x0449, B:143:0x0455, B:147:0x0468, B:151:0x0479, B:155:0x0485, B:158:0x049b, B:161:0x04ac, B:163:0x04c0, B:165:0x04c6, B:166:0x04cd, B:168:0x04d3, B:149:0x0471, B:137:0x042d, B:100:0x02cf, B:102:0x02fa, B:103:0x030b, B:105:0x0312, B:107:0x0318, B:109:0x0322, B:111:0x032c, B:113:0x0332, B:115:0x0338, B:116:0x033d, B:120:0x035f, B:123:0x0364, B:124:0x0378, B:125:0x0388, B:126:0x0398, B:173:0x04fa, B:175:0x052b, B:176:0x052e, B:177:0x0545, B:179:0x0549, B:87:0x025d, B:64:0x01da, B:29:0x00c3, B:31:0x00c7, B:35:0x00d8, B:37:0x00e9, B:39:0x00f3, B:42:0x00fa), top: B:187:0x00a6, inners: #1, #5, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0545 A[Catch: all -> 0x0575, TryCatch #0 {all -> 0x0575, blocks: (B:23:0x00a6, B:25:0x00b6, B:43:0x00fd, B:45:0x0110, B:47:0x0126, B:48:0x014d, B:50:0x01a7, B:52:0x01ac, B:54:0x01b2, B:56:0x01bb, B:68:0x01f5, B:70:0x0200, B:74:0x020d, B:77:0x021b, B:81:0x0226, B:83:0x0229, B:84:0x0249, B:86:0x024e, B:89:0x026d, B:92:0x0280, B:94:0x02a7, B:97:0x02af, B:99:0x02be, B:127:0x03a7, B:129:0x03db, B:130:0x03de, B:132:0x0407, B:171:0x04e0, B:172:0x04e3, B:180:0x0564, B:134:0x041c, B:139:0x0441, B:141:0x0449, B:143:0x0455, B:147:0x0468, B:151:0x0479, B:155:0x0485, B:158:0x049b, B:161:0x04ac, B:163:0x04c0, B:165:0x04c6, B:166:0x04cd, B:168:0x04d3, B:149:0x0471, B:137:0x042d, B:100:0x02cf, B:102:0x02fa, B:103:0x030b, B:105:0x0312, B:107:0x0318, B:109:0x0322, B:111:0x032c, B:113:0x0332, B:115:0x0338, B:116:0x033d, B:120:0x035f, B:123:0x0364, B:124:0x0378, B:125:0x0388, B:126:0x0398, B:173:0x04fa, B:175:0x052b, B:176:0x052e, B:177:0x0545, B:179:0x0549, B:87:0x025d, B:64:0x01da, B:29:0x00c3, B:31:0x00c7, B:35:0x00d8, B:37:0x00e9, B:39:0x00f3, B:42:0x00fa), top: B:187:0x00a6, inners: #1, #5, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:197:0x041c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01f5 A[Catch: all -> 0x0575, TryCatch #0 {all -> 0x0575, blocks: (B:23:0x00a6, B:25:0x00b6, B:43:0x00fd, B:45:0x0110, B:47:0x0126, B:48:0x014d, B:50:0x01a7, B:52:0x01ac, B:54:0x01b2, B:56:0x01bb, B:68:0x01f5, B:70:0x0200, B:74:0x020d, B:77:0x021b, B:81:0x0226, B:83:0x0229, B:84:0x0249, B:86:0x024e, B:89:0x026d, B:92:0x0280, B:94:0x02a7, B:97:0x02af, B:99:0x02be, B:127:0x03a7, B:129:0x03db, B:130:0x03de, B:132:0x0407, B:171:0x04e0, B:172:0x04e3, B:180:0x0564, B:134:0x041c, B:139:0x0441, B:141:0x0449, B:143:0x0455, B:147:0x0468, B:151:0x0479, B:155:0x0485, B:158:0x049b, B:161:0x04ac, B:163:0x04c0, B:165:0x04c6, B:166:0x04cd, B:168:0x04d3, B:149:0x0471, B:137:0x042d, B:100:0x02cf, B:102:0x02fa, B:103:0x030b, B:105:0x0312, B:107:0x0318, B:109:0x0322, B:111:0x032c, B:113:0x0332, B:115:0x0338, B:116:0x033d, B:120:0x035f, B:123:0x0364, B:124:0x0378, B:125:0x0388, B:126:0x0398, B:173:0x04fa, B:175:0x052b, B:176:0x052e, B:177:0x0545, B:179:0x0549, B:87:0x025d, B:64:0x01da, B:29:0x00c3, B:31:0x00c7, B:35:0x00d8, B:37:0x00e9, B:39:0x00f3, B:42:0x00fa), top: B:187:0x00a6, inners: #1, #5, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x024e A[Catch: all -> 0x0575, TryCatch #0 {all -> 0x0575, blocks: (B:23:0x00a6, B:25:0x00b6, B:43:0x00fd, B:45:0x0110, B:47:0x0126, B:48:0x014d, B:50:0x01a7, B:52:0x01ac, B:54:0x01b2, B:56:0x01bb, B:68:0x01f5, B:70:0x0200, B:74:0x020d, B:77:0x021b, B:81:0x0226, B:83:0x0229, B:84:0x0249, B:86:0x024e, B:89:0x026d, B:92:0x0280, B:94:0x02a7, B:97:0x02af, B:99:0x02be, B:127:0x03a7, B:129:0x03db, B:130:0x03de, B:132:0x0407, B:171:0x04e0, B:172:0x04e3, B:180:0x0564, B:134:0x041c, B:139:0x0441, B:141:0x0449, B:143:0x0455, B:147:0x0468, B:151:0x0479, B:155:0x0485, B:158:0x049b, B:161:0x04ac, B:163:0x04c0, B:165:0x04c6, B:166:0x04cd, B:168:0x04d3, B:149:0x0471, B:137:0x042d, B:100:0x02cf, B:102:0x02fa, B:103:0x030b, B:105:0x0312, B:107:0x0318, B:109:0x0322, B:111:0x032c, B:113:0x0332, B:115:0x0338, B:116:0x033d, B:120:0x035f, B:123:0x0364, B:124:0x0378, B:125:0x0388, B:126:0x0398, B:173:0x04fa, B:175:0x052b, B:176:0x052e, B:177:0x0545, B:179:0x0549, B:87:0x025d, B:64:0x01da, B:29:0x00c3, B:31:0x00c7, B:35:0x00d8, B:37:0x00e9, B:39:0x00f3, B:42:0x00fa), top: B:187:0x00a6, inners: #1, #5, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x025d A[Catch: all -> 0x0575, TryCatch #0 {all -> 0x0575, blocks: (B:23:0x00a6, B:25:0x00b6, B:43:0x00fd, B:45:0x0110, B:47:0x0126, B:48:0x014d, B:50:0x01a7, B:52:0x01ac, B:54:0x01b2, B:56:0x01bb, B:68:0x01f5, B:70:0x0200, B:74:0x020d, B:77:0x021b, B:81:0x0226, B:83:0x0229, B:84:0x0249, B:86:0x024e, B:89:0x026d, B:92:0x0280, B:94:0x02a7, B:97:0x02af, B:99:0x02be, B:127:0x03a7, B:129:0x03db, B:130:0x03de, B:132:0x0407, B:171:0x04e0, B:172:0x04e3, B:180:0x0564, B:134:0x041c, B:139:0x0441, B:141:0x0449, B:143:0x0455, B:147:0x0468, B:151:0x0479, B:155:0x0485, B:158:0x049b, B:161:0x04ac, B:163:0x04c0, B:165:0x04c6, B:166:0x04cd, B:168:0x04d3, B:149:0x0471, B:137:0x042d, B:100:0x02cf, B:102:0x02fa, B:103:0x030b, B:105:0x0312, B:107:0x0318, B:109:0x0322, B:111:0x032c, B:113:0x0332, B:115:0x0338, B:116:0x033d, B:120:0x035f, B:123:0x0364, B:124:0x0378, B:125:0x0388, B:126:0x0398, B:173:0x04fa, B:175:0x052b, B:176:0x052e, B:177:0x0545, B:179:0x0549, B:87:0x025d, B:64:0x01da, B:29:0x00c3, B:31:0x00c7, B:35:0x00d8, B:37:0x00e9, B:39:0x00f3, B:42:0x00fa), top: B:187:0x00a6, inners: #1, #5, #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x026d A[Catch: all -> 0x0575, TRY_LEAVE, TryCatch #0 {all -> 0x0575, blocks: (B:23:0x00a6, B:25:0x00b6, B:43:0x00fd, B:45:0x0110, B:47:0x0126, B:48:0x014d, B:50:0x01a7, B:52:0x01ac, B:54:0x01b2, B:56:0x01bb, B:68:0x01f5, B:70:0x0200, B:74:0x020d, B:77:0x021b, B:81:0x0226, B:83:0x0229, B:84:0x0249, B:86:0x024e, B:89:0x026d, B:92:0x0280, B:94:0x02a7, B:97:0x02af, B:99:0x02be, B:127:0x03a7, B:129:0x03db, B:130:0x03de, B:132:0x0407, B:171:0x04e0, B:172:0x04e3, B:180:0x0564, B:134:0x041c, B:139:0x0441, B:141:0x0449, B:143:0x0455, B:147:0x0468, B:151:0x0479, B:155:0x0485, B:158:0x049b, B:161:0x04ac, B:163:0x04c0, B:165:0x04c6, B:166:0x04cd, B:168:0x04d3, B:149:0x0471, B:137:0x042d, B:100:0x02cf, B:102:0x02fa, B:103:0x030b, B:105:0x0312, B:107:0x0318, B:109:0x0322, B:111:0x032c, B:113:0x0332, B:115:0x0338, B:116:0x033d, B:120:0x035f, B:123:0x0364, B:124:0x0378, B:125:0x0388, B:126:0x0398, B:173:0x04fa, B:175:0x052b, B:176:0x052e, B:177:0x0545, B:179:0x0549, B:87:0x025d, B:64:0x01da, B:29:0x00c3, B:31:0x00c7, B:35:0x00d8, B:37:0x00e9, B:39:0x00f3, B:42:0x00fa), top: B:187:0x00a6, inners: #1, #5, #6 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzL(com.google.android.gms.measurement.internal.zzq r24) {
        /*
            Method dump skipped, instructions count: 1408
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzlf.zzL(com.google.android.gms.measurement.internal.zzq):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzM() {
        this.zzr++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzN(zzac zzacVar) {
        zzq zzac = zzac((String) Preconditions.checkNotNull(zzacVar.zza));
        if (zzac != null) {
            zzO(zzacVar, zzac);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzO(zzac zzacVar, zzq zzqVar) {
        Preconditions.checkNotNull(zzacVar);
        Preconditions.checkNotEmpty(zzacVar.zza);
        Preconditions.checkNotNull(zzacVar.zzc);
        Preconditions.checkNotEmpty(zzacVar.zzc.zzb);
        zzaB().zzg();
        zzB();
        if (zzak(zzqVar)) {
            if (zzqVar.zzh) {
                zzam zzamVar = this.zze;
                zzal(zzamVar);
                zzamVar.zzw();
                try {
                    zzd(zzqVar);
                    String str = (String) Preconditions.checkNotNull(zzacVar.zza);
                    zzam zzamVar2 = this.zze;
                    zzal(zzamVar2);
                    zzac zzk = zzamVar2.zzk(str, zzacVar.zzc.zzb);
                    if (zzk != null) {
                        zzaA().zzc().zzc("Removing conditional user property", zzacVar.zza, this.zzn.zzj().zzf(zzacVar.zzc.zzb));
                        zzam zzamVar3 = this.zze;
                        zzal(zzamVar3);
                        zzamVar3.zza(str, zzacVar.zzc.zzb);
                        if (zzk.zze) {
                            zzam zzamVar4 = this.zze;
                            zzal(zzamVar4);
                            zzamVar4.zzA(str, zzacVar.zzc.zzb);
                        }
                        zzaw zzawVar = zzacVar.zzk;
                        if (zzawVar != null) {
                            zzau zzauVar = zzawVar.zzb;
                            zzY((zzaw) Preconditions.checkNotNull(zzv().zzz(str, ((zzaw) Preconditions.checkNotNull(zzacVar.zzk)).zza, zzauVar != null ? zzauVar.zzc() : null, zzk.zzb, zzacVar.zzk.zzd, true, true)), zzqVar);
                        }
                    } else {
                        zzaA().zzk().zzc("Conditional user property doesn't exist", zzet.zzn(zzacVar.zza), this.zzn.zzj().zzf(zzacVar.zzc.zzb));
                    }
                    zzam zzamVar5 = this.zze;
                    zzal(zzamVar5);
                    zzamVar5.zzC();
                    return;
                } finally {
                    zzam zzamVar6 = this.zze;
                    zzal(zzamVar6);
                    zzamVar6.zzx();
                }
            }
            zzd(zzqVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzP(String str, zzq zzqVar) {
        zzaB().zzg();
        zzB();
        if (zzak(zzqVar)) {
            if (!zzqVar.zzh) {
                zzd(zzqVar);
            } else if (!"_npa".equals(str) || zzqVar.zzr == null) {
                zzaA().zzc().zzb("Removing user property", this.zzn.zzj().zzf(str));
                zzam zzamVar = this.zze;
                zzal(zzamVar);
                zzamVar.zzw();
                try {
                    zzd(zzqVar);
                    if ("_id".equals(str)) {
                        zzam zzamVar2 = this.zze;
                        zzal(zzamVar2);
                        zzamVar2.zzA((String) Preconditions.checkNotNull(zzqVar.zza), "_lair");
                    }
                    zzam zzamVar3 = this.zze;
                    zzal(zzamVar3);
                    zzamVar3.zzA((String) Preconditions.checkNotNull(zzqVar.zza), str);
                    zzam zzamVar4 = this.zze;
                    zzal(zzamVar4);
                    zzamVar4.zzC();
                    zzaA().zzc().zzb("User property removed", this.zzn.zzj().zzf(str));
                } finally {
                    zzam zzamVar5 = this.zze;
                    zzal(zzamVar5);
                    zzamVar5.zzx();
                }
            } else {
                zzaA().zzc().zza("Falling back to manifest metadata value for ad personalization");
                zzW(new zzli("_npa", zzax().currentTimeMillis(), Long.valueOf(true != zzqVar.zzr.booleanValue() ? 0L : 1L), DebugKt.DEBUG_PROPERTY_VALUE_AUTO), zzqVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzQ(zzq zzqVar) {
        if (this.zzy != null) {
            ArrayList arrayList = new ArrayList();
            this.zzz = arrayList;
            arrayList.addAll(this.zzy);
        }
        zzam zzamVar = this.zze;
        zzal(zzamVar);
        String str = (String) Preconditions.checkNotNull(zzqVar.zza);
        Preconditions.checkNotEmpty(str);
        zzamVar.zzg();
        zzamVar.zzW();
        try {
            SQLiteDatabase zzh = zzamVar.zzh();
            String[] strArr = {str};
            int delete = zzh.delete("apps", "app_id=?", strArr) + zzh.delete("events", "app_id=?", strArr) + zzh.delete("user_attributes", "app_id=?", strArr) + zzh.delete("conditional_properties", "app_id=?", strArr) + zzh.delete("raw_events", "app_id=?", strArr) + zzh.delete("raw_events_metadata", "app_id=?", strArr) + zzh.delete("queue", "app_id=?", strArr) + zzh.delete("audience_filter_values", "app_id=?", strArr) + zzh.delete("main_event_params", "app_id=?", strArr) + zzh.delete("default_event_params", "app_id=?", strArr);
            if (delete > 0) {
                zzamVar.zzt.zzaA().zzj().zzc("Reset analytics data. app, records", str, Integer.valueOf(delete));
            }
        } catch (SQLiteException e) {
            zzamVar.zzt.zzaA().zzd().zzc("Error resetting analytics data. appId, error", zzet.zzn(str), e);
        }
        if (zzqVar.zzh) {
            zzL(zzqVar);
        }
    }

    public final void zzR(String str, zzip zzipVar) {
        zzaB().zzg();
        String str2 = this.zzE;
        if (str2 == null || str2.equals(str) || zzipVar != null) {
            this.zzE = str;
            this.zzD = zzipVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzS() {
        zzaB().zzg();
        zzam zzamVar = this.zze;
        zzal(zzamVar);
        zzamVar.zzz();
        if (this.zzk.zzc.zza() == 0) {
            this.zzk.zzc.zzb(zzax().currentTimeMillis());
        }
        zzag();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzT(zzac zzacVar) {
        zzq zzac = zzac((String) Preconditions.checkNotNull(zzacVar.zza));
        if (zzac != null) {
            zzU(zzacVar, zzac);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzU(zzac zzacVar, zzq zzqVar) {
        Preconditions.checkNotNull(zzacVar);
        Preconditions.checkNotEmpty(zzacVar.zza);
        Preconditions.checkNotNull(zzacVar.zzb);
        Preconditions.checkNotNull(zzacVar.zzc);
        Preconditions.checkNotEmpty(zzacVar.zzc.zzb);
        zzaB().zzg();
        zzB();
        if (zzak(zzqVar)) {
            if (!zzqVar.zzh) {
                zzd(zzqVar);
                return;
            }
            zzac zzacVar2 = new zzac(zzacVar);
            boolean z = false;
            zzacVar2.zze = false;
            zzam zzamVar = this.zze;
            zzal(zzamVar);
            zzamVar.zzw();
            try {
                zzam zzamVar2 = this.zze;
                zzal(zzamVar2);
                zzac zzk = zzamVar2.zzk((String) Preconditions.checkNotNull(zzacVar2.zza), zzacVar2.zzc.zzb);
                if (zzk != null && !zzk.zzb.equals(zzacVar2.zzb)) {
                    zzaA().zzk().zzd("Updating a conditional user property with different origin. name, origin, origin (from DB)", this.zzn.zzj().zzf(zzacVar2.zzc.zzb), zzacVar2.zzb, zzk.zzb);
                }
                if (zzk == null || !zzk.zze) {
                    if (TextUtils.isEmpty(zzacVar2.zzf)) {
                        zzli zzliVar = zzacVar2.zzc;
                        zzacVar2.zzc = new zzli(zzliVar.zzb, zzacVar2.zzd, zzliVar.zza(), zzacVar2.zzc.zzf);
                        zzacVar2.zze = true;
                        z = true;
                    }
                } else {
                    zzacVar2.zzb = zzk.zzb;
                    zzacVar2.zzd = zzk.zzd;
                    zzacVar2.zzh = zzk.zzh;
                    zzacVar2.zzf = zzk.zzf;
                    zzacVar2.zzi = zzk.zzi;
                    zzacVar2.zze = true;
                    zzli zzliVar2 = zzacVar2.zzc;
                    zzacVar2.zzc = new zzli(zzliVar2.zzb, zzk.zzc.zzc, zzliVar2.zza(), zzk.zzc.zzf);
                }
                if (zzacVar2.zze) {
                    zzli zzliVar3 = zzacVar2.zzc;
                    zzlk zzlkVar = new zzlk((String) Preconditions.checkNotNull(zzacVar2.zza), zzacVar2.zzb, zzliVar3.zzb, zzliVar3.zzc, Preconditions.checkNotNull(zzliVar3.zza()));
                    zzam zzamVar3 = this.zze;
                    zzal(zzamVar3);
                    if (zzamVar3.zzL(zzlkVar)) {
                        zzaA().zzc().zzd("User property updated immediately", zzacVar2.zza, this.zzn.zzj().zzf(zzlkVar.zzc), zzlkVar.zze);
                    } else {
                        zzaA().zzd().zzd("(2)Too many active user properties, ignoring", zzet.zzn(zzacVar2.zza), this.zzn.zzj().zzf(zzlkVar.zzc), zzlkVar.zze);
                    }
                    if (z && zzacVar2.zzi != null) {
                        zzY(new zzaw(zzacVar2.zzi, zzacVar2.zzd), zzqVar);
                    }
                }
                zzam zzamVar4 = this.zze;
                zzal(zzamVar4);
                if (zzamVar4.zzK(zzacVar2)) {
                    zzaA().zzc().zzd("Conditional property added", zzacVar2.zza, this.zzn.zzj().zzf(zzacVar2.zzc.zzb), zzacVar2.zzc.zza());
                } else {
                    zzaA().zzd().zzd("Too many conditional properties, ignoring", zzet.zzn(zzacVar2.zza), this.zzn.zzj().zzf(zzacVar2.zzc.zzb), zzacVar2.zzc.zza());
                }
                zzam zzamVar5 = this.zze;
                zzal(zzamVar5);
                zzamVar5.zzC();
            } finally {
                zzam zzamVar6 = this.zze;
                zzal(zzamVar6);
                zzamVar6.zzx();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzV(String str, zzai zzaiVar) {
        zzaB().zzg();
        zzB();
        this.zzB.put(str, zzaiVar);
        zzam zzamVar = this.zze;
        zzal(zzamVar);
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(zzaiVar);
        zzamVar.zzg();
        zzamVar.zzW();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("consent_state", zzaiVar.zzh());
        try {
            if (zzamVar.zzh().insertWithOnConflict("consent_settings", null, contentValues, 5) == -1) {
                zzamVar.zzt.zzaA().zzd().zzb("Failed to insert/update consent setting (got -1). appId", zzet.zzn(str));
            }
        } catch (SQLiteException e) {
            zzamVar.zzt.zzaA().zzd().zzc("Error storing consent setting. appId, error", zzet.zzn(str), e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzW(zzli zzliVar, zzq zzqVar) {
        long j;
        zzaB().zzg();
        zzB();
        if (zzak(zzqVar)) {
            if (!zzqVar.zzh) {
                zzd(zzqVar);
                return;
            }
            int zzl = zzv().zzl(zzliVar.zzb);
            int i = 0;
            if (zzl != 0) {
                zzln zzv = zzv();
                String str = zzliVar.zzb;
                zzg();
                String zzD = zzv.zzD(str, 24, true);
                String str2 = zzliVar.zzb;
                zzv().zzO(this.zzF, zzqVar.zza, zzl, "_ev", zzD, str2 != null ? str2.length() : 0);
                return;
            }
            int zzd = zzv().zzd(zzliVar.zzb, zzliVar.zza());
            if (zzd != 0) {
                zzln zzv2 = zzv();
                String str3 = zzliVar.zzb;
                zzg();
                String zzD2 = zzv2.zzD(str3, 24, true);
                Object zza = zzliVar.zza();
                if (zza != null && ((zza instanceof String) || (zza instanceof CharSequence))) {
                    i = zza.toString().length();
                }
                zzv().zzO(this.zzF, zzqVar.zza, zzd, "_ev", zzD2, i);
                return;
            }
            Object zzB = zzv().zzB(zzliVar.zzb, zzliVar.zza());
            if (zzB == null) {
                return;
            }
            if ("_sid".equals(zzliVar.zzb)) {
                long j2 = zzliVar.zzc;
                String str4 = zzliVar.zzf;
                String str5 = (String) Preconditions.checkNotNull(zzqVar.zza);
                zzam zzamVar = this.zze;
                zzal(zzamVar);
                zzlk zzp = zzamVar.zzp(str5, "_sno");
                if (zzp != null) {
                    Object obj = zzp.zze;
                    if (obj instanceof Long) {
                        j = ((Long) obj).longValue();
                        zzW(new zzli("_sno", j2, Long.valueOf(j + 1), str4), zzqVar);
                    }
                }
                if (zzp != null) {
                    zzaA().zzk().zzb("Retrieved last session number from database does not contain a valid (long) value", zzp.zze);
                }
                zzam zzamVar2 = this.zze;
                zzal(zzamVar2);
                zzas zzn = zzamVar2.zzn(str5, "_s");
                if (zzn != null) {
                    j = zzn.zzc;
                    zzaA().zzj().zzb("Backfill the session number. Last used session number", Long.valueOf(j));
                } else {
                    j = 0;
                }
                zzW(new zzli("_sno", j2, Long.valueOf(j + 1), str4), zzqVar);
            }
            zzlk zzlkVar = new zzlk((String) Preconditions.checkNotNull(zzqVar.zza), (String) Preconditions.checkNotNull(zzliVar.zzf), zzliVar.zzb, zzliVar.zzc, zzB);
            zzaA().zzj().zzc("Setting user property", this.zzn.zzj().zzf(zzlkVar.zzc), zzB);
            zzam zzamVar3 = this.zze;
            zzal(zzamVar3);
            zzamVar3.zzw();
            try {
                if ("_id".equals(zzlkVar.zzc)) {
                    zzam zzamVar4 = this.zze;
                    zzal(zzamVar4);
                    zzlk zzp2 = zzamVar4.zzp(zzqVar.zza, "_id");
                    if (zzp2 != null && !zzlkVar.zze.equals(zzp2.zze)) {
                        zzam zzamVar5 = this.zze;
                        zzal(zzamVar5);
                        zzamVar5.zzA(zzqVar.zza, "_lair");
                    }
                }
                zzd(zzqVar);
                zzam zzamVar6 = this.zze;
                zzal(zzamVar6);
                boolean zzL = zzamVar6.zzL(zzlkVar);
                zzam zzamVar7 = this.zze;
                zzal(zzamVar7);
                zzamVar7.zzC();
                if (!zzL) {
                    zzaA().zzd().zzc("Too many unique user properties are set. Ignoring user property", this.zzn.zzj().zzf(zzlkVar.zzc), zzlkVar.zze);
                    zzv().zzO(this.zzF, zzqVar.zza, 9, null, null, 0);
                }
            } finally {
                zzam zzamVar8 = this.zze;
                zzal(zzamVar8);
                zzamVar8.zzx();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x02fe, code lost:
        r0 = r0.subList(0, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0303, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x0304, code lost:
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x04f3, code lost:
        if (r3 != null) goto L247;
     */
    /* JADX WARN: Code restructure failed: missing block: B:214:0x04f5, code lost:
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:228:0x051a, code lost:
        if (r3 == null) goto L248;
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x051d, code lost:
        r9 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0108, code lost:
        if (r11 != null) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x010a, code lost:
        r11.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0112, code lost:
        if (r11 != null) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x012a, code lost:
        if (r11 == null) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x012d, code lost:
        r22.zzA = r7;
     */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0270 A[Catch: all -> 0x053f, TRY_ENTER, TRY_LEAVE, TryCatch #22 {all -> 0x053f, blocks: (B:134:0x029f, B:136:0x02a5, B:138:0x02b1, B:139:0x02b5, B:141:0x02bb, B:143:0x02cf, B:147:0x02d8, B:149:0x02de, B:152:0x02f3, B:160:0x030a, B:162:0x0325, B:166:0x0334, B:168:0x0358, B:172:0x0392, B:174:0x0397, B:176:0x039f, B:177:0x03a2, B:179:0x03a7, B:180:0x03aa, B:182:0x03b6, B:183:0x03cc, B:186:0x03d8, B:188:0x03e9, B:190:0x03fa, B:191:0x040f, B:193:0x041c, B:195:0x0431, B:199:0x0441, B:200:0x0445, B:194:0x042a, B:202:0x0494, B:121:0x0270, B:133:0x029c, B:206:0x04af, B:207:0x04b2, B:208:0x04b3, B:214:0x04f5, B:231:0x051e, B:233:0x0524, B:235:0x052f, B:219:0x0500, B:240:0x053b, B:241:0x053e, B:198:0x043d), top: B:271:0x00eb, inners: #16 }] */
    /* JADX WARN: Removed duplicated region for block: B:136:0x02a5 A[Catch: all -> 0x053f, TryCatch #22 {all -> 0x053f, blocks: (B:134:0x029f, B:136:0x02a5, B:138:0x02b1, B:139:0x02b5, B:141:0x02bb, B:143:0x02cf, B:147:0x02d8, B:149:0x02de, B:152:0x02f3, B:160:0x030a, B:162:0x0325, B:166:0x0334, B:168:0x0358, B:172:0x0392, B:174:0x0397, B:176:0x039f, B:177:0x03a2, B:179:0x03a7, B:180:0x03aa, B:182:0x03b6, B:183:0x03cc, B:186:0x03d8, B:188:0x03e9, B:190:0x03fa, B:191:0x040f, B:193:0x041c, B:195:0x0431, B:199:0x0441, B:200:0x0445, B:194:0x042a, B:202:0x0494, B:121:0x0270, B:133:0x029c, B:206:0x04af, B:207:0x04b2, B:208:0x04b3, B:214:0x04f5, B:231:0x051e, B:233:0x0524, B:235:0x052f, B:219:0x0500, B:240:0x053b, B:241:0x053e, B:198:0x043d), top: B:271:0x00eb, inners: #16 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0134 A[Catch: all -> 0x0542, TryCatch #2 {all -> 0x0542, blocks: (B:3:0x0010, B:5:0x0021, B:9:0x0034, B:11:0x003a, B:13:0x004a, B:15:0x0052, B:17:0x0058, B:19:0x0063, B:21:0x0073, B:23:0x007e, B:25:0x0091, B:27:0x00b0, B:29:0x00b6, B:30:0x00b9, B:32:0x00c5, B:33:0x00dc, B:35:0x00ed, B:37:0x00f3, B:42:0x010a, B:56:0x012d, B:60:0x0134, B:61:0x0137, B:62:0x0138, B:66:0x0160, B:70:0x0168, B:76:0x019e, B:198:0x043d), top: B:251:0x0010 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzX() {
        /*
            Method dump skipped, instructions count: 1354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzlf.zzX():void");
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:93:0x02fa
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    final void zzY(com.google.android.gms.measurement.internal.zzaw r36, com.google.android.gms.measurement.internal.zzq r37) {
        /*
            Method dump skipped, instructions count: 2858
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzlf.zzY(com.google.android.gms.measurement.internal.zzaw, com.google.android.gms.measurement.internal.zzq):void");
    }

    final boolean zzZ() {
        zzaB().zzg();
        FileLock fileLock = this.zzw;
        if (fileLock == null || !fileLock.isValid()) {
            this.zze.zzt.zzf();
            try {
                FileChannel channel = new RandomAccessFile(new File(this.zzn.zzaw().getFilesDir(), "google_app_measurement.db"), "rw").getChannel();
                this.zzx = channel;
                FileLock tryLock = channel.tryLock();
                this.zzw = tryLock;
                if (tryLock != null) {
                    zzaA().zzj().zza("Storage concurrent access okay");
                    return true;
                }
                zzaA().zzd().zza("Storage concurrent data access panic");
                return false;
            } catch (FileNotFoundException e) {
                zzaA().zzd().zzb("Failed to acquire storage lock", e);
                return false;
            } catch (IOException e2) {
                zzaA().zzd().zzb("Failed to access storage lock file", e2);
                return false;
            } catch (OverlappingFileLockException e3) {
                zzaA().zzk().zzb("Storage lock already acquired", e3);
                return false;
            }
        }
        zzaA().zzj().zza("Storage concurrent access okay");
        return true;
    }

    final long zza() {
        long currentTimeMillis = zzax().currentTimeMillis();
        zzjz zzjzVar = this.zzk;
        zzjzVar.zzW();
        zzjzVar.zzg();
        long zza = zzjzVar.zze.zza();
        if (zza == 0) {
            zza = zzjzVar.zzt.zzv().zzG().nextInt(86400000) + 1;
            zzjzVar.zze.zzb(zza);
        }
        return ((((currentTimeMillis + zza) / 1000) / 60) / 60) / 24;
    }

    @Override // com.google.android.gms.measurement.internal.zzgy
    public final zzet zzaA() {
        return ((zzgd) Preconditions.checkNotNull(this.zzn)).zzaA();
    }

    @Override // com.google.android.gms.measurement.internal.zzgy
    public final zzga zzaB() {
        return ((zzgd) Preconditions.checkNotNull(this.zzn)).zzaB();
    }

    @Override // com.google.android.gms.measurement.internal.zzgy
    public final Context zzaw() {
        return this.zzn.zzaw();
    }

    @Override // com.google.android.gms.measurement.internal.zzgy
    public final Clock zzax() {
        return ((zzgd) Preconditions.checkNotNull(this.zzn)).zzax();
    }

    @Override // com.google.android.gms.measurement.internal.zzgy
    public final zzab zzay() {
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzh zzd(zzq zzqVar) {
        zzaB().zzg();
        zzB();
        Preconditions.checkNotNull(zzqVar);
        Preconditions.checkNotEmpty(zzqVar.zza);
        if (!zzqVar.zzw.isEmpty()) {
            this.zzC.put(zzqVar.zza, new zzle(this, zzqVar.zzw));
        }
        zzam zzamVar = this.zze;
        zzal(zzamVar);
        zzh zzj = zzamVar.zzj(zzqVar.zza);
        zzai zzc = zzh(zzqVar.zza).zzc(zzai.zzb(zzqVar.zzv));
        String zzf = zzc.zzi(zzah.AD_STORAGE) ? this.zzk.zzf(zzqVar.zza, zzqVar.zzo) : "";
        if (zzj == null) {
            zzj = new zzh(this.zzn, zzqVar.zza);
            if (zzc.zzi(zzah.ANALYTICS_STORAGE)) {
                zzj.zzI(zzw(zzc));
            }
            if (zzc.zzi(zzah.AD_STORAGE)) {
                zzj.zzaf(zzf);
            }
        } else if (!zzc.zzi(zzah.AD_STORAGE) || zzf == null || zzf.equals(zzj.zzB())) {
            if (TextUtils.isEmpty(zzj.zzv()) && zzc.zzi(zzah.ANALYTICS_STORAGE)) {
                zzj.zzI(zzw(zzc));
            }
        } else {
            zzj.zzaf(zzf);
            if (zzqVar.zzo && !"00000000-0000-0000-0000-000000000000".equals(this.zzk.zzd(zzqVar.zza, zzc).first)) {
                zzj.zzI(zzw(zzc));
                zzam zzamVar2 = this.zze;
                zzal(zzamVar2);
                if (zzamVar2.zzp(zzqVar.zza, "_id") != null) {
                    zzam zzamVar3 = this.zze;
                    zzal(zzamVar3);
                    if (zzamVar3.zzp(zzqVar.zza, "_lair") == null) {
                        zzlk zzlkVar = new zzlk(zzqVar.zza, DebugKt.DEBUG_PROPERTY_VALUE_AUTO, "_lair", zzax().currentTimeMillis(), 1L);
                        zzam zzamVar4 = this.zze;
                        zzal(zzamVar4);
                        zzamVar4.zzL(zzlkVar);
                    }
                }
            }
        }
        zzj.zzX(zzqVar.zzb);
        zzj.zzG(zzqVar.zzq);
        if (!TextUtils.isEmpty(zzqVar.zzk)) {
            zzj.zzW(zzqVar.zzk);
        }
        long j = zzqVar.zze;
        if (j != 0) {
            zzj.zzY(j);
        }
        if (!TextUtils.isEmpty(zzqVar.zzc)) {
            zzj.zzK(zzqVar.zzc);
        }
        zzj.zzL(zzqVar.zzj);
        String str = zzqVar.zzd;
        if (str != null) {
            zzj.zzJ(str);
        }
        zzj.zzT(zzqVar.zzf);
        zzj.zzad(zzqVar.zzh);
        if (!TextUtils.isEmpty(zzqVar.zzg)) {
            zzj.zzZ(zzqVar.zzg);
        }
        zzj.zzH(zzqVar.zzo);
        zzj.zzae(zzqVar.zzr);
        zzj.zzU(zzqVar.zzs);
        zzqr.zzc();
        if (zzg().zzs(null, zzeg.zzam) || zzg().zzs(zzqVar.zza, zzeg.zzao)) {
            zzj.zzah(zzqVar.zzx);
        }
        zzop.zzc();
        if (!zzg().zzs(null, zzeg.zzal)) {
            zzop.zzc();
            if (zzg().zzs(null, zzeg.zzak)) {
                zzj.zzag(null);
            }
        } else {
            zzj.zzag(zzqVar.zzt);
        }
        zzra.zzc();
        if (zzg().zzs(null, zzeg.zzaq)) {
            zzj.zzai(zzqVar.zzy);
        }
        zzpw.zzc();
        if (zzg().zzs(null, zzeg.zzaE)) {
            zzj.zzaj(zzqVar.zzz);
        }
        if (zzj.zzam()) {
            zzam zzamVar5 = this.zze;
            zzal(zzamVar5);
            zzamVar5.zzD(zzj);
        }
        return zzj;
    }

    public final zzaa zzf() {
        zzaa zzaaVar = this.zzh;
        zzal(zzaaVar);
        return zzaaVar;
    }

    public final zzag zzg() {
        return ((zzgd) Preconditions.checkNotNull(this.zzn)).zzf();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzai zzh(String str) {
        String str2;
        zzai zzaiVar = zzai.zza;
        zzaB().zzg();
        zzB();
        zzai zzaiVar2 = (zzai) this.zzB.get(str);
        if (zzaiVar2 == null) {
            zzam zzamVar = this.zze;
            zzal(zzamVar);
            Preconditions.checkNotNull(str);
            zzamVar.zzg();
            zzamVar.zzW();
            Cursor cursor = null;
            try {
                try {
                    cursor = zzamVar.zzh().rawQuery("select consent_state from consent_settings where app_id=? limit 1;", new String[]{str});
                    if (cursor.moveToFirst()) {
                        str2 = cursor.getString(0);
                    } else {
                        if (cursor != null) {
                            cursor.close();
                        }
                        str2 = "G1";
                    }
                    zzai zzb2 = zzai.zzb(str2);
                    zzV(str, zzb2);
                    return zzb2;
                } catch (SQLiteException e) {
                    zzamVar.zzt.zzaA().zzd().zzc("Database error", "select consent_state from consent_settings where app_id=? limit 1;", e);
                    throw e;
                }
            } finally {
                if (cursor != null) {
                    cursor.close();
                }
            }
        }
        return zzaiVar2;
    }

    public final zzam zzi() {
        zzam zzamVar = this.zze;
        zzal(zzamVar);
        return zzamVar;
    }

    public final zzeo zzj() {
        return this.zzn.zzj();
    }

    public final zzez zzl() {
        zzez zzezVar = this.zzd;
        zzal(zzezVar);
        return zzezVar;
    }

    public final zzfb zzm() {
        zzfb zzfbVar = this.zzf;
        if (zzfbVar != null) {
            return zzfbVar;
        }
        throw new IllegalStateException("Network broadcast receiver not created");
    }

    public final zzfu zzo() {
        zzfu zzfuVar = this.zzc;
        zzal(zzfuVar);
        return zzfuVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzgd zzq() {
        return this.zzn;
    }

    public final zzin zzr() {
        zzin zzinVar = this.zzj;
        zzal(zzinVar);
        return zzinVar;
    }

    public final zzjz zzs() {
        return this.zzk;
    }

    public final zzlh zzu() {
        zzlh zzlhVar = this.zzi;
        zzal(zzlhVar);
        return zzlhVar;
    }

    public final zzln zzv() {
        return ((zzgd) Preconditions.checkNotNull(this.zzn)).zzv();
    }

    final String zzw(zzai zzaiVar) {
        if (zzaiVar.zzi(zzah.ANALYTICS_STORAGE)) {
            byte[] bArr = new byte[16];
            zzv().zzG().nextBytes(bArr);
            return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzx(zzq zzqVar) {
        try {
            return (String) zzaB().zzh(new zzky(this, zzqVar)).get(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            zzaA().zzd().zzc("Failed to get app instance id. appId", zzet.zzn(zzqVar.zza), e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzz(Runnable runnable) {
        zzaB().zzg();
        if (this.zzq == null) {
            this.zzq = new ArrayList();
        }
        this.zzq.add(runnable);
    }
}
