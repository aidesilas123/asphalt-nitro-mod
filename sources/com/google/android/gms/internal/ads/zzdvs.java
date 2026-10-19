package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.GuardedBy;
import com.google.common.util.concurrent.h0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdvs {
    private final Context zzf;
    private final WeakReference zzg;
    private final zzdrk zzh;
    private final Executor zzi;
    private final Executor zzj;
    private final ScheduledExecutorService zzk;
    private final zzdtz zzl;
    private final zzcbt zzm;
    private final zzdfd zzo;
    private final zzfkk zzp;
    private boolean zza = false;
    private boolean zzb = false;

    @GuardedBy("this")
    private boolean zzc = false;
    private final zzccf zze = new zzccf();
    private final Map zzn = new ConcurrentHashMap();
    private boolean zzq = true;
    private final long zzd = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();

    public zzdvs(Executor executor, Context context, WeakReference weakReference, Executor executor2, zzdrk zzdrkVar, ScheduledExecutorService scheduledExecutorService, zzdtz zzdtzVar, zzcbt zzcbtVar, zzdfd zzdfdVar, zzfkk zzfkkVar) {
        this.zzh = zzdrkVar;
        this.zzf = context;
        this.zzg = weakReference;
        this.zzi = executor2;
        this.zzk = scheduledExecutorService;
        this.zzj = executor;
        this.zzl = zzdtzVar;
        this.zzm = zzcbtVar;
        this.zzo = zzdfdVar;
        this.zzp = zzfkkVar;
        zzv("com.google.android.gms.ads.MobileAds", false, "", 0);
    }

    static /* bridge */ /* synthetic */ void zzj(final zzdvs zzdvsVar, String str) {
        int i = 5;
        final zzfjw zzfjwVarZza = zzfjv.zza(zzdvsVar.zzf, 5);
        zzfjwVarZza.zzh();
        try {
            ArrayList arrayList = new ArrayList();
            JSONObject jSONObject = new JSONObject(str).getJSONObject("initializer_settings").getJSONObject("config");
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                final String next = itKeys.next();
                final zzfjw zzfjwVarZza2 = zzfjv.zza(zzdvsVar.zzf, i);
                zzfjwVarZza2.zzh();
                zzfjwVarZza2.zzd(next);
                final Object obj = new Object();
                final zzccf zzccfVar = new zzccf();
                h0 h0VarZzo = zzgbb.zzo(zzccfVar, ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzbM)).longValue(), TimeUnit.SECONDS, zzdvsVar.zzk);
                zzdvsVar.zzl.zzc(next);
                zzdvsVar.zzo.zzc(next);
                final long jElapsedRealtime = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
                h0VarZzo.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdvj
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.zza.zzq(obj, zzccfVar, next, jElapsedRealtime, zzfjwVarZza2);
                    }
                }, zzdvsVar.zzi);
                arrayList.add(h0VarZzo);
                final zzdvr zzdvrVar = new zzdvr(zzdvsVar, obj, next, jElapsedRealtime, zzfjwVarZza2, zzccfVar);
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(next);
                final ArrayList arrayList2 = new ArrayList();
                if (jSONObjectOptJSONObject != null) {
                    try {
                        JSONArray jSONArray = jSONObjectOptJSONObject.getJSONArray("data");
                        int i2 = 0;
                        while (i2 < jSONArray.length()) {
                            JSONObject jSONObject2 = jSONArray.getJSONObject(i2);
                            String strOptString = jSONObject2.optString("format", "");
                            JSONObject jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("data");
                            Bundle bundle = new Bundle();
                            if (jSONObjectOptJSONObject2 != null) {
                                Iterator<String> itKeys2 = jSONObjectOptJSONObject2.keys();
                                while (itKeys2.hasNext()) {
                                    String next2 = itKeys2.next();
                                    bundle.putString(next2, jSONObjectOptJSONObject2.optString(next2, ""));
                                    jSONArray = jSONArray;
                                }
                            }
                            JSONArray jSONArray2 = jSONArray;
                            arrayList2.add(new zzbmk(strOptString, bundle));
                            i2++;
                            jSONArray = jSONArray2;
                        }
                    } catch (JSONException unused) {
                    }
                }
                zzdvsVar.zzv(next, false, "", 0);
                try {
                    try {
                        final zzffm zzffmVarZzc = zzdvsVar.zzh.zzc(next, new JSONObject());
                        zzdvsVar.zzj.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdvn
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.zza.zzn(next, zzdvrVar, zzffmVarZzc, arrayList2);
                            }
                        });
                    } catch (RemoteException e2) {
                        zzcbn.zzh("", e2);
                    }
                } catch (zzfev unused2) {
                    zzdvrVar.zze("Failed to create Adapter.");
                }
                i = 5;
            }
            zzgbb.zza(arrayList).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzdvk
                @Override // java.util.concurrent.Callable
                public final Object call() throws Exception {
                    this.zza.zzf(zzfjwVarZza);
                    return null;
                }
            }, zzdvsVar.zzi);
        } catch (JSONException e3) {
            com.google.android.gms.ads.internal.util.zze.zzb("Malformed CLD response", e3);
            zzdvsVar.zzo.zza("MalformedJson");
            zzdvsVar.zzl.zza("MalformedJson");
            zzdvsVar.zze.zzd(e3);
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e3, "AdapterInitializer.updateAdapterStatus");
            zzfkk zzfkkVar = zzdvsVar.zzp;
            zzfjwVarZza.zzg(e3);
            zzfjwVarZza.zzf(false);
            zzfkkVar.zzb(zzfjwVarZza.zzl());
        }
    }

    private final synchronized h0 zzu() {
        String strZzc = com.google.android.gms.ads.internal.zzt.zzo().zzi().zzh().zzc();
        if (!TextUtils.isEmpty(strZzc)) {
            return zzgbb.zzh(strZzc);
        }
        final zzccf zzccfVar = new zzccf();
        com.google.android.gms.ads.internal.zzt.zzo().zzi().zzq(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdvl
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzo(zzccfVar);
            }
        });
        return zzccfVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzv(String str, boolean z, String str2, int i) {
        this.zzn.put(str, new zzbma(str, z, i, str2));
    }

    final /* synthetic */ Object zzf(zzfjw zzfjwVar) throws Exception {
        this.zze.zzc(Boolean.TRUE);
        zzfjwVar.zzf(true);
        this.zzp.zzb(zzfjwVar.zzl());
        return null;
    }

    public final List zzg() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.zzn.keySet()) {
            zzbma zzbmaVar = (zzbma) this.zzn.get(str);
            arrayList.add(new zzbma(str, zzbmaVar.zzb, zzbmaVar.zzc, zzbmaVar.zzd));
        }
        return arrayList;
    }

    public final void zzl() {
        this.zzq = false;
    }

    final /* synthetic */ void zzm() {
        synchronized (this) {
            if (this.zzc) {
                return;
            }
            zzv("com.google.android.gms.ads.MobileAds", false, "Timeout.", (int) (com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - this.zzd));
            this.zzl.zzb("com.google.android.gms.ads.MobileAds", "timeout");
            this.zzo.zzb("com.google.android.gms.ads.MobileAds", "timeout");
            this.zze.zzd(new Exception());
        }
    }

    final /* synthetic */ void zzn(String str, zzbme zzbmeVar, zzffm zzffmVar, List list) {
        if (str != "com.google.ads.mediation.admob.AdMobAdapter") {
            if (str != null) {
                try {
                    try {
                        if (str.equals("com.google.ads.mediation.admob.AdMobAdapter")) {
                        }
                    } catch (RemoteException e2) {
                        zzcbn.zzh("", e2);
                        return;
                    }
                } catch (RemoteException e3) {
                    throw new zzfut(e3);
                } catch (zzfev unused) {
                    zzbmeVar.zze("Failed to initialize adapter. " + str + " does not implement the initialize() method.");
                    return;
                }
            }
            Context context = (Context) this.zzg.get();
            if (context == null) {
                context = this.zzf;
            }
            zzffmVar.zzi(context, zzbmeVar, list);
            return;
        }
        zzbmeVar.zzf();
    }

    final /* synthetic */ void zzo(final zzccf zzccfVar) {
        this.zzi.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdvi
            @Override // java.lang.Runnable
            public final void run() {
                String strZzc = com.google.android.gms.ads.internal.zzt.zzo().zzi().zzh().zzc();
                boolean zIsEmpty = TextUtils.isEmpty(strZzc);
                zzccf zzccfVar2 = zzccfVar;
                if (zIsEmpty) {
                    zzccfVar2.zzd(new Exception());
                } else {
                    zzccfVar2.zzc(strZzc);
                }
            }
        });
    }

    final /* synthetic */ void zzp() {
        this.zzl.zze();
        this.zzo.zze();
        this.zzb = true;
    }

    final /* synthetic */ void zzq(Object obj, zzccf zzccfVar, String str, long j, zzfjw zzfjwVar) {
        synchronized (obj) {
            if (!zzccfVar.isDone()) {
                zzv(str, false, "Timeout.", (int) (com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - j));
                this.zzl.zzb(str, "timeout");
                this.zzo.zzb(str, "timeout");
                zzfkk zzfkkVar = this.zzp;
                zzfjwVar.zzc("Timeout");
                zzfjwVar.zzf(false);
                zzfkkVar.zzb(zzfjwVar.zzl());
                zzccfVar.zzc(Boolean.FALSE);
            }
        }
    }

    public final void zzr() {
        if (!((Boolean) zzbfb.zza.zze()).booleanValue()) {
            if (this.zzm.zzc >= ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzbL)).intValue() && this.zzq) {
                if (this.zza) {
                    return;
                }
                synchronized (this) {
                    if (this.zza) {
                        return;
                    }
                    this.zzl.zzf();
                    this.zzo.zzf();
                    this.zze.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdvo
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.zza.zzp();
                        }
                    }, this.zzi);
                    this.zza = true;
                    h0 h0VarZzu = zzu();
                    this.zzk.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdvh
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.zza.zzm();
                        }
                    }, ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzbN)).longValue(), TimeUnit.SECONDS);
                    zzgbb.zzr(h0VarZzu, new zzdvq(this), this.zzi);
                    return;
                }
            }
        }
        if (this.zza) {
            return;
        }
        zzv("com.google.android.gms.ads.MobileAds", true, "", 0);
        this.zze.zzc(Boolean.FALSE);
        this.zza = true;
        this.zzb = true;
    }

    public final void zzs(final zzbmh zzbmhVar) {
        this.zze.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdvm
            @Override // java.lang.Runnable
            public final void run() {
                zzdvs zzdvsVar = this.zza;
                try {
                    zzbmhVar.zzb(zzdvsVar.zzg());
                } catch (RemoteException e2) {
                    zzcbn.zzh("", e2);
                }
            }
        }, this.zzj);
    }

    public final boolean zzt() {
        return this.zzb;
    }
}
