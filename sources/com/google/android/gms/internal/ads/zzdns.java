package com.google.android.gms.internal.ads;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.common.util.concurrent.h0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdns {
    private final Executor zza;
    private final zzdnn zzb;

    public zzdns(Executor executor, zzdnn zzdnnVar) {
        this.zza = executor;
        this.zzb = zzdnnVar;
    }

    public final h0 zza(JSONObject jSONObject, String str) {
        h0 h0VarZzh;
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("custom_assets");
        if (jSONArrayOptJSONArray == null) {
            return zzgbb.zzh(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = jSONArrayOptJSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
            if (jSONObjectOptJSONObject == null) {
                h0VarZzh = zzgbb.zzh(null);
            } else {
                final String strOptString = jSONObjectOptJSONObject.optString("name");
                if (strOptString == null) {
                    h0VarZzh = zzgbb.zzh(null);
                } else {
                    String strOptString2 = jSONObjectOptJSONObject.optString("type");
                    h0VarZzh = TypedValues.Custom.S_STRING.equals(strOptString2) ? zzgbb.zzh(new zzdnr(strOptString, jSONObjectOptJSONObject.optString("string_value"))) : "image".equals(strOptString2) ? zzgbb.zzm(this.zzb.zze(jSONObjectOptJSONObject, "image_value"), new zzftn() { // from class: com.google.android.gms.internal.ads.zzdnp
                        @Override // com.google.android.gms.internal.ads.zzftn
                        public final Object apply(Object obj) {
                            return new zzdnr(strOptString, (zzbfu) obj);
                        }
                    }, this.zza) : zzgbb.zzh(null);
                }
            }
            arrayList.add(h0VarZzh);
        }
        return zzgbb.zzm(zzgbb.zzd(arrayList), new zzftn() { // from class: com.google.android.gms.internal.ads.zzdnq
            @Override // com.google.android.gms.internal.ads.zzftn
            public final Object apply(Object obj) {
                ArrayList arrayList2 = new ArrayList();
                for (zzdnr zzdnrVar : (List) obj) {
                    if (zzdnrVar != null) {
                        arrayList2.add(zzdnrVar);
                    }
                }
                return arrayList2;
            }
        }, this.zza);
    }
}
