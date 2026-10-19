package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.h0;
import java.util.List;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzfic {
    final /* synthetic */ zzfim zza;
    private final Object zzb;
    private final List zzc;

    /* synthetic */ zzfic(zzfim zzfimVar, Object obj, List list, zzfib zzfibVar) {
        this.zza = zzfimVar;
        this.zzb = obj;
        this.zzc = list;
    }

    public final zzfil zza(Callable callable) {
        zzgba zzgbaVarZzb = zzgbb.zzb(this.zzc);
        h0 h0VarZza = zzgbaVarZzb.zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzfia
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return null;
            }
        }, zzcca.zzf);
        h0 h0VarZza2 = zzgbaVarZzb.zza(callable, this.zza.zzb);
        return new zzfil(this.zza, this.zzb, h0VarZza, this.zzc, h0VarZza2);
    }
}
