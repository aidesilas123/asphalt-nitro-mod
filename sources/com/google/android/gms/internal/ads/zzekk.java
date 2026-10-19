package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzekk implements zzefx {
    private final Map zza = new HashMap();
    private final zzdrk zzb;

    public zzekk(zzdrk zzdrkVar) {
        this.zzb = zzdrkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzefx
    @Nullable
    public final zzefy zza(String str, JSONObject jSONObject) throws zzfev {
        zzefy zzefyVar;
        synchronized (this) {
            zzefyVar = (zzefy) this.zza.get(str);
            if (zzefyVar == null) {
                zzefyVar = new zzefy(this.zzb.zzc(str, jSONObject), new zzehs(), str);
                this.zza.put(str, zzefyVar);
            }
        }
        return zzefyVar;
    }
}
