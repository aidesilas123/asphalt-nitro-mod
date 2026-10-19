package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbke implements zzbkd {
    private final zzbkf zza;

    public zzbke(zzbkf zzbkfVar) {
        this.zza = zzbkfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final /* bridge */ /* synthetic */ void zza(Object obj, Map map) {
        zzcgv zzcgvVar = (zzcgv) obj;
        boolean zEquals = "1".equals(map.get("transparentBackground"));
        boolean zEquals2 = "1".equals(map.get("blur"));
        float f2 = 0.0f;
        try {
            if (map.get("blurRadius") != null) {
                f2 = Float.parseFloat((String) map.get("blurRadius"));
            }
        } catch (NumberFormatException e2) {
            zzcbn.zzh("Fail to parse float", e2);
        }
        this.zza.zzc(zEquals);
        this.zza.zzb(zEquals2, f2);
        zzcgvVar.zzat(zEquals);
    }
}
