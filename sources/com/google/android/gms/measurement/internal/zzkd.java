package com.google.android.gms.measurement.internal;

import android.util.Pair;
import androidx.annotation.WorkerThread;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.internal.measurement.zzne;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzkd extends zzkw {
    public final zzfj zza;
    public final zzfj zzb;
    public final zzfj zzc;
    public final zzfj zzd;
    public final zzfj zze;
    private final Map zzg;
    private String zzh;
    private boolean zzi;
    private long zzj;

    zzkd(zzli zzliVar) {
        super(zzliVar);
        this.zzg = new HashMap();
        zzfn zzfnVarZzm = this.zzs.zzm();
        zzfnVarZzm.getClass();
        this.zza = new zzfj(zzfnVarZzm, "last_delete_stale", 0L);
        zzfn zzfnVarZzm2 = this.zzs.zzm();
        zzfnVarZzm2.getClass();
        this.zzb = new zzfj(zzfnVarZzm2, "backoff", 0L);
        zzfn zzfnVarZzm3 = this.zzs.zzm();
        zzfnVarZzm3.getClass();
        this.zzc = new zzfj(zzfnVarZzm3, "last_upload", 0L);
        zzfn zzfnVarZzm4 = this.zzs.zzm();
        zzfnVarZzm4.getClass();
        this.zzd = new zzfj(zzfnVarZzm4, "last_upload_attempt", 0L);
        zzfn zzfnVarZzm5 = this.zzs.zzm();
        zzfnVarZzm5.getClass();
        this.zze = new zzfj(zzfnVarZzm5, "midnight_offset", 0L);
    }

    @WorkerThread
    @Deprecated
    final Pair zza(String str) {
        AdvertisingIdClient.Info advertisingIdInfo;
        zzkc zzkcVar;
        AdvertisingIdClient.Info advertisingIdInfo2;
        zzg();
        long jElapsedRealtime = this.zzs.zzaw().elapsedRealtime();
        zzne.zzc();
        if (this.zzs.zzf().zzs(null, zzel.zzar)) {
            zzkc zzkcVar2 = (zzkc) this.zzg.get(str);
            if (zzkcVar2 != null && jElapsedRealtime < zzkcVar2.zzc) {
                return new Pair(zzkcVar2.zza, Boolean.valueOf(zzkcVar2.zzb));
            }
            AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
            long jZzi = jElapsedRealtime + this.zzs.zzf().zzi(str, zzel.zza);
            try {
                advertisingIdInfo2 = AdvertisingIdClient.getAdvertisingIdInfo(this.zzs.zzav());
            } catch (Exception e2) {
                this.zzs.zzaz().zzc().zzb("Unable to get advertising id", e2);
                zzkcVar = new zzkc("", false, jZzi);
            }
            if (advertisingIdInfo2 == null) {
                return new Pair("", Boolean.FALSE);
            }
            String id = advertisingIdInfo2.getId();
            zzkcVar = id != null ? new zzkc(id, advertisingIdInfo2.isLimitAdTrackingEnabled(), jZzi) : new zzkc("", advertisingIdInfo2.isLimitAdTrackingEnabled(), jZzi);
            this.zzg.put(str, zzkcVar);
            AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
            return new Pair(zzkcVar.zza, Boolean.valueOf(zzkcVar.zzb));
        }
        String str2 = this.zzh;
        if (str2 != null && jElapsedRealtime < this.zzj) {
            return new Pair(str2, Boolean.valueOf(this.zzi));
        }
        this.zzj = jElapsedRealtime + this.zzs.zzf().zzi(str, zzel.zza);
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
        try {
            advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.zzs.zzav());
        } catch (Exception e3) {
            this.zzs.zzaz().zzc().zzb("Unable to get advertising id", e3);
            this.zzh = "";
        }
        if (advertisingIdInfo == null) {
            return new Pair("", Boolean.FALSE);
        }
        this.zzh = "";
        String id2 = advertisingIdInfo.getId();
        if (id2 != null) {
            this.zzh = id2;
        }
        this.zzi = advertisingIdInfo.isLimitAdTrackingEnabled();
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
        return new Pair(this.zzh, Boolean.valueOf(this.zzi));
    }

    @Override // com.google.android.gms.measurement.internal.zzkw
    protected final boolean zzb() {
        return false;
    }

    @WorkerThread
    final Pair zzd(String str, zzah zzahVar) {
        return zzahVar.zzi(zzag.AD_STORAGE) ? zza(str) : new Pair("", Boolean.FALSE);
    }

    @WorkerThread
    @Deprecated
    final String zzf(String str) {
        zzg();
        String str2 = (String) zza(str).first;
        MessageDigest messageDigestZzF = zzlp.zzF();
        if (messageDigestZzF == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, messageDigestZzF.digest(str2.getBytes())));
    }
}
