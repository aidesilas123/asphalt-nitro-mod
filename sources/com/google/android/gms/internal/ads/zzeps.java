package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.h0;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzeps implements zzeuy {
    private final zzgbl zza;
    private final zzfeq zzb;
    private final zzcbt zzc;
    private final zzcba zzd;

    public zzeps(zzgbl zzgblVar, zzfeq zzfeqVar, zzcbt zzcbtVar, zzcba zzcbaVar) {
        this.zza = zzgblVar;
        this.zzb = zzfeqVar;
        this.zzc = zzcbtVar;
        this.zzd = zzcbaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final int zza() {
        return 9;
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final h0 zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzepr
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzc();
            }
        });
    }

    final /* synthetic */ zzept zzc() throws Exception {
        return new zzept(this.zzb.zzj, this.zzc, this.zzd.zzm());
    }
}
