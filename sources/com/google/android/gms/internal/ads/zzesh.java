package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.h0;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzesh implements zzeuy {
    private final zzgbl zza;
    private final zzdwn zzb;

    zzesh(zzgbl zzgblVar, zzdwn zzdwnVar) {
        this.zza = zzgblVar;
        this.zzb = zzdwnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final int zza() {
        return 23;
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final h0 zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzesg
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzc();
            }
        });
    }

    final /* synthetic */ zzesi zzc() throws Exception {
        zzdwn zzdwnVar = this.zzb;
        String strZzc = zzdwnVar.zzc();
        boolean zZzq = zzdwnVar.zzq();
        boolean zZzl = com.google.android.gms.ads.internal.zzt.zzs().zzl();
        zzdwn zzdwnVar2 = this.zzb;
        return new zzesi(strZzc, zZzq, zZzl, zzdwnVar2.zzo(), zzdwnVar2.zzr());
    }
}
