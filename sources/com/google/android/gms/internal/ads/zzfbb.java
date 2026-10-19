package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.common.util.concurrent.h0;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfbb implements zzfbl {
    private final zzfbl zza;

    @Nullable
    private zzcxo zzb;

    public zzfbb(zzfbl zzfblVar) {
        this.zza = zzfblVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfbl
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final synchronized zzcxo zzd() {
        return this.zzb;
    }

    public final synchronized h0 zzb(zzfbm zzfbmVar, zzfbk zzfbkVar, @Nullable zzcxo zzcxoVar) {
        this.zzb = zzcxoVar;
        if (zzfbmVar.zza == null) {
            return ((zzfba) this.zza).zzb(zzfbmVar, zzfbkVar, zzcxoVar);
        }
        zzcuz zzcuzVarZzb = zzcxoVar.zzb();
        return zzcuzVarZzb.zzi(zzcuzVarZzb.zzk(zzgbb.zzh(zzfbmVar.zza)));
    }

    @Override // com.google.android.gms.internal.ads.zzfbl
    public final /* bridge */ /* synthetic */ h0 zzc(zzfbm zzfbmVar, zzfbk zzfbkVar, @Nullable Object obj) {
        return zzb(zzfbmVar, zzfbkVar, null);
    }
}
