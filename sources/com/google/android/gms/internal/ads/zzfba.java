package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.common.util.concurrent.h0;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfba implements zzfbl {

    @Nullable
    private zzcxo zza;

    @Override // com.google.android.gms.internal.ads.zzfbl
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final synchronized zzcxo zzd() {
        return this.zza;
    }

    public final synchronized h0 zzb(zzfbm zzfbmVar, zzfbk zzfbkVar, @Nullable zzcxo zzcxoVar) {
        zzcuz zzcuzVarZzb;
        if (zzcxoVar != null) {
            this.zza = zzcxoVar;
        } else {
            this.zza = (zzcxo) zzfbkVar.zza(zzfbmVar.zzb).zzh();
        }
        zzcuzVarZzb = this.zza.zzb();
        return zzcuzVarZzb.zzi(zzcuzVarZzb.zzj());
    }

    @Override // com.google.android.gms.internal.ads.zzfbl
    public final /* bridge */ /* synthetic */ h0 zzc(zzfbm zzfbmVar, zzfbk zzfbkVar, @Nullable Object obj) {
        return zzb(zzfbmVar, zzfbkVar, null);
    }
}
