package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import androidx.annotation.WorkerThread;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
final class zzfn extends zzhc {

    @VisibleForTesting
    static final Pair zza = new Pair("", 0L);
    public zzfl zzb;
    public final zzfj zzc;
    public final zzfj zzd;
    public final zzfm zze;
    public final zzfj zzf;
    public final zzfh zzg;
    public final zzfm zzh;
    public final zzfh zzi;
    public final zzfj zzj;
    public boolean zzk;
    public final zzfh zzl;
    public final zzfh zzm;
    public final zzfj zzn;
    public final zzfm zzo;
    public final zzfm zzp;
    public final zzfj zzq;
    public final zzfi zzr;
    private SharedPreferences zzt;
    private String zzu;
    private boolean zzv;
    private long zzw;

    zzfn(zzgi zzgiVar) {
        super(zzgiVar);
        this.zzf = new zzfj(this, "session_timeout", 1800000L);
        this.zzg = new zzfh(this, "start_new_session", true);
        this.zzj = new zzfj(this, "last_pause_time", 0L);
        this.zzh = new zzfm(this, "non_personalized_ads", null);
        this.zzi = new zzfh(this, "allow_remote_dynamite", false);
        this.zzc = new zzfj(this, "first_open_time", 0L);
        this.zzd = new zzfj(this, "app_install_time", 0L);
        this.zze = new zzfm(this, "app_instance_id", null);
        this.zzl = new zzfh(this, "app_backgrounded", false);
        this.zzm = new zzfh(this, "deep_link_retrieval_complete", false);
        this.zzn = new zzfj(this, "deep_link_retrieval_attempts", 0L);
        this.zzo = new zzfm(this, "firebase_feature_rollouts", null);
        this.zzp = new zzfm(this, "deferred_attribution_cache", null);
        this.zzq = new zzfj(this, "deferred_attribution_cache_timestamp", 0L);
        this.zzr = new zzfi(this, "default_event_parameters", null);
    }

    @VisibleForTesting
    @WorkerThread
    protected final SharedPreferences zza() {
        zzg();
        zzu();
        Preconditions.checkNotNull(this.zzt);
        return this.zzt;
    }

    @Override // com.google.android.gms.measurement.internal.zzhc
    @WorkerThread
    protected final void zzaB() {
        SharedPreferences sharedPreferences = this.zzs.zzav().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.zzt = sharedPreferences;
        boolean z = sharedPreferences.getBoolean("has_been_opened", false);
        this.zzk = z;
        if (!z) {
            SharedPreferences.Editor editorEdit = this.zzt.edit();
            editorEdit.putBoolean("has_been_opened", true);
            editorEdit.apply();
        }
        this.zzs.zzf();
        this.zzb = new zzfl(this, "health_monitor", Math.max(0L, ((Long) zzel.zzb.zza(null)).longValue()), null);
    }

    @WorkerThread
    final Pair zzb(String str) {
        zzg();
        long jElapsedRealtime = this.zzs.zzaw().elapsedRealtime();
        String str2 = this.zzu;
        if (str2 != null && jElapsedRealtime < this.zzw) {
            return new Pair(str2, Boolean.valueOf(this.zzv));
        }
        this.zzw = jElapsedRealtime + this.zzs.zzf().zzi(str, zzel.zza);
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(this.zzs.zzav());
            this.zzu = "";
            String id = advertisingIdInfo.getId();
            if (id != null) {
                this.zzu = id;
            }
            this.zzv = advertisingIdInfo.isLimitAdTrackingEnabled();
        } catch (Exception e2) {
            this.zzs.zzaz().zzc().zzb("Unable to get advertising id", e2);
            this.zzu = "";
        }
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
        return new Pair(this.zzu, Boolean.valueOf(this.zzv));
    }

    @WorkerThread
    final zzah zzc() {
        zzg();
        return zzah.zzb(zza().getString("consent_settings", "G1"));
    }

    @WorkerThread
    final Boolean zzd() {
        zzg();
        if (zza().contains("measurement_enabled")) {
            return Boolean.valueOf(zza().getBoolean("measurement_enabled", true));
        }
        return null;
    }

    @Override // com.google.android.gms.measurement.internal.zzhc
    protected final boolean zzf() {
        return true;
    }

    @WorkerThread
    final void zzh(Boolean bool) {
        zzg();
        SharedPreferences.Editor editorEdit = zza().edit();
        if (bool != null) {
            editorEdit.putBoolean("measurement_enabled", bool.booleanValue());
        } else {
            editorEdit.remove("measurement_enabled");
        }
        editorEdit.apply();
    }

    @WorkerThread
    final void zzi(boolean z) {
        zzg();
        this.zzs.zzaz().zzj().zzb("App measurement setting deferred collection", Boolean.valueOf(z));
        SharedPreferences.Editor editorEdit = zza().edit();
        editorEdit.putBoolean("deferred_analytics_collection", z);
        editorEdit.apply();
    }

    @WorkerThread
    final boolean zzj() {
        SharedPreferences sharedPreferences = this.zzt;
        if (sharedPreferences == null) {
            return false;
        }
        return sharedPreferences.contains("deferred_analytics_collection");
    }

    final boolean zzk(long j) {
        return j - this.zzf.zza() > this.zzj.zza();
    }

    @WorkerThread
    final boolean zzl(int i) {
        return zzah.zzj(i, zza().getInt("consent_source", 100));
    }
}
