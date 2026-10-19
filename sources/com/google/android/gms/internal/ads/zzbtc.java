package com.google.android.gms.internal.ads;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbtc {
    private final NativeCustomFormatAd.OnCustomFormatAdLoadedListener zza;

    @Nullable
    private final NativeCustomFormatAd.OnCustomClickListener zzb;

    @Nullable
    @GuardedBy("this")
    private NativeCustomFormatAd zzc;

    public zzbtc(NativeCustomFormatAd.OnCustomFormatAdLoadedListener onCustomFormatAdLoadedListener, @Nullable NativeCustomFormatAd.OnCustomClickListener onCustomClickListener) {
        this.zza = onCustomFormatAdLoadedListener;
        this.zzb = onCustomClickListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized NativeCustomFormatAd zzf(zzbhc zzbhcVar) {
        NativeCustomFormatAd nativeCustomFormatAd = this.zzc;
        if (nativeCustomFormatAd != null) {
            return nativeCustomFormatAd;
        }
        zzbtd zzbtdVar = new zzbtd(zzbhcVar);
        this.zzc = zzbtdVar;
        return zzbtdVar;
    }

    @Nullable
    public final zzbhm zza() {
        zzbsy zzbsyVar = null;
        if (this.zzb == null) {
            return null;
        }
        return new zzbsz(this, zzbsyVar);
    }

    public final zzbhp zzb() {
        return new zzbtb(this, null);
    }
}
