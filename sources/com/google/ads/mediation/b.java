package com.google.ads.mediation;

import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.ads.internal.client.zza;
import com.google.android.gms.ads.mediation.MediationBannerListener;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.6.0 */
/* JADX INFO: loaded from: classes2.dex */
@VisibleForTesting
final class b extends AdListener implements AppEventListener, zza {

    @VisibleForTesting
    final AbstractAdViewAdapter a;

    @VisibleForTesting
    final MediationBannerListener b;

    public b(AbstractAdViewAdapter abstractAdViewAdapter, MediationBannerListener mediationBannerListener) {
        this.a = abstractAdViewAdapter;
        this.b = mediationBannerListener;
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdClicked() {
        this.b.onAdClicked(this.a);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdClosed() {
        this.b.onAdClosed(this.a);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        this.b.onAdFailedToLoad(this.a, loadAdError);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdLoaded() {
        this.b.onAdLoaded(this.a);
    }

    @Override // com.google.android.gms.ads.AdListener
    public final void onAdOpened() {
        this.b.onAdOpened(this.a);
    }

    @Override // com.google.android.gms.ads.admanager.AppEventListener
    public final void onAppEvent(String str, String str2) {
        this.b.zzd(this.a, str, str2);
    }
}
