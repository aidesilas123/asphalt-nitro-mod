package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import androidx.collection.LruCache;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzpg;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfz extends zzkw implements zzae {

    @VisibleForTesting
    final Map zza;

    @VisibleForTesting
    final Map zzb;

    @VisibleForTesting
    final Map zzc;

    @VisibleForTesting
    final LruCache zzd;
    final com.google.android.gms.internal.measurement.zzr zze;
    private final Map zzg;
    private final Map zzh;
    private final Map zzi;
    private final Map zzj;
    private final Map zzk;
    private final Map zzl;

    zzfz(zzli zzliVar) {
        super(zzliVar);
        this.zzg = new ArrayMap();
        this.zza = new ArrayMap();
        this.zzb = new ArrayMap();
        this.zzc = new ArrayMap();
        this.zzh = new ArrayMap();
        this.zzj = new ArrayMap();
        this.zzk = new ArrayMap();
        this.zzl = new ArrayMap();
        this.zzi = new ArrayMap();
        this.zzd = new zzfw(this, 20);
        this.zze = new zzfx(this);
    }

    @WorkerThread
    private final com.google.android.gms.internal.measurement.zzfe zzA(String str, byte[] bArr) {
        if (bArr == null) {
            return com.google.android.gms.internal.measurement.zzfe.zzg();
        }
        try {
            com.google.android.gms.internal.measurement.zzfe zzfeVar = (com.google.android.gms.internal.measurement.zzfe) ((com.google.android.gms.internal.measurement.zzfd) zzlk.zzl(com.google.android.gms.internal.measurement.zzfe.zze(), bArr)).zzaE();
            this.zzs.zzaz().zzj().zzc("Parsed config. version, gmp_app_id", zzfeVar.zzs() ? Long.valueOf(zzfeVar.zzc()) : null, zzfeVar.zzr() ? zzfeVar.zzh() : null);
            return zzfeVar;
        } catch (com.google.android.gms.internal.measurement.zzkm e2) {
            this.zzs.zzaz().zzk().zzc("Unable to merge remote config. appId", zzey.zzn(str), e2);
            return com.google.android.gms.internal.measurement.zzfe.zzg();
        } catch (RuntimeException e3) {
            this.zzs.zzaz().zzk().zzc("Unable to merge remote config. appId", zzey.zzn(str), e3);
            return com.google.android.gms.internal.measurement.zzfe.zzg();
        }
    }

    private final void zzB(String str, com.google.android.gms.internal.measurement.zzfd zzfdVar) {
        HashSet hashSet = new HashSet();
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        ArrayMap arrayMap3 = new ArrayMap();
        if (zzfdVar != null) {
            zzpg.zzc();
            if (this.zzs.zzf().zzs(null, zzel.zzaB)) {
                Iterator it = zzfdVar.zzg().iterator();
                while (it.hasNext()) {
                    hashSet.add(((com.google.android.gms.internal.measurement.zzfa) it.next()).zzb());
                }
            }
            for (int i = 0; i < zzfdVar.zza(); i++) {
                com.google.android.gms.internal.measurement.zzfb zzfbVar = (com.google.android.gms.internal.measurement.zzfb) zzfdVar.zzb(i).zzbB();
                if (TextUtils.isEmpty(zzfbVar.zzc())) {
                    this.zzs.zzaz().zzk().zza("EventConfig contained null event name");
                } else {
                    String strZzc = zzfbVar.zzc();
                    String strZzb = zzhf.zzb(zzfbVar.zzc());
                    if (!TextUtils.isEmpty(strZzb)) {
                        zzfbVar.zzb(strZzb);
                        zzfdVar.zzd(i, zzfbVar);
                    }
                    if (zzfbVar.zzf() && zzfbVar.zzd()) {
                        arrayMap.put(strZzc, Boolean.TRUE);
                    }
                    if (zzfbVar.zzg() && zzfbVar.zze()) {
                        arrayMap2.put(zzfbVar.zzc(), Boolean.TRUE);
                    }
                    if (zzfbVar.zzh()) {
                        if (zzfbVar.zza() < 2 || zzfbVar.zza() > 65535) {
                            this.zzs.zzaz().zzk().zzc("Invalid sampling rate. Event name, sample rate", zzfbVar.zzc(), Integer.valueOf(zzfbVar.zza()));
                        } else {
                            arrayMap3.put(zzfbVar.zzc(), Integer.valueOf(zzfbVar.zza()));
                        }
                    }
                }
            }
        }
        this.zza.put(str, hashSet);
        this.zzb.put(str, arrayMap);
        this.zzc.put(str, arrayMap2);
        this.zzi.put(str, arrayMap3);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0128  */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void zzC(java.lang.String r13) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 301
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzfz.zzC(java.lang.String):void");
    }

    @WorkerThread
    private final void zzD(final String str, com.google.android.gms.internal.measurement.zzfe zzfeVar) {
        if (zzfeVar.zza() == 0) {
            this.zzd.remove(str);
            return;
        }
        this.zzs.zzaz().zzj().zzb("EES programs found", Integer.valueOf(zzfeVar.zza()));
        com.google.android.gms.internal.measurement.zzgs zzgsVar = (com.google.android.gms.internal.measurement.zzgs) zzfeVar.zzm().get(0);
        try {
            com.google.android.gms.internal.measurement.zzc zzcVar = new com.google.android.gms.internal.measurement.zzc();
            zzcVar.zzd("internal.remoteConfig", new Callable() { // from class: com.google.android.gms.measurement.internal.zzft
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new com.google.android.gms.internal.measurement.zzn("internal.remoteConfig", new zzfy(this.zza, str));
                }
            });
            zzcVar.zzd("internal.appMetadata", new Callable() { // from class: com.google.android.gms.measurement.internal.zzfv
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    final zzfz zzfzVar = this.zza;
                    final String str2 = str;
                    return new com.google.android.gms.internal.measurement.zzu("internal.appMetadata", new Callable() { // from class: com.google.android.gms.measurement.internal.zzfu
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            zzfz zzfzVar2 = zzfzVar;
                            String str3 = str2;
                            zzg zzgVarZzj = zzfzVar2.zzf.zzi().zzj(str3);
                            HashMap map = new HashMap();
                            map.put("platform", "android");
                            map.put("package_name", str3);
                            zzfzVar2.zzs.zzf().zzh();
                            map.put("gmp_version", 61000L);
                            if (zzgVarZzj != null) {
                                String strZzw = zzgVarZzj.zzw();
                                if (strZzw != null) {
                                    map.put("app_version", strZzw);
                                }
                                map.put("app_version_int", Long.valueOf(zzgVarZzj.zzb()));
                                map.put("dynamite_version", Long.valueOf(zzgVarZzj.zzk()));
                            }
                            return map;
                        }
                    });
                }
            });
            zzcVar.zzd("internal.logger", new Callable() { // from class: com.google.android.gms.measurement.internal.zzfs
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new com.google.android.gms.internal.measurement.zzt(this.zza.zze);
                }
            });
            zzcVar.zzc(zzgsVar);
            this.zzd.put(str, zzcVar);
            this.zzs.zzaz().zzj().zzc("EES program loaded for appId, activities", str, Integer.valueOf(zzgsVar.zza().zza()));
            Iterator it = zzgsVar.zza().zzd().iterator();
            while (it.hasNext()) {
                this.zzs.zzaz().zzj().zzb("EES program activity", ((com.google.android.gms.internal.measurement.zzgq) it.next()).zzb());
            }
        } catch (com.google.android.gms.internal.measurement.zzd unused) {
            this.zzs.zzaz().zzd().zzb("Failed to load EES program. appId", str);
        }
    }

    private static final Map zzE(com.google.android.gms.internal.measurement.zzfe zzfeVar) {
        ArrayMap arrayMap = new ArrayMap();
        if (zzfeVar != null) {
            for (com.google.android.gms.internal.measurement.zzfi zzfiVar : zzfeVar.zzn()) {
                arrayMap.put(zzfiVar.zzb(), zzfiVar.zzc());
            }
        }
        return arrayMap;
    }

    static /* bridge */ /* synthetic */ com.google.android.gms.internal.measurement.zzc zzd(zzfz zzfzVar, String str) throws Throwable {
        zzfzVar.zzW();
        Preconditions.checkNotEmpty(str);
        if (!zzfzVar.zzo(str)) {
            return null;
        }
        if (!zzfzVar.zzh.containsKey(str) || zzfzVar.zzh.get(str) == null) {
            zzfzVar.zzC(str);
        } else {
            zzfzVar.zzD(str, (com.google.android.gms.internal.measurement.zzfe) zzfzVar.zzh.get(str));
        }
        return (com.google.android.gms.internal.measurement.zzc) zzfzVar.zzd.snapshot().get(str);
    }

    @Override // com.google.android.gms.measurement.internal.zzae
    @WorkerThread
    public final String zza(String str, String str2) throws Throwable {
        zzg();
        zzC(str);
        Map map = (Map) this.zzg.get(str);
        if (map != null) {
            return (String) map.get(str2);
        }
        return null;
    }

    @Override // com.google.android.gms.measurement.internal.zzkw
    protected final boolean zzb() {
        return false;
    }

    @WorkerThread
    final int zzc(String str, String str2) throws Throwable {
        Integer num;
        zzg();
        zzC(str);
        Map map = (Map) this.zzi.get(str);
        if (map == null || (num = (Integer) map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }

    @WorkerThread
    protected final com.google.android.gms.internal.measurement.zzfe zze(String str) {
        zzW();
        zzg();
        Preconditions.checkNotEmpty(str);
        zzC(str);
        return (com.google.android.gms.internal.measurement.zzfe) this.zzh.get(str);
    }

    @WorkerThread
    protected final String zzf(String str) {
        zzg();
        return (String) this.zzl.get(str);
    }

    @WorkerThread
    protected final String zzh(String str) {
        zzg();
        return (String) this.zzk.get(str);
    }

    @WorkerThread
    final String zzi(String str) throws Throwable {
        zzg();
        zzC(str);
        return (String) this.zzj.get(str);
    }

    @WorkerThread
    final Set zzk(String str) throws Throwable {
        zzg();
        zzC(str);
        return (Set) this.zza.get(str);
    }

    @WorkerThread
    protected final void zzl(String str) {
        zzg();
        this.zzk.put(str, null);
    }

    @WorkerThread
    final void zzm(String str) {
        zzg();
        this.zzh.remove(str);
    }

    @WorkerThread
    final boolean zzn(String str) {
        zzg();
        com.google.android.gms.internal.measurement.zzfe zzfeVarZze = zze(str);
        if (zzfeVarZze == null) {
            return false;
        }
        return zzfeVarZze.zzq();
    }

    public final boolean zzo(String str) {
        com.google.android.gms.internal.measurement.zzfe zzfeVar;
        return (TextUtils.isEmpty(str) || (zzfeVar = (com.google.android.gms.internal.measurement.zzfe) this.zzh.get(str)) == null || zzfeVar.zza() == 0) ? false : true;
    }

    final boolean zzp(String str) {
        return "1".equals(zza(str, "measurement.upload.blacklist_internal"));
    }

    @WorkerThread
    final boolean zzq(String str, String str2) throws Throwable {
        Boolean bool;
        zzg();
        zzC(str);
        if ("ecommerce_purchase".equals(str2) || "purchase".equals(str2) || "refund".equals(str2)) {
            return true;
        }
        Map map = (Map) this.zzc.get(str);
        if (map == null || (bool = (Boolean) map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    @WorkerThread
    final boolean zzr(String str, String str2) throws Throwable {
        Boolean bool;
        zzg();
        zzC(str);
        if (zzp(str) && zzlp.zzah(str2)) {
            return true;
        }
        if (zzs(str) && zzlp.zzai(str2)) {
            return true;
        }
        Map map = (Map) this.zzb.get(str);
        if (map == null || (bool = (Boolean) map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    final boolean zzs(String str) {
        return "1".equals(zza(str, "measurement.upload.blacklist_public"));
    }

    @WorkerThread
    protected final boolean zzt(String str, byte[] bArr, String str2, String str3) throws Throwable {
        zzW();
        zzg();
        Preconditions.checkNotEmpty(str);
        com.google.android.gms.internal.measurement.zzfd zzfdVar = (com.google.android.gms.internal.measurement.zzfd) zzA(str, bArr).zzbB();
        if (zzfdVar == null) {
            return false;
        }
        zzB(str, zzfdVar);
        zzD(str, (com.google.android.gms.internal.measurement.zzfe) zzfdVar.zzaE());
        this.zzh.put(str, (com.google.android.gms.internal.measurement.zzfe) zzfdVar.zzaE());
        this.zzj.put(str, zzfdVar.zze());
        this.zzk.put(str, str2);
        this.zzl.put(str, str3);
        this.zzg.put(str, zzE((com.google.android.gms.internal.measurement.zzfe) zzfdVar.zzaE()));
        this.zzf.zzi().zzB(str, new ArrayList(zzfdVar.zzf()));
        try {
            zzfdVar.zzc();
            bArr = ((com.google.android.gms.internal.measurement.zzfe) zzfdVar.zzaE()).zzby();
        } catch (RuntimeException e2) {
            this.zzs.zzaz().zzk().zzc("Unable to serialize reduced-size config. Storing full config instead. appId", zzey.zzn(str), e2);
        }
        zzal zzalVarZzi = this.zzf.zzi();
        Preconditions.checkNotEmpty(str);
        zzalVarZzi.zzg();
        zzalVarZzi.zzW();
        ContentValues contentValues = new ContentValues();
        contentValues.put("remote_config", bArr);
        contentValues.put("config_last_modified_time", str2);
        if (zzalVarZzi.zzs.zzf().zzs(null, zzel.zzaM)) {
            contentValues.put("e_tag", str3);
        }
        try {
            if (zzalVarZzi.zzh().update("apps", contentValues, "app_id = ?", new String[]{str}) == 0) {
                zzalVarZzi.zzs.zzaz().zzd().zzb("Failed to update remote config (got 0). appId", zzey.zzn(str));
            }
        } catch (SQLiteException e3) {
            zzalVarZzi.zzs.zzaz().zzd().zzc("Error storing remote config. appId", zzey.zzn(str), e3);
        }
        this.zzh.put(str, (com.google.android.gms.internal.measurement.zzfe) zzfdVar.zzaE());
        return true;
    }

    @WorkerThread
    final boolean zzu(String str) throws Throwable {
        zzg();
        zzC(str);
        return this.zza.get(str) != null && ((Set) this.zza.get(str)).contains("app_instance_id");
    }

    @WorkerThread
    final boolean zzv(String str) throws Throwable {
        zzg();
        zzC(str);
        return this.zza.get(str) != null && (((Set) this.zza.get(str)).contains("device_model") || ((Set) this.zza.get(str)).contains(DeviceRequestsHelper.DEVICE_INFO_PARAM));
    }

    @WorkerThread
    final boolean zzw(String str) throws Throwable {
        zzg();
        zzC(str);
        return this.zza.get(str) != null && ((Set) this.zza.get(str)).contains("enhanced_user_id");
    }

    @WorkerThread
    final boolean zzx(String str) throws Throwable {
        zzg();
        zzC(str);
        return this.zza.get(str) != null && ((Set) this.zza.get(str)).contains("google_signals");
    }

    @WorkerThread
    final boolean zzy(String str) throws Throwable {
        zzg();
        zzC(str);
        return this.zza.get(str) != null && (((Set) this.zza.get(str)).contains("os_version") || ((Set) this.zza.get(str)).contains(DeviceRequestsHelper.DEVICE_INFO_PARAM));
    }

    @WorkerThread
    final boolean zzz(String str) throws Throwable {
        zzg();
        zzC(str);
        return this.zza.get(str) != null && ((Set) this.zza.get(str)).contains("user_id");
    }
}
