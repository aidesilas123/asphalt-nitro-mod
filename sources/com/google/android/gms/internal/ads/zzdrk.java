package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.VisibleForTesting;
import com.google.ads.mediation.admob.AdMobAdapter;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdrk {
    private final zzffk zza;
    private final zzdrh zzb;

    zzdrk(zzffk zzffkVar, zzdrh zzdrhVar) {
        this.zza = zzffkVar;
        this.zzb = zzdrhVar;
    }

    @VisibleForTesting
    final zzbpr zza() throws RemoteException {
        zzbpr zzbprVarZzb = this.zza.zzb();
        if (zzbprVarZzb != null) {
            return zzbprVarZzb;
        }
        zzcbn.zzj("Unexpected call to adapter creator.");
        throw new RemoteException();
    }

    public final zzbrp zzb(String str) throws RemoteException {
        zzbrp zzbrpVarZzc = zza().zzc(str);
        this.zzb.zze(str, zzbrpVarZzc);
        return zzbrpVarZzc;
    }

    public final zzffm zzc(String str, JSONObject jSONObject) throws zzfev {
        zzbpu zzbpuVarZzb;
        try {
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
                zzbpuVarZzb = new zzbqs(new AdMobAdapter());
            } else if ("com.google.ads.mediation.admob.AdMobCustomTabsAdapter".equals(str)) {
                zzbpuVarZzb = new zzbqs(new zzbsh());
            } else {
                zzbpr zzbprVarZza = zza();
                if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
                    try {
                        String string = jSONObject.getString("class_name");
                        zzbpuVarZzb = zzbprVarZza.zze(string) ? zzbprVarZza.zzb("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter") : zzbprVarZza.zzd(string) ? zzbprVarZza.zzb(string) : zzbprVarZza.zzb("com.google.ads.mediation.customevent.CustomEventAdapter");
                    } catch (JSONException e2) {
                        zzcbn.zzh("Invalid custom event.", e2);
                        zzbpuVarZzb = zzbprVarZza.zzb(str);
                    }
                } else {
                    zzbpuVarZzb = zzbprVarZza.zzb(str);
                }
            }
            zzffm zzffmVar = new zzffm(zzbpuVarZzb);
            this.zzb.zzd(str, zzffmVar);
            return zzffmVar;
        } catch (Throwable th) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzjg)).booleanValue()) {
                this.zzb.zzd(str, null);
            }
            throw new zzfev(th);
        }
    }

    public final boolean zzd() {
        return this.zza.zzb() != null;
    }
}
