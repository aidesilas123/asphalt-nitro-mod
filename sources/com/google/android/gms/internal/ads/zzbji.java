package com.google.android.gms.internal.ads;

import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzbji implements zzbkd {
    zzbji() {
    }

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        JSONObject jSONObjectZza;
        zzcgv zzcgvVar = (zzcgv) obj;
        zzbfv zzbfvVarZzK = zzcgvVar.zzK();
        if (zzbfvVarZzK == null || (jSONObjectZza = zzbfvVarZzK.zza()) == null) {
            zzcgvVar.zze("nativeAdViewSignalsReady", new JSONObject());
        } else {
            zzcgvVar.zze("nativeAdViewSignalsReady", jSONObjectZza);
        }
    }
}
