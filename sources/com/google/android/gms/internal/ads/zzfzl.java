package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.h0;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzfzl extends zzfzn {
    zzfzl(h0 h0Var, Class cls, zzgai zzgaiVar) {
        super(h0Var, cls, zzgaiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfzn
    final /* bridge */ /* synthetic */ Object zze(Object obj, Throwable th) throws Exception {
        zzgai zzgaiVar = (zzgai) obj;
        h0 h0VarZza = zzgaiVar.zza(th);
        zzfty.zzd(h0VarZza, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzgaiVar);
        return h0VarZza;
    }

    @Override // com.google.android.gms.internal.ads.zzfzn
    final /* synthetic */ void zzf(Object obj) {
        zzs((h0) obj);
    }
}
