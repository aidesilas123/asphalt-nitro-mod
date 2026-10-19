package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.h0;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdxw implements zzhdp {
    private final zzhec zza;
    private final zzhec zzb;
    private final zzhec zzc;

    public zzdxw(zzhec zzhecVar, zzhec zzhecVar2, zzhec zzhecVar3) {
        this.zza = zzhecVar;
        this.zzb = zzhecVar2;
        this.zzc = zzhecVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhec
    public final /* bridge */ /* synthetic */ Object zzb() {
        final zzasi zzasiVar = (zzasi) this.zza.zzb();
        final Context contextZza = ((zzciw) this.zzb).zza();
        zzgbl zzgblVar = zzcca.zza;
        zzhdx.zzb(zzgblVar);
        h0 h0VarZzb = zzgblVar.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzdxt
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzasiVar.zzc().zzg(contextZza);
            }
        });
        zzhdx.zzb(h0VarZzb);
        return h0VarZzb;
    }
}
