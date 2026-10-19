package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdrc implements zzczc {

    @Nullable
    private final zzcgv zza;

    zzdrc(@Nullable zzcgv zzcgvVar) {
        this.zza = zzcgvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzczc
    public final void zzbo(@Nullable Context context) {
        zzcgv zzcgvVar = this.zza;
        if (zzcgvVar != null) {
            zzcgvVar.destroy();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzczc
    public final void zzbq(@Nullable Context context) {
        zzcgv zzcgvVar = this.zza;
        if (zzcgvVar != null) {
            zzcgvVar.onPause();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzczc
    public final void zzbr(@Nullable Context context) {
        zzcgv zzcgvVar = this.zza;
        if (zzcgvVar != null) {
            zzcgvVar.onResume();
        }
    }
}
