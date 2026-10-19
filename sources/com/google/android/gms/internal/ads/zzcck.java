package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzcck implements zzgax {
    final /* synthetic */ zzccm zza;

    zzcck(zzccm zzccmVar) {
        this.zza = zzccmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final void zza(Throwable th) {
        this.zza.zzb.set(-1);
    }

    @Override // com.google.android.gms.internal.ads.zzgax
    public final void zzb(@Nullable Object obj) {
        this.zza.zzb.set(1);
    }
}
