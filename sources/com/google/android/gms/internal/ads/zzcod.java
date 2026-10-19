package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzcod {
    private final Map zza;
    private final Map zzb;

    zzcod(Map map, Map map2) {
        this.zza = map;
        this.zzb = map2;
    }

    public final void zza(zzfeh zzfehVar) throws Exception {
        for (zzfef zzfefVar : zzfehVar.zzb.zzc) {
            if (this.zza.containsKey(zzfefVar.zza)) {
                ((zzcog) this.zza.get(zzfefVar.zza)).zza(zzfefVar.zzb);
            } else if (this.zzb.containsKey(zzfefVar.zza)) {
                zzcof zzcofVar = (zzcof) this.zzb.get(zzfefVar.zza);
                JSONObject jSONObject = zzfefVar.zzb;
                HashMap map = new HashMap();
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    String strOptString = jSONObject.optString(next);
                    if (strOptString != null) {
                        map.put(next, strOptString);
                    }
                }
                zzcofVar.zza(map);
            }
        }
    }
}
