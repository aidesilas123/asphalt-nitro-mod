package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.6.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzdxe extends AdListener {
    final /* synthetic */ String zza;
    final /* synthetic */ zzdxh zzb;

    zzdxe(zzdxh zzdxhVar, String str) {
        this.zzb = zzdxhVar;
        this.zza = str;
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        this.zzb.zzm(zzdxh.zzl(loadAdError), this.zza);
    }
}
