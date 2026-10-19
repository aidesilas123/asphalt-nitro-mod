package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.common.util.concurrent.h0;
import com.json.o2;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbks implements zzbkd {
    private final Object zza = new Object();
    private final Map zzb = new HashMap();

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final void zza(Object obj, Map map) {
        String str = (String) map.get("id");
        String str2 = (String) map.get(o2.f.f6481e);
        String str3 = (String) map.get("fail_reason");
        String str4 = (String) map.get("fail_stack");
        String str5 = (String) map.get("result");
        if (true == TextUtils.isEmpty(str4)) {
            str3 = "Unknown Fail Reason.";
        }
        String strConcat = TextUtils.isEmpty(str4) ? "" : "\n".concat(String.valueOf(str4));
        synchronized (this.zza) {
            zzbkr zzbkrVar = (zzbkr) this.zzb.remove(str);
            if (zzbkrVar == null) {
                zzcbn.zzj("Received result for unexpected method invocation: " + str);
                return;
            }
            if (!TextUtils.isEmpty(str2)) {
                zzbkrVar.zza(str3 + strConcat);
                return;
            }
            if (str5 == null) {
                zzbkrVar.zzb(null);
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(str5);
                if (com.google.android.gms.ads.internal.util.zze.zzc()) {
                    com.google.android.gms.ads.internal.util.zze.zza("Result GMSG: " + jSONObject.toString(2));
                }
                zzbkrVar.zzb(jSONObject);
            } catch (JSONException e2) {
                zzbkrVar.zza(e2.getMessage());
            }
        }
    }

    public final h0 zzb(zzbnk zzbnkVar, String str, JSONObject jSONObject) {
        zzccf zzccfVar = new zzccf();
        com.google.android.gms.ads.internal.zzt.zzp();
        String string = UUID.randomUUID().toString();
        zzc(string, new zzbkq(this, zzccfVar));
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("id", string);
            jSONObject2.put("args", jSONObject);
            zzbnkVar.zzl(str, jSONObject2);
        } catch (Exception e2) {
            zzccfVar.zzd(e2);
        }
        return zzccfVar;
    }

    public final void zzc(String str, zzbkr zzbkrVar) {
        synchronized (this.zza) {
            this.zzb.put(str, zzbkrVar);
        }
    }
}
