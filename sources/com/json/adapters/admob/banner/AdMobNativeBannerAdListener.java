package com.json.adapters.admob.banner;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.nativead.NativeAd;
import com.json.adapters.admob.AdMobAdapter;
import com.json.environment.ContextProvider;
import com.json.mediationsdk.AbstractAdapter;
import com.json.mediationsdk.ISBannerSize;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.logger.IronSourceError;
import com.json.mediationsdk.sdk.BannerSmashListener;
import com.json.mediationsdk.utils.ErrorBuilder;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
public class AdMobNativeBannerAdListener extends AdListener implements NativeAd.OnNativeAdLoadedListener {
    private final String mAdUnitId;
    private final WeakReference<AdMobBannerAdapter> mBannerAdapter;
    private final ISBannerSize mBannerSize;
    private final BannerSmashListener mListener;
    private final NativeTemplateType mTemplateType;

    AdMobNativeBannerAdListener(AdMobBannerAdapter adMobBannerAdapter, BannerSmashListener bannerSmashListener, String str, ISBannerSize iSBannerSize, NativeTemplateType nativeTemplateType) {
        this.mBannerAdapter = new WeakReference<>(adMobBannerAdapter);
        this.mListener = bannerSmashListener;
        this.mAdUnitId = str;
        this.mBannerSize = iSBannerSize;
        this.mTemplateType = nativeTemplateType;
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdClicked() {
        IronLog.ADAPTER_CALLBACK.verbose("adUnitId = " + this.mAdUnitId);
        BannerSmashListener bannerSmashListener = this.mListener;
        if (bannerSmashListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
        } else {
            bannerSmashListener.onBannerAdClicked();
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdClosed() {
        IronLog.ADAPTER_CALLBACK.verbose("adUnitId = " + this.mAdUnitId);
        BannerSmashListener bannerSmashListener = this.mListener;
        if (bannerSmashListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
        } else {
            bannerSmashListener.onBannerAdScreenDismissed();
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdFailedToLoad(LoadAdError loadAdError) {
        IronLog ironLog = IronLog.ADAPTER_CALLBACK;
        ironLog.verbose("adUnitId = " + this.mAdUnitId);
        if (this.mListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
            return;
        }
        String str = loadAdError.getMessage() + "( " + loadAdError.getCode() + " ) ";
        if (loadAdError.getCause() != null) {
            str = str + " Caused by - " + loadAdError.getCause();
        }
        IronSourceError ironSourceError = AdMobAdapter.isNoFillError(loadAdError.getCode()) ? new IronSourceError(606, str) : ErrorBuilder.buildLoadFailedError(str);
        ironLog.error(str + str);
        this.mListener.onBannerAdLoadFailed(ironSourceError);
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdImpression() {
        IronLog.ADAPTER_CALLBACK.verbose("adUnitId = " + this.mAdUnitId);
        BannerSmashListener bannerSmashListener = this.mListener;
        if (bannerSmashListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
        } else {
            bannerSmashListener.onBannerAdShown();
        }
    }

    @Override // com.google.android.gms.ads.AdListener
    public void onAdOpened() {
        IronLog.ADAPTER_CALLBACK.verbose("adUnitId = " + this.mAdUnitId);
        BannerSmashListener bannerSmashListener = this.mListener;
        if (bannerSmashListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
        } else {
            bannerSmashListener.onBannerAdScreenPresented();
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.OnNativeAdLoadedListener
    public void onNativeAdLoaded(final NativeAd nativeAd) {
        IronLog.ADAPTER_CALLBACK.verbose("adUnitId = " + this.mAdUnitId);
        AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.admob.banner.AdMobNativeBannerAdListener.1
            @Override // java.lang.Runnable
            public void run() {
                if (AdMobNativeBannerAdListener.this.mListener == null) {
                    IronLog.INTERNAL.verbose("listener is null");
                    return;
                }
                if (AdMobNativeBannerAdListener.this.mBannerAdapter == null || AdMobNativeBannerAdListener.this.mBannerAdapter.get() == null) {
                    IronLog.INTERNAL.verbose("adapter is null");
                    return;
                }
                AdMobNativeBannerViewHandler adMobNativeBannerViewHandler = new AdMobNativeBannerViewHandler(AdMobNativeBannerAdListener.this.mBannerSize, AdMobNativeBannerAdListener.this.mTemplateType, ContextProvider.getInstance().getApplicationContext());
                new AdMobNativeBannerViewBinder().bindView(nativeAd, adMobNativeBannerViewHandler.getNativeAdView(), AdMobNativeBannerAdListener.this.mTemplateType);
                ((AdMobBannerAdapter) AdMobNativeBannerAdListener.this.mBannerAdapter.get()).mAdUnitIdToNativeBannerAd.put(AdMobNativeBannerAdListener.this.mAdUnitId, nativeAd);
                AdMobNativeBannerAdListener.this.mListener.onBannerAdLoaded(adMobNativeBannerViewHandler.getNativeAdView(), adMobNativeBannerViewHandler.getLayoutParams());
            }
        });
    }
}
