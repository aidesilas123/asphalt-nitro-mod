package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzcnf extends com.google.android.gms.ads.internal.client.zzcn {
    private final Context zza;
    private final zzcbt zzb;
    private final zzdrk zzc;
    private final zzefx zzd;
    private final zzemi zze;
    private final zzdvs zzf;
    private final zzbzs zzg;
    private final zzdrp zzh;
    private final zzdwn zzi;
    private final zzbfp zzj;
    private final zzfkk zzk;
    private final zzffk zzl;
    private final zzbdd zzm;
    private boolean zzn = false;

    zzcnf(Context context, zzcbt zzcbtVar, zzdrk zzdrkVar, zzefx zzefxVar, zzemi zzemiVar, zzdvs zzdvsVar, zzbzs zzbzsVar, zzdrp zzdrpVar, zzdwn zzdwnVar, zzbfp zzbfpVar, zzfkk zzfkkVar, zzffk zzffkVar, zzbdd zzbddVar) {
        this.zza = context;
        this.zzb = zzcbtVar;
        this.zzc = zzdrkVar;
        this.zzd = zzefxVar;
        this.zze = zzemiVar;
        this.zzf = zzdvsVar;
        this.zzg = zzbzsVar;
        this.zzh = zzdrpVar;
        this.zzi = zzdwnVar;
        this.zzj = zzbfpVar;
        this.zzk = zzfkkVar;
        this.zzl = zzffkVar;
        this.zzm = zzbddVar;
    }

    @VisibleForTesting
    final void zzb() {
        if (com.google.android.gms.ads.internal.zzt.zzo().zzi().zzP()) {
            String strZzl = com.google.android.gms.ads.internal.zzt.zzo().zzi().zzl();
            if (com.google.android.gms.ads.internal.zzt.zzs().zzj(this.zza, strZzl, this.zzb.zza)) {
                return;
            }
            com.google.android.gms.ads.internal.zzt.zzo().zzi().zzB(false);
            com.google.android.gms.ads.internal.zzt.zzo().zzi().zzA("");
        }
    }

    @VisibleForTesting
    final void zzc(Runnable runnable) {
        Preconditions.checkMainThread("Adapters must be initialized on the main thread.");
        Map mapZze = com.google.android.gms.ads.internal.zzt.zzo().zzi().zzh().zze();
        if (mapZze.isEmpty()) {
            return;
        }
        if (runnable != null) {
            try {
                runnable.run();
            } catch (Throwable th) {
                zzcbn.zzk("Could not initialize rewarded ads.", th);
                return;
            }
        }
        if (this.zzc.zzd()) {
            HashMap map = new HashMap();
            Iterator it = mapZze.values().iterator();
            while (it.hasNext()) {
                for (zzbpl zzbplVar : ((zzbpm) it.next()).zza) {
                    String str = zzbplVar.zzk;
                    for (String str2 : zzbplVar.zzc) {
                        if (!map.containsKey(str2)) {
                            map.put(str2, new ArrayList());
                        }
                        if (str != null) {
                            ((List) map.get(str2)).add(str);
                        }
                    }
                }
            }
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry entry : map.entrySet()) {
                String str3 = (String) entry.getKey();
                try {
                    zzefy zzefyVarZza = this.zzd.zza(str3, jSONObject);
                    if (zzefyVarZza != null) {
                        zzffm zzffmVar = (zzffm) zzefyVarZza.zzb;
                        if (!zzffmVar.zzC() && zzffmVar.zzB()) {
                            zzffmVar.zzj(this.zza, (zzehs) zzefyVarZza.zzc, (List) entry.getValue());
                            zzcbn.zze("Initialized rewarded video mediation adapter " + str3);
                        }
                    }
                } catch (zzfev e2) {
                    zzcbn.zzk("Failed to initialize rewarded video mediation adapter \"" + str3 + "\"", e2);
                }
            }
        }
    }

    final /* synthetic */ void zzd() {
        zzffu.zzb(this.zza, true);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final synchronized float zze() {
        return com.google.android.gms.ads.internal.zzt.zzr().zza();
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final String zzf() {
        return this.zzb.zza;
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final List zzg() throws RemoteException {
        return this.zzf.zzg();
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzh(String str) {
        this.zze.zzg(str);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzi() {
        this.zzf.zzl();
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzj(boolean z) throws RemoteException {
        try {
            zzfra.zzi(this.zza).zzn(z);
        } catch (IOException e2) {
            throw new RemoteException(e2.getMessage());
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final synchronized void zzk() {
        if (this.zzn) {
            zzcbn.zzj("Mobile ads is initialized already.");
            return;
        }
        zzbdc.zza(this.zza);
        this.zzm.zza();
        com.google.android.gms.ads.internal.zzt.zzo().zzu(this.zza, this.zzb);
        com.google.android.gms.ads.internal.zzt.zzc().zzi(this.zza);
        this.zzn = true;
        this.zzf.zzr();
        this.zze.zze();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzdQ)).booleanValue()) {
            this.zzh.zzc();
        }
        this.zzi.zzg();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zziY)).booleanValue()) {
            zzcca.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcna
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzb();
                }
            });
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzkg)).booleanValue()) {
            zzcca.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcnc
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzw();
                }
            });
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzcE)).booleanValue()) {
            zzcca.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcnb
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzd();
                }
            });
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzl(@Nullable String str, IObjectWrapper iObjectWrapper) {
        String strZzp;
        Runnable runnable;
        zzbdc.zza(this.zza);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzdU)).booleanValue()) {
            try {
                com.google.android.gms.ads.internal.zzt.zzp();
                strZzp = com.google.android.gms.ads.internal.util.zzt.zzp(this.zza);
            } catch (RemoteException e2) {
                com.google.android.gms.ads.internal.zzt.zzo().zzw(e2, "NonagonMobileAdsSettingManager_AppId");
                strZzp = "";
            }
        } else {
            strZzp = "";
        }
        boolean z = true;
        String str2 = true == TextUtils.isEmpty(strZzp) ? str : strZzp;
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        boolean zBooleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzdO)).booleanValue();
        zzbcu zzbcuVar = zzbdc.zzaP;
        boolean zBooleanValue2 = zBooleanValue | ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbcuVar)).booleanValue();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbcuVar)).booleanValue()) {
            final Runnable runnable2 = (Runnable) ObjectWrapper.unwrap(iObjectWrapper);
            runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzcnd
                @Override // java.lang.Runnable
                public final void run() {
                    zzgbl zzgblVar = zzcca.zze;
                    final zzcnf zzcnfVar = this.zza;
                    final Runnable runnable3 = runnable2;
                    zzgblVar.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcne
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzcnfVar.zzc(runnable3);
                        }
                    });
                }
            };
        } else {
            runnable = null;
            z = zBooleanValue2;
        }
        Runnable runnable3 = runnable;
        if (z) {
            com.google.android.gms.ads.internal.zzt.zza().zza(this.zza, this.zzb, str2, runnable3, this.zzk);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzm(com.google.android.gms.ads.internal.client.zzda zzdaVar) throws RemoteException {
        this.zzi.zzh(zzdaVar, zzdwm.API);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzn(IObjectWrapper iObjectWrapper, String str) {
        if (iObjectWrapper == null) {
            zzcbn.zzg("Wrapped context is null. Failed to open debug menu.");
            return;
        }
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        if (context == null) {
            zzcbn.zzg("Context is null. Failed to open debug menu.");
            return;
        }
        com.google.android.gms.ads.internal.util.zzau zzauVar = new com.google.android.gms.ads.internal.util.zzau(context);
        zzauVar.zzn(str);
        zzauVar.zzo(this.zzb.zza);
        zzauVar.zzr();
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzo(zzbpr zzbprVar) throws RemoteException {
        this.zzl.zzf(zzbprVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final synchronized void zzp(boolean z) {
        com.google.android.gms.ads.internal.zzt.zzr().zzc(z);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final synchronized void zzq(float f2) {
        com.google.android.gms.ads.internal.zzt.zzr().zzd(f2);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final synchronized void zzr(String str) {
        zzbdc.zza(this.zza);
        if (!TextUtils.isEmpty(str)) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzdO)).booleanValue()) {
                com.google.android.gms.ads.internal.zzt.zza().zza(this.zza, this.zzb, str, null, this.zzk);
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzs(zzbmh zzbmhVar) throws RemoteException {
        this.zzf.zzs(zzbmhVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzt(String str) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzjj)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzo().zzy(str);
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzu(com.google.android.gms.ads.internal.client.zzff zzffVar) throws RemoteException {
        this.zzg.zzq(this.zza, zzffVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final synchronized boolean zzv() {
        return com.google.android.gms.ads.internal.zzt.zzr().zze();
    }

    final /* synthetic */ void zzw() {
        this.zzj.zza(new zzbux());
    }
}
