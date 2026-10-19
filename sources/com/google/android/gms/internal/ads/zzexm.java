package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.h0;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzexm implements zzeuy {
    final zzgbl zza;
    final String zzb;
    final zzcak zzc;

    public zzexm(zzcak zzcakVar, zzgbl zzgblVar, String str) {
        this.zzc = zzcakVar;
        this.zza = zzgblVar;
        this.zzb = str;
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final int zza() {
        return 47;
    }

    @Override // com.google.android.gms.internal.ads.zzeuy
    public final h0 zzb() {
        final h0 h0VarZzh = zzgbb.zzh(null);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbdc.zzfO)).booleanValue()) {
            h0VarZzh = zzgbb.zzh(null);
        }
        final h0 h0VarZzh2 = zzgbb.zzh(null);
        return zzgbb.zzc(h0VarZzh, h0VarZzh2).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzexl
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzexn((String) h0VarZzh.get(), (String) h0VarZzh2.get());
            }
        }, zzcca.zza);
    }
}
