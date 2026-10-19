package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfjr implements zzfje {
    private final zzfjo zza;
    private final zzfjm zzb;

    public zzfjr(zzfjo zzfjoVar, zzfjm zzfjmVar) {
        this.zza = zzfjoVar;
        this.zzb = zzfjmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfje
    public final String zza(zzfjd zzfjdVar) {
        zzfjm zzfjmVar = this.zzb;
        Map mapZzj = zzfjdVar.zzj();
        zzfjmVar.zza(mapZzj);
        return this.zza.zza(mapZzj);
    }

    @Override // com.google.android.gms.internal.ads.zzfje
    public final void zzb(zzfjd zzfjdVar) {
    }
}
