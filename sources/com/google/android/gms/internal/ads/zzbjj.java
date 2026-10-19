package com.google.android.gms.internal.ads;

import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzbjj implements zzbkd {
    zzbjj() {
    }

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        JSONObject jSONObjectZzb;
        zzcgv zzcgvVar = (zzcgv) obj;
        zzbfv zzbfvVarZzK = zzcgvVar.zzK();
        if (zzbfvVarZzK == null || (jSONObjectZzb = zzbfvVarZzK.zzb()) == null) {
            zzcgvVar.zze("nativeClickMetaReady", new JSONObject());
        } else {
            zzcgvVar.zze("nativeClickMetaReady", jSONObjectZzb);
        }
    }
}
