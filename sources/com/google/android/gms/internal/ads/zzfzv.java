package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.h0;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzfzv extends zzfzx {
    zzfzv(h0 h0Var, zzgai zzgaiVar) {
        super(h0Var, zzgaiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfzx
    final /* bridge */ /* synthetic */ Object zze(Object obj, Object obj2) throws Exception {
        zzgai zzgaiVar = (zzgai) obj;
        h0 h0VarZza = zzgaiVar.zza(obj2);
        zzfty.zzd(h0VarZza, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzgaiVar);
        return h0VarZza;
    }

    @Override // com.google.android.gms.internal.ads.zzfzx
    final /* synthetic */ void zzf(Object obj) {
        zzs((h0) obj);
    }
}
