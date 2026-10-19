package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzdvu implements zzdff {
    private final Bundle zza = new Bundle();

    @VisibleForTesting
    public zzdvu() {
    }

    @Override // com.google.android.gms.internal.ads.zzdff
    public final void zza(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzdff
    public final synchronized void zzb(String str, String str2) {
        this.zza.putInt(str, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzdff
    public final synchronized void zzc(String str) {
        this.zza.putInt(str, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzdff
    public final synchronized void zzd(String str) {
        this.zza.putInt(str, 2);
    }

    @Override // com.google.android.gms.internal.ads.zzdff
    public final void zze() {
    }

    @Override // com.google.android.gms.internal.ads.zzdff
    public final void zzf() {
    }

    public final synchronized Bundle zzg() {
        return new Bundle(this.zza);
    }
}
