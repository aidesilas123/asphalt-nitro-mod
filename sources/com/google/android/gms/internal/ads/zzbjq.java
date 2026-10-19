package com.google.android.gms.internal.ads;

import com.json.b4;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzbjq implements zzbkd {
    zzbjq() {
    }

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcgv zzcgvVar = (zzcgv) obj;
        try {
            String str = (String) map.get(b4.r);
            if (!zzftf.zzc("true", str) && !zzftf.zzc("false", str)) {
                return;
            }
            zzfra.zzi(zzcgvVar.getContext()).zzm(Boolean.parseBoolean(str));
        } catch (IOException e2) {
            com.google.android.gms.ads.internal.zzt.zzo().zzw(e2, "DefaultGmsgHandlers.SetPaidv2PersonalizationEnabled");
        }
    }
}
