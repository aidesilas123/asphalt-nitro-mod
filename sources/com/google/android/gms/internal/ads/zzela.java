package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzela implements zzefx {
    private final zzeme zza;
    private final zzdrk zzb;

    zzela(zzeme zzemeVar, zzdrk zzdrkVar) {
        this.zza = zzemeVar;
        this.zzb = zzdrkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzefx
    @Nullable
    public final zzefy zza(String str, JSONObject jSONObject) throws zzfev {
        zzbrp zzbrpVarZzb;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzbC)).booleanValue()) {
            try {
                zzbrpVarZzb = this.zzb.zzb(str);
            } catch (RemoteException e2) {
                zzcbn.zzh("Coundn't create RTB adapter: ", e2);
                zzbrpVarZzb = null;
            }
        } else {
            zzbrpVarZzb = this.zza.zza(str);
        }
        if (zzbrpVarZzb == null) {
            return null;
        }
        return new zzefy(zzbrpVarZzb, new zzehr(), str);
    }
}
