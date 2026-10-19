package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzeii implements zzefx {
    private final zzdrk zza;

    public zzeii(zzdrk zzdrkVar) {
        this.zza = zzdrkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzefx
    @Nullable
    public final zzefy zza(String str, JSONObject jSONObject) throws zzfev {
        return new zzefy(this.zza.zzc(str, jSONObject), new zzehr(), str);
    }
}
