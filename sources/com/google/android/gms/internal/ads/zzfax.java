package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.h0;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfax implements zzfbl {
    private final zzfgd zza;
    private final Executor zzb;
    private final zzgax zzc = new zzfav(this);

    public zzfax(zzfgd zzfgdVar, Executor executor) {
        this.zza = zzfgdVar;
        this.zzb = executor;
    }

    final /* synthetic */ h0 zza(zzcxo zzcxoVar, zzfbg zzfbgVar) throws Exception {
        zzfgd zzfgdVar = this.zza;
        zzfgn zzfgnVar = zzfbgVar.zzb;
        zzbwa zzbwaVar = zzfbgVar.zza;
        zzfgm zzfgmVarZzb = zzfgdVar.zzb(zzfgnVar);
        if (zzfgmVarZzb != null && zzbwaVar != null) {
            zzgbb.zzr(zzcxoVar.zzb().zzh(zzbwaVar), this.zzc, this.zzb);
        }
        return zzgbb.zzh(new zzfaw(zzfgnVar, zzbwaVar, zzfgmVarZzb));
    }

    public final h0 zzb(zzfbm zzfbmVar, zzfbk zzfbkVar, final zzcxo zzcxoVar) {
        return zzgbb.zze(zzgbb.zzn(zzgas.zzu(new zzfbh(this.zza, zzcxoVar, this.zzb).zzc()), new zzgai() { // from class: com.google.android.gms.internal.ads.zzfat
            @Override // com.google.android.gms.internal.ads.zzgai
            public final h0 zza(Object obj) {
                return this.zza.zza(zzcxoVar, (zzfbg) obj);
            }
        }, this.zzb), Exception.class, new zzfau(this), this.zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzfbl
    public final /* bridge */ /* synthetic */ h0 zzc(zzfbm zzfbmVar, zzfbk zzfbkVar, Object obj) {
        return zzb(zzfbmVar, zzfbkVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzfbl
    public final /* bridge */ /* synthetic */ Object zzd() {
        return null;
    }
}
