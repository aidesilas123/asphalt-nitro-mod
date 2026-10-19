package com.google.android.gms.internal.ads;

import androidx.annotation.VisibleForTesting;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
@VisibleForTesting
public final class zzue extends zzda {
    private final zzbs zzc;

    public zzue(zzbs zzbsVar) {
        this.zzc = zzbsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzda
    public final int zza(Object obj) {
        return obj == zzud.zzd ? 0 : -1;
    }

    @Override // com.google.android.gms.internal.ads.zzda
    public final int zzb() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzda
    public final int zzc() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.zzda
    public final zzcx zzd(int i, zzcx zzcxVar, boolean z) {
        zzcxVar.zzl(z ? 0 : null, z ? zzud.zzd : null, 0, C.TIME_UNSET, 0L, zzd.zza, true);
        return zzcxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzda
    public final zzcz zze(int i, zzcz zzczVar, long j) {
        zzczVar.zza(zzcz.zza, this.zzc, null, C.TIME_UNSET, C.TIME_UNSET, C.TIME_UNSET, false, true, null, 0L, C.TIME_UNSET, 0, 0, 0L);
        zzczVar.zzm = true;
        return zzczVar;
    }

    @Override // com.google.android.gms.internal.ads.zzda
    public final Object zzf(int i) {
        return zzud.zzd;
    }
}
