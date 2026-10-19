package com.google.android.gms.internal.ads;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzbin {
    private final NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener zza;

    @Nullable
    private final NativeCustomTemplateAd.OnCustomClickListener zzb;

    @Nullable
    @GuardedBy("this")
    private NativeCustomTemplateAd zzc;

    public zzbin(NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener, @Nullable NativeCustomTemplateAd.OnCustomClickListener onCustomClickListener) {
        this.zza = onCustomTemplateAdLoadedListener;
        this.zzb = onCustomClickListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized NativeCustomTemplateAd zzf(zzbhc zzbhcVar) {
        NativeCustomTemplateAd nativeCustomTemplateAd = this.zzc;
        if (nativeCustomTemplateAd != null) {
            return nativeCustomTemplateAd;
        }
        zzbhd zzbhdVar = new zzbhd(zzbhcVar);
        this.zzc = zzbhdVar;
        return zzbhdVar;
    }

    @Nullable
    public final zzbhm zzd() {
        zzbij zzbijVar = null;
        if (this.zzb == null) {
            return null;
        }
        return new zzbik(this, zzbijVar);
    }

    public final zzbhp zze() {
        return new zzbim(this, null);
    }
}
