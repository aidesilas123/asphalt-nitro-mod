package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.h0;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class zzbjb implements zzbkd {
    public final /* synthetic */ zzdge zza;
    public final /* synthetic */ zzcpo zzb;

    public /* synthetic */ zzbjb(zzdge zzdgeVar, zzcpo zzcpoVar) {
        this.zza = zzdgeVar;
        this.zzb = zzcpoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbkd
    public final void zza(Object obj, Map map) {
        zzcgv zzcgvVar = (zzcgv) obj;
        zzbkc.zzc(map, this.zza);
        String str = (String) map.get("u");
        if (str == null) {
            zzcbn.zzj("URL missing from click GMSG.");
            return;
        }
        final zzcpo zzcpoVar = this.zzb;
        zzgas zzgasVarZzu = zzgas.zzu(zzbkc.zza(zzcgvVar, str));
        zzgai zzgaiVar = new zzgai() { // from class: com.google.android.gms.internal.ads.zzbjd
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj2) {
                zzcpo zzcpoVar2;
                String str2 = (String) obj2;
                zzbkd zzbkdVar = zzbkc.zza;
                return (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzjB)).booleanValue() || (zzcpoVar2 = zzcpoVar) == null) ? zzgbb.zzh(str2) : zzcpoVar2.zzc(str2, com.google.android.gms.ads.internal.client.zzay.zze());
            }
        };
        zzgbl zzgblVar = zzcca.zza;
        zzgbb.zzr(zzgbb.zzn(zzgasVarZzu, zzgaiVar, zzgblVar), new zzbjr(zzcgvVar), zzgblVar);
    }
}
