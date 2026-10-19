package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfjk implements zzfje {
    private final zzfjo zza;
    private final zzfjm zzb;
    private final zzfjb zzc;

    public zzfjk(zzfjb zzfjbVar, zzfjo zzfjoVar, zzfjm zzfjmVar) {
        this.zzc = zzfjbVar;
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
        this.zzc.zzb(zza(zzfjdVar));
    }
}
