package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.h0;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzblv implements zzgai {
    final /* synthetic */ zzbln zza;

    zzblv(zzblz zzblzVar, zzbln zzblnVar) {
        this.zza = zzblnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgai
    public final /* bridge */ /* synthetic */ h0 zza(Object obj) throws Exception {
        zzccf zzccfVar = new zzccf();
        ((zzblt) obj).zze(this.zza, new zzblu(this, zzccfVar));
        return zzccfVar;
    }
}
