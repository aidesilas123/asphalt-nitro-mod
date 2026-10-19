package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.h0;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class zzeyg implements zzeuy {
    public static final /* synthetic */ zzeyg zza = new zzeyg();

    private /* synthetic */ zzeyg() {
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final /* synthetic */ int zza() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final h0 zzb() {
        return zzgbb.zzh(new zzeux() { // from class: com.google.android.gms.internal.ads.zzeyh
            @Override // com.google.android.gms.internal.ads.zzeux
            public final void zzj(Object obj) {
                try {
                    ((JSONObject) obj).getJSONObject("sdk_env").put("container_version", 12451000);
                } catch (JSONException unused) {
                }
            }
        });
    }
}
