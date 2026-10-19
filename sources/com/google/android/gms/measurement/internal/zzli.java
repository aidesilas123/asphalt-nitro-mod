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
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import androidx.work.WorkRequest;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzne;
import com.google.android.gms.internal.measurement.zznz;
import com.google.android.gms.internal.measurement.zzpg;
import com.google.android.gms.internal.measurement.zzpm;
import com.google.android.gms.internal.measurement.zzpp;
import com.json.b4;
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
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzli implements zzhd {
    private static volatile zzli zzb;
    private long zzA;
    private final Map zzB;
    private final Map zzC;
    private zziu zzD;
    private String zzE;

    @VisibleForTesting
    long zza;
    private final zzfz zzc;
    private final zzfe zzd;
    private zzal zze;
    private zzfg zzf;
    private zzku zzg;
    private zzz zzh;
    private final zzlk zzi;
    private zzis zzj;
    private zzkd zzk;
    private final zzkx zzl;
    private zzfq zzm;
    private final zzgi zzn;
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
    private final zzlo zzF = new zzld(this);

    zzli(zzlj zzljVar, zzgi zzgiVar) {
        Preconditions.checkNotNull(zzljVar);
        this.zzn = zzgi.zzp(zzljVar.zza, null, null);
        this.zzA = -1L;
        this.zzl = new zzkx(this);
        zzlk zzlkVar = new zzlk(this);
        zzlkVar.zzX();
        this.zzi = zzlkVar;
        zzfe zzfeVar = new zzfe(this);
        zzfeVar.zzX();
        this.zzd = zzfeVar;
        zzfz zzfzVar = new zzfz(this);
        zzfzVar.zzX();
        this.zzc = zzfzVar;
        this.zzB = new HashMap();
        this.zzC = new HashMap();
        zzaA().zzp(new zzky(this, zzljVar));
    }

    @VisibleForTesting
    static final void zzZ(com.google.android.gms.internal.measurement.zzfr zzfrVar, int i, String str) {
        List listZzp = zzfrVar.zzp();
        for (int i2 = 0; i2 < listZzp.size(); i2++) {
            if ("_err".equals(((com.google.android.gms.internal.measurement.zzfw) listZzp.get(i2)).zzg())) {
                return;
            }
        }
        com.google.android.gms.internal.measurement.zzfv zzfvVarZze = com.google.android.gms.internal.measurement.zzfw.zze();
        zzfvVarZze.zzj("_err");
        zzfvVarZze.zzi(Long.valueOf(i).longValue());
        com.google.android.gms.internal.measurement.zzfw zzfwVar = (com.google.android.gms.internal.measurement.zzfw) zzfvVarZze.zzaE();
        com.google.android.gms.internal.measurement.zzfv zzfvVarZze2 = com.google.android.gms.internal.measurement.zzfw.zze();
        zzfvVarZze2.zzj("_ev");
        zzfvVarZze2.zzk(str);
        com.google.android.gms.internal.measurement.zzfw zzfwVar2 = (com.google.android.gms.internal.measurement.zzfw) zzfvVarZze2.zzaE();
        zzfrVar.zzf(zzfwVar);
        zzfrVar.zzf(zzfwVar2);
    }

    @VisibleForTesting
    static final void zzaa(com.google.android.gms.internal.measurement.zzfr zzfrVar, @NonNull String str) {
        List listZzp = zzfrVar.zzp();
        for (int i = 0; i < listZzp.size(); i++) {
            if (str.equals(((com.google.android.gms.internal.measurement.zzfw) listZzp.get(i)).zzg())) {
                zzfrVar.zzh(i);
                return;
            }
        }
    }

    @WorkerThread
    private final zzp zzab(String str) {
        zzal zzalVar = this.zze;
        zzak(zzalVar);
        zzg zzgVarZzj = zzalVar.zzj(str);
        if (zzgVarZzj == null || TextUtils.isEmpty(zzgVarZzj.zzw())) {
            zzaz().zzc().zzb("No app data available; dropping", str);
            return null;
        }
        Boolean boolZzac = zzac(zzgVarZzj);
        if (boolZzac == null || boolZzac.booleanValue()) {
            return new zzp(str, zzgVarZzj.zzy(), zzgVarZzj.zzw(), zzgVarZzj.zzb(), zzgVarZzj.zzv(), zzgVarZzj.zzm(), zzgVarZzj.zzj(), (String) null, zzgVarZzj.zzaj(), false, zzgVarZzj.zzx(), zzgVarZzj.zza(), 0L, 0, zzgVarZzj.zzai(), false, zzgVarZzj.zzr(), zzgVarZzj.zzq(), zzgVarZzj.zzk(), zzgVarZzj.zzC(), (String) null, zzh(str).zzh(), "", (String) null);
        }
        zzaz().zzd().zzb("App version does not match; dropping. appId", zzey.zzn(str));
        return null;
    }

    @WorkerThread
    private final Boolean zzac(zzg zzgVar) {
        try {
            if (zzgVar.zzb() != -2147483648L) {
                if (zzgVar.zzb() == Wrappers.packageManager(this.zzn.zzav()).getPackageInfo(zzgVar.zzt(), 0).versionCode) {
                    return Boolean.TRUE;
                }
            } else {
                String str = Wrappers.packageManager(this.zzn.zzav()).getPackageInfo(zzgVar.zzt(), 0).versionName;
                String strZzw = zzgVar.zzw();
                if (strZzw != null && strZzw.equals(str)) {
                    return Boolean.TRUE;
                }
            }
            return Boolean.FALSE;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    @WorkerThread
    private final void zzad() {
        zzaA().zzg();
        if (this.zzt || this.zzu || this.zzv) {
            zzaz().zzj().zzd("Not stopping services. fetch, network, upload", Boolean.valueOf(this.zzt), Boolean.valueOf(this.zzu), Boolean.valueOf(this.zzv));
            return;
        }
        zzaz().zzj().zza("Stopping uploading service(s)");
        List list = this.zzq;
        if (list == null) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        ((List) Preconditions.checkNotNull(this.zzq)).clear();
    }

    @VisibleForTesting
    private final void zzae(com.google.android.gms.internal.measurement.zzgb zzgbVar, long j, boolean z) {
        String str = true != z ? "_lte" : "_se";
        zzal zzalVar = this.zze;
        zzak(zzalVar);
        zzln zzlnVarZzp = zzalVar.zzp(zzgbVar.zzaq(), str);
        zzln zzlnVar = (zzlnVarZzp == null || zzlnVarZzp.zze == null) ? new zzln(zzgbVar.zzaq(), "auto", str, zzaw().currentTimeMillis(), Long.valueOf(j)) : new zzln(zzgbVar.zzaq(), "auto", str, zzaw().currentTimeMillis(), Long.valueOf(((Long) zzlnVarZzp.zze).longValue() + j));
        com.google.android.gms.internal.measurement.zzgk zzgkVarZzd = com.google.android.gms.internal.measurement.zzgl.zzd();
        zzgkVarZzd.zzf(str);
        zzgkVarZzd.zzg(zzaw().currentTimeMillis());
        zzgkVarZzd.zze(((Long) zzlnVar.zze).longValue());
        com.google.android.gms.internal.measurement.zzgl zzglVar = (com.google.android.gms.internal.measurement.zzgl) zzgkVarZzd.zzaE();
        int iZza = zzlk.zza(zzgbVar, str);
        if (iZza >= 0) {
            zzgbVar.zzan(iZza, zzglVar);
        } else {
            zzgbVar.zzm(zzglVar);
        }
        if (j > 0) {
            zzal zzalVar2 = this.zze;
            zzak(zzalVar2);
            zzalVar2.zzL(zzlnVar);
            zzaz().zzj().zzc("Updated engagement user property. scope, value", true != z ? "lifetime" : "session-scoped", zzlnVar.zze);
        }
    }

    @WorkerThread
    private final void zzaf() {
        long jMax;
        long jMax2;
        zzaA().zzg();
        zzB();
        if (this.zza > 0) {
            long jAbs = 3600000 - Math.abs(zzaw().elapsedRealtime() - this.zza);
            if (jAbs > 0) {
                zzaz().zzj().zzb("Upload has been suspended. Will update scheduling later in approximately ms", Long.valueOf(jAbs));
                zzm().zzc();
                zzku zzkuVar = this.zzg;
                zzak(zzkuVar);
                zzkuVar.zza();
                return;
            }
            this.zza = 0L;
        }
        if (!this.zzn.zzM() || !zzah()) {
            zzaz().zzj().zza("Nothing to upload or uploading impossible");
            zzm().zzc();
            zzku zzkuVar2 = this.zzg;
            zzak(zzkuVar2);
            zzkuVar2.zza();
            return;
        }
        long jCurrentTimeMillis = zzaw().currentTimeMillis();
        zzg();
        long jMax3 = Math.max(0L, ((Long) zzel.zzz.zza(null)).longValue());
        zzal zzalVar = this.zze;
        zzak(zzalVar);
        boolean z = true;
        if (!zzalVar.zzH()) {
            zzal zzalVar2 = this.zze;
            zzak(zzalVar2);
            if (!zzalVar2.zzG()) {
                z = false;
            }
        }
        if (z) {
            String strZzl = zzg().zzl();
            if (TextUtils.isEmpty(strZzl) || ".none.".equals(strZzl)) {
                zzg();
                jMax = Math.max(0L, ((Long) zzel.zzt.zza(null)).longValue());
            } else {
                zzg();
                jMax = Math.max(0L, ((Long) zzel.zzu.zza(null)).longValue());
            }
        } else {
            zzg();
            jMax = Math.max(0L, ((Long) zzel.zzs.zza(null)).longValue());
        }
        long jZza = this.zzk.zzc.zza();
        long jZza2 = this.zzk.zzd.zza();
        zzal zzalVar3 = this.zze;
        zzak(zzalVar3);
        boolean z2 = z;
        long jZzd = zzalVar3.zzd();
        zzal zzalVar4 = this.zze;
        zzak(zzalVar4);
        long jMax4 = Math.max(jZzd, zzalVar4.zze());
        if (jMax4 == 0) {
            jMax2 = 0;
        } else {
            long jAbs2 = jCurrentTimeMillis - Math.abs(jMax4 - jCurrentTimeMillis);
            long jAbs3 = Math.abs(jZza - jCurrentTimeMillis);
            long jAbs4 = jCurrentTimeMillis - Math.abs(jZza2 - jCurrentTimeMillis);
            long jMax5 = Math.max(jCurrentTimeMillis - jAbs3, jAbs4);
            jMax2 = jAbs2 + jMax3;
            if (z2 && jMax5 > 0) {
                jMax2 = Math.min(jAbs2, jMax5) + jMax;
            }
            zzlk zzlkVar = this.zzi;
            zzak(zzlkVar);
            if (!zzlkVar.zzw(jMax5, jMax)) {
                jMax2 = jMax5 + jMax;
            }
            if (jAbs4 != 0 && jAbs4 >= jAbs2) {
                int i = 0;
                while (true) {
                    zzg();
                    if (i >= Math.min(20, Math.max(0, ((Integer) zzel.zzB.zza(null)).intValue()))) {
                        break;
                    }
                    zzg();
                    jMax2 += Math.max(0L, ((Long) zzel.zzA.zza(null)).longValue()) * (1 << i);
                    if (jMax2 > jAbs4) {
                        break;
                    } else {
                        i++;
                    }
                }
            }
        }
        if (jMax2 == 0) {
            zzaz().zzj().zza("Next upload time is 0");
            zzm().zzc();
            zzku zzkuVar3 = this.zzg;
            zzak(zzkuVar3);
            zzkuVar3.zza();
            return;
        }
        zzfe zzfeVar = this.zzd;
        zzak(zzfeVar);
        if (!zzfeVar.zza()) {
            zzaz().zzj().zza("No network");
            zzm().zzb();
            zzku zzkuVar4 = this.zzg;
            zzak(zzkuVar4);
            zzkuVar4.zza();
            return;
        }
        long jZza3 = this.zzk.zzb.zza();
        zzg();
        long jMax6 = Math.max(0L, ((Long) zzel.zzq.zza(null)).longValue());
        zzlk zzlkVar2 = this.zzi;
        zzak(zzlkVar2);
        if (!zzlkVar2.zzw(jZza3, jMax6)) {
            jMax2 = Math.max(jMax2, jZza3 + jMax6);
        }
        zzm().zzc();
        long jCurrentTimeMillis2 = jMax2 - zzaw().currentTimeMillis();
        if (jCurrentTimeMillis2 <= 0) {
            zzg();
            jCurrentTimeMillis2 = Math.max(0L, ((Long) zzel.zzv.zza(null)).longValue());
            this.zzk.zzc.zzb(zzaw().currentTimeMillis());
        }
        zzaz().zzj().zzb("Upload scheduled in approximately ms", Long.valueOf(jCurrentTimeMillis2));
        zzku zzkuVar5 = this.zzg;
        zzak(zzkuVar5);
        zzkuVar5.zzd(jCurrentTimeMillis2);
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x0376 A[Catch: all -> 0x0d17, TryCatch #3 {all -> 0x0d17, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:173:0x0538, B:24:0x00f3, B:26:0x0101, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:111:0x03a7, B:112:0x03b3, B:115:0x03bd, B:121:0x03e0, B:118:0x03cf, B:143:0x045f, B:145:0x046b, B:148:0x047e, B:150:0x048f, B:152:0x049b, B:172:0x0524, B:157:0x04c5, B:159:0x04d5, B:162:0x04ea, B:164:0x04fb, B:166:0x0507, B:125:0x03e8, B:127:0x03f4, B:129:0x0400, B:141:0x0445, B:133:0x041d, B:136:0x042f, B:138:0x0435, B:140:0x043f, B:68:0x01e4, B:71:0x01ee, B:73:0x01fc, B:77:0x0243, B:74:0x0219, B:76:0x022a, B:81:0x0252, B:83:0x027e, B:84:0x02a8, B:86:0x02de, B:88:0x02e4, B:91:0x02f0, B:93:0x0326, B:94:0x0341, B:96:0x0347, B:98:0x0355, B:102:0x0368, B:99:0x035d, B:105:0x036f, B:108:0x0376, B:109:0x038e, B:176:0x054d, B:178:0x055b, B:180:0x0566, B:191:0x0598, B:181:0x056e, B:183:0x0579, B:185:0x057f, B:188:0x058b, B:190:0x0593, B:192:0x059b, B:193:0x05a7, B:196:0x05af, B:198:0x05c1, B:199:0x05cd, B:201:0x05d5, B:205:0x05fa, B:207:0x061f, B:209:0x0630, B:211:0x0636, B:213:0x0642, B:214:0x0673, B:216:0x0679, B:218:0x0687, B:219:0x068b, B:220:0x068e, B:221:0x0691, B:222:0x069f, B:224:0x06a5, B:226:0x06b5, B:227:0x06bc, B:229:0x06c8, B:230:0x06cf, B:231:0x06d2, B:233:0x0712, B:234:0x0725, B:236:0x072b, B:239:0x0745, B:241:0x0760, B:243:0x0779, B:245:0x077e, B:247:0x0782, B:249:0x0786, B:251:0x0790, B:252:0x079a, B:254:0x079e, B:256:0x07a4, B:257:0x07b2, B:258:0x07bb, B:326:0x0a0b, B:260:0x07c8, B:262:0x07df, B:268:0x07fb, B:270:0x081f, B:271:0x0827, B:273:0x082d, B:275:0x083f, B:282:0x0868, B:283:0x088b, B:285:0x0897, B:287:0x08ac, B:289:0x08ed, B:293:0x0905, B:295:0x090c, B:297:0x091b, B:299:0x091f, B:301:0x0923, B:303:0x0927, B:304:0x0933, B:305:0x0938, B:307:0x093e, B:309:0x095a, B:310:0x095f, B:325:0x0a08, B:311:0x097a, B:313:0x0982, B:317:0x09a9, B:319:0x09d5, B:320:0x09dc, B:321:0x09ee, B:323:0x09f8, B:314:0x098f, B:280:0x0853, B:266:0x07e6, B:327:0x0a17, B:329:0x0a25, B:330:0x0a2b, B:331:0x0a33, B:333:0x0a39, B:336:0x0a53, B:338:0x0a64, B:358:0x0ad8, B:360:0x0ade, B:362:0x0af6, B:365:0x0afd, B:370:0x0b2c, B:372:0x0b6e, B:375:0x0ba3, B:376:0x0ba7, B:377:0x0bb2, B:379:0x0bf5, B:380:0x0c02, B:382:0x0c11, B:386:0x0c2b, B:388:0x0c44, B:374:0x0b80, B:366:0x0b05, B:368:0x0b11, B:369:0x0b15, B:389:0x0c5c, B:390:0x0c74, B:393:0x0c7c, B:394:0x0c81, B:395:0x0c91, B:397:0x0cab, B:398:0x0cc6, B:400:0x0cd0, B:405:0x0cf3, B:404:0x0ce0, B:339:0x0a7c, B:341:0x0a82, B:343:0x0a8c, B:345:0x0a93, B:351:0x0aa3, B:353:0x0aaa, B:355:0x0ac9, B:357:0x0ad0, B:356:0x0acd, B:352:0x0aa7, B:344:0x0a90, B:202:0x05da, B:204:0x05e0, B:408:0x0d05), top: B:420:0x000e, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:109:0x038e A[Catch: all -> 0x0d17, TryCatch #3 {all -> 0x0d17, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:173:0x0538, B:24:0x00f3, B:26:0x0101, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:111:0x03a7, B:112:0x03b3, B:115:0x03bd, B:121:0x03e0, B:118:0x03cf, B:143:0x045f, B:145:0x046b, B:148:0x047e, B:150:0x048f, B:152:0x049b, B:172:0x0524, B:157:0x04c5, B:159:0x04d5, B:162:0x04ea, B:164:0x04fb, B:166:0x0507, B:125:0x03e8, B:127:0x03f4, B:129:0x0400, B:141:0x0445, B:133:0x041d, B:136:0x042f, B:138:0x0435, B:140:0x043f, B:68:0x01e4, B:71:0x01ee, B:73:0x01fc, B:77:0x0243, B:74:0x0219, B:76:0x022a, B:81:0x0252, B:83:0x027e, B:84:0x02a8, B:86:0x02de, B:88:0x02e4, B:91:0x02f0, B:93:0x0326, B:94:0x0341, B:96:0x0347, B:98:0x0355, B:102:0x0368, B:99:0x035d, B:105:0x036f, B:108:0x0376, B:109:0x038e, B:176:0x054d, B:178:0x055b, B:180:0x0566, B:191:0x0598, B:181:0x056e, B:183:0x0579, B:185:0x057f, B:188:0x058b, B:190:0x0593, B:192:0x059b, B:193:0x05a7, B:196:0x05af, B:198:0x05c1, B:199:0x05cd, B:201:0x05d5, B:205:0x05fa, B:207:0x061f, B:209:0x0630, B:211:0x0636, B:213:0x0642, B:214:0x0673, B:216:0x0679, B:218:0x0687, B:219:0x068b, B:220:0x068e, B:221:0x0691, B:222:0x069f, B:224:0x06a5, B:226:0x06b5, B:227:0x06bc, B:229:0x06c8, B:230:0x06cf, B:231:0x06d2, B:233:0x0712, B:234:0x0725, B:236:0x072b, B:239:0x0745, B:241:0x0760, B:243:0x0779, B:245:0x077e, B:247:0x0782, B:249:0x0786, B:251:0x0790, B:252:0x079a, B:254:0x079e, B:256:0x07a4, B:257:0x07b2, B:258:0x07bb, B:326:0x0a0b, B:260:0x07c8, B:262:0x07df, B:268:0x07fb, B:270:0x081f, B:271:0x0827, B:273:0x082d, B:275:0x083f, B:282:0x0868, B:283:0x088b, B:285:0x0897, B:287:0x08ac, B:289:0x08ed, B:293:0x0905, B:295:0x090c, B:297:0x091b, B:299:0x091f, B:301:0x0923, B:303:0x0927, B:304:0x0933, B:305:0x0938, B:307:0x093e, B:309:0x095a, B:310:0x095f, B:325:0x0a08, B:311:0x097a, B:313:0x0982, B:317:0x09a9, B:319:0x09d5, B:320:0x09dc, B:321:0x09ee, B:323:0x09f8, B:314:0x098f, B:280:0x0853, B:266:0x07e6, B:327:0x0a17, B:329:0x0a25, B:330:0x0a2b, B:331:0x0a33, B:333:0x0a39, B:336:0x0a53, B:338:0x0a64, B:358:0x0ad8, B:360:0x0ade, B:362:0x0af6, B:365:0x0afd, B:370:0x0b2c, B:372:0x0b6e, B:375:0x0ba3, B:376:0x0ba7, B:377:0x0bb2, B:379:0x0bf5, B:380:0x0c02, B:382:0x0c11, B:386:0x0c2b, B:388:0x0c44, B:374:0x0b80, B:366:0x0b05, B:368:0x0b11, B:369:0x0b15, B:389:0x0c5c, B:390:0x0c74, B:393:0x0c7c, B:394:0x0c81, B:395:0x0c91, B:397:0x0cab, B:398:0x0cc6, B:400:0x0cd0, B:405:0x0cf3, B:404:0x0ce0, B:339:0x0a7c, B:341:0x0a82, B:343:0x0a8c, B:345:0x0a93, B:351:0x0aa3, B:353:0x0aaa, B:355:0x0ac9, B:357:0x0ad0, B:356:0x0acd, B:352:0x0aa7, B:344:0x0a90, B:202:0x05da, B:204:0x05e0, B:408:0x0d05), top: B:420:0x000e, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:111:0x03a7 A[Catch: all -> 0x0d17, TryCatch #3 {all -> 0x0d17, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:173:0x0538, B:24:0x00f3, B:26:0x0101, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:111:0x03a7, B:112:0x03b3, B:115:0x03bd, B:121:0x03e0, B:118:0x03cf, B:143:0x045f, B:145:0x046b, B:148:0x047e, B:150:0x048f, B:152:0x049b, B:172:0x0524, B:157:0x04c5, B:159:0x04d5, B:162:0x04ea, B:164:0x04fb, B:166:0x0507, B:125:0x03e8, B:127:0x03f4, B:129:0x0400, B:141:0x0445, B:133:0x041d, B:136:0x042f, B:138:0x0435, B:140:0x043f, B:68:0x01e4, B:71:0x01ee, B:73:0x01fc, B:77:0x0243, B:74:0x0219, B:76:0x022a, B:81:0x0252, B:83:0x027e, B:84:0x02a8, B:86:0x02de, B:88:0x02e4, B:91:0x02f0, B:93:0x0326, B:94:0x0341, B:96:0x0347, B:98:0x0355, B:102:0x0368, B:99:0x035d, B:105:0x036f, B:108:0x0376, B:109:0x038e, B:176:0x054d, B:178:0x055b, B:180:0x0566, B:191:0x0598, B:181:0x056e, B:183:0x0579, B:185:0x057f, B:188:0x058b, B:190:0x0593, B:192:0x059b, B:193:0x05a7, B:196:0x05af, B:198:0x05c1, B:199:0x05cd, B:201:0x05d5, B:205:0x05fa, B:207:0x061f, B:209:0x0630, B:211:0x0636, B:213:0x0642, B:214:0x0673, B:216:0x0679, B:218:0x0687, B:219:0x068b, B:220:0x068e, B:221:0x0691, B:222:0x069f, B:224:0x06a5, B:226:0x06b5, B:227:0x06bc, B:229:0x06c8, B:230:0x06cf, B:231:0x06d2, B:233:0x0712, B:234:0x0725, B:236:0x072b, B:239:0x0745, B:241:0x0760, B:243:0x0779, B:245:0x077e, B:247:0x0782, B:249:0x0786, B:251:0x0790, B:252:0x079a, B:254:0x079e, B:256:0x07a4, B:257:0x07b2, B:258:0x07bb, B:326:0x0a0b, B:260:0x07c8, B:262:0x07df, B:268:0x07fb, B:270:0x081f, B:271:0x0827, B:273:0x082d, B:275:0x083f, B:282:0x0868, B:283:0x088b, B:285:0x0897, B:287:0x08ac, B:289:0x08ed, B:293:0x0905, B:295:0x090c, B:297:0x091b, B:299:0x091f, B:301:0x0923, B:303:0x0927, B:304:0x0933, B:305:0x0938, B:307:0x093e, B:309:0x095a, B:310:0x095f, B:325:0x0a08, B:311:0x097a, B:313:0x0982, B:317:0x09a9, B:319:0x09d5, B:320:0x09dc, B:321:0x09ee, B:323:0x09f8, B:314:0x098f, B:280:0x0853, B:266:0x07e6, B:327:0x0a17, B:329:0x0a25, B:330:0x0a2b, B:331:0x0a33, B:333:0x0a39, B:336:0x0a53, B:338:0x0a64, B:358:0x0ad8, B:360:0x0ade, B:362:0x0af6, B:365:0x0afd, B:370:0x0b2c, B:372:0x0b6e, B:375:0x0ba3, B:376:0x0ba7, B:377:0x0bb2, B:379:0x0bf5, B:380:0x0c02, B:382:0x0c11, B:386:0x0c2b, B:388:0x0c44, B:374:0x0b80, B:366:0x0b05, B:368:0x0b11, B:369:0x0b15, B:389:0x0c5c, B:390:0x0c74, B:393:0x0c7c, B:394:0x0c81, B:395:0x0c91, B:397:0x0cab, B:398:0x0cc6, B:400:0x0cd0, B:405:0x0cf3, B:404:0x0ce0, B:339:0x0a7c, B:341:0x0a82, B:343:0x0a8c, B:345:0x0a93, B:351:0x0aa3, B:353:0x0aaa, B:355:0x0ac9, B:357:0x0ad0, B:356:0x0acd, B:352:0x0aa7, B:344:0x0a90, B:202:0x05da, B:204:0x05e0, B:408:0x0d05), top: B:420:0x000e, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x045e  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x046b A[Catch: all -> 0x0d17, TryCatch #3 {all -> 0x0d17, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:173:0x0538, B:24:0x00f3, B:26:0x0101, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:111:0x03a7, B:112:0x03b3, B:115:0x03bd, B:121:0x03e0, B:118:0x03cf, B:143:0x045f, B:145:0x046b, B:148:0x047e, B:150:0x048f, B:152:0x049b, B:172:0x0524, B:157:0x04c5, B:159:0x04d5, B:162:0x04ea, B:164:0x04fb, B:166:0x0507, B:125:0x03e8, B:127:0x03f4, B:129:0x0400, B:141:0x0445, B:133:0x041d, B:136:0x042f, B:138:0x0435, B:140:0x043f, B:68:0x01e4, B:71:0x01ee, B:73:0x01fc, B:77:0x0243, B:74:0x0219, B:76:0x022a, B:81:0x0252, B:83:0x027e, B:84:0x02a8, B:86:0x02de, B:88:0x02e4, B:91:0x02f0, B:93:0x0326, B:94:0x0341, B:96:0x0347, B:98:0x0355, B:102:0x0368, B:99:0x035d, B:105:0x036f, B:108:0x0376, B:109:0x038e, B:176:0x054d, B:178:0x055b, B:180:0x0566, B:191:0x0598, B:181:0x056e, B:183:0x0579, B:185:0x057f, B:188:0x058b, B:190:0x0593, B:192:0x059b, B:193:0x05a7, B:196:0x05af, B:198:0x05c1, B:199:0x05cd, B:201:0x05d5, B:205:0x05fa, B:207:0x061f, B:209:0x0630, B:211:0x0636, B:213:0x0642, B:214:0x0673, B:216:0x0679, B:218:0x0687, B:219:0x068b, B:220:0x068e, B:221:0x0691, B:222:0x069f, B:224:0x06a5, B:226:0x06b5, B:227:0x06bc, B:229:0x06c8, B:230:0x06cf, B:231:0x06d2, B:233:0x0712, B:234:0x0725, B:236:0x072b, B:239:0x0745, B:241:0x0760, B:243:0x0779, B:245:0x077e, B:247:0x0782, B:249:0x0786, B:251:0x0790, B:252:0x079a, B:254:0x079e, B:256:0x07a4, B:257:0x07b2, B:258:0x07bb, B:326:0x0a0b, B:260:0x07c8, B:262:0x07df, B:268:0x07fb, B:270:0x081f, B:271:0x0827, B:273:0x082d, B:275:0x083f, B:282:0x0868, B:283:0x088b, B:285:0x0897, B:287:0x08ac, B:289:0x08ed, B:293:0x0905, B:295:0x090c, B:297:0x091b, B:299:0x091f, B:301:0x0923, B:303:0x0927, B:304:0x0933, B:305:0x0938, B:307:0x093e, B:309:0x095a, B:310:0x095f, B:325:0x0a08, B:311:0x097a, B:313:0x0982, B:317:0x09a9, B:319:0x09d5, B:320:0x09dc, B:321:0x09ee, B:323:0x09f8, B:314:0x098f, B:280:0x0853, B:266:0x07e6, B:327:0x0a17, B:329:0x0a25, B:330:0x0a2b, B:331:0x0a33, B:333:0x0a39, B:336:0x0a53, B:338:0x0a64, B:358:0x0ad8, B:360:0x0ade, B:362:0x0af6, B:365:0x0afd, B:370:0x0b2c, B:372:0x0b6e, B:375:0x0ba3, B:376:0x0ba7, B:377:0x0bb2, B:379:0x0bf5, B:380:0x0c02, B:382:0x0c11, B:386:0x0c2b, B:388:0x0c44, B:374:0x0b80, B:366:0x0b05, B:368:0x0b11, B:369:0x0b15, B:389:0x0c5c, B:390:0x0c74, B:393:0x0c7c, B:394:0x0c81, B:395:0x0c91, B:397:0x0cab, B:398:0x0cc6, B:400:0x0cd0, B:405:0x0cf3, B:404:0x0ce0, B:339:0x0a7c, B:341:0x0a82, B:343:0x0a8c, B:345:0x0a93, B:351:0x0aa3, B:353:0x0aaa, B:355:0x0ac9, B:357:0x0ad0, B:356:0x0acd, B:352:0x0aa7, B:344:0x0a90, B:202:0x05da, B:204:0x05e0, B:408:0x0d05), top: B:420:0x000e, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:157:0x04c5 A[Catch: all -> 0x0d17, TryCatch #3 {all -> 0x0d17, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:173:0x0538, B:24:0x00f3, B:26:0x0101, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:111:0x03a7, B:112:0x03b3, B:115:0x03bd, B:121:0x03e0, B:118:0x03cf, B:143:0x045f, B:145:0x046b, B:148:0x047e, B:150:0x048f, B:152:0x049b, B:172:0x0524, B:157:0x04c5, B:159:0x04d5, B:162:0x04ea, B:164:0x04fb, B:166:0x0507, B:125:0x03e8, B:127:0x03f4, B:129:0x0400, B:141:0x0445, B:133:0x041d, B:136:0x042f, B:138:0x0435, B:140:0x043f, B:68:0x01e4, B:71:0x01ee, B:73:0x01fc, B:77:0x0243, B:74:0x0219, B:76:0x022a, B:81:0x0252, B:83:0x027e, B:84:0x02a8, B:86:0x02de, B:88:0x02e4, B:91:0x02f0, B:93:0x0326, B:94:0x0341, B:96:0x0347, B:98:0x0355, B:102:0x0368, B:99:0x035d, B:105:0x036f, B:108:0x0376, B:109:0x038e, B:176:0x054d, B:178:0x055b, B:180:0x0566, B:191:0x0598, B:181:0x056e, B:183:0x0579, B:185:0x057f, B:188:0x058b, B:190:0x0593, B:192:0x059b, B:193:0x05a7, B:196:0x05af, B:198:0x05c1, B:199:0x05cd, B:201:0x05d5, B:205:0x05fa, B:207:0x061f, B:209:0x0630, B:211:0x0636, B:213:0x0642, B:214:0x0673, B:216:0x0679, B:218:0x0687, B:219:0x068b, B:220:0x068e, B:221:0x0691, B:222:0x069f, B:224:0x06a5, B:226:0x06b5, B:227:0x06bc, B:229:0x06c8, B:230:0x06cf, B:231:0x06d2, B:233:0x0712, B:234:0x0725, B:236:0x072b, B:239:0x0745, B:241:0x0760, B:243:0x0779, B:245:0x077e, B:247:0x0782, B:249:0x0786, B:251:0x0790, B:252:0x079a, B:254:0x079e, B:256:0x07a4, B:257:0x07b2, B:258:0x07bb, B:326:0x0a0b, B:260:0x07c8, B:262:0x07df, B:268:0x07fb, B:270:0x081f, B:271:0x0827, B:273:0x082d, B:275:0x083f, B:282:0x0868, B:283:0x088b, B:285:0x0897, B:287:0x08ac, B:289:0x08ed, B:293:0x0905, B:295:0x090c, B:297:0x091b, B:299:0x091f, B:301:0x0923, B:303:0x0927, B:304:0x0933, B:305:0x0938, B:307:0x093e, B:309:0x095a, B:310:0x095f, B:325:0x0a08, B:311:0x097a, B:313:0x0982, B:317:0x09a9, B:319:0x09d5, B:320:0x09dc, B:321:0x09ee, B:323:0x09f8, B:314:0x098f, B:280:0x0853, B:266:0x07e6, B:327:0x0a17, B:329:0x0a25, B:330:0x0a2b, B:331:0x0a33, B:333:0x0a39, B:336:0x0a53, B:338:0x0a64, B:358:0x0ad8, B:360:0x0ade, B:362:0x0af6, B:365:0x0afd, B:370:0x0b2c, B:372:0x0b6e, B:375:0x0ba3, B:376:0x0ba7, B:377:0x0bb2, B:379:0x0bf5, B:380:0x0c02, B:382:0x0c11, B:386:0x0c2b, B:388:0x0c44, B:374:0x0b80, B:366:0x0b05, B:368:0x0b11, B:369:0x0b15, B:389:0x0c5c, B:390:0x0c74, B:393:0x0c7c, B:394:0x0c81, B:395:0x0c91, B:397:0x0cab, B:398:0x0cc6, B:400:0x0cd0, B:405:0x0cf3, B:404:0x0ce0, B:339:0x0a7c, B:341:0x0a82, B:343:0x0a8c, B:345:0x0a93, B:351:0x0aa3, B:353:0x0aaa, B:355:0x0ac9, B:357:0x0ad0, B:356:0x0acd, B:352:0x0aa7, B:344:0x0a90, B:202:0x05da, B:204:0x05e0, B:408:0x0d05), top: B:420:0x000e, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:170:0x051f A[PHI: r6 r10
      0x051f: PHI (r6v65 int) = (r6v64 int), (r6v64 int), (r6v68 int) binds: [B:158:0x04d3, B:160:0x04e6, B:156:0x04c0] A[DONT_GENERATE, DONT_INLINE]
      0x051f: PHI (r10v50 com.google.android.gms.internal.measurement.zzgb) = 
      (r10v48 com.google.android.gms.internal.measurement.zzgb)
      (r10v48 com.google.android.gms.internal.measurement.zzgb)
      (r10v52 com.google.android.gms.internal.measurement.zzgb)
     binds: [B:158:0x04d3, B:160:0x04e6, B:156:0x04c0] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:181:0x056e A[Catch: all -> 0x0d17, TryCatch #3 {all -> 0x0d17, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:173:0x0538, B:24:0x00f3, B:26:0x0101, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:111:0x03a7, B:112:0x03b3, B:115:0x03bd, B:121:0x03e0, B:118:0x03cf, B:143:0x045f, B:145:0x046b, B:148:0x047e, B:150:0x048f, B:152:0x049b, B:172:0x0524, B:157:0x04c5, B:159:0x04d5, B:162:0x04ea, B:164:0x04fb, B:166:0x0507, B:125:0x03e8, B:127:0x03f4, B:129:0x0400, B:141:0x0445, B:133:0x041d, B:136:0x042f, B:138:0x0435, B:140:0x043f, B:68:0x01e4, B:71:0x01ee, B:73:0x01fc, B:77:0x0243, B:74:0x0219, B:76:0x022a, B:81:0x0252, B:83:0x027e, B:84:0x02a8, B:86:0x02de, B:88:0x02e4, B:91:0x02f0, B:93:0x0326, B:94:0x0341, B:96:0x0347, B:98:0x0355, B:102:0x0368, B:99:0x035d, B:105:0x036f, B:108:0x0376, B:109:0x038e, B:176:0x054d, B:178:0x055b, B:180:0x0566, B:191:0x0598, B:181:0x056e, B:183:0x0579, B:185:0x057f, B:188:0x058b, B:190:0x0593, B:192:0x059b, B:193:0x05a7, B:196:0x05af, B:198:0x05c1, B:199:0x05cd, B:201:0x05d5, B:205:0x05fa, B:207:0x061f, B:209:0x0630, B:211:0x0636, B:213:0x0642, B:214:0x0673, B:216:0x0679, B:218:0x0687, B:219:0x068b, B:220:0x068e, B:221:0x0691, B:222:0x069f, B:224:0x06a5, B:226:0x06b5, B:227:0x06bc, B:229:0x06c8, B:230:0x06cf, B:231:0x06d2, B:233:0x0712, B:234:0x0725, B:236:0x072b, B:239:0x0745, B:241:0x0760, B:243:0x0779, B:245:0x077e, B:247:0x0782, B:249:0x0786, B:251:0x0790, B:252:0x079a, B:254:0x079e, B:256:0x07a4, B:257:0x07b2, B:258:0x07bb, B:326:0x0a0b, B:260:0x07c8, B:262:0x07df, B:268:0x07fb, B:270:0x081f, B:271:0x0827, B:273:0x082d, B:275:0x083f, B:282:0x0868, B:283:0x088b, B:285:0x0897, B:287:0x08ac, B:289:0x08ed, B:293:0x0905, B:295:0x090c, B:297:0x091b, B:299:0x091f, B:301:0x0923, B:303:0x0927, B:304:0x0933, B:305:0x0938, B:307:0x093e, B:309:0x095a, B:310:0x095f, B:325:0x0a08, B:311:0x097a, B:313:0x0982, B:317:0x09a9, B:319:0x09d5, B:320:0x09dc, B:321:0x09ee, B:323:0x09f8, B:314:0x098f, B:280:0x0853, B:266:0x07e6, B:327:0x0a17, B:329:0x0a25, B:330:0x0a2b, B:331:0x0a33, B:333:0x0a39, B:336:0x0a53, B:338:0x0a64, B:358:0x0ad8, B:360:0x0ade, B:362:0x0af6, B:365:0x0afd, B:370:0x0b2c, B:372:0x0b6e, B:375:0x0ba3, B:376:0x0ba7, B:377:0x0bb2, B:379:0x0bf5, B:380:0x0c02, B:382:0x0c11, B:386:0x0c2b, B:388:0x0c44, B:374:0x0b80, B:366:0x0b05, B:368:0x0b11, B:369:0x0b15, B:389:0x0c5c, B:390:0x0c74, B:393:0x0c7c, B:394:0x0c81, B:395:0x0c91, B:397:0x0cab, B:398:0x0cc6, B:400:0x0cd0, B:405:0x0cf3, B:404:0x0ce0, B:339:0x0a7c, B:341:0x0a82, B:343:0x0a8c, B:345:0x0a93, B:351:0x0aa3, B:353:0x0aaa, B:355:0x0ac9, B:357:0x0ad0, B:356:0x0acd, B:352:0x0aa7, B:344:0x0a90, B:202:0x05da, B:204:0x05e0, B:408:0x0d05), top: B:420:0x000e, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:270:0x081f A[Catch: all -> 0x0d17, TryCatch #3 {all -> 0x0d17, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:173:0x0538, B:24:0x00f3, B:26:0x0101, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:111:0x03a7, B:112:0x03b3, B:115:0x03bd, B:121:0x03e0, B:118:0x03cf, B:143:0x045f, B:145:0x046b, B:148:0x047e, B:150:0x048f, B:152:0x049b, B:172:0x0524, B:157:0x04c5, B:159:0x04d5, B:162:0x04ea, B:164:0x04fb, B:166:0x0507, B:125:0x03e8, B:127:0x03f4, B:129:0x0400, B:141:0x0445, B:133:0x041d, B:136:0x042f, B:138:0x0435, B:140:0x043f, B:68:0x01e4, B:71:0x01ee, B:73:0x01fc, B:77:0x0243, B:74:0x0219, B:76:0x022a, B:81:0x0252, B:83:0x027e, B:84:0x02a8, B:86:0x02de, B:88:0x02e4, B:91:0x02f0, B:93:0x0326, B:94:0x0341, B:96:0x0347, B:98:0x0355, B:102:0x0368, B:99:0x035d, B:105:0x036f, B:108:0x0376, B:109:0x038e, B:176:0x054d, B:178:0x055b, B:180:0x0566, B:191:0x0598, B:181:0x056e, B:183:0x0579, B:185:0x057f, B:188:0x058b, B:190:0x0593, B:192:0x059b, B:193:0x05a7, B:196:0x05af, B:198:0x05c1, B:199:0x05cd, B:201:0x05d5, B:205:0x05fa, B:207:0x061f, B:209:0x0630, B:211:0x0636, B:213:0x0642, B:214:0x0673, B:216:0x0679, B:218:0x0687, B:219:0x068b, B:220:0x068e, B:221:0x0691, B:222:0x069f, B:224:0x06a5, B:226:0x06b5, B:227:0x06bc, B:229:0x06c8, B:230:0x06cf, B:231:0x06d2, B:233:0x0712, B:234:0x0725, B:236:0x072b, B:239:0x0745, B:241:0x0760, B:243:0x0779, B:245:0x077e, B:247:0x0782, B:249:0x0786, B:251:0x0790, B:252:0x079a, B:254:0x079e, B:256:0x07a4, B:257:0x07b2, B:258:0x07bb, B:326:0x0a0b, B:260:0x07c8, B:262:0x07df, B:268:0x07fb, B:270:0x081f, B:271:0x0827, B:273:0x082d, B:275:0x083f, B:282:0x0868, B:283:0x088b, B:285:0x0897, B:287:0x08ac, B:289:0x08ed, B:293:0x0905, B:295:0x090c, B:297:0x091b, B:299:0x091f, B:301:0x0923, B:303:0x0927, B:304:0x0933, B:305:0x0938, B:307:0x093e, B:309:0x095a, B:310:0x095f, B:325:0x0a08, B:311:0x097a, B:313:0x0982, B:317:0x09a9, B:319:0x09d5, B:320:0x09dc, B:321:0x09ee, B:323:0x09f8, B:314:0x098f, B:280:0x0853, B:266:0x07e6, B:327:0x0a17, B:329:0x0a25, B:330:0x0a2b, B:331:0x0a33, B:333:0x0a39, B:336:0x0a53, B:338:0x0a64, B:358:0x0ad8, B:360:0x0ade, B:362:0x0af6, B:365:0x0afd, B:370:0x0b2c, B:372:0x0b6e, B:375:0x0ba3, B:376:0x0ba7, B:377:0x0bb2, B:379:0x0bf5, B:380:0x0c02, B:382:0x0c11, B:386:0x0c2b, B:388:0x0c44, B:374:0x0b80, B:366:0x0b05, B:368:0x0b11, B:369:0x0b15, B:389:0x0c5c, B:390:0x0c74, B:393:0x0c7c, B:394:0x0c81, B:395:0x0c91, B:397:0x0cab, B:398:0x0cc6, B:400:0x0cd0, B:405:0x0cf3, B:404:0x0ce0, B:339:0x0a7c, B:341:0x0a82, B:343:0x0a8c, B:345:0x0a93, B:351:0x0aa3, B:353:0x0aaa, B:355:0x0ac9, B:357:0x0ad0, B:356:0x0acd, B:352:0x0aa7, B:344:0x0a90, B:202:0x05da, B:204:0x05e0, B:408:0x0d05), top: B:420:0x000e, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:280:0x0853 A[Catch: all -> 0x0d17, EDGE_INSN: B:462:0x0853->B:280:0x0853 BREAK  A[LOOP:11: B:271:0x0827->B:279:0x0850], TryCatch #3 {all -> 0x0d17, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:173:0x0538, B:24:0x00f3, B:26:0x0101, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:111:0x03a7, B:112:0x03b3, B:115:0x03bd, B:121:0x03e0, B:118:0x03cf, B:143:0x045f, B:145:0x046b, B:148:0x047e, B:150:0x048f, B:152:0x049b, B:172:0x0524, B:157:0x04c5, B:159:0x04d5, B:162:0x04ea, B:164:0x04fb, B:166:0x0507, B:125:0x03e8, B:127:0x03f4, B:129:0x0400, B:141:0x0445, B:133:0x041d, B:136:0x042f, B:138:0x0435, B:140:0x043f, B:68:0x01e4, B:71:0x01ee, B:73:0x01fc, B:77:0x0243, B:74:0x0219, B:76:0x022a, B:81:0x0252, B:83:0x027e, B:84:0x02a8, B:86:0x02de, B:88:0x02e4, B:91:0x02f0, B:93:0x0326, B:94:0x0341, B:96:0x0347, B:98:0x0355, B:102:0x0368, B:99:0x035d, B:105:0x036f, B:108:0x0376, B:109:0x038e, B:176:0x054d, B:178:0x055b, B:180:0x0566, B:191:0x0598, B:181:0x056e, B:183:0x0579, B:185:0x057f, B:188:0x058b, B:190:0x0593, B:192:0x059b, B:193:0x05a7, B:196:0x05af, B:198:0x05c1, B:199:0x05cd, B:201:0x05d5, B:205:0x05fa, B:207:0x061f, B:209:0x0630, B:211:0x0636, B:213:0x0642, B:214:0x0673, B:216:0x0679, B:218:0x0687, B:219:0x068b, B:220:0x068e, B:221:0x0691, B:222:0x069f, B:224:0x06a5, B:226:0x06b5, B:227:0x06bc, B:229:0x06c8, B:230:0x06cf, B:231:0x06d2, B:233:0x0712, B:234:0x0725, B:236:0x072b, B:239:0x0745, B:241:0x0760, B:243:0x0779, B:245:0x077e, B:247:0x0782, B:249:0x0786, B:251:0x0790, B:252:0x079a, B:254:0x079e, B:256:0x07a4, B:257:0x07b2, B:258:0x07bb, B:326:0x0a0b, B:260:0x07c8, B:262:0x07df, B:268:0x07fb, B:270:0x081f, B:271:0x0827, B:273:0x082d, B:275:0x083f, B:282:0x0868, B:283:0x088b, B:285:0x0897, B:287:0x08ac, B:289:0x08ed, B:293:0x0905, B:295:0x090c, B:297:0x091b, B:299:0x091f, B:301:0x0923, B:303:0x0927, B:304:0x0933, B:305:0x0938, B:307:0x093e, B:309:0x095a, B:310:0x095f, B:325:0x0a08, B:311:0x097a, B:313:0x0982, B:317:0x09a9, B:319:0x09d5, B:320:0x09dc, B:321:0x09ee, B:323:0x09f8, B:314:0x098f, B:280:0x0853, B:266:0x07e6, B:327:0x0a17, B:329:0x0a25, B:330:0x0a2b, B:331:0x0a33, B:333:0x0a39, B:336:0x0a53, B:338:0x0a64, B:358:0x0ad8, B:360:0x0ade, B:362:0x0af6, B:365:0x0afd, B:370:0x0b2c, B:372:0x0b6e, B:375:0x0ba3, B:376:0x0ba7, B:377:0x0bb2, B:379:0x0bf5, B:380:0x0c02, B:382:0x0c11, B:386:0x0c2b, B:388:0x0c44, B:374:0x0b80, B:366:0x0b05, B:368:0x0b11, B:369:0x0b15, B:389:0x0c5c, B:390:0x0c74, B:393:0x0c7c, B:394:0x0c81, B:395:0x0c91, B:397:0x0cab, B:398:0x0cc6, B:400:0x0cd0, B:405:0x0cf3, B:404:0x0ce0, B:339:0x0a7c, B:341:0x0a82, B:343:0x0a8c, B:345:0x0a93, B:351:0x0aa3, B:353:0x0aaa, B:355:0x0ac9, B:357:0x0ad0, B:356:0x0acd, B:352:0x0aa7, B:344:0x0a90, B:202:0x05da, B:204:0x05e0, B:408:0x0d05), top: B:420:0x000e, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:282:0x0868 A[Catch: all -> 0x0d17, TryCatch #3 {all -> 0x0d17, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:173:0x0538, B:24:0x00f3, B:26:0x0101, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:111:0x03a7, B:112:0x03b3, B:115:0x03bd, B:121:0x03e0, B:118:0x03cf, B:143:0x045f, B:145:0x046b, B:148:0x047e, B:150:0x048f, B:152:0x049b, B:172:0x0524, B:157:0x04c5, B:159:0x04d5, B:162:0x04ea, B:164:0x04fb, B:166:0x0507, B:125:0x03e8, B:127:0x03f4, B:129:0x0400, B:141:0x0445, B:133:0x041d, B:136:0x042f, B:138:0x0435, B:140:0x043f, B:68:0x01e4, B:71:0x01ee, B:73:0x01fc, B:77:0x0243, B:74:0x0219, B:76:0x022a, B:81:0x0252, B:83:0x027e, B:84:0x02a8, B:86:0x02de, B:88:0x02e4, B:91:0x02f0, B:93:0x0326, B:94:0x0341, B:96:0x0347, B:98:0x0355, B:102:0x0368, B:99:0x035d, B:105:0x036f, B:108:0x0376, B:109:0x038e, B:176:0x054d, B:178:0x055b, B:180:0x0566, B:191:0x0598, B:181:0x056e, B:183:0x0579, B:185:0x057f, B:188:0x058b, B:190:0x0593, B:192:0x059b, B:193:0x05a7, B:196:0x05af, B:198:0x05c1, B:199:0x05cd, B:201:0x05d5, B:205:0x05fa, B:207:0x061f, B:209:0x0630, B:211:0x0636, B:213:0x0642, B:214:0x0673, B:216:0x0679, B:218:0x0687, B:219:0x068b, B:220:0x068e, B:221:0x0691, B:222:0x069f, B:224:0x06a5, B:226:0x06b5, B:227:0x06bc, B:229:0x06c8, B:230:0x06cf, B:231:0x06d2, B:233:0x0712, B:234:0x0725, B:236:0x072b, B:239:0x0745, B:241:0x0760, B:243:0x0779, B:245:0x077e, B:247:0x0782, B:249:0x0786, B:251:0x0790, B:252:0x079a, B:254:0x079e, B:256:0x07a4, B:257:0x07b2, B:258:0x07bb, B:326:0x0a0b, B:260:0x07c8, B:262:0x07df, B:268:0x07fb, B:270:0x081f, B:271:0x0827, B:273:0x082d, B:275:0x083f, B:282:0x0868, B:283:0x088b, B:285:0x0897, B:287:0x08ac, B:289:0x08ed, B:293:0x0905, B:295:0x090c, B:297:0x091b, B:299:0x091f, B:301:0x0923, B:303:0x0927, B:304:0x0933, B:305:0x0938, B:307:0x093e, B:309:0x095a, B:310:0x095f, B:325:0x0a08, B:311:0x097a, B:313:0x0982, B:317:0x09a9, B:319:0x09d5, B:320:0x09dc, B:321:0x09ee, B:323:0x09f8, B:314:0x098f, B:280:0x0853, B:266:0x07e6, B:327:0x0a17, B:329:0x0a25, B:330:0x0a2b, B:331:0x0a33, B:333:0x0a39, B:336:0x0a53, B:338:0x0a64, B:358:0x0ad8, B:360:0x0ade, B:362:0x0af6, B:365:0x0afd, B:370:0x0b2c, B:372:0x0b6e, B:375:0x0ba3, B:376:0x0ba7, B:377:0x0bb2, B:379:0x0bf5, B:380:0x0c02, B:382:0x0c11, B:386:0x0c2b, B:388:0x0c44, B:374:0x0b80, B:366:0x0b05, B:368:0x0b11, B:369:0x0b15, B:389:0x0c5c, B:390:0x0c74, B:393:0x0c7c, B:394:0x0c81, B:395:0x0c91, B:397:0x0cab, B:398:0x0cc6, B:400:0x0cd0, B:405:0x0cf3, B:404:0x0ce0, B:339:0x0a7c, B:341:0x0a82, B:343:0x0a8c, B:345:0x0a93, B:351:0x0aa3, B:353:0x0aaa, B:355:0x0ac9, B:357:0x0ad0, B:356:0x0acd, B:352:0x0aa7, B:344:0x0a90, B:202:0x05da, B:204:0x05e0, B:408:0x0d05), top: B:420:0x000e, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:283:0x088b A[Catch: all -> 0x0d17, TryCatch #3 {all -> 0x0d17, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:173:0x0538, B:24:0x00f3, B:26:0x0101, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:111:0x03a7, B:112:0x03b3, B:115:0x03bd, B:121:0x03e0, B:118:0x03cf, B:143:0x045f, B:145:0x046b, B:148:0x047e, B:150:0x048f, B:152:0x049b, B:172:0x0524, B:157:0x04c5, B:159:0x04d5, B:162:0x04ea, B:164:0x04fb, B:166:0x0507, B:125:0x03e8, B:127:0x03f4, B:129:0x0400, B:141:0x0445, B:133:0x041d, B:136:0x042f, B:138:0x0435, B:140:0x043f, B:68:0x01e4, B:71:0x01ee, B:73:0x01fc, B:77:0x0243, B:74:0x0219, B:76:0x022a, B:81:0x0252, B:83:0x027e, B:84:0x02a8, B:86:0x02de, B:88:0x02e4, B:91:0x02f0, B:93:0x0326, B:94:0x0341, B:96:0x0347, B:98:0x0355, B:102:0x0368, B:99:0x035d, B:105:0x036f, B:108:0x0376, B:109:0x038e, B:176:0x054d, B:178:0x055b, B:180:0x0566, B:191:0x0598, B:181:0x056e, B:183:0x0579, B:185:0x057f, B:188:0x058b, B:190:0x0593, B:192:0x059b, B:193:0x05a7, B:196:0x05af, B:198:0x05c1, B:199:0x05cd, B:201:0x05d5, B:205:0x05fa, B:207:0x061f, B:209:0x0630, B:211:0x0636, B:213:0x0642, B:214:0x0673, B:216:0x0679, B:218:0x0687, B:219:0x068b, B:220:0x068e, B:221:0x0691, B:222:0x069f, B:224:0x06a5, B:226:0x06b5, B:227:0x06bc, B:229:0x06c8, B:230:0x06cf, B:231:0x06d2, B:233:0x0712, B:234:0x0725, B:236:0x072b, B:239:0x0745, B:241:0x0760, B:243:0x0779, B:245:0x077e, B:247:0x0782, B:249:0x0786, B:251:0x0790, B:252:0x079a, B:254:0x079e, B:256:0x07a4, B:257:0x07b2, B:258:0x07bb, B:326:0x0a0b, B:260:0x07c8, B:262:0x07df, B:268:0x07fb, B:270:0x081f, B:271:0x0827, B:273:0x082d, B:275:0x083f, B:282:0x0868, B:283:0x088b, B:285:0x0897, B:287:0x08ac, B:289:0x08ed, B:293:0x0905, B:295:0x090c, B:297:0x091b, B:299:0x091f, B:301:0x0923, B:303:0x0927, B:304:0x0933, B:305:0x0938, B:307:0x093e, B:309:0x095a, B:310:0x095f, B:325:0x0a08, B:311:0x097a, B:313:0x0982, B:317:0x09a9, B:319:0x09d5, B:320:0x09dc, B:321:0x09ee, B:323:0x09f8, B:314:0x098f, B:280:0x0853, B:266:0x07e6, B:327:0x0a17, B:329:0x0a25, B:330:0x0a2b, B:331:0x0a33, B:333:0x0a39, B:336:0x0a53, B:338:0x0a64, B:358:0x0ad8, B:360:0x0ade, B:362:0x0af6, B:365:0x0afd, B:370:0x0b2c, B:372:0x0b6e, B:375:0x0ba3, B:376:0x0ba7, B:377:0x0bb2, B:379:0x0bf5, B:380:0x0c02, B:382:0x0c11, B:386:0x0c2b, B:388:0x0c44, B:374:0x0b80, B:366:0x0b05, B:368:0x0b11, B:369:0x0b15, B:389:0x0c5c, B:390:0x0c74, B:393:0x0c7c, B:394:0x0c81, B:395:0x0c91, B:397:0x0cab, B:398:0x0cc6, B:400:0x0cd0, B:405:0x0cf3, B:404:0x0ce0, B:339:0x0a7c, B:341:0x0a82, B:343:0x0a8c, B:345:0x0a93, B:351:0x0aa3, B:353:0x0aaa, B:355:0x0ac9, B:357:0x0ad0, B:356:0x0acd, B:352:0x0aa7, B:344:0x0a90, B:202:0x05da, B:204:0x05e0, B:408:0x0d05), top: B:420:0x000e, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:288:0x08eb A[PHI: r3
      0x08eb: PHI (r3v23 com.google.android.gms.measurement.internal.zzar) = (r3v22 com.google.android.gms.measurement.internal.zzar), (r3v34 com.google.android.gms.measurement.internal.zzar) binds: [B:284:0x0895, B:286:0x08aa] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:374:0x0b80 A[Catch: all -> 0x0d17, TryCatch #3 {all -> 0x0d17, blocks: (B:3:0x000e, B:5:0x0026, B:8:0x002e, B:9:0x0040, B:12:0x0054, B:15:0x007b, B:17:0x00b1, B:20:0x00c3, B:22:0x00cd, B:173:0x0538, B:24:0x00f3, B:26:0x0101, B:29:0x0125, B:31:0x012b, B:33:0x013d, B:35:0x014b, B:37:0x015b, B:38:0x0168, B:39:0x016d, B:42:0x0186, B:111:0x03a7, B:112:0x03b3, B:115:0x03bd, B:121:0x03e0, B:118:0x03cf, B:143:0x045f, B:145:0x046b, B:148:0x047e, B:150:0x048f, B:152:0x049b, B:172:0x0524, B:157:0x04c5, B:159:0x04d5, B:162:0x04ea, B:164:0x04fb, B:166:0x0507, B:125:0x03e8, B:127:0x03f4, B:129:0x0400, B:141:0x0445, B:133:0x041d, B:136:0x042f, B:138:0x0435, B:140:0x043f, B:68:0x01e4, B:71:0x01ee, B:73:0x01fc, B:77:0x0243, B:74:0x0219, B:76:0x022a, B:81:0x0252, B:83:0x027e, B:84:0x02a8, B:86:0x02de, B:88:0x02e4, B:91:0x02f0, B:93:0x0326, B:94:0x0341, B:96:0x0347, B:98:0x0355, B:102:0x0368, B:99:0x035d, B:105:0x036f, B:108:0x0376, B:109:0x038e, B:176:0x054d, B:178:0x055b, B:180:0x0566, B:191:0x0598, B:181:0x056e, B:183:0x0579, B:185:0x057f, B:188:0x058b, B:190:0x0593, B:192:0x059b, B:193:0x05a7, B:196:0x05af, B:198:0x05c1, B:199:0x05cd, B:201:0x05d5, B:205:0x05fa, B:207:0x061f, B:209:0x0630, B:211:0x0636, B:213:0x0642, B:214:0x0673, B:216:0x0679, B:218:0x0687, B:219:0x068b, B:220:0x068e, B:221:0x0691, B:222:0x069f, B:224:0x06a5, B:226:0x06b5, B:227:0x06bc, B:229:0x06c8, B:230:0x06cf, B:231:0x06d2, B:233:0x0712, B:234:0x0725, B:236:0x072b, B:239:0x0745, B:241:0x0760, B:243:0x0779, B:245:0x077e, B:247:0x0782, B:249:0x0786, B:251:0x0790, B:252:0x079a, B:254:0x079e, B:256:0x07a4, B:257:0x07b2, B:258:0x07bb, B:326:0x0a0b, B:260:0x07c8, B:262:0x07df, B:268:0x07fb, B:270:0x081f, B:271:0x0827, B:273:0x082d, B:275:0x083f, B:282:0x0868, B:283:0x088b, B:285:0x0897, B:287:0x08ac, B:289:0x08ed, B:293:0x0905, B:295:0x090c, B:297:0x091b, B:299:0x091f, B:301:0x0923, B:303:0x0927, B:304:0x0933, B:305:0x0938, B:307:0x093e, B:309:0x095a, B:310:0x095f, B:325:0x0a08, B:311:0x097a, B:313:0x0982, B:317:0x09a9, B:319:0x09d5, B:320:0x09dc, B:321:0x09ee, B:323:0x09f8, B:314:0x098f, B:280:0x0853, B:266:0x07e6, B:327:0x0a17, B:329:0x0a25, B:330:0x0a2b, B:331:0x0a33, B:333:0x0a39, B:336:0x0a53, B:338:0x0a64, B:358:0x0ad8, B:360:0x0ade, B:362:0x0af6, B:365:0x0afd, B:370:0x0b2c, B:372:0x0b6e, B:375:0x0ba3, B:376:0x0ba7, B:377:0x0bb2, B:379:0x0bf5, B:380:0x0c02, B:382:0x0c11, B:386:0x0c2b, B:388:0x0c44, B:374:0x0b80, B:366:0x0b05, B:368:0x0b11, B:369:0x0b15, B:389:0x0c5c, B:390:0x0c74, B:393:0x0c7c, B:394:0x0c81, B:395:0x0c91, B:397:0x0cab, B:398:0x0cc6, B:400:0x0cd0, B:405:0x0cf3, B:404:0x0ce0, B:339:0x0a7c, B:341:0x0a82, B:343:0x0a8c, B:345:0x0a93, B:351:0x0aa3, B:353:0x0aaa, B:355:0x0ac9, B:357:0x0ad0, B:356:0x0acd, B:352:0x0aa7, B:344:0x0a90, B:202:0x05da, B:204:0x05e0, B:408:0x0d05), top: B:420:0x000e, inners: #0, #1, #2, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01cb  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final boolean zzag(java.lang.String r42, long r43) {
        /*
            Method dump skipped, instruction units count: 3362
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzli.zzag(java.lang.String, long):boolean");
    }

    private final boolean zzah() {
        zzaA().zzg();
        zzB();
        zzal zzalVar = this.zze;
        zzak(zzalVar);
        if (zzalVar.zzF()) {
            return true;
        }
        zzal zzalVar2 = this.zze;
        zzak(zzalVar2);
        return !TextUtils.isEmpty(zzalVar2.zzr());
    }

    private final boolean zzai(com.google.android.gms.internal.measurement.zzfr zzfrVar, com.google.android.gms.internal.measurement.zzfr zzfrVar2) {
        Preconditions.checkArgument("_e".equals(zzfrVar.zzo()));
        zzak(this.zzi);
        com.google.android.gms.internal.measurement.zzfw zzfwVarZzB = zzlk.zzB((com.google.android.gms.internal.measurement.zzfs) zzfrVar.zzaE(), "_sc");
        String strZzh = zzfwVarZzB == null ? null : zzfwVarZzB.zzh();
        zzak(this.zzi);
        com.google.android.gms.internal.measurement.zzfw zzfwVarZzB2 = zzlk.zzB((com.google.android.gms.internal.measurement.zzfs) zzfrVar2.zzaE(), "_pc");
        String strZzh2 = zzfwVarZzB2 != null ? zzfwVarZzB2.zzh() : null;
        if (strZzh2 == null || !strZzh2.equals(strZzh)) {
            return false;
        }
        Preconditions.checkArgument("_e".equals(zzfrVar.zzo()));
        zzak(this.zzi);
        com.google.android.gms.internal.measurement.zzfw zzfwVarZzB3 = zzlk.zzB((com.google.android.gms.internal.measurement.zzfs) zzfrVar.zzaE(), "_et");
        if (zzfwVarZzB3 == null || !zzfwVarZzB3.zzw() || zzfwVarZzB3.zzd() <= 0) {
            return true;
        }
        long jZzd = zzfwVarZzB3.zzd();
        zzak(this.zzi);
        com.google.android.gms.internal.measurement.zzfw zzfwVarZzB4 = zzlk.zzB((com.google.android.gms.internal.measurement.zzfs) zzfrVar2.zzaE(), "_et");
        if (zzfwVarZzB4 != null && zzfwVarZzB4.zzd() > 0) {
            jZzd += zzfwVarZzB4.zzd();
        }
        zzak(this.zzi);
        zzlk.zzz(zzfrVar2, "_et", Long.valueOf(jZzd));
        zzak(this.zzi);
        zzlk.zzz(zzfrVar, "_fr", 1L);
        return true;
    }

    private static final boolean zzaj(zzp zzpVar) {
        return (TextUtils.isEmpty(zzpVar.zzb) && TextUtils.isEmpty(zzpVar.zzq)) ? false : true;
    }

    private static final zzkw zzak(zzkw zzkwVar) {
        if (zzkwVar == null) {
            throw new IllegalStateException("Upload Component not created");
        }
        if (zzkwVar.zzY()) {
            return zzkwVar;
        }
        throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(zzkwVar.getClass())));
    }

    public static zzli zzt(Context context) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (zzb == null) {
            synchronized (zzli.class) {
                if (zzb == null) {
                    zzb = new zzli((zzlj) Preconditions.checkNotNull(new zzlj(context)), null);
                }
            }
        }
        return zzb;
    }

    static /* bridge */ /* synthetic */ void zzy(zzli zzliVar, zzlj zzljVar) {
        zzliVar.zzaA().zzg();
        zzliVar.zzm = new zzfq(zzliVar);
        zzal zzalVar = new zzal(zzliVar);
        zzalVar.zzX();
        zzliVar.zze = zzalVar;
        zzliVar.zzg().zzq((zzae) Preconditions.checkNotNull(zzliVar.zzc));
        zzkd zzkdVar = new zzkd(zzliVar);
        zzkdVar.zzX();
        zzliVar.zzk = zzkdVar;
        zzz zzzVar = new zzz(zzliVar);
        zzzVar.zzX();
        zzliVar.zzh = zzzVar;
        zzis zzisVar = new zzis(zzliVar);
        zzisVar.zzX();
        zzliVar.zzj = zzisVar;
        zzku zzkuVar = new zzku(zzliVar);
        zzkuVar.zzX();
        zzliVar.zzg = zzkuVar;
        zzliVar.zzf = new zzfg(zzliVar);
        if (zzliVar.zzr != zzliVar.zzs) {
            zzliVar.zzaz().zzd().zzc("Not all upload components initialized", Integer.valueOf(zzliVar.zzr), Integer.valueOf(zzliVar.zzs));
        }
        zzliVar.zzo = true;
    }

    @VisibleForTesting
    @WorkerThread
    final void zzA() {
        zzaA().zzg();
        zzB();
        if (this.zzp) {
            return;
        }
        this.zzp = true;
        if (zzY()) {
            FileChannel fileChannel = this.zzx;
            zzaA().zzg();
            int i = 0;
            if (fileChannel == null || !fileChannel.isOpen()) {
                zzaz().zzd().zza("Bad channel to read from");
            } else {
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
                try {
                    fileChannel.position(0L);
                    int i2 = fileChannel.read(byteBufferAllocate);
                    if (i2 == 4) {
                        byteBufferAllocate.flip();
                        i = byteBufferAllocate.getInt();
                    } else if (i2 != -1) {
                        zzaz().zzk().zzb("Unexpected data length. Bytes read", Integer.valueOf(i2));
                    }
                } catch (IOException e2) {
                    zzaz().zzd().zzb("Failed to read from channel", e2);
                }
            }
            int iZzi = this.zzn.zzh().zzi();
            zzaA().zzg();
            if (i > iZzi) {
                zzaz().zzd().zzc("Panic: can't downgrade version. Previous, current version", Integer.valueOf(i), Integer.valueOf(iZzi));
                return;
            }
            if (i < iZzi) {
                FileChannel fileChannel2 = this.zzx;
                zzaA().zzg();
                if (fileChannel2 == null || !fileChannel2.isOpen()) {
                    zzaz().zzd().zza("Bad channel to read from");
                } else {
                    ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(4);
                    byteBufferAllocate2.putInt(iZzi);
                    byteBufferAllocate2.flip();
                    try {
                        fileChannel2.truncate(0L);
                        fileChannel2.write(byteBufferAllocate2);
                        fileChannel2.force(true);
                        if (fileChannel2.size() != 4) {
                            zzaz().zzd().zzb("Error writing to channel. Bytes written", Long.valueOf(fileChannel2.size()));
                        }
                        zzaz().zzj().zzc("Storage version upgraded. Previous, current version", Integer.valueOf(i), Integer.valueOf(iZzi));
                        return;
                    } catch (IOException e3) {
                        zzaz().zzd().zzb("Failed to write to channel", e3);
                    }
                }
                zzaz().zzd().zzc("Storage version upgrade failed. Previous, current version", Integer.valueOf(i), Integer.valueOf(iZzi));
            }
        }
    }

    final void zzB() {
        if (!this.zzo) {
            throw new IllegalStateException("UploadController is not initialized");
        }
    }

    @WorkerThread
    final void zzC(zzg zzgVar) {
        ArrayMap arrayMap;
        ArrayMap arrayMap2;
        zzaA().zzg();
        if (TextUtils.isEmpty(zzgVar.zzy()) && TextUtils.isEmpty(zzgVar.zzr())) {
            zzH((String) Preconditions.checkNotNull(zzgVar.zzt()), 204, null, null, null);
            return;
        }
        zzkx zzkxVar = this.zzl;
        Uri.Builder builder = new Uri.Builder();
        String strZzy = zzgVar.zzy();
        if (TextUtils.isEmpty(strZzy)) {
            strZzy = zzgVar.zzr();
        }
        ArrayMap arrayMap3 = null;
        Uri.Builder builderAppendQueryParameter = builder.scheme((String) zzel.zzd.zza(null)).encodedAuthority((String) zzel.zze.zza(null)).path("config/app/".concat(String.valueOf(strZzy))).appendQueryParameter("platform", "android");
        zzkxVar.zzs.zzf().zzh();
        builderAppendQueryParameter.appendQueryParameter("gmp_version", String.valueOf(61000L)).appendQueryParameter("runtime_version", "0");
        zzpg.zzc();
        if (!zzkxVar.zzs.zzf().zzs(zzgVar.zzt(), zzel.zzaA)) {
            builder.appendQueryParameter("app_instance_id", zzgVar.zzu());
        }
        String string = builder.build().toString();
        try {
            String str = (String) Preconditions.checkNotNull(zzgVar.zzt());
            URL url = new URL(string);
            zzaz().zzj().zzb("Fetching remote configuration", str);
            zzfz zzfzVar = this.zzc;
            zzak(zzfzVar);
            com.google.android.gms.internal.measurement.zzfe zzfeVarZze = zzfzVar.zze(str);
            zzfz zzfzVar2 = this.zzc;
            zzak(zzfzVar2);
            String strZzh = zzfzVar2.zzh(str);
            if (zzfeVarZze == null) {
                arrayMap = arrayMap3;
            } else {
                if (TextUtils.isEmpty(strZzh)) {
                    arrayMap2 = null;
                } else {
                    arrayMap2 = new ArrayMap();
                    arrayMap2.put("If-Modified-Since", strZzh);
                }
                zzpg.zzc();
                if (zzg().zzs(null, zzel.zzaM)) {
                    zzfz zzfzVar3 = this.zzc;
                    zzak(zzfzVar3);
                    String strZzf = zzfzVar3.zzf(str);
                    if (!TextUtils.isEmpty(strZzf)) {
                        if (arrayMap2 == null) {
                            arrayMap2 = new ArrayMap();
                        }
                        arrayMap3 = arrayMap2;
                        arrayMap3.put("If-None-Match", strZzf);
                        arrayMap = arrayMap3;
                    }
                }
                arrayMap = arrayMap2;
            }
            this.zzt = true;
            zzfe zzfeVar = this.zzd;
            zzak(zzfeVar);
            zzla zzlaVar = new zzla(this);
            zzfeVar.zzg();
            zzfeVar.zzW();
            Preconditions.checkNotNull(url);
            Preconditions.checkNotNull(zzlaVar);
            zzfeVar.zzs.zzaA().zzo(new zzfd(zzfeVar, str, url, null, arrayMap, zzlaVar));
        } catch (MalformedURLException unused) {
            zzaz().zzd().zzc("Failed to parse config URL. Not fetching. appId", zzey.zzn(zzgVar.zzt()), string);
        }
    }

    @WorkerThread
    final void zzD(zzav zzavVar, zzp zzpVar) {
        zzav zzavVar2;
        List<zzab> listZzt;
        List<zzab> listZzt2;
        List<zzab> listZzt3;
        String str;
        Preconditions.checkNotNull(zzpVar);
        Preconditions.checkNotEmpty(zzpVar.zza);
        zzaA().zzg();
        zzB();
        String str2 = zzpVar.zza;
        zzav zzavVarZza = zzavVar;
        long j = zzavVarZza.zzd;
        zzpm.zzc();
        zziu zziuVar = null;
        if (zzg().zzs(null, zzel.zzat)) {
            zzez zzezVarZzb = zzez.zzb(zzavVar);
            zzaA().zzg();
            if (this.zzD != null && (str = this.zzE) != null && str.equals(str2)) {
                zziuVar = this.zzD;
            }
            zzlp.zzK(zziuVar, zzezVarZzb.zzd, false);
            zzavVarZza = zzezVarZzb.zza();
        }
        zzak(this.zzi);
        if (zzlk.zzA(zzavVarZza, zzpVar)) {
            if (!zzpVar.zzh) {
                zzd(zzpVar);
                return;
            }
            List list = zzpVar.zzt;
            if (list == null) {
                zzavVar2 = zzavVarZza;
            } else if (!list.contains(zzavVarZza.zza)) {
                zzaz().zzc().zzd("Dropping non-safelisted event. appId, event name, origin", str2, zzavVarZza.zza, zzavVarZza.zzc);
                return;
            } else {
                Bundle bundleZzc = zzavVarZza.zzb.zzc();
                bundleZzc.putLong("ga_safelisted", 1L);
                zzavVar2 = new zzav(zzavVarZza.zza, new zzat(bundleZzc), zzavVarZza.zzc, zzavVarZza.zzd);
            }
            zzal zzalVar = this.zze;
            zzak(zzalVar);
            zzalVar.zzw();
            try {
                zzal zzalVar2 = this.zze;
                zzak(zzalVar2);
                Preconditions.checkNotEmpty(str2);
                zzalVar2.zzg();
                zzalVar2.zzW();
                if (j < 0) {
                    zzalVar2.zzs.zzaz().zzk().zzc("Invalid time querying timed out conditional properties", zzey.zzn(str2), Long.valueOf(j));
                    listZzt = Collections.emptyList();
                } else {
                    listZzt = zzalVar2.zzt("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[]{str2, String.valueOf(j)});
                }
                for (zzab zzabVar : listZzt) {
                    if (zzabVar != null) {
                        zzaz().zzj().zzd("User property timed out", zzabVar.zza, this.zzn.zzj().zzf(zzabVar.zzc.zzb), zzabVar.zzc.zza());
                        zzav zzavVar3 = zzabVar.zzg;
                        if (zzavVar3 != null) {
                            zzX(new zzav(zzavVar3, j), zzpVar);
                        }
                        zzal zzalVar3 = this.zze;
                        zzak(zzalVar3);
                        zzalVar3.zza(str2, zzabVar.zzc.zzb);
                    }
                }
                zzal zzalVar4 = this.zze;
                zzak(zzalVar4);
                Preconditions.checkNotEmpty(str2);
                zzalVar4.zzg();
                zzalVar4.zzW();
                if (j < 0) {
                    zzalVar4.zzs.zzaz().zzk().zzc("Invalid time querying expired conditional properties", zzey.zzn(str2), Long.valueOf(j));
                    listZzt2 = Collections.emptyList();
                } else {
                    listZzt2 = zzalVar4.zzt("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[]{str2, String.valueOf(j)});
                }
                ArrayList arrayList = new ArrayList(listZzt2.size());
                for (zzab zzabVar2 : listZzt2) {
                    if (zzabVar2 != null) {
                        zzaz().zzj().zzd("User property expired", zzabVar2.zza, this.zzn.zzj().zzf(zzabVar2.zzc.zzb), zzabVar2.zzc.zza());
                        zzal zzalVar5 = this.zze;
                        zzak(zzalVar5);
                        zzalVar5.zzA(str2, zzabVar2.zzc.zzb);
                        zzav zzavVar4 = zzabVar2.zzk;
                        if (zzavVar4 != null) {
                            arrayList.add(zzavVar4);
                        }
                        zzal zzalVar6 = this.zze;
                        zzak(zzalVar6);
                        zzalVar6.zza(str2, zzabVar2.zzc.zzb);
                    }
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    zzX(new zzav((zzav) it.next(), j), zzpVar);
                }
                zzal zzalVar7 = this.zze;
                zzak(zzalVar7);
                String str3 = zzavVar2.zza;
                Preconditions.checkNotEmpty(str2);
                Preconditions.checkNotEmpty(str3);
                zzalVar7.zzg();
                zzalVar7.zzW();
                if (j < 0) {
                    zzalVar7.zzs.zzaz().zzk().zzd("Invalid time querying triggered conditional properties", zzey.zzn(str2), zzalVar7.zzs.zzj().zzd(str3), Long.valueOf(j));
                    listZzt3 = Collections.emptyList();
                } else {
                    listZzt3 = zzalVar7.zzt("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[]{str2, str3, String.valueOf(j)});
                }
                ArrayList arrayList2 = new ArrayList(listZzt3.size());
                for (zzab zzabVar3 : listZzt3) {
                    if (zzabVar3 != null) {
                        zzll zzllVar = zzabVar3.zzc;
                        zzln zzlnVar = new zzln((String) Preconditions.checkNotNull(zzabVar3.zza), zzabVar3.zzb, zzllVar.zzb, j, Preconditions.checkNotNull(zzllVar.zza()));
                        zzal zzalVar8 = this.zze;
                        zzak(zzalVar8);
                        if (zzalVar8.zzL(zzlnVar)) {
                            zzaz().zzj().zzd("User property triggered", zzabVar3.zza, this.zzn.zzj().zzf(zzlnVar.zzc), zzlnVar.zze);
                        } else {
                            zzaz().zzd().zzd("Too many active user properties, ignoring", zzey.zzn(zzabVar3.zza), this.zzn.zzj().zzf(zzlnVar.zzc), zzlnVar.zze);
                        }
                        zzav zzavVar5 = zzabVar3.zzi;
                        if (zzavVar5 != null) {
                            arrayList2.add(zzavVar5);
                        }
                        zzabVar3.zzc = new zzll(zzlnVar);
                        zzabVar3.zze = true;
                        zzal zzalVar9 = this.zze;
                        zzak(zzalVar9);
                        zzalVar9.zzK(zzabVar3);
                    }
                }
                zzX(zzavVar2, zzpVar);
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    zzX(new zzav((zzav) it2.next(), j), zzpVar);
                }
                zzal zzalVar10 = this.zze;
                zzak(zzalVar10);
                zzalVar10.zzC();
            } finally {
                zzal zzalVar11 = this.zze;
                zzak(zzalVar11);
                zzalVar11.zzx();
            }
        }
    }

    @WorkerThread
    final void zzE(zzav zzavVar, String str) {
        zzal zzalVar = this.zze;
        zzak(zzalVar);
        zzg zzgVarZzj = zzalVar.zzj(str);
        if (zzgVarZzj == null || TextUtils.isEmpty(zzgVarZzj.zzw())) {
            zzaz().zzc().zzb("No app data available; dropping event", str);
            return;
        }
        Boolean boolZzac = zzac(zzgVarZzj);
        if (boolZzac == null) {
            if (!"_ui".equals(zzavVar.zza)) {
                zzaz().zzk().zzb("Could not find package. appId", zzey.zzn(str));
            }
        } else if (!boolZzac.booleanValue()) {
            zzaz().zzd().zzb("App version does not match; dropping event. appId", zzey.zzn(str));
            return;
        }
        zzF(zzavVar, new zzp(str, zzgVarZzj.zzy(), zzgVarZzj.zzw(), zzgVarZzj.zzb(), zzgVarZzj.zzv(), zzgVarZzj.zzm(), zzgVarZzj.zzj(), (String) null, zzgVarZzj.zzaj(), false, zzgVarZzj.zzx(), zzgVarZzj.zza(), 0L, 0, zzgVarZzj.zzai(), false, zzgVarZzj.zzr(), zzgVarZzj.zzq(), zzgVarZzj.zzk(), zzgVarZzj.zzC(), (String) null, zzh(str).zzh(), "", (String) null));
    }

    @WorkerThread
    final void zzF(zzav zzavVar, zzp zzpVar) {
        Preconditions.checkNotEmpty(zzpVar.zza);
        zzez zzezVarZzb = zzez.zzb(zzavVar);
        zzlp zzlpVarZzv = zzv();
        Bundle bundle = zzezVarZzb.zzd;
        zzal zzalVar = this.zze;
        zzak(zzalVar);
        zzlpVarZzv.zzL(bundle, zzalVar.zzi(zzpVar.zza));
        zzv().zzM(zzezVarZzb, zzg().zzd(zzpVar.zza));
        zzav zzavVarZza = zzezVarZzb.zza();
        if ("_cmp".equals(zzavVarZza.zza) && "referrer API v2".equals(zzavVarZza.zzb.zzg("_cis"))) {
            String strZzg = zzavVarZza.zzb.zzg("gclid");
            if (!TextUtils.isEmpty(strZzg)) {
                zzV(new zzll("_lgclid", zzavVarZza.zzd, strZzg, "auto"), zzpVar);
            }
        }
        zzD(zzavVarZza, zzpVar);
    }

    final void zzG() {
        this.zzs++;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0121 A[Catch: all -> 0x0197, TRY_ENTER, TryCatch #1 {all -> 0x0197, blocks: (B:6:0x002c, B:16:0x004a, B:71:0x0189, B:21:0x0064, B:26:0x00b6, B:25:0x00a7, B:29:0x00be, B:32:0x00ca, B:34:0x00d0, B:36:0x00d8, B:39:0x00e9, B:42:0x00f5, B:44:0x00fb, B:49:0x0108, B:61:0x013d, B:63:0x0152, B:65:0x0171, B:67:0x017c, B:69:0x0182, B:70:0x0186, B:64:0x0160, B:55:0x0121, B:57:0x012c), top: B:80:0x002c, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x012c A[Catch: all -> 0x0197, TRY_LEAVE, TryCatch #1 {all -> 0x0197, blocks: (B:6:0x002c, B:16:0x004a, B:71:0x0189, B:21:0x0064, B:26:0x00b6, B:25:0x00a7, B:29:0x00be, B:32:0x00ca, B:34:0x00d0, B:36:0x00d8, B:39:0x00e9, B:42:0x00f5, B:44:0x00fb, B:49:0x0108, B:61:0x013d, B:63:0x0152, B:65:0x0171, B:67:0x017c, B:69:0x0182, B:70:0x0186, B:64:0x0160, B:55:0x0121, B:57:0x012c), top: B:80:0x002c, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0152 A[Catch: all -> 0x0197, TryCatch #1 {all -> 0x0197, blocks: (B:6:0x002c, B:16:0x004a, B:71:0x0189, B:21:0x0064, B:26:0x00b6, B:25:0x00a7, B:29:0x00be, B:32:0x00ca, B:34:0x00d0, B:36:0x00d8, B:39:0x00e9, B:42:0x00f5, B:44:0x00fb, B:49:0x0108, B:61:0x013d, B:63:0x0152, B:65:0x0171, B:67:0x017c, B:69:0x0182, B:70:0x0186, B:64:0x0160, B:55:0x0121, B:57:0x012c), top: B:80:0x002c, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0160 A[Catch: all -> 0x0197, TryCatch #1 {all -> 0x0197, blocks: (B:6:0x002c, B:16:0x004a, B:71:0x0189, B:21:0x0064, B:26:0x00b6, B:25:0x00a7, B:29:0x00be, B:32:0x00ca, B:34:0x00d0, B:36:0x00d8, B:39:0x00e9, B:42:0x00f5, B:44:0x00fb, B:49:0x0108, B:61:0x013d, B:63:0x0152, B:65:0x0171, B:67:0x017c, B:69:0x0182, B:70:0x0186, B:64:0x0160, B:55:0x0121, B:57:0x012c), top: B:80:0x002c, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x017c A[Catch: all -> 0x0197, TryCatch #1 {all -> 0x0197, blocks: (B:6:0x002c, B:16:0x004a, B:71:0x0189, B:21:0x0064, B:26:0x00b6, B:25:0x00a7, B:29:0x00be, B:32:0x00ca, B:34:0x00d0, B:36:0x00d8, B:39:0x00e9, B:42:0x00f5, B:44:0x00fb, B:49:0x0108, B:61:0x013d, B:63:0x0152, B:65:0x0171, B:67:0x017c, B:69:0x0182, B:70:0x0186, B:64:0x0160, B:55:0x0121, B:57:0x012c), top: B:80:0x002c, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0186 A[Catch: all -> 0x0197, TryCatch #1 {all -> 0x0197, blocks: (B:6:0x002c, B:16:0x004a, B:71:0x0189, B:21:0x0064, B:26:0x00b6, B:25:0x00a7, B:29:0x00be, B:32:0x00ca, B:34:0x00d0, B:36:0x00d8, B:39:0x00e9, B:42:0x00f5, B:44:0x00fb, B:49:0x0108, B:61:0x013d, B:63:0x0152, B:65:0x0171, B:67:0x017c, B:69:0x0182, B:70:0x0186, B:64:0x0160, B:55:0x0121, B:57:0x012c), top: B:80:0x002c, outer: #0 }] */
    @com.google.android.gms.common.util.VisibleForTesting
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void zzH(java.lang.String r9, int r10, java.lang.Throwable r11, byte[] r12, java.util.Map r13) {
        /*
            Method dump skipped, instruction units count: 424
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzli.zzH(java.lang.String, int, java.lang.Throwable, byte[], java.util.Map):void");
    }

    final void zzI(boolean z) {
        zzaf();
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x014b A[Catch: all -> 0x016b, TryCatch #2 {all -> 0x016b, blocks: (B:4:0x000d, B:5:0x000f, B:45:0x0123, B:50:0x015a, B:49:0x014b, B:11:0x0026, B:33:0x00c4, B:35:0x00d9, B:37:0x00df, B:39:0x00ea, B:38:0x00e3, B:41:0x00ee, B:42:0x00f6, B:44:0x00f8), top: B:59:0x000d, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0026 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @com.google.android.gms.common.util.VisibleForTesting
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void zzJ(int r9, java.lang.Throwable r10, byte[] r11, java.lang.String r12) {
        /*
            Method dump skipped, instruction units count: 370
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzli.zzJ(int, java.lang.Throwable, byte[], java.lang.String):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:69:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x021a A[Catch: all -> 0x0566, TryCatch #1 {all -> 0x0566, blocks: (B:23:0x00a4, B:25:0x00b3, B:43:0x0119, B:45:0x012c, B:47:0x0142, B:48:0x0169, B:50:0x01b9, B:53:0x01ce, B:56:0x01e4, B:58:0x01ef, B:63:0x01fe, B:66:0x020c, B:70:0x0217, B:72:0x021a, B:74:0x023a, B:76:0x023f, B:79:0x025e, B:82:0x0272, B:84:0x029b, B:87:0x02a3, B:89:0x02b2, B:118:0x0399, B:120:0x03cb, B:121:0x03ce, B:123:0x03f7, B:164:0x04d4, B:165:0x04d9, B:173:0x0555, B:126:0x040e, B:131:0x0433, B:133:0x043d, B:135:0x0445, B:139:0x0458, B:143:0x046b, B:147:0x0477, B:151:0x0493, B:156:0x04b8, B:158:0x04be, B:159:0x04c3, B:161:0x04c9, B:154:0x04a4, B:141:0x0463, B:129:0x041f, B:90:0x02c3, B:92:0x02ee, B:93:0x02ff, B:95:0x0306, B:97:0x030c, B:99:0x0316, B:101:0x031c, B:103:0x0322, B:105:0x0328, B:106:0x032d, B:111:0x0351, B:114:0x0356, B:115:0x036a, B:116:0x037a, B:117:0x038a, B:166:0x04ee, B:168:0x0520, B:169:0x0523, B:170:0x0538, B:172:0x053c, B:77:0x024e, B:29:0x00c5, B:31:0x00c9, B:35:0x00da, B:37:0x00f3, B:39:0x00fd, B:42:0x0109), top: B:182:0x00a4, inners: #0, #2, #3, #4 }] */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void zzK(com.google.android.gms.measurement.internal.zzp r24) {
        /*
            Method dump skipped, instruction units count: 1393
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzli.zzK(com.google.android.gms.measurement.internal.zzp):void");
    }

    final void zzL() {
        this.zzr++;
    }

    @WorkerThread
    final void zzM(zzab zzabVar) {
        zzp zzpVarZzab = zzab((String) Preconditions.checkNotNull(zzabVar.zza));
        if (zzpVarZzab != null) {
            zzN(zzabVar, zzpVarZzab);
        }
    }

    @WorkerThread
    final void zzN(zzab zzabVar, zzp zzpVar) {
        Preconditions.checkNotNull(zzabVar);
        Preconditions.checkNotEmpty(zzabVar.zza);
        Preconditions.checkNotNull(zzabVar.zzc);
        Preconditions.checkNotEmpty(zzabVar.zzc.zzb);
        zzaA().zzg();
        zzB();
        if (zzaj(zzpVar)) {
            if (!zzpVar.zzh) {
                zzd(zzpVar);
                return;
            }
            zzal zzalVar = this.zze;
            zzak(zzalVar);
            zzalVar.zzw();
            try {
                zzd(zzpVar);
                String str = (String) Preconditions.checkNotNull(zzabVar.zza);
                zzal zzalVar2 = this.zze;
                zzak(zzalVar2);
                zzab zzabVarZzk = zzalVar2.zzk(str, zzabVar.zzc.zzb);
                if (zzabVarZzk != null) {
                    zzaz().zzc().zzc("Removing conditional user property", zzabVar.zza, this.zzn.zzj().zzf(zzabVar.zzc.zzb));
                    zzal zzalVar3 = this.zze;
                    zzak(zzalVar3);
                    zzalVar3.zza(str, zzabVar.zzc.zzb);
                    if (zzabVarZzk.zze) {
                        zzal zzalVar4 = this.zze;
                        zzak(zzalVar4);
                        zzalVar4.zzA(str, zzabVar.zzc.zzb);
                    }
                    zzav zzavVar = zzabVar.zzk;
                    if (zzavVar != null) {
                        zzat zzatVar = zzavVar.zzb;
                        zzX((zzav) Preconditions.checkNotNull(zzv().zzz(str, ((zzav) Preconditions.checkNotNull(zzabVar.zzk)).zza, zzatVar != null ? zzatVar.zzc() : null, zzabVarZzk.zzb, zzabVar.zzk.zzd, true, true)), zzpVar);
                    }
                } else {
                    zzaz().zzk().zzc("Conditional user property doesn't exist", zzey.zzn(zzabVar.zza), this.zzn.zzj().zzf(zzabVar.zzc.zzb));
                }
                zzal zzalVar5 = this.zze;
                zzak(zzalVar5);
                zzalVar5.zzC();
            } finally {
                zzal zzalVar6 = this.zze;
                zzak(zzalVar6);
                zzalVar6.zzx();
            }
        }
    }

    @WorkerThread
    final void zzO(zzll zzllVar, zzp zzpVar) {
        zzaA().zzg();
        zzB();
        if (zzaj(zzpVar)) {
            if (!zzpVar.zzh) {
                zzd(zzpVar);
                return;
            }
            if ("_npa".equals(zzllVar.zzb) && zzpVar.zzr != null) {
                zzaz().zzc().zza("Falling back to manifest metadata value for ad personalization");
                zzV(new zzll("_npa", zzaw().currentTimeMillis(), Long.valueOf(true != zzpVar.zzr.booleanValue() ? 0L : 1L), "auto"), zzpVar);
                return;
            }
            zzaz().zzc().zzb("Removing user property", this.zzn.zzj().zzf(zzllVar.zzb));
            zzal zzalVar = this.zze;
            zzak(zzalVar);
            zzalVar.zzw();
            try {
                zzd(zzpVar);
                zzne.zzc();
                if (this.zzn.zzf().zzs(null, zzel.zzan) && this.zzn.zzf().zzs(null, zzel.zzap) && "_id".equals(zzllVar.zzb)) {
                    zzal zzalVar2 = this.zze;
                    zzak(zzalVar2);
                    zzalVar2.zzA((String) Preconditions.checkNotNull(zzpVar.zza), "_lair");
                }
                zzal zzalVar3 = this.zze;
                zzak(zzalVar3);
                zzalVar3.zzA((String) Preconditions.checkNotNull(zzpVar.zza), zzllVar.zzb);
                zzal zzalVar4 = this.zze;
                zzak(zzalVar4);
                zzalVar4.zzC();
                zzaz().zzc().zzb("User property removed", this.zzn.zzj().zzf(zzllVar.zzb));
            } finally {
                zzal zzalVar5 = this.zze;
                zzak(zzalVar5);
                zzalVar5.zzx();
            }
        }
    }

    @VisibleForTesting
    @WorkerThread
    final void zzP(zzp zzpVar) {
        if (this.zzy != null) {
            ArrayList arrayList = new ArrayList();
            this.zzz = arrayList;
            arrayList.addAll(this.zzy);
        }
        zzal zzalVar = this.zze;
        zzak(zzalVar);
        String str = (String) Preconditions.checkNotNull(zzpVar.zza);
        Preconditions.checkNotEmpty(str);
        zzalVar.zzg();
        zzalVar.zzW();
        try {
            SQLiteDatabase sQLiteDatabaseZzh = zzalVar.zzh();
            String[] strArr = {str};
            int iDelete = sQLiteDatabaseZzh.delete("apps", "app_id=?", strArr) + sQLiteDatabaseZzh.delete(b4.M, "app_id=?", strArr) + sQLiteDatabaseZzh.delete("user_attributes", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("conditional_properties", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("raw_events", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("raw_events_metadata", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("queue", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("audience_filter_values", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("main_event_params", "app_id=?", strArr) + sQLiteDatabaseZzh.delete("default_event_params", "app_id=?", strArr);
            if (iDelete > 0) {
                zzalVar.zzs.zzaz().zzj().zzc("Reset analytics data. app, records", str, Integer.valueOf(iDelete));
            }
        } catch (SQLiteException e2) {
            zzalVar.zzs.zzaz().zzd().zzc("Error resetting analytics data. appId, error", zzey.zzn(str), e2);
        }
        if (zzpVar.zzh) {
            zzK(zzpVar);
        }
    }

    @WorkerThread
    public final void zzQ(String str, zziu zziuVar) {
        zzaA().zzg();
        String str2 = this.zzE;
        if (str2 == null || str2.equals(str) || zziuVar != null) {
            this.zzE = str;
            this.zzD = zziuVar;
        }
    }

    @WorkerThread
    protected final void zzR() {
        zzaA().zzg();
        zzal zzalVar = this.zze;
        zzak(zzalVar);
        zzalVar.zzz();
        if (this.zzk.zzc.zza() == 0) {
            this.zzk.zzc.zzb(zzaw().currentTimeMillis());
        }
        zzaf();
    }

    @WorkerThread
    final void zzS(zzab zzabVar) {
        zzp zzpVarZzab = zzab((String) Preconditions.checkNotNull(zzabVar.zza));
        if (zzpVarZzab != null) {
            zzT(zzabVar, zzpVarZzab);
        }
    }

    @WorkerThread
    final void zzT(zzab zzabVar, zzp zzpVar) {
        Preconditions.checkNotNull(zzabVar);
        Preconditions.checkNotEmpty(zzabVar.zza);
        Preconditions.checkNotNull(zzabVar.zzb);
        Preconditions.checkNotNull(zzabVar.zzc);
        Preconditions.checkNotEmpty(zzabVar.zzc.zzb);
        zzaA().zzg();
        zzB();
        if (zzaj(zzpVar)) {
            if (!zzpVar.zzh) {
                zzd(zzpVar);
                return;
            }
            zzab zzabVar2 = new zzab(zzabVar);
            boolean z = false;
            zzabVar2.zze = false;
            zzal zzalVar = this.zze;
            zzak(zzalVar);
            zzalVar.zzw();
            try {
                zzal zzalVar2 = this.zze;
                zzak(zzalVar2);
                zzab zzabVarZzk = zzalVar2.zzk((String) Preconditions.checkNotNull(zzabVar2.zza), zzabVar2.zzc.zzb);
                if (zzabVarZzk != null && !zzabVarZzk.zzb.equals(zzabVar2.zzb)) {
                    zzaz().zzk().zzd("Updating a conditional user property with different origin. name, origin, origin (from DB)", this.zzn.zzj().zzf(zzabVar2.zzc.zzb), zzabVar2.zzb, zzabVarZzk.zzb);
                }
                if (zzabVarZzk != null && zzabVarZzk.zze) {
                    zzabVar2.zzb = zzabVarZzk.zzb;
                    zzabVar2.zzd = zzabVarZzk.zzd;
                    zzabVar2.zzh = zzabVarZzk.zzh;
                    zzabVar2.zzf = zzabVarZzk.zzf;
                    zzabVar2.zzi = zzabVarZzk.zzi;
                    zzabVar2.zze = true;
                    zzll zzllVar = zzabVar2.zzc;
                    zzabVar2.zzc = new zzll(zzllVar.zzb, zzabVarZzk.zzc.zzc, zzllVar.zza(), zzabVarZzk.zzc.zzf);
                } else if (TextUtils.isEmpty(zzabVar2.zzf)) {
                    zzll zzllVar2 = zzabVar2.zzc;
                    zzabVar2.zzc = new zzll(zzllVar2.zzb, zzabVar2.zzd, zzllVar2.zza(), zzabVar2.zzc.zzf);
                    zzabVar2.zze = true;
                    z = true;
                }
                if (zzabVar2.zze) {
                    zzll zzllVar3 = zzabVar2.zzc;
                    zzln zzlnVar = new zzln((String) Preconditions.checkNotNull(zzabVar2.zza), zzabVar2.zzb, zzllVar3.zzb, zzllVar3.zzc, Preconditions.checkNotNull(zzllVar3.zza()));
                    zzal zzalVar3 = this.zze;
                    zzak(zzalVar3);
                    if (zzalVar3.zzL(zzlnVar)) {
                        zzaz().zzc().zzd("User property updated immediately", zzabVar2.zza, this.zzn.zzj().zzf(zzlnVar.zzc), zzlnVar.zze);
                    } else {
                        zzaz().zzd().zzd("(2)Too many active user properties, ignoring", zzey.zzn(zzabVar2.zza), this.zzn.zzj().zzf(zzlnVar.zzc), zzlnVar.zze);
                    }
                    if (z && zzabVar2.zzi != null) {
                        zzX(new zzav(zzabVar2.zzi, zzabVar2.zzd), zzpVar);
                    }
                }
                zzal zzalVar4 = this.zze;
                zzak(zzalVar4);
                if (zzalVar4.zzK(zzabVar2)) {
                    zzaz().zzc().zzd("Conditional property added", zzabVar2.zza, this.zzn.zzj().zzf(zzabVar2.zzc.zzb), zzabVar2.zzc.zza());
                } else {
                    zzaz().zzd().zzd("Too many conditional properties, ignoring", zzey.zzn(zzabVar2.zza), this.zzn.zzj().zzf(zzabVar2.zzc.zzb), zzabVar2.zzc.zza());
                }
                zzal zzalVar5 = this.zze;
                zzak(zzalVar5);
                zzalVar5.zzC();
            } finally {
                zzal zzalVar6 = this.zze;
                zzak(zzalVar6);
                zzalVar6.zzx();
            }
        }
    }

    @WorkerThread
    final void zzU(String str, zzah zzahVar) {
        zzaA().zzg();
        zzB();
        this.zzB.put(str, zzahVar);
        zzal zzalVar = this.zze;
        zzak(zzalVar);
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(zzahVar);
        zzalVar.zzg();
        zzalVar.zzW();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("consent_state", zzahVar.zzh());
        try {
            if (zzalVar.zzh().insertWithOnConflict("consent_settings", null, contentValues, 5) == -1) {
                zzalVar.zzs.zzaz().zzd().zzb("Failed to insert/update consent setting (got -1). appId", zzey.zzn(str));
            }
        } catch (SQLiteException e2) {
            zzalVar.zzs.zzaz().zzd().zzc("Error storing consent setting. appId, error", zzey.zzn(str), e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00de  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void zzV(com.google.android.gms.measurement.internal.zzll r18, com.google.android.gms.measurement.internal.zzp r19) {
        /*
            Method dump skipped, instruction units count: 524
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzli.zzV(com.google.android.gms.measurement.internal.zzll, com.google.android.gms.measurement.internal.zzp):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 12, insn: 0x06b5: MOVE (r10 I:??[OBJECT, ARRAY]) = (r12 I:??[OBJECT, ARRAY]), block:B:281:0x06b4 */
    /* JADX WARN: Removed duplicated region for block: B:135:0x02ad A[Catch: all -> 0x06bc, TRY_ENTER, TryCatch #21 {all -> 0x06bc, blocks: (B:136:0x02b0, B:138:0x02b6, B:140:0x02c2, B:141:0x02c6, B:143:0x02cc, B:145:0x02e0, B:149:0x02e9, B:151:0x02ef, B:157:0x0314, B:154:0x0304, B:156:0x030e, B:158:0x0317, B:160:0x0332, B:164:0x0341, B:166:0x0366, B:168:0x03a0, B:170:0x03a5, B:172:0x03ad, B:173:0x03b0, B:175:0x03c1, B:177:0x03cc, B:178:0x03cf, B:180:0x03db, B:182:0x03e6, B:183:0x03e9, B:185:0x03f4, B:186:0x03f7, B:188:0x0403, B:190:0x040e, B:192:0x0417, B:193:0x041a, B:195:0x0426, B:197:0x0431, B:198:0x0434, B:200:0x0440, B:202:0x044b, B:204:0x045a, B:206:0x0464, B:211:0x048e, B:212:0x0499, B:214:0x04a4, B:216:0x04b0, B:218:0x04bb, B:220:0x04c0, B:221:0x04c3, B:223:0x04cf, B:224:0x04e5, B:225:0x04f5, B:227:0x0506, B:229:0x0518, B:231:0x053a, B:233:0x054b, B:236:0x0593, B:238:0x05a5, B:240:0x05ba, B:244:0x05ca, B:245:0x05ce, B:239:0x05b3, B:247:0x0613, B:234:0x0580, B:235:0x058a, B:122:0x027e, B:135:0x02ad, B:251:0x062b, B:252:0x062e, B:253:0x062f, B:258:0x0670, B:274:0x069a, B:276:0x06a0, B:278:0x06ab, B:262:0x0679, B:283:0x06b8, B:284:0x06bb, B:243:0x05c6), top: B:315:0x00eb, inners: #19 }] */
    /* JADX WARN: Removed duplicated region for block: B:138:0x02b6 A[Catch: all -> 0x06bc, TryCatch #21 {all -> 0x06bc, blocks: (B:136:0x02b0, B:138:0x02b6, B:140:0x02c2, B:141:0x02c6, B:143:0x02cc, B:145:0x02e0, B:149:0x02e9, B:151:0x02ef, B:157:0x0314, B:154:0x0304, B:156:0x030e, B:158:0x0317, B:160:0x0332, B:164:0x0341, B:166:0x0366, B:168:0x03a0, B:170:0x03a5, B:172:0x03ad, B:173:0x03b0, B:175:0x03c1, B:177:0x03cc, B:178:0x03cf, B:180:0x03db, B:182:0x03e6, B:183:0x03e9, B:185:0x03f4, B:186:0x03f7, B:188:0x0403, B:190:0x040e, B:192:0x0417, B:193:0x041a, B:195:0x0426, B:197:0x0431, B:198:0x0434, B:200:0x0440, B:202:0x044b, B:204:0x045a, B:206:0x0464, B:211:0x048e, B:212:0x0499, B:214:0x04a4, B:216:0x04b0, B:218:0x04bb, B:220:0x04c0, B:221:0x04c3, B:223:0x04cf, B:224:0x04e5, B:225:0x04f5, B:227:0x0506, B:229:0x0518, B:231:0x053a, B:233:0x054b, B:236:0x0593, B:238:0x05a5, B:240:0x05ba, B:244:0x05ca, B:245:0x05ce, B:239:0x05b3, B:247:0x0613, B:234:0x0580, B:235:0x058a, B:122:0x027e, B:135:0x02ad, B:251:0x062b, B:252:0x062e, B:253:0x062f, B:258:0x0670, B:274:0x069a, B:276:0x06a0, B:278:0x06ab, B:262:0x0679, B:283:0x06b8, B:284:0x06bb, B:243:0x05c6), top: B:315:0x00eb, inners: #19 }] */
    /* JADX WARN: Removed duplicated region for block: B:213:0x049f  */
    /* JADX WARN: Removed duplicated region for block: B:276:0x06a0 A[Catch: all -> 0x06bc, TryCatch #21 {all -> 0x06bc, blocks: (B:136:0x02b0, B:138:0x02b6, B:140:0x02c2, B:141:0x02c6, B:143:0x02cc, B:145:0x02e0, B:149:0x02e9, B:151:0x02ef, B:157:0x0314, B:154:0x0304, B:156:0x030e, B:158:0x0317, B:160:0x0332, B:164:0x0341, B:166:0x0366, B:168:0x03a0, B:170:0x03a5, B:172:0x03ad, B:173:0x03b0, B:175:0x03c1, B:177:0x03cc, B:178:0x03cf, B:180:0x03db, B:182:0x03e6, B:183:0x03e9, B:185:0x03f4, B:186:0x03f7, B:188:0x0403, B:190:0x040e, B:192:0x0417, B:193:0x041a, B:195:0x0426, B:197:0x0431, B:198:0x0434, B:200:0x0440, B:202:0x044b, B:204:0x045a, B:206:0x0464, B:211:0x048e, B:212:0x0499, B:214:0x04a4, B:216:0x04b0, B:218:0x04bb, B:220:0x04c0, B:221:0x04c3, B:223:0x04cf, B:224:0x04e5, B:225:0x04f5, B:227:0x0506, B:229:0x0518, B:231:0x053a, B:233:0x054b, B:236:0x0593, B:238:0x05a5, B:240:0x05ba, B:244:0x05ca, B:245:0x05ce, B:239:0x05b3, B:247:0x0613, B:234:0x0580, B:235:0x058a, B:122:0x027e, B:135:0x02ad, B:251:0x062b, B:252:0x062e, B:253:0x062f, B:258:0x0670, B:274:0x069a, B:276:0x06a0, B:278:0x06ab, B:262:0x0679, B:283:0x06b8, B:284:0x06bb, B:243:0x05c6), top: B:315:0x00eb, inners: #19 }] */
    /* JADX WARN: Removed duplicated region for block: B:300:0x019d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01ae A[Catch: SQLiteException -> 0x0285, all -> 0x0626, TRY_ENTER, TryCatch #5 {all -> 0x0626, blocks: (B:70:0x0197, B:72:0x019d, B:77:0x01ae, B:78:0x01b4, B:79:0x01b8, B:80:0x01c3, B:82:0x01d6, B:83:0x01d8, B:85:0x01de, B:86:0x01e8, B:88:0x01ee, B:92:0x01f4, B:94:0x01ff, B:96:0x0205, B:97:0x020c, B:117:0x026e, B:99:0x0221, B:102:0x0239, B:109:0x0245, B:110:0x0254, B:116:0x025b, B:133:0x0294), top: B:296:0x0168 }] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v10, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v8, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r11v23 */
    /* JADX WARN: Type inference failed for: r11v24 */
    /* JADX WARN: Type inference failed for: r11v3, types: [long] */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v7, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v8, types: [int] */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void zzW() {
        /*
            Method dump skipped, instruction units count: 1736
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzli.zzW():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x032f  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0332 A[Catch: all -> 0x0a9d, TryCatch #8 {all -> 0x0a9d, blocks: (B:28:0x0124, B:30:0x0136, B:32:0x0142, B:33:0x014e, B:36:0x015c, B:38:0x0166, B:43:0x0172, B:99:0x031c, B:108:0x0352, B:110:0x0390, B:112:0x0395, B:113:0x03ac, B:117:0x03bf, B:119:0x03d8, B:121:0x03df, B:122:0x03f6, B:127:0x0420, B:131:0x0443, B:132:0x045a, B:135:0x046b, B:138:0x0488, B:139:0x049c, B:141:0x04a6, B:143:0x04b3, B:145:0x04b9, B:146:0x04c2, B:147:0x04d0, B:149:0x04e8, B:159:0x0520, B:160:0x0535, B:162:0x055f, B:165:0x0577, B:168:0x05ba, B:170:0x05e6, B:172:0x0625, B:173:0x062a, B:175:0x0632, B:176:0x0637, B:178:0x063f, B:179:0x0644, B:181:0x0653, B:183:0x065b, B:184:0x0660, B:186:0x0669, B:187:0x066d, B:189:0x067a, B:190:0x067f, B:192:0x06a6, B:194:0x06ae, B:195:0x06b3, B:197:0x06bb, B:198:0x06be, B:200:0x06d6, B:203:0x06de, B:204:0x06f7, B:206:0x06fd, B:208:0x0711, B:210:0x071d, B:212:0x072a, B:216:0x0744, B:217:0x0754, B:221:0x075d, B:222:0x0760, B:224:0x077e, B:226:0x0790, B:228:0x0794, B:230:0x079f, B:231:0x07a8, B:233:0x07eb, B:234:0x07f0, B:236:0x07f8, B:238:0x0801, B:239:0x0804, B:241:0x0811, B:243:0x0831, B:244:0x083c, B:246:0x086f, B:247:0x0874, B:248:0x0881, B:250:0x0889, B:252:0x0893, B:253:0x08a0, B:255:0x08aa, B:256:0x08b7, B:257:0x08c3, B:259:0x08c9, B:261:0x08f9, B:262:0x093f, B:263:0x0949, B:264:0x0955, B:266:0x095b, B:275:0x09a8, B:276:0x09f6, B:278:0x0a06, B:292:0x0a6a, B:281:0x0a1e, B:283:0x0a22, B:269:0x0967, B:271:0x0993, B:287:0x0a3b, B:288:0x0a52, B:291:0x0a55, B:169:0x05d8, B:156:0x0505, B:102:0x0332, B:103:0x0339, B:105:0x033f, B:107:0x034b, B:49:0x0186, B:52:0x0192, B:54:0x01a9, B:60:0x01c7, B:68:0x0207, B:70:0x020d, B:72:0x021b, B:74:0x022c, B:77:0x0233, B:95:0x02da, B:97:0x02e5, B:78:0x0261, B:79:0x027e, B:81:0x0285, B:83:0x0296, B:94:0x02be, B:93:0x02ab, B:63:0x01d5, B:67:0x01fd), top: B:316:0x0124, inners: #2, #3, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0390 A[Catch: all -> 0x0a9d, TryCatch #8 {all -> 0x0a9d, blocks: (B:28:0x0124, B:30:0x0136, B:32:0x0142, B:33:0x014e, B:36:0x015c, B:38:0x0166, B:43:0x0172, B:99:0x031c, B:108:0x0352, B:110:0x0390, B:112:0x0395, B:113:0x03ac, B:117:0x03bf, B:119:0x03d8, B:121:0x03df, B:122:0x03f6, B:127:0x0420, B:131:0x0443, B:132:0x045a, B:135:0x046b, B:138:0x0488, B:139:0x049c, B:141:0x04a6, B:143:0x04b3, B:145:0x04b9, B:146:0x04c2, B:147:0x04d0, B:149:0x04e8, B:159:0x0520, B:160:0x0535, B:162:0x055f, B:165:0x0577, B:168:0x05ba, B:170:0x05e6, B:172:0x0625, B:173:0x062a, B:175:0x0632, B:176:0x0637, B:178:0x063f, B:179:0x0644, B:181:0x0653, B:183:0x065b, B:184:0x0660, B:186:0x0669, B:187:0x066d, B:189:0x067a, B:190:0x067f, B:192:0x06a6, B:194:0x06ae, B:195:0x06b3, B:197:0x06bb, B:198:0x06be, B:200:0x06d6, B:203:0x06de, B:204:0x06f7, B:206:0x06fd, B:208:0x0711, B:210:0x071d, B:212:0x072a, B:216:0x0744, B:217:0x0754, B:221:0x075d, B:222:0x0760, B:224:0x077e, B:226:0x0790, B:228:0x0794, B:230:0x079f, B:231:0x07a8, B:233:0x07eb, B:234:0x07f0, B:236:0x07f8, B:238:0x0801, B:239:0x0804, B:241:0x0811, B:243:0x0831, B:244:0x083c, B:246:0x086f, B:247:0x0874, B:248:0x0881, B:250:0x0889, B:252:0x0893, B:253:0x08a0, B:255:0x08aa, B:256:0x08b7, B:257:0x08c3, B:259:0x08c9, B:261:0x08f9, B:262:0x093f, B:263:0x0949, B:264:0x0955, B:266:0x095b, B:275:0x09a8, B:276:0x09f6, B:278:0x0a06, B:292:0x0a6a, B:281:0x0a1e, B:283:0x0a22, B:269:0x0967, B:271:0x0993, B:287:0x0a3b, B:288:0x0a52, B:291:0x0a55, B:169:0x05d8, B:156:0x0505, B:102:0x0332, B:103:0x0339, B:105:0x033f, B:107:0x034b, B:49:0x0186, B:52:0x0192, B:54:0x01a9, B:60:0x01c7, B:68:0x0207, B:70:0x020d, B:72:0x021b, B:74:0x022c, B:77:0x0233, B:95:0x02da, B:97:0x02e5, B:78:0x0261, B:79:0x027e, B:81:0x0285, B:83:0x0296, B:94:0x02be, B:93:0x02ab, B:63:0x01d5, B:67:0x01fd), top: B:316:0x0124, inners: #2, #3, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x03bd  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x075a  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0192 A[Catch: all -> 0x0a9d, TRY_ENTER, TryCatch #8 {all -> 0x0a9d, blocks: (B:28:0x0124, B:30:0x0136, B:32:0x0142, B:33:0x014e, B:36:0x015c, B:38:0x0166, B:43:0x0172, B:99:0x031c, B:108:0x0352, B:110:0x0390, B:112:0x0395, B:113:0x03ac, B:117:0x03bf, B:119:0x03d8, B:121:0x03df, B:122:0x03f6, B:127:0x0420, B:131:0x0443, B:132:0x045a, B:135:0x046b, B:138:0x0488, B:139:0x049c, B:141:0x04a6, B:143:0x04b3, B:145:0x04b9, B:146:0x04c2, B:147:0x04d0, B:149:0x04e8, B:159:0x0520, B:160:0x0535, B:162:0x055f, B:165:0x0577, B:168:0x05ba, B:170:0x05e6, B:172:0x0625, B:173:0x062a, B:175:0x0632, B:176:0x0637, B:178:0x063f, B:179:0x0644, B:181:0x0653, B:183:0x065b, B:184:0x0660, B:186:0x0669, B:187:0x066d, B:189:0x067a, B:190:0x067f, B:192:0x06a6, B:194:0x06ae, B:195:0x06b3, B:197:0x06bb, B:198:0x06be, B:200:0x06d6, B:203:0x06de, B:204:0x06f7, B:206:0x06fd, B:208:0x0711, B:210:0x071d, B:212:0x072a, B:216:0x0744, B:217:0x0754, B:221:0x075d, B:222:0x0760, B:224:0x077e, B:226:0x0790, B:228:0x0794, B:230:0x079f, B:231:0x07a8, B:233:0x07eb, B:234:0x07f0, B:236:0x07f8, B:238:0x0801, B:239:0x0804, B:241:0x0811, B:243:0x0831, B:244:0x083c, B:246:0x086f, B:247:0x0874, B:248:0x0881, B:250:0x0889, B:252:0x0893, B:253:0x08a0, B:255:0x08aa, B:256:0x08b7, B:257:0x08c3, B:259:0x08c9, B:261:0x08f9, B:262:0x093f, B:263:0x0949, B:264:0x0955, B:266:0x095b, B:275:0x09a8, B:276:0x09f6, B:278:0x0a06, B:292:0x0a6a, B:281:0x0a1e, B:283:0x0a22, B:269:0x0967, B:271:0x0993, B:287:0x0a3b, B:288:0x0a52, B:291:0x0a55, B:169:0x05d8, B:156:0x0505, B:102:0x0332, B:103:0x0339, B:105:0x033f, B:107:0x034b, B:49:0x0186, B:52:0x0192, B:54:0x01a9, B:60:0x01c7, B:68:0x0207, B:70:0x020d, B:72:0x021b, B:74:0x022c, B:77:0x0233, B:95:0x02da, B:97:0x02e5, B:78:0x0261, B:79:0x027e, B:81:0x0285, B:83:0x0296, B:94:0x02be, B:93:0x02ab, B:63:0x01d5, B:67:0x01fd), top: B:316:0x0124, inners: #2, #3, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x020d A[Catch: all -> 0x0a9d, TryCatch #8 {all -> 0x0a9d, blocks: (B:28:0x0124, B:30:0x0136, B:32:0x0142, B:33:0x014e, B:36:0x015c, B:38:0x0166, B:43:0x0172, B:99:0x031c, B:108:0x0352, B:110:0x0390, B:112:0x0395, B:113:0x03ac, B:117:0x03bf, B:119:0x03d8, B:121:0x03df, B:122:0x03f6, B:127:0x0420, B:131:0x0443, B:132:0x045a, B:135:0x046b, B:138:0x0488, B:139:0x049c, B:141:0x04a6, B:143:0x04b3, B:145:0x04b9, B:146:0x04c2, B:147:0x04d0, B:149:0x04e8, B:159:0x0520, B:160:0x0535, B:162:0x055f, B:165:0x0577, B:168:0x05ba, B:170:0x05e6, B:172:0x0625, B:173:0x062a, B:175:0x0632, B:176:0x0637, B:178:0x063f, B:179:0x0644, B:181:0x0653, B:183:0x065b, B:184:0x0660, B:186:0x0669, B:187:0x066d, B:189:0x067a, B:190:0x067f, B:192:0x06a6, B:194:0x06ae, B:195:0x06b3, B:197:0x06bb, B:198:0x06be, B:200:0x06d6, B:203:0x06de, B:204:0x06f7, B:206:0x06fd, B:208:0x0711, B:210:0x071d, B:212:0x072a, B:216:0x0744, B:217:0x0754, B:221:0x075d, B:222:0x0760, B:224:0x077e, B:226:0x0790, B:228:0x0794, B:230:0x079f, B:231:0x07a8, B:233:0x07eb, B:234:0x07f0, B:236:0x07f8, B:238:0x0801, B:239:0x0804, B:241:0x0811, B:243:0x0831, B:244:0x083c, B:246:0x086f, B:247:0x0874, B:248:0x0881, B:250:0x0889, B:252:0x0893, B:253:0x08a0, B:255:0x08aa, B:256:0x08b7, B:257:0x08c3, B:259:0x08c9, B:261:0x08f9, B:262:0x093f, B:263:0x0949, B:264:0x0955, B:266:0x095b, B:275:0x09a8, B:276:0x09f6, B:278:0x0a06, B:292:0x0a6a, B:281:0x0a1e, B:283:0x0a22, B:269:0x0967, B:271:0x0993, B:287:0x0a3b, B:288:0x0a52, B:291:0x0a55, B:169:0x05d8, B:156:0x0505, B:102:0x0332, B:103:0x0339, B:105:0x033f, B:107:0x034b, B:49:0x0186, B:52:0x0192, B:54:0x01a9, B:60:0x01c7, B:68:0x0207, B:70:0x020d, B:72:0x021b, B:74:0x022c, B:77:0x0233, B:95:0x02da, B:97:0x02e5, B:78:0x0261, B:79:0x027e, B:81:0x0285, B:83:0x0296, B:94:0x02be, B:93:0x02ab, B:63:0x01d5, B:67:0x01fd), top: B:316:0x0124, inners: #2, #3, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02e5 A[Catch: all -> 0x0a9d, TryCatch #8 {all -> 0x0a9d, blocks: (B:28:0x0124, B:30:0x0136, B:32:0x0142, B:33:0x014e, B:36:0x015c, B:38:0x0166, B:43:0x0172, B:99:0x031c, B:108:0x0352, B:110:0x0390, B:112:0x0395, B:113:0x03ac, B:117:0x03bf, B:119:0x03d8, B:121:0x03df, B:122:0x03f6, B:127:0x0420, B:131:0x0443, B:132:0x045a, B:135:0x046b, B:138:0x0488, B:139:0x049c, B:141:0x04a6, B:143:0x04b3, B:145:0x04b9, B:146:0x04c2, B:147:0x04d0, B:149:0x04e8, B:159:0x0520, B:160:0x0535, B:162:0x055f, B:165:0x0577, B:168:0x05ba, B:170:0x05e6, B:172:0x0625, B:173:0x062a, B:175:0x0632, B:176:0x0637, B:178:0x063f, B:179:0x0644, B:181:0x0653, B:183:0x065b, B:184:0x0660, B:186:0x0669, B:187:0x066d, B:189:0x067a, B:190:0x067f, B:192:0x06a6, B:194:0x06ae, B:195:0x06b3, B:197:0x06bb, B:198:0x06be, B:200:0x06d6, B:203:0x06de, B:204:0x06f7, B:206:0x06fd, B:208:0x0711, B:210:0x071d, B:212:0x072a, B:216:0x0744, B:217:0x0754, B:221:0x075d, B:222:0x0760, B:224:0x077e, B:226:0x0790, B:228:0x0794, B:230:0x079f, B:231:0x07a8, B:233:0x07eb, B:234:0x07f0, B:236:0x07f8, B:238:0x0801, B:239:0x0804, B:241:0x0811, B:243:0x0831, B:244:0x083c, B:246:0x086f, B:247:0x0874, B:248:0x0881, B:250:0x0889, B:252:0x0893, B:253:0x08a0, B:255:0x08aa, B:256:0x08b7, B:257:0x08c3, B:259:0x08c9, B:261:0x08f9, B:262:0x093f, B:263:0x0949, B:264:0x0955, B:266:0x095b, B:275:0x09a8, B:276:0x09f6, B:278:0x0a06, B:292:0x0a6a, B:281:0x0a1e, B:283:0x0a22, B:269:0x0967, B:271:0x0993, B:287:0x0a3b, B:288:0x0a52, B:291:0x0a55, B:169:0x05d8, B:156:0x0505, B:102:0x0332, B:103:0x0339, B:105:0x033f, B:107:0x034b, B:49:0x0186, B:52:0x0192, B:54:0x01a9, B:60:0x01c7, B:68:0x0207, B:70:0x020d, B:72:0x021b, B:74:0x022c, B:77:0x0233, B:95:0x02da, B:97:0x02e5, B:78:0x0261, B:79:0x027e, B:81:0x0285, B:83:0x0296, B:94:0x02be, B:93:0x02ab, B:63:0x01d5, B:67:0x01fd), top: B:316:0x0124, inners: #2, #3, #7 }] */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void zzX(com.google.android.gms.measurement.internal.zzav r35, com.google.android.gms.measurement.internal.zzp r36) {
        /*
            Method dump skipped, instruction units count: 2732
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzli.zzX(com.google.android.gms.measurement.internal.zzav, com.google.android.gms.measurement.internal.zzp):void");
    }

    @VisibleForTesting
    @WorkerThread
    final boolean zzY() {
        zzaA().zzg();
        FileLock fileLock = this.zzw;
        if (fileLock != null && fileLock.isValid()) {
            zzaz().zzj().zza("Storage concurrent access okay");
            return true;
        }
        this.zze.zzs.zzf();
        try {
            FileChannel channel = new RandomAccessFile(new File(this.zzn.zzav().getFilesDir(), "google_app_measurement.db"), "rw").getChannel();
            this.zzx = channel;
            FileLock fileLockTryLock = channel.tryLock();
            this.zzw = fileLockTryLock;
            if (fileLockTryLock != null) {
                zzaz().zzj().zza("Storage concurrent access okay");
                return true;
            }
            zzaz().zzd().zza("Storage concurrent data access panic");
            return false;
        } catch (FileNotFoundException e2) {
            zzaz().zzd().zzb("Failed to acquire storage lock", e2);
            return false;
        } catch (IOException e3) {
            zzaz().zzd().zzb("Failed to access storage lock file", e3);
            return false;
        } catch (OverlappingFileLockException e4) {
            zzaz().zzk().zzb("Storage lock already acquired", e4);
            return false;
        }
    }

    final long zza() {
        long jCurrentTimeMillis = zzaw().currentTimeMillis();
        zzkd zzkdVar = this.zzk;
        zzkdVar.zzW();
        zzkdVar.zzg();
        long jZza = zzkdVar.zze.zza();
        if (jZza == 0) {
            jZza = ((long) zzkdVar.zzs.zzv().zzG().nextInt(86400000)) + 1;
            zzkdVar.zze.zzb(jZza);
        }
        return ((((jCurrentTimeMillis + jZza) / 1000) / 60) / 60) / 24;
    }

    @Override // com.google.android.gms.measurement.internal.zzhd
    public final zzgf zzaA() {
        return ((zzgi) Preconditions.checkNotNull(this.zzn)).zzaA();
    }

    @Override // com.google.android.gms.measurement.internal.zzhd
    public final Context zzav() {
        return this.zzn.zzav();
    }

    @Override // com.google.android.gms.measurement.internal.zzhd
    public final Clock zzaw() {
        return ((zzgi) Preconditions.checkNotNull(this.zzn)).zzaw();
    }

    @Override // com.google.android.gms.measurement.internal.zzhd
    public final zzaa zzax() {
        throw null;
    }

    @Override // com.google.android.gms.measurement.internal.zzhd
    public final zzey zzaz() {
        return ((zzgi) Preconditions.checkNotNull(this.zzn)).zzaz();
    }

    @WorkerThread
    final zzg zzd(zzp zzpVar) {
        zzaA().zzg();
        zzB();
        Preconditions.checkNotNull(zzpVar);
        Preconditions.checkNotEmpty(zzpVar.zza);
        zzpg.zzc();
        zzlg zzlgVar = null;
        if (zzg().zzs(zzpVar.zza, zzel.zzaJ) && !zzpVar.zzw.isEmpty()) {
            this.zzC.put(zzpVar.zza, new zzlh(this, zzpVar.zzw));
        }
        zzal zzalVar = this.zze;
        zzak(zzalVar);
        zzg zzgVarZzj = zzalVar.zzj(zzpVar.zza);
        zzah zzahVarZzc = zzh(zzpVar.zza).zzc(zzah.zzb(zzpVar.zzv));
        zzag zzagVar = zzag.AD_STORAGE;
        String strZzf = zzahVarZzc.zzi(zzagVar) ? this.zzk.zzf(zzpVar.zza) : "";
        if (zzgVarZzj == null) {
            zzgVarZzj = new zzg(this.zzn, zzpVar.zza);
            if (zzahVarZzc.zzi(zzag.ANALYTICS_STORAGE)) {
                zzgVarZzj.zzI(zzw(zzahVarZzc));
            }
            if (zzahVarZzc.zzi(zzagVar)) {
                zzgVarZzj.zzaf(strZzf);
            }
        } else if (zzahVarZzc.zzi(zzagVar) && strZzf != null && !strZzf.equals(zzgVarZzj.zzA())) {
            zzgVarZzj.zzaf(strZzf);
            zzne.zzc();
            zzaf zzafVarZzg = zzg();
            zzek zzekVar = zzel.zzan;
            if (!zzafVarZzg.zzs(null, zzekVar) || !zzg().zzs(null, zzel.zzas) || !"00000000-0000-0000-0000-000000000000".equals(this.zzk.zzd(zzpVar.zza, zzahVarZzc).first)) {
                zzgVarZzj.zzI(zzw(zzahVarZzc));
            }
            zzne.zzc();
            if (zzg().zzs(null, zzekVar) && !"00000000-0000-0000-0000-000000000000".equals(this.zzk.zzd(zzpVar.zza, zzahVarZzc).first)) {
                zzal zzalVar2 = this.zze;
                zzak(zzalVar2);
                if (zzalVar2.zzp(zzpVar.zza, "_id") != null) {
                    zzal zzalVar3 = this.zze;
                    zzak(zzalVar3);
                    if (zzalVar3.zzp(zzpVar.zza, "_lair") == null) {
                        zzln zzlnVar = new zzln(zzpVar.zza, "auto", "_lair", zzaw().currentTimeMillis(), 1L);
                        zzal zzalVar4 = this.zze;
                        zzak(zzalVar4);
                        zzalVar4.zzL(zzlnVar);
                    }
                }
            }
        } else if (TextUtils.isEmpty(zzgVarZzj.zzu()) && zzahVarZzc.zzi(zzag.ANALYTICS_STORAGE)) {
            zzgVarZzj.zzI(zzw(zzahVarZzc));
        }
        zzgVarZzj.zzX(zzpVar.zzb);
        zzgVarZzj.zzF(zzpVar.zzq);
        if (!TextUtils.isEmpty(zzpVar.zzk)) {
            zzgVarZzj.zzW(zzpVar.zzk);
        }
        long j = zzpVar.zze;
        if (j != 0) {
            zzgVarZzj.zzY(j);
        }
        if (!TextUtils.isEmpty(zzpVar.zzc)) {
            zzgVarZzj.zzK(zzpVar.zzc);
        }
        zzgVarZzj.zzL(zzpVar.zzj);
        String str = zzpVar.zzd;
        if (str != null) {
            zzgVarZzj.zzJ(str);
        }
        zzgVarZzj.zzT(zzpVar.zzf);
        zzgVarZzj.zzad(zzpVar.zzh);
        if (!TextUtils.isEmpty(zzpVar.zzg)) {
            zzgVarZzj.zzZ(zzpVar.zzg);
        }
        if (!zzg().zzs(null, zzel.zzah)) {
            zzgVarZzj.zzH(zzpVar.zzl);
        }
        zzgVarZzj.zzG(zzpVar.zzo);
        zzgVarZzj.zzae(zzpVar.zzr);
        zzgVarZzj.zzU(zzpVar.zzs);
        zzpp.zzc();
        if (zzg().zzs(null, zzel.zzaH)) {
            zzgVarZzj.zzah(zzpVar.zzx);
        }
        zznz.zzc();
        if (zzg().zzs(null, zzel.zzaz)) {
            zzgVarZzj.zzag(zzpVar.zzt);
        } else {
            zznz.zzc();
            if (zzg().zzs(null, zzel.zzay)) {
                zzgVarZzj.zzag(null);
            }
        }
        if (zzgVarZzj.zzak()) {
            zzal zzalVar5 = this.zze;
            zzak(zzalVar5);
            zzalVar5.zzD(zzgVarZzj);
        }
        return zzgVarZzj;
    }

    public final zzz zzf() {
        zzz zzzVar = this.zzh;
        zzak(zzzVar);
        return zzzVar;
    }

    public final zzaf zzg() {
        return ((zzgi) Preconditions.checkNotNull(this.zzn)).zzf();
    }

    @WorkerThread
    final zzah zzh(String str) {
        String string;
        zzah zzahVar = zzah.zza;
        zzaA().zzg();
        zzB();
        zzah zzahVar2 = (zzah) this.zzB.get(str);
        if (zzahVar2 != null) {
            return zzahVar2;
        }
        zzal zzalVar = this.zze;
        zzak(zzalVar);
        Preconditions.checkNotNull(str);
        zzalVar.zzg();
        zzalVar.zzW();
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = zzalVar.zzh().rawQuery("select consent_state from consent_settings where app_id=? limit 1;", new String[]{str});
                if (cursorRawQuery.moveToFirst()) {
                    string = cursorRawQuery.getString(0);
                    cursorRawQuery.close();
                } else {
                    cursorRawQuery.close();
                    string = "G1";
                }
                zzah zzahVarZzb = zzah.zzb(string);
                zzU(str, zzahVarZzb);
                return zzahVarZzb;
            } catch (SQLiteException e2) {
                zzalVar.zzs.zzaz().zzd().zzc("Database error", "select consent_state from consent_settings where app_id=? limit 1;", e2);
                throw e2;
            }
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
    }

    public final zzal zzi() {
        zzal zzalVar = this.zze;
        zzak(zzalVar);
        return zzalVar;
    }

    public final zzet zzj() {
        return this.zzn.zzj();
    }

    public final zzfe zzl() {
        zzfe zzfeVar = this.zzd;
        zzak(zzfeVar);
        return zzfeVar;
    }

    public final zzfg zzm() {
        zzfg zzfgVar = this.zzf;
        if (zzfgVar != null) {
            return zzfgVar;
        }
        throw new IllegalStateException("Network broadcast receiver not created");
    }

    public final zzfz zzo() {
        zzfz zzfzVar = this.zzc;
        zzak(zzfzVar);
        return zzfzVar;
    }

    final zzgi zzq() {
        return this.zzn;
    }

    public final zzis zzr() {
        zzis zzisVar = this.zzj;
        zzak(zzisVar);
        return zzisVar;
    }

    public final zzkd zzs() {
        return this.zzk;
    }

    public final zzlk zzu() {
        zzlk zzlkVar = this.zzi;
        zzak(zzlkVar);
        return zzlkVar;
    }

    public final zzlp zzv() {
        return ((zzgi) Preconditions.checkNotNull(this.zzn)).zzv();
    }

    @WorkerThread
    final String zzw(zzah zzahVar) {
        if (!zzahVar.zzi(zzag.ANALYTICS_STORAGE)) {
            return null;
        }
        byte[] bArr = new byte[16];
        zzv().zzG().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
    }

    final String zzx(zzp zzpVar) {
        try {
            return (String) zzaA().zzh(new zzlb(this, zzpVar)).get(WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e2) {
            zzaz().zzd().zzc("Failed to get app instance id. appId", zzey.zzn(zzpVar.zza), e2);
            return null;
        }
    }

    @WorkerThread
    final void zzz(Runnable runnable) {
        zzaA().zzg();
        if (this.zzq == null) {
            this.zzq = new ArrayList();
        }
        this.zzq.add(runnable);
    }
}
