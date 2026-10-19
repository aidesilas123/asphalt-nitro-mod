package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzoc;
import java.net.URL;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzgi implements zzhd {
    private static volatile zzgi zzd;
    private zzep zzA;
    private Boolean zzC;
    private long zzD;
    private volatile Boolean zzE;
    private volatile boolean zzF;
    private int zzG;

    @VisibleForTesting
    protected Boolean zza;

    @VisibleForTesting
    protected Boolean zzb;

    @VisibleForTesting
    final long zzc;
    private final Context zze;
    private final String zzf;
    private final String zzg;
    private final String zzh;
    private final boolean zzi;
    private final zzaa zzj;
    private final zzaf zzk;
    private final zzfn zzl;
    private final zzey zzm;
    private final zzgf zzn;
    private final zzkr zzo;
    private final zzlp zzp;
    private final zzet zzq;
    private final Clock zzr;
    private final zzjb zzs;
    private final zzin zzt;
    private final zzd zzu;
    private final zzir zzv;
    private final String zzw;
    private zzer zzx;
    private zzkb zzy;
    private zzap zzz;
    private boolean zzB = false;
    private final AtomicInteger zzH = new AtomicInteger(0);

    zzgi(zzhl zzhlVar) {
        Bundle bundle;
        Preconditions.checkNotNull(zzhlVar);
        Context context = zzhlVar.zza;
        zzaa zzaaVar = new zzaa(context);
        this.zzj = zzaaVar;
        zzei.zza = zzaaVar;
        this.zze = context;
        this.zzf = zzhlVar.zzb;
        this.zzg = zzhlVar.zzc;
        this.zzh = zzhlVar.zzd;
        this.zzi = zzhlVar.zzh;
        this.zzE = zzhlVar.zze;
        this.zzw = zzhlVar.zzj;
        this.zzF = true;
        com.google.android.gms.internal.measurement.zzcl zzclVar = zzhlVar.zzg;
        if (zzclVar != null && (bundle = zzclVar.zzg) != null) {
            Object obj = bundle.get("measurementEnabled");
            if (obj instanceof Boolean) {
                this.zza = (Boolean) obj;
            }
            Object obj2 = zzclVar.zzg.get("measurementDeactivated");
            if (obj2 instanceof Boolean) {
                this.zzb = (Boolean) obj2;
            }
        }
        com.google.android.gms.internal.measurement.zzhy.zze(context);
        Clock defaultClock = DefaultClock.getInstance();
        this.zzr = defaultClock;
        Long l = zzhlVar.zzi;
        this.zzc = l != null ? l.longValue() : defaultClock.currentTimeMillis();
        this.zzk = new zzaf(this);
        zzfn zzfnVar = new zzfn(this);
        zzfnVar.zzv();
        this.zzl = zzfnVar;
        zzey zzeyVar = new zzey(this);
        zzeyVar.zzv();
        this.zzm = zzeyVar;
        zzlp zzlpVar = new zzlp(this);
        zzlpVar.zzv();
        this.zzp = zzlpVar;
        this.zzq = new zzet(new zzhk(zzhlVar, this));
        this.zzu = new zzd(this);
        zzjb zzjbVar = new zzjb(this);
        zzjbVar.zzb();
        this.zzs = zzjbVar;
        zzin zzinVar = new zzin(this);
        zzinVar.zzb();
        this.zzt = zzinVar;
        zzkr zzkrVar = new zzkr(this);
        zzkrVar.zzb();
        this.zzo = zzkrVar;
        zzir zzirVar = new zzir(this);
        zzirVar.zzv();
        this.zzv = zzirVar;
        zzgf zzgfVar = new zzgf(this);
        zzgfVar.zzv();
        this.zzn = zzgfVar;
        com.google.android.gms.internal.measurement.zzcl zzclVar2 = zzhlVar.zzg;
        boolean z = zzclVar2 == null || zzclVar2.zzb == 0;
        if (context.getApplicationContext() instanceof Application) {
            zzin zzinVarZzq = zzq();
            if (zzinVarZzq.zzs.zze.getApplicationContext() instanceof Application) {
                Application application = (Application) zzinVarZzq.zzs.zze.getApplicationContext();
                if (zzinVarZzq.zza == null) {
                    zzinVarZzq.zza = new zzim(zzinVarZzq, null);
                }
                if (z) {
                    application.unregisterActivityLifecycleCallbacks(zzinVarZzq.zza);
                    application.registerActivityLifecycleCallbacks(zzinVarZzq.zza);
                    zzinVarZzq.zzs.zzaz().zzj().zza("Registered activity lifecycle callback");
                }
            }
        } else {
            zzaz().zzk().zza("Application context is not an Application");
        }
        zzgfVar.zzp(new zzgh(this, zzhlVar));
    }

    static /* bridge */ /* synthetic */ void zzA(zzgi zzgiVar, zzhl zzhlVar) {
        zzgiVar.zzaA().zzg();
        zzgiVar.zzk.zzn();
        zzap zzapVar = new zzap(zzgiVar);
        zzapVar.zzv();
        zzgiVar.zzz = zzapVar;
        zzep zzepVar = new zzep(zzgiVar, zzhlVar.zzf);
        zzepVar.zzb();
        zzgiVar.zzA = zzepVar;
        zzer zzerVar = new zzer(zzgiVar);
        zzerVar.zzb();
        zzgiVar.zzx = zzerVar;
        zzkb zzkbVar = new zzkb(zzgiVar);
        zzkbVar.zzb();
        zzgiVar.zzy = zzkbVar;
        zzgiVar.zzp.zzw();
        zzgiVar.zzl.zzw();
        zzgiVar.zzA.zzc();
        zzew zzewVarZzi = zzgiVar.zzaz().zzi();
        zzgiVar.zzk.zzh();
        zzewVarZzi.zzb("App measurement initialized, version", 61000L);
        zzgiVar.zzaz().zzi().zza("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        String strZzl = zzepVar.zzl();
        if (TextUtils.isEmpty(zzgiVar.zzf)) {
            if (zzgiVar.zzv().zzae(strZzl)) {
                zzgiVar.zzaz().zzi().zza("Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.");
            } else {
                zzgiVar.zzaz().zzi().zza("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(String.valueOf(strZzl)));
            }
        }
        zzgiVar.zzaz().zzc().zza("Debug-level message logging enabled");
        if (zzgiVar.zzG != zzgiVar.zzH.get()) {
            zzgiVar.zzaz().zzd().zzc("Not all components initialized", Integer.valueOf(zzgiVar.zzG), Integer.valueOf(zzgiVar.zzH.get()));
        }
        zzgiVar.zzB = true;
    }

    static final void zzO() {
        throw new IllegalStateException("Unexpected call on client side");
    }

    private static final void zzP(zzhb zzhbVar) {
        if (zzhbVar == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    private static final void zzQ(zzf zzfVar) {
        if (zzfVar == null) {
            throw new IllegalStateException("Component not created");
        }
        if (!zzfVar.zze()) {
            throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(zzfVar.getClass())));
        }
    }

    private static final void zzR(zzhc zzhcVar) {
        if (zzhcVar == null) {
            throw new IllegalStateException("Component not created");
        }
        if (!zzhcVar.zzx()) {
            throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(zzhcVar.getClass())));
        }
    }

    public static zzgi zzp(Context context, com.google.android.gms.internal.measurement.zzcl zzclVar, Long l) {
        Bundle bundle;
        if (zzclVar != null && (zzclVar.zze == null || zzclVar.zzf == null)) {
            zzclVar = new com.google.android.gms.internal.measurement.zzcl(zzclVar.zza, zzclVar.zzb, zzclVar.zzc, zzclVar.zzd, null, null, zzclVar.zzg, null);
        }
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (zzd == null) {
            synchronized (zzgi.class) {
                if (zzd == null) {
                    zzd = new zzgi(new zzhl(context, zzclVar, l));
                }
            }
        } else if (zzclVar != null && (bundle = zzclVar.zzg) != null && bundle.containsKey("dataCollectionDefaultEnabled")) {
            Preconditions.checkNotNull(zzd);
            zzd.zzE = Boolean.valueOf(zzclVar.zzg.getBoolean("dataCollectionDefaultEnabled"));
        }
        Preconditions.checkNotNull(zzd);
        return zzd;
    }

    final void zzB() {
        this.zzH.incrementAndGet();
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final /* synthetic */ void zzC(java.lang.String r7, int r8, java.lang.Throwable r9, byte[] r10, java.util.Map r11) {
        /*
            Method dump skipped, instruction units count: 289
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzgi.zzC(java.lang.String, int, java.lang.Throwable, byte[], java.util.Map):void");
    }

    final void zzD() {
        this.zzG++;
    }

    @WorkerThread
    public final void zzE() {
        zzaA().zzg();
        zzR(zzr());
        String strZzl = zzh().zzl();
        Pair pairZzb = zzm().zzb(strZzl);
        if (!this.zzk.zzr() || ((Boolean) pairZzb.second).booleanValue() || TextUtils.isEmpty((CharSequence) pairZzb.first)) {
            zzaz().zzc().zza("ADID unavailable to retrieve Deferred Deep Link. Skipping");
            return;
        }
        zzir zzirVarZzr = zzr();
        zzirVarZzr.zzu();
        ConnectivityManager connectivityManager = (ConnectivityManager) zzirVarZzr.zzs.zze.getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = null;
        if (connectivityManager != null) {
            try {
                activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            } catch (SecurityException unused) {
            }
        }
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            zzaz().zzk().zza("Network is not available for Deferred Deep Link request. Skipping");
            return;
        }
        zzlp zzlpVarZzv = zzv();
        zzh().zzs.zzk.zzh();
        URL urlZzE = zzlpVarZzv.zzE(61000L, strZzl, (String) pairZzb.first, zzm().zzn.zza() - 1);
        if (urlZzE != null) {
            zzir zzirVarZzr2 = zzr();
            zzgg zzggVar = new zzgg(this);
            zzirVarZzr2.zzg();
            zzirVarZzr2.zzu();
            Preconditions.checkNotNull(urlZzE);
            Preconditions.checkNotNull(zzggVar);
            zzirVarZzr2.zzs.zzaA().zzo(new zziq(zzirVarZzr2, strZzl, urlZzE, null, null, zzggVar, null));
        }
    }

    @WorkerThread
    final void zzF(boolean z) {
        this.zzE = Boolean.valueOf(z);
    }

    @WorkerThread
    public final void zzG(boolean z) {
        zzaA().zzg();
        this.zzF = z;
    }

    @WorkerThread
    protected final void zzH(com.google.android.gms.internal.measurement.zzcl zzclVar) {
        zzah zzahVar;
        zzaA().zzg();
        zzah zzahVarZzc = zzm().zzc();
        zzfn zzfnVarZzm = zzm();
        zzgi zzgiVar = zzfnVarZzm.zzs;
        zzfnVarZzm.zzg();
        int i = 100;
        int i2 = zzfnVarZzm.zza().getInt("consent_source", 100);
        zzaf zzafVar = this.zzk;
        zzgi zzgiVar2 = zzafVar.zzs;
        Boolean boolZzk = zzafVar.zzk("google_analytics_default_allow_ad_storage");
        zzaf zzafVar2 = this.zzk;
        zzgi zzgiVar3 = zzafVar2.zzs;
        Boolean boolZzk2 = zzafVar2.zzk("google_analytics_default_allow_analytics_storage");
        if (!(boolZzk == null && boolZzk2 == null) && zzm().zzl(-10)) {
            zzahVar = new zzah(boolZzk, boolZzk2);
            i = -10;
        } else {
            if (!TextUtils.isEmpty(zzh().zzm()) && (i2 == 0 || i2 == 30 || i2 == 10 || i2 == 30 || i2 == 30 || i2 == 40)) {
                zzq().zzT(zzah.zza, -10, this.zzc);
            } else if (TextUtils.isEmpty(zzh().zzm()) && zzclVar != null && zzclVar.zzg != null && zzm().zzl(30)) {
                zzahVar = zzah.zza(zzclVar.zzg);
                if (!zzahVar.equals(zzah.zza)) {
                    i = 30;
                }
            }
            zzahVar = null;
        }
        if (zzahVar != null) {
            zzq().zzT(zzahVar, i, this.zzc);
            zzahVarZzc = zzahVar;
        }
        zzq().zzX(zzahVarZzc);
        if (zzm().zzc.zza() == 0) {
            zzaz().zzj().zzb("Persisting first open", Long.valueOf(this.zzc));
            zzm().zzc.zzb(this.zzc);
        }
        zzq().zzb.zzc();
        if (zzM()) {
            if (!TextUtils.isEmpty(zzh().zzm()) || !TextUtils.isEmpty(zzh().zzk())) {
                zzlp zzlpVarZzv = zzv();
                String strZzm = zzh().zzm();
                zzfn zzfnVarZzm2 = zzm();
                zzfnVarZzm2.zzg();
                String string = zzfnVarZzm2.zza().getString("gmp_app_id", null);
                String strZzk = zzh().zzk();
                zzfn zzfnVarZzm3 = zzm();
                zzfnVarZzm3.zzg();
                if (zzlpVarZzv.zzan(strZzm, string, strZzk, zzfnVarZzm3.zza().getString("admob_app_id", null))) {
                    zzaz().zzi().zza("Rechecking which service to use due to a GMP App Id change");
                    zzfn zzfnVarZzm4 = zzm();
                    zzfnVarZzm4.zzg();
                    Boolean boolZzd = zzfnVarZzm4.zzd();
                    SharedPreferences.Editor editorEdit = zzfnVarZzm4.zza().edit();
                    editorEdit.clear();
                    editorEdit.apply();
                    if (boolZzd != null) {
                        zzfnVarZzm4.zzh(boolZzd);
                    }
                    zzi().zzj();
                    this.zzy.zzs();
                    this.zzy.zzr();
                    zzm().zzc.zzb(this.zzc);
                    zzm().zze.zzb(null);
                }
                zzfn zzfnVarZzm5 = zzm();
                String strZzm2 = zzh().zzm();
                zzfnVarZzm5.zzg();
                SharedPreferences.Editor editorEdit2 = zzfnVarZzm5.zza().edit();
                editorEdit2.putString("gmp_app_id", strZzm2);
                editorEdit2.apply();
                zzfn zzfnVarZzm6 = zzm();
                String strZzk2 = zzh().zzk();
                zzfnVarZzm6.zzg();
                SharedPreferences.Editor editorEdit3 = zzfnVarZzm6.zza().edit();
                editorEdit3.putString("admob_app_id", strZzk2);
                editorEdit3.apply();
            }
            if (!zzm().zzc().zzi(zzag.ANALYTICS_STORAGE)) {
                zzm().zze.zzb(null);
            }
            zzq().zzP(zzm().zze.zza());
            zzoc.zzc();
            if (this.zzk.zzs(null, zzel.zzad)) {
                try {
                    zzv().zzs.zze.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
                } catch (ClassNotFoundException unused) {
                    if (!TextUtils.isEmpty(zzm().zzo.zza())) {
                        zzaz().zzk().zza("Remote config removed with active feature rollouts");
                        zzm().zzo.zzb(null);
                    }
                }
            }
            if (!TextUtils.isEmpty(zzh().zzm()) || !TextUtils.isEmpty(zzh().zzk())) {
                boolean zZzJ = zzJ();
                if (!zzm().zzj() && !this.zzk.zzv()) {
                    zzm().zzi(!zZzJ);
                }
                if (zZzJ) {
                    zzq().zzz();
                }
                zzu().zza.zza();
                zzt().zzu(new AtomicReference());
                zzt().zzH(zzm().zzr.zza());
            }
        } else if (zzJ()) {
            if (!zzv().zzad("android.permission.INTERNET")) {
                zzaz().zzd().zza("App is missing INTERNET permission");
            }
            if (!zzv().zzad("android.permission.ACCESS_NETWORK_STATE")) {
                zzaz().zzd().zza("App is missing ACCESS_NETWORK_STATE permission");
            }
            if (!Wrappers.packageManager(this.zze).isCallerInstantApp() && !this.zzk.zzx()) {
                if (!zzlp.zzaj(this.zze)) {
                    zzaz().zzd().zza("AppMeasurementReceiver not registered/enabled");
                }
                if (!zzlp.zzak(this.zze, false)) {
                    zzaz().zzd().zza("AppMeasurementService not registered/enabled");
                }
            }
            zzaz().zzd().zza("Uploading is not possible. App measurement disabled");
        }
        zzm().zzi.zza(true);
    }

    @WorkerThread
    public final boolean zzI() {
        return this.zzE != null && this.zzE.booleanValue();
    }

    @WorkerThread
    public final boolean zzJ() {
        return zza() == 0;
    }

    @WorkerThread
    public final boolean zzK() {
        zzaA().zzg();
        return this.zzF;
    }

    public final boolean zzL() {
        return TextUtils.isEmpty(this.zzf);
    }

    @WorkerThread
    protected final boolean zzM() {
        if (!this.zzB) {
            throw new IllegalStateException("AppMeasurement is not initialized");
        }
        zzaA().zzg();
        Boolean bool = this.zzC;
        if (bool == null || this.zzD == 0 || (!bool.booleanValue() && Math.abs(this.zzr.elapsedRealtime() - this.zzD) > 1000)) {
            this.zzD = this.zzr.elapsedRealtime();
            boolean z = true;
            Boolean boolValueOf = Boolean.valueOf(zzv().zzad("android.permission.INTERNET") && zzv().zzad("android.permission.ACCESS_NETWORK_STATE") && (Wrappers.packageManager(this.zze).isCallerInstantApp() || this.zzk.zzx() || (zzlp.zzaj(this.zze) && zzlp.zzak(this.zze, false))));
            this.zzC = boolValueOf;
            if (boolValueOf.booleanValue()) {
                if (!zzv().zzX(zzh().zzm(), zzh().zzk()) && TextUtils.isEmpty(zzh().zzk())) {
                    z = false;
                }
                this.zzC = Boolean.valueOf(z);
            }
        }
        return this.zzC.booleanValue();
    }

    public final boolean zzN() {
        return this.zzi;
    }

    @WorkerThread
    public final int zza() {
        zzaA().zzg();
        if (this.zzk.zzv()) {
            return 1;
        }
        Boolean bool = this.zzb;
        if (bool != null && bool.booleanValue()) {
            return 2;
        }
        zzaA().zzg();
        if (!this.zzF) {
            return 8;
        }
        Boolean boolZzd = zzm().zzd();
        if (boolZzd != null) {
            return boolZzd.booleanValue() ? 0 : 3;
        }
        zzaf zzafVar = this.zzk;
        zzaa zzaaVar = zzafVar.zzs.zzj;
        Boolean boolZzk = zzafVar.zzk("firebase_analytics_collection_enabled");
        if (boolZzk != null) {
            return boolZzk.booleanValue() ? 0 : 4;
        }
        Boolean bool2 = this.zza;
        return bool2 != null ? bool2.booleanValue() ? 0 : 5 : (this.zzE == null || this.zzE.booleanValue()) ? 0 : 7;
    }

    @Override // com.google.android.gms.measurement.internal.zzhd
    public final zzgf zzaA() {
        zzR(this.zzn);
        return this.zzn;
    }

    @Override // com.google.android.gms.measurement.internal.zzhd
    public final Context zzav() {
        return this.zze;
    }

    @Override // com.google.android.gms.measurement.internal.zzhd
    public final Clock zzaw() {
        return this.zzr;
    }

    @Override // com.google.android.gms.measurement.internal.zzhd
    public final zzaa zzax() {
        return this.zzj;
    }

    @Override // com.google.android.gms.measurement.internal.zzhd
    public final zzey zzaz() {
        zzR(this.zzm);
        return this.zzm;
    }

    public final zzd zzd() {
        zzd zzdVar = this.zzu;
        if (zzdVar != null) {
            return zzdVar;
        }
        throw new IllegalStateException("Component not created");
    }

    public final zzaf zzf() {
        return this.zzk;
    }

    public final zzap zzg() {
        zzR(this.zzz);
        return this.zzz;
    }

    public final zzep zzh() {
        zzQ(this.zzA);
        return this.zzA;
    }

    public final zzer zzi() {
        zzQ(this.zzx);
        return this.zzx;
    }

    public final zzet zzj() {
        return this.zzq;
    }

    public final zzey zzl() {
        zzey zzeyVar = this.zzm;
        if (zzeyVar == null || !zzeyVar.zzx()) {
            return null;
        }
        return zzeyVar;
    }

    public final zzfn zzm() {
        zzP(this.zzl);
        return this.zzl;
    }

    final zzgf zzo() {
        return this.zzn;
    }

    public final zzin zzq() {
        zzQ(this.zzt);
        return this.zzt;
    }

    public final zzir zzr() {
        zzR(this.zzv);
        return this.zzv;
    }

    public final zzjb zzs() {
        zzQ(this.zzs);
        return this.zzs;
    }

    public final zzkb zzt() {
        zzQ(this.zzy);
        return this.zzy;
    }

    public final zzkr zzu() {
        zzQ(this.zzo);
        return this.zzo;
    }

    public final zzlp zzv() {
        zzP(this.zzp);
        return this.zzp;
    }

    public final String zzw() {
        return this.zzf;
    }

    public final String zzx() {
        return this.zzg;
    }

    public final String zzy() {
        return this.zzh;
    }

    public final String zzz() {
        return this.zzw;
    }
}
