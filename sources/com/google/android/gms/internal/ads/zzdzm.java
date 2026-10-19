package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.h0;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdzm implements zzdzo {
    private final Map zza;
    private final zzgbl zzb;
    private final zzdba zzc;

    public zzdzm(Map map, zzgbl zzgblVar, zzdba zzdbaVar) {
        this.zza = map;
        this.zzb = zzgblVar;
        this.zzc = zzdbaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdzo
    public final h0 zzb(final zzbwa zzbwaVar) {
        this.zzc.zzbs(zzbwaVar);
        h0 h0VarZzg = zzgbb.zzg(new zzdxn(3));
        for (String str : ((String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzib)).split(",")) {
            final zzhec zzhecVar = (zzhec) this.zza.get(str.trim());
            if (zzhecVar != null) {
                h0VarZzg = zzgbb.zzf(h0VarZzg, zzdxn.class, new zzgai() { // from class: com.google.android.gms.internal.ads.zzdzk
                    @Override // com.google.android.gms.internal.ads.zzgai
                    public final h0 zza(Object obj) {
                        return ((zzdzo) zzhecVar.zzb()).zzb(zzbwaVar);
                    }
                }, this.zzb);
            }
        }
        zzgbb.zzr(h0VarZzg, new zzdzl(this), zzcca.zzf);
        return h0VarZzg;
    }
}
