package com.json.adapters.applovin;

import android.content.Context;
import android.text.TextUtils;
import android.widget.FrameLayout;
import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinIncentivizedInterstitial;
import com.applovin.adview.AppLovinInterstitialAd;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinPrivacySettings;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkConfiguration;
import com.applovin.sdk.AppLovinSdkSettings;
import com.json.environment.ContextProvider;
import com.json.mediationsdk.AbstractAdapter;
import com.json.mediationsdk.AdapterUtils;
import com.json.mediationsdk.INetworkInitCallbackListener;
import com.json.mediationsdk.ISBannerSize;
import com.json.mediationsdk.IntegrationData;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.IronSourceBannerLayout;
import com.json.mediationsdk.LoadWhileShowSupportState;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.metadata.MetaData;
import com.json.mediationsdk.metadata.MetaDataUtils;
import com.json.mediationsdk.sdk.BannerSmashListener;
import com.json.mediationsdk.sdk.InterstitialSmashListener;
import com.json.mediationsdk.sdk.RewardedVideoSmashListener;
import com.json.mediationsdk.utils.ErrorBuilder;
import com.json.mediationsdk.utils.IronSourceConstants;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
class AppLovinAdapter extends AbstractAdapter implements INetworkInitCallbackListener {
    private static final String DEFAULT_ZONE_ID = "defaultZoneId";
    private static final String GitHash = "98dc19ddd";
    private static final String META_DATA_APPLOVIN_AGE_RESTRICTION_KEY = "AppLovin_AgeRestrictedUser";
    private static final String SDK_KEY = "sdkKey";
    private static final String VERSION = "4.3.41";
    private static final String ZONE_ID = "zoneId";
    private static AppLovinSdk mAppLovinSdk;
    protected final CopyOnWriteArraySet<String> mRewardedVideoZoneIdsForInitCallbacks;
    protected final ConcurrentHashMap<String, AppLovinBannerListener> mZoneIdToAppLovinBannerListener;
    protected final ConcurrentHashMap<String, AppLovinInterstitialListener> mZoneIdToAppLovinInterstitialListener;
    protected final ConcurrentHashMap<String, AppLovinRewardedVideoListener> mZoneIdToAppLovinRewardedVideoListener;
    protected final ConcurrentHashMap<String, AppLovinAdView> mZoneIdToBannerAd;
    protected final ConcurrentHashMap<String, FrameLayout.LayoutParams> mZoneIdToBannerLayout;
    protected final ConcurrentHashMap<String, AppLovinAdSize> mZoneIdToBannerSize;
    protected final ConcurrentHashMap<String, BannerSmashListener> mZoneIdToBannerSmashListener;
    protected final ConcurrentHashMap<String, AppLovinAd> mZoneIdToInterstitialAd;
    protected final ConcurrentHashMap<String, Boolean> mZoneIdToInterstitialAdReadyStatus;
    protected final ConcurrentHashMap<String, InterstitialSmashListener> mZoneIdToInterstitialSmashListener;
    protected final ConcurrentHashMap<String, AppLovinIncentivizedInterstitial> mZoneIdToRewardedVideoAd;
    protected final ConcurrentHashMap<String, RewardedVideoSmashListener> mZoneIdToRewardedVideoSmashListener;
    private static final AtomicBoolean mWasInitCalled = new AtomicBoolean(false);
    private static InitState mInitState = InitState.INIT_STATE_NONE;
    private static final HashSet<INetworkInitCallbackListener> initCallbackListeners = new HashSet<>();

    /* JADX INFO: renamed from: com.ironsource.adapters.applovin.AppLovinAdapter$9, reason: invalid class name */
    static /* synthetic */ class AnonymousClass9 {
        static final /* synthetic */ int[] $SwitchMap$com$ironsource$adapters$applovin$AppLovinAdapter$InitState;

        static {
            int[] iArr = new int[InitState.values().length];
            $SwitchMap$com$ironsource$adapters$applovin$AppLovinAdapter$InitState = iArr;
            try {
                iArr[InitState.INIT_STATE_NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ironsource$adapters$applovin$AppLovinAdapter$InitState[InitState.INIT_STATE_IN_PROGRESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$ironsource$adapters$applovin$AppLovinAdapter$InitState[InitState.INIT_STATE_SUCCESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private enum InitState {
        INIT_STATE_NONE,
        INIT_STATE_IN_PROGRESS,
        INIT_STATE_SUCCESS
    }

    private AppLovinAdapter(String str) {
        super(str);
        IronLog.INTERNAL.verbose();
        this.mZoneIdToAppLovinRewardedVideoListener = new ConcurrentHashMap<>();
        this.mZoneIdToRewardedVideoAd = new ConcurrentHashMap<>();
        this.mZoneIdToRewardedVideoSmashListener = new ConcurrentHashMap<>();
        this.mRewardedVideoZoneIdsForInitCallbacks = new CopyOnWriteArraySet<>();
        this.mZoneIdToAppLovinInterstitialListener = new ConcurrentHashMap<>();
        this.mZoneIdToInterstitialAd = new ConcurrentHashMap<>();
        this.mZoneIdToInterstitialSmashListener = new ConcurrentHashMap<>();
        this.mZoneIdToInterstitialAdReadyStatus = new ConcurrentHashMap<>();
        this.mZoneIdToAppLovinBannerListener = new ConcurrentHashMap<>();
        this.mZoneIdToBannerSmashListener = new ConcurrentHashMap<>();
        this.mZoneIdToBannerLayout = new ConcurrentHashMap<>();
        this.mZoneIdToBannerAd = new ConcurrentHashMap<>();
        this.mZoneIdToBannerSize = new ConcurrentHashMap<>();
        this.mLWSSupportState = LoadWhileShowSupportState.LOAD_WHILE_SHOW_BY_INSTANCE;
    }

    private AppLovinAdSize calculateBannerSize(ISBannerSize iSBannerSize, boolean z) {
        if (iSBannerSize == null) {
            IronLog.ADAPTER_API.error(getProviderName() + " calculateLayoutParams - bannerSize is null");
            return null;
        }
        String description = iSBannerSize.getDescription();
        description.hashCode();
        switch (description) {
            case "RECTANGLE":
                return AppLovinAdSize.MREC;
            case "LARGE":
            case "BANNER":
                return AppLovinAdSize.BANNER;
            case "SMART":
                return z ? AppLovinAdSize.LEADER : AppLovinAdSize.BANNER;
            case "CUSTOM":
                if (iSBannerSize.getHeight() >= 40 && iSBannerSize.getHeight() <= 60) {
                    return AppLovinAdSize.BANNER;
                }
            default:
                return null;
        }
    }

    public static String getAdapterSDKVersion() {
        return AppLovinSdk.VERSION;
    }

    private AppLovinSdkSettings getAppLovinSDKSetting() {
        AppLovinSdkSettings appLovinSdkSettings = new AppLovinSdkSettings(ContextProvider.getInstance().getApplicationContext());
        appLovinSdkSettings.setVerboseLogging(isAdaptersDebugEnabled());
        return appLovinSdkSettings;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x001d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.widget.FrameLayout.LayoutParams getBannerLayoutParams(com.json.mediationsdk.ISBannerSize r7) {
        /*
            Method dump skipped, instruction units count: 232
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adapters.applovin.AppLovinAdapter.getBannerLayoutParams(com.ironsource.mediationsdk.ISBannerSize):android.widget.FrameLayout$LayoutParams");
    }

    public static IntegrationData getIntegrationData(Context context) {
        return new IntegrationData("AppLovin", "4.3.41");
    }

    private String getZoneId(JSONObject jSONObject) {
        return !TextUtils.isEmpty(jSONObject.optString(ZONE_ID)) ? jSONObject.optString(ZONE_ID) : DEFAULT_ZONE_ID;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initSdk(String str, String str2) {
        if (mInitState == InitState.INIT_STATE_NONE || mInitState == InitState.INIT_STATE_IN_PROGRESS) {
            initCallbackListeners.add(this);
        }
        if (mWasInitCalled.compareAndSet(false, true)) {
            IronLog ironLog = IronLog.ADAPTER_API;
            ironLog.verbose("sdkKey = " + str);
            mInitState = InitState.INIT_STATE_IN_PROGRESS;
            AppLovinSdk appLovinSdk = AppLovinSdk.getInstance(str, getAppLovinSDKSetting(), ContextProvider.getInstance().getApplicationContext());
            mAppLovinSdk = appLovinSdk;
            appLovinSdk.setMediationProvider("ironsource");
            if (!TextUtils.isEmpty(str2)) {
                ironLog.verbose("setUserIdentifier to " + str2);
                mAppLovinSdk.setUserIdentifier(str2);
            }
            mAppLovinSdk.initializeSdk(new AppLovinSdk.SdkInitializationListener() { // from class: com.ironsource.adapters.applovin.AppLovinAdapter.1
                @Override // com.applovin.sdk.AppLovinSdk.SdkInitializationListener
                public void onSdkInitialized(AppLovinSdkConfiguration appLovinSdkConfiguration) {
                    AppLovinAdapter.this.initializationSuccess();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initializationSuccess() {
        IronLog.ADAPTER_CALLBACK.verbose();
        mInitState = InitState.INIT_STATE_SUCCESS;
        Iterator<INetworkInitCallbackListener> it = initCallbackListeners.iterator();
        while (it.hasNext()) {
            it.next().onNetworkInitCallbackSuccess();
        }
        initCallbackListeners.clear();
    }

    private void loadRewardedVideoInternal(String str, RewardedVideoSmashListener rewardedVideoSmashListener) {
        AppLovinIncentivizedInterstitial appLovinIncentivizedInterstitialCreate;
        IronLog.ADAPTER_API.verbose("zoneId = " + str);
        if (this.mZoneIdToRewardedVideoAd.containsKey(str)) {
            appLovinIncentivizedInterstitialCreate = this.mZoneIdToRewardedVideoAd.get(str);
        } else {
            appLovinIncentivizedInterstitialCreate = !str.equals(DEFAULT_ZONE_ID) ? AppLovinIncentivizedInterstitial.create(str, mAppLovinSdk) : AppLovinIncentivizedInterstitial.create(mAppLovinSdk);
            this.mZoneIdToRewardedVideoAd.put(str, appLovinIncentivizedInterstitialCreate);
        }
        AppLovinRewardedVideoListener appLovinRewardedVideoListener = new AppLovinRewardedVideoListener(this, rewardedVideoSmashListener, str);
        this.mZoneIdToAppLovinRewardedVideoListener.put(str, appLovinRewardedVideoListener);
        appLovinIncentivizedInterstitialCreate.preload(appLovinRewardedVideoListener);
    }

    private void setAgeRestrictionValue(boolean z) {
        IronLog.ADAPTER_API.verbose("value = " + z);
        AppLovinPrivacySettings.setIsAgeRestrictedUser(z, ContextProvider.getInstance().getApplicationContext());
    }

    private void setCCPAValue(boolean z) {
        IronLog.ADAPTER_API.verbose("value = " + z);
        AppLovinPrivacySettings.setDoNotSell(z, ContextProvider.getInstance().getApplicationContext());
    }

    public static AppLovinAdapter startAdapter(String str) {
        return new AppLovinAdapter(str);
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.BannerAdapterInterface
    public void destroyBanner(JSONObject jSONObject) {
        final String zoneId = getZoneId(jSONObject);
        final AppLovinAdView appLovinAdView = this.mZoneIdToBannerAd.get(zoneId);
        AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.applovin.AppLovinAdapter.7
            @Override // java.lang.Runnable
            public void run() {
                AppLovinAdView appLovinAdView2 = appLovinAdView;
                if (appLovinAdView2 != null) {
                    appLovinAdView2.destroy();
                }
                AppLovinAdapter.this.mZoneIdToBannerAd.remove(zoneId);
                AppLovinAdapter.this.mZoneIdToBannerLayout.remove(zoneId);
                AppLovinAdapter.this.mZoneIdToAppLovinBannerListener.remove(zoneId);
                AppLovinAdapter.this.mZoneIdToBannerSize.remove(zoneId);
            }
        });
    }

    @Override // com.json.mediationsdk.AbstractAdapter
    public String getCoreSDKVersion() {
        return getAdapterSDKVersion();
    }

    protected String getErrorString(int i) {
        if (i == -8) {
            return "The provided ad token is invalid; ad token must be returned from AppLovin S2S integration.";
        }
        if (i == -7) {
            return "The zone provided is invalid; the zone needs to be added to your AppLovin account or may still be propagating to our servers.";
        }
        if (i == -6) {
            return "There has been a failure to render an ad on screen.";
        }
        switch (i) {
            case -1009:
                return "The device had no network connectivity at the time of an ad request, either due to airplane mode or no service.";
            case -1001:
                return "The network conditions prevented the SDK from receiving an ad.";
            case AppLovinErrorCodes.INVALID_URL /* -900 */:
                return "A postback URL you attempted to dispatch was empty or nil.";
            case AppLovinErrorCodes.INVALID_RESPONSE /* -800 */:
                return "The AppLovin servers have returned an invalid response";
            case AppLovinErrorCodes.INCENTIVIZED_USER_CLOSED_VIDEO /* -600 */:
                return "The user exited out of the ad early. You may or may not wish to grant a reward depending on your preference.";
            case AppLovinErrorCodes.INCENTIVIZED_SERVER_TIMEOUT /* -500 */:
                return "A reward validation requested timed out (usually due to poor connectivity).";
            case AppLovinErrorCodes.INCENTIVIZED_UNKNOWN_SERVER_ERROR /* -400 */:
                return "An unknown server-side error occurred.";
            case AppLovinErrorCodes.INCENTIVIZED_NO_AD_PRELOADED /* -300 */:
                return "The developer called for a rewarded video before one was available.";
            case AppLovinErrorCodes.SDK_DISABLED /* -22 */:
                return "The SDK is currently disabled.";
            case -1:
                return "The system is in unexpected state.";
            case 204:
                return "No ads are currently eligible for your device.";
            default:
                switch (i) {
                    case AppLovinErrorCodes.UNABLE_TO_PRECACHE_VIDEO_RESOURCES /* -202 */:
                        return "An attempt to cache a video resource to the filesystem failed; the device may be out of space.";
                    case AppLovinErrorCodes.UNABLE_TO_PRECACHE_IMAGE_RESOURCES /* -201 */:
                        return "An attempt to cache an image resource to the filesystem failed; the device may be out of space.";
                    case AppLovinErrorCodes.UNABLE_TO_PRECACHE_RESOURCES /* -200 */:
                        return "An attempt to cache a resource to the filesystem failed; the device may be out of space.";
                    default:
                        return "Unknown error";
                }
        }
    }

    @Override // com.json.mediationsdk.AbstractAdapter
    public String getVersion() {
        return "4.3.41";
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void initAndLoadRewardedVideo(String str, final String str2, JSONObject jSONObject, JSONObject jSONObject2, RewardedVideoSmashListener rewardedVideoSmashListener) {
        String zoneId = getZoneId(jSONObject);
        final String strOptString = jSONObject.optString(SDK_KEY);
        if (TextUtils.isEmpty(strOptString)) {
            IronLog.INTERNAL.error("Missing param - sdkKey");
            rewardedVideoSmashListener.onRewardedVideoAvailabilityChanged(false);
            return;
        }
        if (TextUtils.isEmpty(zoneId)) {
            IronLog.INTERNAL.error("Missing param - zoneId");
            rewardedVideoSmashListener.onRewardedVideoAvailabilityChanged(false);
            return;
        }
        IronLog.ADAPTER_API.verbose("zoneId = " + zoneId);
        this.mZoneIdToRewardedVideoSmashListener.put(zoneId, rewardedVideoSmashListener);
        int i = AnonymousClass9.$SwitchMap$com$ironsource$adapters$applovin$AppLovinAdapter$InitState[mInitState.ordinal()];
        if (i == 1 || i == 2) {
            AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.applovin.AppLovinAdapter.3
                @Override // java.lang.Runnable
                public void run() {
                    AppLovinAdapter.this.initSdk(strOptString, str2);
                }
            });
        } else {
            if (i != 3) {
                return;
            }
            loadRewardedVideoInternal(zoneId, rewardedVideoSmashListener);
        }
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.BannerAdapterInterface
    public void initBanners(String str, final String str2, JSONObject jSONObject, BannerSmashListener bannerSmashListener) {
        String zoneId = getZoneId(jSONObject);
        final String strOptString = jSONObject.optString(SDK_KEY);
        if (TextUtils.isEmpty(strOptString)) {
            IronLog.INTERNAL.error("Missing param - sdkKey");
            bannerSmashListener.onBannerInitFailed(ErrorBuilder.buildInitFailedError("Missing param - sdkKey", "Banner"));
            return;
        }
        if (TextUtils.isEmpty(zoneId)) {
            IronLog.INTERNAL.error("Missing param - zoneId");
            bannerSmashListener.onBannerInitFailed(ErrorBuilder.buildInitFailedError("Missing param - zoneId", "Banner"));
            return;
        }
        IronLog.ADAPTER_API.verbose("zoneId = " + zoneId);
        this.mZoneIdToBannerSmashListener.put(zoneId, bannerSmashListener);
        int i = AnonymousClass9.$SwitchMap$com$ironsource$adapters$applovin$AppLovinAdapter$InitState[mInitState.ordinal()];
        if (i == 1 || i == 2) {
            AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.applovin.AppLovinAdapter.5
                @Override // java.lang.Runnable
                public void run() {
                    AppLovinAdapter.this.initSdk(strOptString, str2);
                }
            });
        } else {
            if (i != 3) {
                return;
            }
            bannerSmashListener.onBannerInitSuccess();
        }
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void initInterstitial(String str, final String str2, JSONObject jSONObject, InterstitialSmashListener interstitialSmashListener) {
        String zoneId = getZoneId(jSONObject);
        final String strOptString = jSONObject.optString(SDK_KEY);
        if (TextUtils.isEmpty(strOptString)) {
            IronLog.INTERNAL.error("Missing param - sdkKey");
            interstitialSmashListener.onInterstitialInitFailed(ErrorBuilder.buildInitFailedError("Missing param - sdkKey", "Interstitial"));
            return;
        }
        if (TextUtils.isEmpty(zoneId)) {
            IronLog.INTERNAL.error("Missing param - zoneId");
            interstitialSmashListener.onInterstitialInitFailed(ErrorBuilder.buildInitFailedError("Missing param - zoneId", "Interstitial"));
            return;
        }
        IronLog.ADAPTER_API.verbose("zoneId = " + zoneId);
        this.mZoneIdToInterstitialSmashListener.put(zoneId, interstitialSmashListener);
        int i = AnonymousClass9.$SwitchMap$com$ironsource$adapters$applovin$AppLovinAdapter$InitState[mInitState.ordinal()];
        if (i == 1 || i == 2) {
            AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.applovin.AppLovinAdapter.4
                @Override // java.lang.Runnable
                public void run() {
                    AppLovinAdapter.this.initSdk(strOptString, str2);
                }
            });
        } else {
            if (i != 3) {
                return;
            }
            interstitialSmashListener.onInterstitialInitSuccess();
        }
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void initRewardedVideoWithCallback(String str, final String str2, JSONObject jSONObject, RewardedVideoSmashListener rewardedVideoSmashListener) {
        String zoneId = getZoneId(jSONObject);
        final String strOptString = jSONObject.optString(SDK_KEY);
        if (TextUtils.isEmpty(strOptString)) {
            IronLog.INTERNAL.error("error - missing param - sdkKey");
            rewardedVideoSmashListener.onRewardedVideoInitFailed(ErrorBuilder.buildInitFailedError("Missing param - sdkKey", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            return;
        }
        if (TextUtils.isEmpty(zoneId)) {
            IronLog.INTERNAL.error("Missing param - zoneId");
            rewardedVideoSmashListener.onRewardedVideoInitFailed(ErrorBuilder.buildInitFailedError("Missing param - zoneId", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            return;
        }
        IronLog.ADAPTER_API.verbose("zoneId = " + zoneId);
        this.mZoneIdToRewardedVideoSmashListener.put(zoneId, rewardedVideoSmashListener);
        this.mRewardedVideoZoneIdsForInitCallbacks.add(zoneId);
        int i = AnonymousClass9.$SwitchMap$com$ironsource$adapters$applovin$AppLovinAdapter$InitState[mInitState.ordinal()];
        if (i == 1 || i == 2) {
            AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.applovin.AppLovinAdapter.2
                @Override // java.lang.Runnable
                public void run() {
                    AppLovinAdapter.this.initSdk(strOptString, str2);
                }
            });
        } else {
            if (i != 3) {
                return;
            }
            rewardedVideoSmashListener.onRewardedVideoInitSuccess();
        }
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.InterstitialAdapterInterface
    public boolean isInterstitialReady(JSONObject jSONObject) {
        String zoneId = getZoneId(jSONObject);
        return this.mZoneIdToInterstitialAd.containsKey(zoneId) && this.mZoneIdToInterstitialAdReadyStatus.containsKey(zoneId) && this.mZoneIdToInterstitialAdReadyStatus.get(zoneId).booleanValue();
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public boolean isRewardedVideoAvailable(JSONObject jSONObject) {
        AppLovinIncentivizedInterstitial appLovinIncentivizedInterstitial = this.mZoneIdToRewardedVideoAd.get(getZoneId(jSONObject));
        return appLovinIncentivizedInterstitial != null && appLovinIncentivizedInterstitial.isAdReadyToDisplay();
    }

    @Override // com.json.mediationsdk.AbstractAdapter
    public boolean isUsingActivityBeforeImpression(IronSource.AD_UNIT ad_unit) {
        return false;
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.BannerAdapterInterface
    public void loadBanner(JSONObject jSONObject, JSONObject jSONObject2, final IronSourceBannerLayout ironSourceBannerLayout, final BannerSmashListener bannerSmashListener) {
        final String zoneId = getZoneId(jSONObject);
        IronLog.ADAPTER_API.verbose("zoneId = " + zoneId);
        if (ironSourceBannerLayout == null) {
            IronLog.INTERNAL.error("banner layout is null");
            bannerSmashListener.onBannerAdLoadFailed(ErrorBuilder.buildNoConfigurationAvailableError("banner layout is null"));
            return;
        }
        final AppLovinAdSize appLovinAdSizeCalculateBannerSize = calculateBannerSize(ironSourceBannerLayout.getSize(), AdapterUtils.isLargeScreen(ContextProvider.getInstance().getApplicationContext()));
        if (appLovinAdSizeCalculateBannerSize != null) {
            AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.applovin.AppLovinAdapter.6
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        FrameLayout.LayoutParams bannerLayoutParams = AppLovinAdapter.this.getBannerLayoutParams(ironSourceBannerLayout.getSize());
                        AppLovinBannerListener appLovinBannerListener = new AppLovinBannerListener(AppLovinAdapter.this, bannerSmashListener, zoneId, bannerLayoutParams);
                        AppLovinAdView appLovinAdView = new AppLovinAdView(AppLovinAdapter.mAppLovinSdk, appLovinAdSizeCalculateBannerSize, ContextProvider.getInstance().getApplicationContext());
                        appLovinAdView.setAdDisplayListener(appLovinBannerListener);
                        appLovinAdView.setAdClickListener(appLovinBannerListener);
                        appLovinAdView.setAdViewEventListener(appLovinBannerListener);
                        AppLovinAdapter.this.mZoneIdToBannerAd.put(zoneId, appLovinAdView);
                        AppLovinAdapter.this.mZoneIdToBannerLayout.put(zoneId, bannerLayoutParams);
                        AppLovinAdapter.this.mZoneIdToAppLovinBannerListener.put(zoneId, appLovinBannerListener);
                        AppLovinAdapter.this.mZoneIdToBannerSize.put(zoneId, appLovinAdSizeCalculateBannerSize);
                        if (zoneId.equals(AppLovinAdapter.DEFAULT_ZONE_ID)) {
                            AppLovinAdapter.mAppLovinSdk.getAdService().loadNextAd(appLovinAdSizeCalculateBannerSize, appLovinBannerListener);
                        } else {
                            AppLovinAdapter.mAppLovinSdk.getAdService().loadNextAdForZoneId(zoneId, appLovinBannerListener);
                        }
                    } catch (Exception e2) {
                        bannerSmashListener.onBannerAdLoadFailed(ErrorBuilder.buildLoadFailedError(AppLovinAdapter.this.getProviderName() + " loadBanner exception " + e2.getMessage()));
                    }
                }
            });
        } else {
            IronLog.INTERNAL.error("size not supported, size is null");
            bannerSmashListener.onBannerAdLoadFailed(ErrorBuilder.unsupportedBannerSize(getProviderName()));
        }
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void loadInterstitial(JSONObject jSONObject, JSONObject jSONObject2, InterstitialSmashListener interstitialSmashListener) {
        String zoneId = getZoneId(jSONObject);
        IronLog.ADAPTER_API.verbose("zoneId = " + zoneId);
        AppLovinInterstitialListener appLovinInterstitialListener = new AppLovinInterstitialListener(this, interstitialSmashListener, zoneId);
        this.mZoneIdToAppLovinInterstitialListener.put(zoneId, appLovinInterstitialListener);
        if (zoneId.equals(DEFAULT_ZONE_ID)) {
            mAppLovinSdk.getAdService().loadNextAd(AppLovinAdSize.INTERSTITIAL, appLovinInterstitialListener);
        } else {
            mAppLovinSdk.getAdService().loadNextAdForZoneId(zoneId, appLovinInterstitialListener);
        }
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void loadRewardedVideo(JSONObject jSONObject, JSONObject jSONObject2, RewardedVideoSmashListener rewardedVideoSmashListener) {
        loadRewardedVideoInternal(getZoneId(jSONObject), rewardedVideoSmashListener);
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface, com.json.mediationsdk.sdk.AdUnitAdapterInterface
    public void onNetworkInitCallbackFailed(String str) {
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface, com.json.mediationsdk.sdk.AdUnitAdapterInterface
    public void onNetworkInitCallbackSuccess() {
        for (String str : this.mZoneIdToRewardedVideoSmashListener.keySet()) {
            RewardedVideoSmashListener rewardedVideoSmashListener = this.mZoneIdToRewardedVideoSmashListener.get(str);
            if (this.mRewardedVideoZoneIdsForInitCallbacks.contains(str)) {
                rewardedVideoSmashListener.onRewardedVideoInitSuccess();
            } else {
                loadRewardedVideoInternal(str, rewardedVideoSmashListener);
            }
        }
        Iterator<InterstitialSmashListener> it = this.mZoneIdToInterstitialSmashListener.values().iterator();
        while (it.hasNext()) {
            it.next().onInterstitialInitSuccess();
        }
        Iterator<BannerSmashListener> it2 = this.mZoneIdToBannerSmashListener.values().iterator();
        while (it2.hasNext()) {
            it2.next().onBannerInitSuccess();
        }
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.ReleaseMemoryAdapterInterface
    public void releaseMemory(IronSource.AD_UNIT ad_unit, JSONObject jSONObject) {
        IronLog.INTERNAL.verbose("adUnit = " + ad_unit);
        if (ad_unit == IronSource.AD_UNIT.REWARDED_VIDEO) {
            this.mZoneIdToAppLovinRewardedVideoListener.clear();
            this.mZoneIdToRewardedVideoAd.clear();
            this.mZoneIdToRewardedVideoSmashListener.clear();
            this.mRewardedVideoZoneIdsForInitCallbacks.clear();
            return;
        }
        if (ad_unit != IronSource.AD_UNIT.INTERSTITIAL) {
            if (ad_unit == IronSource.AD_UNIT.BANNER) {
                AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.applovin.AppLovinAdapter.8
                    @Override // java.lang.Runnable
                    public void run() {
                        Iterator<AppLovinAdView> it = AppLovinAdapter.this.mZoneIdToBannerAd.values().iterator();
                        while (it.hasNext()) {
                            it.next().destroy();
                        }
                        AppLovinAdapter.this.mZoneIdToAppLovinBannerListener.clear();
                        AppLovinAdapter.this.mZoneIdToBannerSmashListener.clear();
                        AppLovinAdapter.this.mZoneIdToBannerLayout.clear();
                        AppLovinAdapter.this.mZoneIdToBannerAd.clear();
                    }
                });
            }
        } else {
            this.mZoneIdToAppLovinInterstitialListener.clear();
            this.mZoneIdToInterstitialAdReadyStatus.clear();
            this.mZoneIdToInterstitialAd.clear();
            this.mZoneIdToInterstitialSmashListener.clear();
        }
    }

    @Override // com.json.mediationsdk.AbstractAdapter
    protected void setConsent(boolean z) {
        IronLog.ADAPTER_API.verbose("consent = " + z);
        AppLovinPrivacySettings.setHasUserConsent(z, ContextProvider.getInstance().getApplicationContext());
    }

    @Override // com.json.mediationsdk.AbstractAdapter
    protected void setMetaData(String str, List<String> list) {
        if (list.isEmpty()) {
            return;
        }
        String str2 = list.get(0);
        IronLog.ADAPTER_API.verbose("key = " + str + ", value = " + str2);
        if (MetaDataUtils.isValidCCPAMetaData(str, str2)) {
            setCCPAValue(MetaDataUtils.getMetaDataBooleanValue(str2));
            return;
        }
        String valueForType = MetaDataUtils.formatValueForType(str2, MetaData.MetaDataValueTypes.META_DATA_VALUE_BOOLEAN);
        if (MetaDataUtils.isValidMetaData(str, META_DATA_APPLOVIN_AGE_RESTRICTION_KEY, valueForType)) {
            setAgeRestrictionValue(MetaDataUtils.getMetaDataBooleanValue(valueForType));
        }
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void showInterstitial(JSONObject jSONObject, InterstitialSmashListener interstitialSmashListener) {
        String zoneId = getZoneId(jSONObject);
        IronLog.ADAPTER_API.verbose("zoneId = " + zoneId);
        if (!isInterstitialReady(jSONObject)) {
            interstitialSmashListener.onInterstitialAdShowFailed(ErrorBuilder.buildNoAdsToShowError("Interstitial"));
            return;
        }
        AppLovinAd appLovinAd = this.mZoneIdToInterstitialAd.get(zoneId);
        AppLovinInterstitialListener appLovinInterstitialListener = this.mZoneIdToAppLovinInterstitialListener.get(zoneId);
        AppLovinInterstitialAdDialog appLovinInterstitialAdDialogCreate = AppLovinInterstitialAd.create(mAppLovinSdk, ContextProvider.getInstance().getCurrentActiveActivity());
        appLovinInterstitialAdDialogCreate.setAdClickListener(appLovinInterstitialListener);
        appLovinInterstitialAdDialogCreate.setAdDisplayListener(appLovinInterstitialListener);
        appLovinInterstitialAdDialogCreate.setAdVideoPlaybackListener(appLovinInterstitialListener);
        appLovinInterstitialAdDialogCreate.showAndRender(appLovinAd);
        this.mZoneIdToInterstitialAdReadyStatus.put(zoneId, Boolean.FALSE);
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void showRewardedVideo(JSONObject jSONObject, RewardedVideoSmashListener rewardedVideoSmashListener) {
        String zoneId = getZoneId(jSONObject);
        IronLog.ADAPTER_API.verbose("zoneId = " + zoneId);
        if (!isRewardedVideoAvailable(jSONObject)) {
            rewardedVideoSmashListener.onRewardedVideoAdShowFailed(ErrorBuilder.buildNoAdsToShowError(IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            return;
        }
        if (!TextUtils.isEmpty(getDynamicUserId())) {
            mAppLovinSdk.setUserIdentifier(getDynamicUserId());
        }
        AppLovinIncentivizedInterstitial appLovinIncentivizedInterstitial = this.mZoneIdToRewardedVideoAd.get(zoneId);
        AppLovinRewardedVideoListener appLovinRewardedVideoListener = this.mZoneIdToAppLovinRewardedVideoListener.get(zoneId);
        appLovinIncentivizedInterstitial.show(ContextProvider.getInstance().getCurrentActiveActivity(), appLovinRewardedVideoListener, appLovinRewardedVideoListener, appLovinRewardedVideoListener, appLovinRewardedVideoListener);
    }
}
