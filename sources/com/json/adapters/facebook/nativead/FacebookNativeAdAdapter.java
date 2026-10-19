package com.json.adapters.facebook.nativead;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdBase;
import com.json.adapters.facebook.FacebookAdapter;
import com.json.environment.ContextProvider;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.adapter.AbstractNativeAdAdapter;
import com.json.mediationsdk.ads.nativead.interfaces.NativeAdSmashListener;
import com.json.mediationsdk.adunit.adapter.utility.NativeAdProperties;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.utils.ErrorBuilder;
import com.json.mediationsdk.utils.IronSourceConstants;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class FacebookNativeAdAdapter extends AbstractNativeAdAdapter<FacebookAdapter> {
    private WeakReference<NativeAd> mAd;
    private NativeAdSmashListener mSmashListener;

    public FacebookNativeAdAdapter(FacebookAdapter facebookAdapter) {
        super(facebookAdapter);
    }

    private void initNativeAdsInternal(@NonNull JSONObject jSONObject, @NonNull NativeAdSmashListener nativeAdSmashListener) {
        String placementIdKey = getAdapter().getPlacementIdKey();
        String allPlacementIdsKey = getAdapter().getAllPlacementIdsKey();
        String configStringValueFromKey = getConfigStringValueFromKey(jSONObject, placementIdKey);
        String configStringValueFromKey2 = getConfigStringValueFromKey(jSONObject, allPlacementIdsKey);
        if (TextUtils.isEmpty(configStringValueFromKey)) {
            IronLog.INTERNAL.error(getAdUnitIdMissingErrorString(placementIdKey));
            nativeAdSmashListener.onNativeAdInitFailed(ErrorBuilder.buildInitFailedError(getAdUnitIdMissingErrorString(placementIdKey), IronSourceConstants.NATIVE_AD_UNIT));
            return;
        }
        if (TextUtils.isEmpty(configStringValueFromKey2)) {
            IronLog.INTERNAL.error(getAdUnitIdMissingErrorString(allPlacementIdsKey));
            nativeAdSmashListener.onNativeAdInitFailed(ErrorBuilder.buildInitFailedError(getAdUnitIdMissingErrorString(allPlacementIdsKey), IronSourceConstants.NATIVE_AD_UNIT));
            return;
        }
        IronLog.ADAPTER_API.verbose("placementId = " + configStringValueFromKey);
        this.mSmashListener = nativeAdSmashListener;
        if (getAdapter().getInitState() == FacebookAdapter.InitState.INIT_STATE_SUCCESS) {
            IronLog.INTERNAL.verbose("onNativeAdInitSuccess - placementId = " + configStringValueFromKey);
            nativeAdSmashListener.onNativeAdInitSuccess();
            return;
        }
        if (getAdapter().getInitState() != FacebookAdapter.InitState.INIT_STATE_FAILED) {
            getAdapter().initSDK(configStringValueFromKey2);
            return;
        }
        IronLog.INTERNAL.verbose("onNativeAdInitFailed - placementId = " + configStringValueFromKey);
        nativeAdSmashListener.onNativeAdInitFailed(ErrorBuilder.buildInitFailedError("Meta SDK init failed", IronSourceConstants.NATIVE_AD_UNIT));
    }

    private void loadNativeAdInternal(@NonNull JSONObject jSONObject, final String str, @NonNull final NativeAdSmashListener nativeAdSmashListener) {
        final String configStringValueFromKey = getConfigStringValueFromKey(jSONObject, getAdapter().getPlacementIdKey());
        IronLog.ADAPTER_API.verbose("placementId = " + configStringValueFromKey);
        final NativeAdProperties nativeAdProperties = getNativeAdProperties(jSONObject);
        postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.facebook.nativead.FacebookNativeAdAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Context applicationContext = ContextProvider.getInstance().getApplicationContext();
                    NativeAd nativeAd = new NativeAd(applicationContext, configStringValueFromKey);
                    NativeAdBase.NativeAdLoadConfigBuilder nativeAdLoadConfigBuilderWithAdListener = nativeAd.buildLoadAdConfig().withAdListener(new FacebookNativeAdListener(applicationContext, configStringValueFromKey, nativeAdProperties.getB(), nativeAdSmashListener));
                    String str2 = str;
                    if (str2 != null) {
                        nativeAdLoadConfigBuilderWithAdListener.withBid(str2);
                    }
                    FacebookNativeAdAdapter.this.mAd = new WeakReference(nativeAd);
                    nativeAd.loadAd(nativeAdLoadConfigBuilderWithAdListener.build());
                } catch (Exception e2) {
                    nativeAdSmashListener.onNativeAdLoadFailed(ErrorBuilder.buildLoadFailedError("Meta loadNative exception " + e2.getMessage()));
                }
            }
        });
    }

    @Override // com.json.mediationsdk.adapter.AbstractNativeAdAdapter, com.json.mediationsdk.ads.nativead.interfaces.NativeAdAdapterInterface
    public void destroyNativeAd(@NonNull JSONObject jSONObject) {
        final String configStringValueFromKey = getConfigStringValueFromKey(jSONObject, getAdapter().getPlacementIdKey());
        IronLog.ADAPTER_API.verbose("placementId = " + configStringValueFromKey);
        postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.facebook.nativead.FacebookNativeAdAdapter.2
            @Override // java.lang.Runnable
            public void run() {
                if (FacebookNativeAdAdapter.this.mAd == null || FacebookNativeAdAdapter.this.mAd.get() == null) {
                    return;
                }
                try {
                    ((NativeAd) FacebookNativeAdAdapter.this.mAd.get()).destroy();
                    FacebookNativeAdAdapter.this.mAd = null;
                } catch (Exception e2) {
                    IronLog.INTERNAL.error("destroyNativeAd failed for placementId - " + configStringValueFromKey + " with an exception = " + e2);
                }
            }
        });
    }

    @Override // com.json.mediationsdk.adapter.AbstractNativeAdAdapter, com.json.mediationsdk.ads.nativead.interfaces.NativeAdAdapterInterface
    public Map<String, Object> getNativeAdBiddingData(@NonNull JSONObject jSONObject, JSONObject jSONObject2) {
        return getAdapter().getBiddingData();
    }

    @Override // com.json.mediationsdk.adapter.AbstractNativeAdAdapter, com.json.mediationsdk.ads.nativead.interfaces.NativeAdAdapterInterface
    public void initNativeAdForBidding(String str, String str2, @NonNull JSONObject jSONObject, @NonNull NativeAdSmashListener nativeAdSmashListener) {
        initNativeAdsInternal(jSONObject, nativeAdSmashListener);
    }

    @Override // com.json.mediationsdk.adapter.AbstractNativeAdAdapter, com.json.mediationsdk.ads.nativead.interfaces.NativeAdAdapterInterface
    public void initNativeAds(String str, String str2, @NonNull JSONObject jSONObject, @NonNull NativeAdSmashListener nativeAdSmashListener) {
        initNativeAdsInternal(jSONObject, nativeAdSmashListener);
    }

    @Override // com.json.mediationsdk.adapter.AbstractNativeAdAdapter, com.json.mediationsdk.ads.nativead.interfaces.NativeAdAdapterInterface
    public void loadNativeAd(@NonNull JSONObject jSONObject, JSONObject jSONObject2, @NonNull NativeAdSmashListener nativeAdSmashListener) {
        loadNativeAdInternal(jSONObject, null, nativeAdSmashListener);
    }

    @Override // com.json.mediationsdk.adapter.AbstractNativeAdAdapter, com.json.mediationsdk.ads.nativead.interfaces.NativeAdAdapterInterface
    public void loadNativeAdForBidding(@NonNull JSONObject jSONObject, JSONObject jSONObject2, String str, @NonNull NativeAdSmashListener nativeAdSmashListener) {
        loadNativeAdInternal(jSONObject, str, nativeAdSmashListener);
    }

    @Override // com.json.mediationsdk.adapter.AbstractAdUnitAdapter, com.json.mediationsdk.INetworkInitCallbackListener, com.json.mediationsdk.sdk.BannerAdapterInterface, com.json.mediationsdk.sdk.AdUnitAdapterInterface
    public void onNetworkInitCallbackFailed(String str) {
        NativeAdSmashListener nativeAdSmashListener = this.mSmashListener;
        if (nativeAdSmashListener != null) {
            nativeAdSmashListener.onNativeAdInitFailed(ErrorBuilder.buildInitFailedError(str, IronSourceConstants.NATIVE_AD_UNIT));
        }
    }

    @Override // com.json.mediationsdk.adapter.AbstractAdUnitAdapter, com.json.mediationsdk.INetworkInitCallbackListener, com.json.mediationsdk.sdk.BannerAdapterInterface, com.json.mediationsdk.sdk.AdUnitAdapterInterface
    public void onNetworkInitCallbackSuccess() {
        NativeAdSmashListener nativeAdSmashListener = this.mSmashListener;
        if (nativeAdSmashListener != null) {
            nativeAdSmashListener.onNativeAdInitSuccess();
        }
    }

    @Override // com.json.mediationsdk.sdk.ReleaseMemoryAdapterInterface
    public void releaseMemory(@NonNull IronSource.AD_UNIT ad_unit, JSONObject jSONObject) {
    }
}
