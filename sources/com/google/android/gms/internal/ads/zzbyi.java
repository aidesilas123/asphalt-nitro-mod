package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.h0;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzbyi implements zzgax {
    final /* synthetic */ h0 zza;

    zzbyi(zzbyj zzbyjVar, h0 h0Var) {
        this.zza = h0Var;
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final void zza(Throwable th) {
        zzbyj.zzc.remove(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzbyj.zzc.remove(this.zza);
    }
}
