package com.json.adapters.admob.banner;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeAdOptions;
import com.json.adapters.admob.AdMobAdapter;
import com.json.environment.ContextProvider;
import com.json.mediationsdk.AdapterUtils;
import com.json.mediationsdk.ISBannerSize;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.IronSourceBannerLayout;
import com.json.mediationsdk.adapter.AbstractBannerAdapter;
import com.json.mediationsdk.bidding.BiddingDataCallback;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.sdk.BannerSmashListener;
import com.json.mediationsdk.utils.ErrorBuilder;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class AdMobBannerAdapter extends AbstractBannerAdapter<AdMobAdapter> {
    private final String IS_NATIVE;
    private final ConcurrentHashMap<String, AdView> mAdUnitIdToBannerAd;
    private final ConcurrentHashMap<String, BannerSmashListener> mAdUnitIdToListener;
    public final ConcurrentHashMap<String, NativeAd> mAdUnitIdToNativeBannerAd;

    public AdMobBannerAdapter(AdMobAdapter adMobAdapter) {
        super(adMobAdapter);
        this.IS_NATIVE = "isNative";
        this.mAdUnitIdToListener = new ConcurrentHashMap<>();
        this.mAdUnitIdToBannerAd = new ConcurrentHashMap<>();
        this.mAdUnitIdToNativeBannerAd = new ConcurrentHashMap<>();
    }

    private NativeAdOptions createNativeAdOptions(NativeTemplateType nativeTemplateType) {
        NativeAdOptions.Builder builder = new NativeAdOptions.Builder();
        builder.setVideoOptions(new VideoOptions.Builder().setStartMuted(true).build());
        builder.setAdChoicesPlacement(nativeTemplateType.getAdChoicesPlacement());
        builder.setMediaAspectRatio(nativeTemplateType.getMediaAspectRatio());
        return builder.build();
    }

    private void initBannersInternal(@NonNull JSONObject jSONObject, @NonNull BannerSmashListener bannerSmashListener) {
        String adUnitIdKey = getAdapter().getAdUnitIdKey();
        String configStringValueFromKey = getConfigStringValueFromKey(jSONObject, adUnitIdKey);
        if (TextUtils.isEmpty(configStringValueFromKey)) {
            bannerSmashListener.onBannerInitFailed(ErrorBuilder.buildInitFailedError(getAdUnitIdMissingErrorString(adUnitIdKey), "Banner"));
            return;
        }
        IronLog.ADAPTER_API.verbose("adUnitId = " + configStringValueFromKey);
        this.mAdUnitIdToListener.put(configStringValueFromKey, bannerSmashListener);
        if (getAdapter().getInitState() == AdMobAdapter.InitState.INIT_STATE_SUCCESS) {
            IronLog.INTERNAL.verbose("onBannerInitSuccess - adUnitId = " + configStringValueFromKey);
            bannerSmashListener.onBannerInitSuccess();
            return;
        }
        if (getAdapter().getInitState() != AdMobAdapter.InitState.INIT_STATE_FAILED) {
            getAdapter().initSDK(jSONObject);
            return;
        }
        IronLog.INTERNAL.verbose("onBannerInitFailed - adUnitId = " + configStringValueFromKey);
        bannerSmashListener.onBannerInitFailed(ErrorBuilder.buildInitFailedError("AdMob sdk init failed", "Banner"));
    }

    private boolean isNativeBannerSizeSupported(ISBannerSize iSBannerSize, boolean z) {
        String description = iSBannerSize.getDescription();
        description.hashCode();
        switch (description) {
            case "RECTANGLE":
            case "LARGE":
            case "BANNER":
                return true;
            case "SMART":
                return !z;
            default:
                return false;
        }
    }

    private void loadBannerInternal(@NonNull final JSONObject jSONObject, final JSONObject jSONObject2, final String str, @NonNull final IronSourceBannerLayout ironSourceBannerLayout, @NonNull final BannerSmashListener bannerSmashListener) {
        final String configStringValueFromKey = getConfigStringValueFromKey(jSONObject, getAdapter().getAdUnitIdKey());
        IronLog.ADAPTER_API.verbose("adUnitId = " + configStringValueFromKey);
        if (ironSourceBannerLayout == null) {
            IronLog.INTERNAL.error("banner is null");
            bannerSmashListener.onBannerAdLoadFailed(ErrorBuilder.buildNoConfigurationAvailableError("banner is null"));
        } else {
            final boolean z = Boolean.parseBoolean(getConfigStringValueFromKey(jSONObject, "isNative"));
            postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.admob.banner.AdMobBannerAdapter.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        AdRequest adRequestCreateAdRequest = AdMobBannerAdapter.this.getAdapter().createAdRequest(jSONObject2, str);
                        if (z) {
                            AdMobBannerAdapter.this.loadNativeBanner(ironSourceBannerLayout, bannerSmashListener, configStringValueFromKey, adRequestCreateAdRequest, jSONObject);
                            return;
                        }
                        AdSize adSize = AdMobBannerAdapter.this.getAdSize(ironSourceBannerLayout.getSize(), AdapterUtils.isLargeScreen(ContextProvider.getInstance().getApplicationContext()));
                        if (adSize == null) {
                            bannerSmashListener.onBannerAdLoadFailed(ErrorBuilder.unsupportedBannerSize(AdMobBannerAdapter.this.getAdapter().getProviderName()));
                            return;
                        }
                        AdView adView = new AdView(ContextProvider.getInstance().getApplicationContext());
                        adView.setAdSize(adSize);
                        adView.setAdUnitId(configStringValueFromKey);
                        adView.setAdListener(new AdMobBannerAdListener(bannerSmashListener, configStringValueFromKey, adView));
                        AdMobBannerAdapter.this.mAdUnitIdToBannerAd.put(configStringValueFromKey, adView);
                        IronLog.ADAPTER_API.verbose("loadAd");
                        adView.loadAd(adRequestCreateAdRequest);
                    } catch (Exception e2) {
                        bannerSmashListener.onBannerAdLoadFailed(ErrorBuilder.buildLoadFailedError("AdMobAdapter loadBanner exception " + e2.getMessage()));
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadNativeBanner(IronSourceBannerLayout ironSourceBannerLayout, BannerSmashListener bannerSmashListener, String str, AdRequest adRequest, JSONObject jSONObject) {
        if (!isNativeBannerSizeSupported(ironSourceBannerLayout.getSize(), AdapterUtils.isLargeScreen(ContextProvider.getInstance().getApplicationContext()))) {
            IronLog.INTERNAL.error("size not supported, size = " + ironSourceBannerLayout.getSize().getDescription());
            bannerSmashListener.onBannerAdLoadFailed(ErrorBuilder.unsupportedBannerSize(getAdapter().getProviderName()));
            return;
        }
        IronLog.ADAPTER_API.verbose("adUnitId = " + str);
        NativeTemplateType nativeTemplateTypeCreateTemplateType = NativeTemplateType.createTemplateType(jSONObject, ironSourceBannerLayout.getSize());
        AdMobNativeBannerAdListener adMobNativeBannerAdListener = new AdMobNativeBannerAdListener(this, bannerSmashListener, str, ironSourceBannerLayout.getSize(), nativeTemplateTypeCreateTemplateType);
        new AdLoader.Builder(ironSourceBannerLayout.getContext(), str).forNativeAd(adMobNativeBannerAdListener).withNativeAdOptions(createNativeAdOptions(nativeTemplateTypeCreateTemplateType)).withAdListener(adMobNativeBannerAdListener).build().loadAd(adRequest);
    }

    @Override // com.json.mediationsdk.adapter.AbstractBannerAdapter, com.json.mediationsdk.sdk.BannerAdapterInterface
    public void collectBannerBiddingData(@NonNull JSONObject jSONObject, JSONObject jSONObject2, BiddingDataCallback biddingDataCallback) {
        IronSourceBannerLayout ironSourceBannerLayout;
        Bundle bundle = new Bundle();
        if (jSONObject2 != null && (ironSourceBannerLayout = (IronSourceBannerLayout) jSONObject2.opt("bannerLayout")) != null) {
            ISBannerSize size = ironSourceBannerLayout.getSize();
            if (size.isAdaptive()) {
                AdSize adSize = getAdSize(size, AdapterUtils.isLargeScreen(ContextProvider.getInstance().getApplicationContext()));
                bundle.putInt("adaptive_banner_w", adSize.getWidth());
                bundle.putInt("adaptive_banner_h", adSize.getHeight());
                IronLog.ADAPTER_API.verbose("adaptive banner width = " + adSize.getWidth() + ", height = " + adSize.getHeight());
            }
        }
        getAdapter().collectBiddingData(biddingDataCallback, AdFormat.BANNER, bundle);
    }

    @Override // com.json.mediationsdk.adapter.AbstractBannerAdapter, com.json.mediationsdk.sdk.BannerAdapterInterface
    public void destroyBanner(@NonNull final JSONObject jSONObject) {
        postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.admob.banner.AdMobBannerAdapter.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    AdMobBannerAdapter adMobBannerAdapter = AdMobBannerAdapter.this;
                    String configStringValueFromKey = adMobBannerAdapter.getConfigStringValueFromKey(jSONObject, adMobBannerAdapter.getAdapter().getAdUnitIdKey());
                    IronLog.ADAPTER_API.verbose("adUnitId = " + configStringValueFromKey);
                    if (AdMobBannerAdapter.this.mAdUnitIdToBannerAd.containsKey(configStringValueFromKey)) {
                        AdView adView = (AdView) AdMobBannerAdapter.this.mAdUnitIdToBannerAd.get(configStringValueFromKey);
                        if (adView != null) {
                            adView.destroy();
                        }
                        AdMobBannerAdapter.this.mAdUnitIdToBannerAd.remove(configStringValueFromKey);
                    }
                    if (AdMobBannerAdapter.this.mAdUnitIdToNativeBannerAd.containsKey(configStringValueFromKey)) {
                        NativeAd nativeAd = AdMobBannerAdapter.this.mAdUnitIdToNativeBannerAd.get(configStringValueFromKey);
                        if (nativeAd != null) {
                            nativeAd.destroy();
                        }
                        AdMobBannerAdapter.this.mAdUnitIdToNativeBannerAd.remove(configStringValueFromKey);
                    }
                } catch (Exception e2) {
                    IronLog.ADAPTER_API.error("e = " + e2);
                }
            }
        });
    }

    public AdSize getAdSize(ISBannerSize iSBannerSize, boolean z) {
        AdSize adSize;
        String description = iSBannerSize.getDescription();
        description.hashCode();
        switch (description) {
            case "RECTANGLE":
                adSize = AdSize.MEDIUM_RECTANGLE;
                break;
            case "LARGE":
                adSize = AdSize.LARGE_BANNER;
                break;
            case "SMART":
                if (!z) {
                    adSize = AdSize.BANNER;
                    break;
                } else {
                    adSize = AdSize.LEADERBOARD;
                    break;
                }
                break;
            case "BANNER":
                adSize = AdSize.BANNER;
                break;
            case "CUSTOM":
                adSize = new AdSize(iSBannerSize.getWidth(), iSBannerSize.getHeight());
                break;
            default:
                adSize = null;
                break;
        }
        if (!iSBannerSize.isAdaptive() || adSize == null) {
            return adSize;
        }
        AdSize currentOrientationAnchoredAdaptiveBannerAdSize = AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(ContextProvider.getInstance().getApplicationContext(), adSize.getWidth());
        IronLog.INTERNAL.verbose("original height - " + adSize.getHeight() + " adaptive height - " + currentOrientationAnchoredAdaptiveBannerAdSize.getHeight());
        return currentOrientationAnchoredAdaptiveBannerAdSize;
    }

    @Override // com.json.mediationsdk.adapter.AbstractBannerAdapter, com.json.mediationsdk.sdk.BannerAdapterInterface
    public void initBannerForBidding(String str, String str2, @NonNull JSONObject jSONObject, @NonNull BannerSmashListener bannerSmashListener) {
        initBannersInternal(jSONObject, bannerSmashListener);
    }

    @Override // com.json.mediationsdk.adapter.AbstractBannerAdapter, com.json.mediationsdk.sdk.BannerAdapterInterface
    public void initBanners(String str, String str2, @NonNull JSONObject jSONObject, @NonNull BannerSmashListener bannerSmashListener) {
        initBannersInternal(jSONObject, bannerSmashListener);
    }

    @Override // com.json.mediationsdk.adapter.AbstractBannerAdapter, com.json.mediationsdk.sdk.BannerAdapterInterface
    public void loadBanner(@NonNull JSONObject jSONObject, JSONObject jSONObject2, @NonNull IronSourceBannerLayout ironSourceBannerLayout, @NonNull BannerSmashListener bannerSmashListener) {
        loadBannerInternal(jSONObject, jSONObject2, null, ironSourceBannerLayout, bannerSmashListener);
    }

    @Override // com.json.mediationsdk.adapter.AbstractBannerAdapter, com.json.mediationsdk.sdk.BannerAdapterInterface
    public void loadBannerForBidding(@NonNull JSONObject jSONObject, JSONObject jSONObject2, String str, @NonNull IronSourceBannerLayout ironSourceBannerLayout, @NonNull BannerSmashListener bannerSmashListener) {
        loadBannerInternal(jSONObject, jSONObject2, str, ironSourceBannerLayout, bannerSmashListener);
    }

    @Override // com.json.mediationsdk.adapter.AbstractAdUnitAdapter, com.json.mediationsdk.INetworkInitCallbackListener, com.json.mediationsdk.sdk.BannerAdapterInterface, com.json.mediationsdk.sdk.AdUnitAdapterInterface
    public void onNetworkInitCallbackFailed(String str) {
        Iterator<BannerSmashListener> it = this.mAdUnitIdToListener.values().iterator();
        while (it.hasNext()) {
            it.next().onBannerInitFailed(ErrorBuilder.buildInitFailedError(str, "Banner"));
        }
    }

    @Override // com.json.mediationsdk.adapter.AbstractAdUnitAdapter, com.json.mediationsdk.INetworkInitCallbackListener, com.json.mediationsdk.sdk.BannerAdapterInterface, com.json.mediationsdk.sdk.AdUnitAdapterInterface
    public void onNetworkInitCallbackSuccess() {
        Iterator<BannerSmashListener> it = this.mAdUnitIdToListener.values().iterator();
        while (it.hasNext()) {
            it.next().onBannerInitSuccess();
        }
    }

    @Override // com.json.mediationsdk.sdk.ReleaseMemoryAdapterInterface
    public void releaseMemory(@NonNull IronSource.AD_UNIT ad_unit, JSONObject jSONObject) {
        postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.admob.banner.AdMobBannerAdapter.3
            @Override // java.lang.Runnable
            public void run() {
                Iterator it = AdMobBannerAdapter.this.mAdUnitIdToBannerAd.values().iterator();
                while (it.hasNext()) {
                    ((AdView) it.next()).destroy();
                }
                Iterator<NativeAd> it2 = AdMobBannerAdapter.this.mAdUnitIdToNativeBannerAd.values().iterator();
                while (it2.hasNext()) {
                    it2.next().destroy();
                }
                AdMobBannerAdapter.this.mAdUnitIdToBannerAd.clear();
                AdMobBannerAdapter.this.mAdUnitIdToListener.clear();
                AdMobBannerAdapter.this.mAdUnitIdToNativeBannerAd.clear();
            }
        });
    }
}
