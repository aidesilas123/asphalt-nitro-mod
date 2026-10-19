package com.json.adapters.hyprmx;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.hyprmx.android.sdk.banner.HyprMXBannerSize;
import com.hyprmx.android.sdk.banner.HyprMXBannerView;
import com.hyprmx.android.sdk.consent.ConsentStatus;
import com.hyprmx.android.sdk.core.HyprMX;
import com.hyprmx.android.sdk.core.HyprMXIf;
import com.hyprmx.android.sdk.placement.Placement;
import com.json.environment.ContextProvider;
import com.json.mediationsdk.AbstractAdapter;
import com.json.mediationsdk.AdapterUtils;
import com.json.mediationsdk.INetworkInitCallbackListener;
import com.json.mediationsdk.ISBannerSize;
import com.json.mediationsdk.IntegrationData;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.IronSourceBannerLayout;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.metadata.MetaData;
import com.json.mediationsdk.metadata.MetaDataUtils;
import com.json.mediationsdk.sdk.BannerSmashListener;
import com.json.mediationsdk.sdk.InterstitialSmashListener;
import com.json.mediationsdk.sdk.RewardedVideoSmashListener;
import com.json.mediationsdk.utils.ErrorBuilder;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.mediationsdk.utils.IronSourceUtils;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class HyprMXAdapter extends AbstractAdapter implements INetworkInitCallbackListener {
    private static final String GitHash = "4d616ad25";
    private static final String META_DATA_HYPRMX_AGE_RESTRICTION_KEY = "HyprMX_ageRestricted";
    private static final String VERSION = "4.3.5";
    private static boolean mAgeRestrictionData;
    private final String KEY_DISTRIBUTOR_ID;
    private final String KEY_HYPRMX_PREFS;
    private final String KEY_HYPRMX_USER_ID;
    private final String KEY_PROPERTY_ID;
    private final String MEDIATION_SERVICE_NAME;
    protected ConcurrentHashMap<String, HyprMXBannerView> mPropertyIdToBannerAdView;
    protected ConcurrentHashMap<String, IronSourceBannerLayout> mPropertyIdToBannerLayout;
    protected ConcurrentHashMap<String, BannerSmashListener> mPropertyIdToBannerSmashListener;
    protected ConcurrentHashMap<String, Placement> mPropertyIdToInterstitialAd;
    protected ConcurrentHashMap<String, InterstitialSmashListener> mPropertyIdToInterstitialSmashListener;
    protected ConcurrentHashMap<String, Placement> mPropertyIdToRewardedVideoAd;
    protected ConcurrentHashMap<String, RewardedVideoSmashListener> mPropertyIdToRewardedVideoSmashListener;
    protected CopyOnWriteArraySet<String> mRewardedVideoPropertiesForInitCallbacks;
    private static EInitState mInitState = EInitState.NOT_INIT;
    private static AtomicBoolean mInitCalled = new AtomicBoolean(false);
    private static ConsentStatus mConsent = ConsentStatus.CONSENT_STATUS_UNKNOWN;
    private static HashSet<INetworkInitCallbackListener> initCallbackListeners = new HashSet<>();

    /* JADX INFO: renamed from: com.ironsource.adapters.hyprmx.HyprMXAdapter$5, reason: invalid class name */
    static /* synthetic */ class AnonymousClass5 {
        static final /* synthetic */ int[] $SwitchMap$com$ironsource$adapters$hyprmx$HyprMXAdapter$EInitState;

        static {
            int[] iArr = new int[EInitState.values().length];
            $SwitchMap$com$ironsource$adapters$hyprmx$HyprMXAdapter$EInitState = iArr;
            try {
                iArr[EInitState.NOT_INIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ironsource$adapters$hyprmx$HyprMXAdapter$EInitState[EInitState.INIT_IN_PROGRESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$ironsource$adapters$hyprmx$HyprMXAdapter$EInitState[EInitState.INIT_SUCCESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$ironsource$adapters$hyprmx$HyprMXAdapter$EInitState[EInitState.INIT_FAIL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private enum EInitState {
        NOT_INIT,
        INIT_IN_PROGRESS,
        INIT_SUCCESS,
        INIT_FAIL
    }

    private HyprMXAdapter(String str) {
        super(str);
        this.KEY_PROPERTY_ID = "propertyId";
        this.KEY_DISTRIBUTOR_ID = "distributorId";
        this.KEY_HYPRMX_PREFS = "hyprmx_prefs";
        this.KEY_HYPRMX_USER_ID = "hyprUserId";
        this.MEDIATION_SERVICE_NAME = "ironsource";
        this.mPropertyIdToRewardedVideoSmashListener = new ConcurrentHashMap<>();
        this.mPropertyIdToRewardedVideoAd = new ConcurrentHashMap<>();
        this.mRewardedVideoPropertiesForInitCallbacks = new CopyOnWriteArraySet<>();
        this.mPropertyIdToInterstitialSmashListener = new ConcurrentHashMap<>();
        this.mPropertyIdToInterstitialAd = new ConcurrentHashMap<>();
        this.mPropertyIdToBannerSmashListener = new ConcurrentHashMap<>();
        this.mPropertyIdToBannerAdView = new ConcurrentHashMap<>();
        this.mPropertyIdToBannerLayout = new ConcurrentHashMap<>();
    }

    public static String getAdapterSDKVersion() {
        return "6.2.0";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HyprMXBannerSize getBannerSize(ISBannerSize iSBannerSize) {
        String description = iSBannerSize.getDescription();
        description.hashCode();
        switch (description) {
            case "RECTANGLE":
                return HyprMXBannerSize.HyprMXAdSizeMediumRectangle.INSTANCE;
            case "SMART":
                return AdapterUtils.isLargeScreen(ContextProvider.getInstance().getApplicationContext()) ? HyprMXBannerSize.HyprMXAdSizeLeaderboard.INSTANCE : HyprMXBannerSize.HyprMXAdSizeBanner.INSTANCE;
            case "BANNER":
                return HyprMXBannerSize.HyprMXAdSizeBanner.INSTANCE;
            default:
                return null;
        }
    }

    private String getHyprMxAdapterVersion() {
        IronLog.INTERNAL.verbose("adapterVersion = 4.3.5");
        return "4.3.5";
    }

    public static IntegrationData getIntegrationData(Context context) {
        return new IntegrationData("HyprMX", "4.3.5");
    }

    private String getMediationSDKVersion() {
        String sDKVersion = IronSourceUtils.getSDKVersion();
        IronLog.INTERNAL.verbose("mediationVersion = " + sDKVersion);
        return sDKVersion;
    }

    private String getUserId() {
        String string = "";
        try {
            SharedPreferences sharedPreferences = ContextProvider.getInstance().getApplicationContext().getSharedPreferences("hyprmx_prefs", 0);
            String string2 = sharedPreferences.getString("hyprUserId", null);
            if (string2 != null) {
                return string2;
            }
            string = UUID.randomUUID().toString();
            sharedPreferences.edit().putString("hyprUserId", string).apply();
            return string;
        } catch (Exception unused) {
            return string;
        }
    }

    private void initSDK(String str, String str2) {
        IronLog ironLog = IronLog.ADAPTER_API;
        ironLog.verbose();
        if (mInitState == EInitState.NOT_INIT || mInitState == EInitState.INIT_IN_PROGRESS) {
            initCallbackListeners.add(this);
        }
        if (mInitCalled.compareAndSet(false, true)) {
            ironLog.verbose("initializing sdk with userId=" + str + " distributorId=" + str2 + " mConsent=" + mConsent);
            setInitState(EInitState.INIT_IN_PROGRESS);
            HyprMX hyprMX = HyprMX.INSTANCE;
            hyprMX.setMediationProvider("ironsource", getMediationSDKVersion(), getHyprMxAdapterVersion());
            hyprMX.initialize(ContextProvider.getInstance().getApplicationContext(), str2, str, mConsent, mAgeRestrictionData, new HyprMXIf.HyprMXInitializationListener() { // from class: com.ironsource.adapters.hyprmx.HyprMXAdapter.3
                @Override // com.hyprmx.android.sdk.core.HyprMXIf.HyprMXInitializationListener
                public void initializationComplete() {
                    IronLog.ADAPTER_CALLBACK.verbose();
                    HyprMXAdapter.this.setInitState(EInitState.INIT_SUCCESS);
                    Iterator it = HyprMXAdapter.initCallbackListeners.iterator();
                    while (it.hasNext()) {
                        ((INetworkInitCallbackListener) it.next()).onNetworkInitCallbackSuccess();
                    }
                    HyprMXAdapter.initCallbackListeners.clear();
                }

                @Override // com.hyprmx.android.sdk.core.HyprMXIf.HyprMXInitializationListener
                public void initializationFailed() {
                    IronLog.ADAPTER_CALLBACK.verbose();
                    HyprMXAdapter.this.setInitState(EInitState.INIT_FAIL);
                    Iterator it = HyprMXAdapter.initCallbackListeners.iterator();
                    while (it.hasNext()) {
                        ((INetworkInitCallbackListener) it.next()).onNetworkInitCallbackFailed("HyprMX SDK failed to initiate");
                    }
                    HyprMXAdapter.initCallbackListeners.clear();
                }
            });
        }
    }

    private boolean isBannerSizeSupported(ISBannerSize iSBannerSize) {
        if (iSBannerSize == null) {
            IronLog.INTERNAL.error("bannerSize is null");
            return false;
        }
        String description = iSBannerSize.getDescription();
        description.hashCode();
        switch (description) {
        }
        return false;
    }

    private void setAgeRestrictionValue(boolean z) {
        IronLog.ADAPTER_API.verbose("ageRestricted = " + z);
        mAgeRestrictionData = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setInitState(EInitState eInitState) {
        IronLog.INTERNAL.verbose(":init state changed from " + mInitState + " to " + eInitState + ")");
        mInitState = eInitState;
    }

    public static HyprMXAdapter startAdapter(String str) {
        return new HyprMXAdapter(str);
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.BannerAdapterInterface
    public void destroyBanner(JSONObject jSONObject) {
        final String strOptString = jSONObject.optString("propertyId");
        IronLog.ADAPTER_API.verbose("propertyId = " + strOptString);
        AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.hyprmx.HyprMXAdapter.2
            @Override // java.lang.Runnable
            public void run() {
                HyprMXBannerView hyprMXBannerView = HyprMXAdapter.this.mPropertyIdToBannerAdView.get(strOptString);
                if (hyprMXBannerView != null) {
                    hyprMXBannerView.destroy();
                    HyprMXAdapter.this.mPropertyIdToBannerAdView.remove(strOptString);
                    HyprMXAdapter.this.mPropertyIdToBannerSmashListener.remove(strOptString);
                    HyprMXAdapter.this.mPropertyIdToBannerLayout.remove(strOptString);
                }
            }
        });
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x001d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected android.widget.FrameLayout.LayoutParams getBannerLayoutParams(com.json.mediationsdk.ISBannerSize r6) {
        /*
            r5 = this;
            android.widget.FrameLayout$LayoutParams r0 = new android.widget.FrameLayout$LayoutParams
            r1 = 0
            r0.<init>(r1, r1)
            com.ironsource.environment.ContextProvider r2 = com.json.environment.ContextProvider.getInstance()
            android.content.Context r2 = r2.getApplicationContext()
            java.lang.String r6 = r6.getDescription()
            r6.hashCode()
            int r3 = r6.hashCode()
            r4 = -1
            switch(r3) {
                case -387072689: goto L35;
                case 79011241: goto L2a;
                case 1951953708: goto L1f;
                default: goto L1d;
            }
        L1d:
            r1 = -1
            goto L3e
        L1f:
            java.lang.String r1 = "BANNER"
            boolean r6 = r6.equals(r1)
            if (r6 != 0) goto L28
            goto L1d
        L28:
            r1 = 2
            goto L3e
        L2a:
            java.lang.String r1 = "SMART"
            boolean r6 = r6.equals(r1)
            if (r6 != 0) goto L33
            goto L1d
        L33:
            r1 = 1
            goto L3e
        L35:
            java.lang.String r3 = "RECTANGLE"
            boolean r6 = r6.equals(r3)
            if (r6 != 0) goto L3e
            goto L1d
        L3e:
            r6 = 50
            r3 = 320(0x140, float:4.48E-43)
            switch(r1) {
                case 0: goto L7a;
                case 1: goto L54;
                case 2: goto L46;
                default: goto L45;
            }
        L45:
            goto L8b
        L46:
            android.widget.FrameLayout$LayoutParams r0 = new android.widget.FrameLayout$LayoutParams
            int r1 = com.json.mediationsdk.AdapterUtils.dpToPixels(r2, r3)
            int r6 = com.json.mediationsdk.AdapterUtils.dpToPixels(r2, r6)
            r0.<init>(r1, r6)
            goto L8b
        L54:
            boolean r0 = com.json.mediationsdk.AdapterUtils.isLargeScreen(r2)
            if (r0 == 0) goto L6c
            android.widget.FrameLayout$LayoutParams r0 = new android.widget.FrameLayout$LayoutParams
            r6 = 728(0x2d8, float:1.02E-42)
            int r6 = com.json.mediationsdk.AdapterUtils.dpToPixels(r2, r6)
            r1 = 90
            int r1 = com.json.mediationsdk.AdapterUtils.dpToPixels(r2, r1)
            r0.<init>(r6, r1)
            goto L8b
        L6c:
            android.widget.FrameLayout$LayoutParams r0 = new android.widget.FrameLayout$LayoutParams
            int r1 = com.json.mediationsdk.AdapterUtils.dpToPixels(r2, r3)
            int r6 = com.json.mediationsdk.AdapterUtils.dpToPixels(r2, r6)
            r0.<init>(r1, r6)
            goto L8b
        L7a:
            android.widget.FrameLayout$LayoutParams r0 = new android.widget.FrameLayout$LayoutParams
            r6 = 300(0x12c, float:4.2E-43)
            int r6 = com.json.mediationsdk.AdapterUtils.dpToPixels(r2, r6)
            r1 = 250(0xfa, float:3.5E-43)
            int r1 = com.json.mediationsdk.AdapterUtils.dpToPixels(r2, r1)
            r0.<init>(r6, r1)
        L8b:
            r6 = 17
            r0.gravity = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adapters.hyprmx.HyprMXAdapter.getBannerLayoutParams(com.ironsource.mediationsdk.ISBannerSize):android.widget.FrameLayout$LayoutParams");
    }

    @Override // com.json.mediationsdk.AbstractAdapter
    public String getCoreSDKVersion() {
        return getAdapterSDKVersion();
    }

    @Override // com.json.mediationsdk.AbstractAdapter
    public String getVersion() {
        return "4.3.5";
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void initAndLoadRewardedVideo(String str, String str2, JSONObject jSONObject, JSONObject jSONObject2, RewardedVideoSmashListener rewardedVideoSmashListener) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose();
        String strOptString = jSONObject.optString("distributorId");
        String strOptString2 = jSONObject.optString("propertyId");
        String userId = getUserId();
        if (TextUtils.isEmpty(strOptString)) {
            ironLog.error("null distributorId");
            rewardedVideoSmashListener.onRewardedVideoAvailabilityChanged(false);
            return;
        }
        if (TextUtils.isEmpty(userId)) {
            ironLog.error("null userId");
            rewardedVideoSmashListener.onRewardedVideoAvailabilityChanged(false);
            return;
        }
        if (TextUtils.isEmpty(strOptString2)) {
            ironLog.error("null propertyId");
            rewardedVideoSmashListener.onRewardedVideoAvailabilityChanged(false);
            return;
        }
        this.mPropertyIdToRewardedVideoSmashListener.put(strOptString2, rewardedVideoSmashListener);
        int i = AnonymousClass5.$SwitchMap$com$ironsource$adapters$hyprmx$HyprMXAdapter$EInitState[mInitState.ordinal()];
        if (i == 1 || i == 2) {
            initSDK(userId, strOptString);
        } else if (i == 3) {
            loadRewardedVideoInternal(strOptString2, rewardedVideoSmashListener);
        } else {
            if (i != 4) {
                return;
            }
            rewardedVideoSmashListener.onRewardedVideoAvailabilityChanged(false);
        }
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.BannerAdapterInterface
    public void initBanners(String str, String str2, JSONObject jSONObject, BannerSmashListener bannerSmashListener) {
        String strOptString = jSONObject.optString("distributorId");
        String strOptString2 = jSONObject.optString("propertyId");
        String userId = getUserId();
        if (TextUtils.isEmpty(strOptString)) {
            IronLog.INTERNAL.error("null distributorId");
            bannerSmashListener.onBannerInitFailed(ErrorBuilder.buildInitFailedError("missing credentials - distributorId", "Banner"));
            return;
        }
        if (TextUtils.isEmpty(userId)) {
            IronLog.INTERNAL.error("null userId");
            bannerSmashListener.onBannerInitFailed(ErrorBuilder.buildInitFailedError("missing credentials - userId", "Banner"));
            return;
        }
        if (TextUtils.isEmpty(strOptString2)) {
            IronLog.INTERNAL.error("null propertyId");
            bannerSmashListener.onBannerInitFailed(ErrorBuilder.buildInitFailedError("missing credentials - propertyId", "Banner"));
            return;
        }
        IronLog.ADAPTER_API.verbose("propertyId = " + strOptString2);
        this.mPropertyIdToBannerSmashListener.put(strOptString2, bannerSmashListener);
        int i = AnonymousClass5.$SwitchMap$com$ironsource$adapters$hyprmx$HyprMXAdapter$EInitState[mInitState.ordinal()];
        if (i == 1 || i == 2) {
            initSDK(userId, strOptString);
        } else if (i == 3) {
            bannerSmashListener.onBannerInitSuccess();
        } else {
            if (i != 4) {
                return;
            }
            bannerSmashListener.onBannerInitFailed(ErrorBuilder.buildInitFailedError("HyprMX SDK failed to initiate", "Banner"));
        }
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void initInterstitial(String str, String str2, JSONObject jSONObject, InterstitialSmashListener interstitialSmashListener) {
        String strOptString = jSONObject.optString("distributorId");
        String strOptString2 = jSONObject.optString("propertyId");
        String userId = getUserId();
        if (TextUtils.isEmpty(strOptString)) {
            IronLog.INTERNAL.error("null distributorId");
            interstitialSmashListener.onInterstitialInitFailed(ErrorBuilder.buildInitFailedError("missing credentials - distributorId", "Interstitial"));
            return;
        }
        if (TextUtils.isEmpty(userId)) {
            IronLog.INTERNAL.error("null userId");
            interstitialSmashListener.onInterstitialInitFailed(ErrorBuilder.buildInitFailedError("missing credentials - userId", "Interstitial"));
            return;
        }
        if (TextUtils.isEmpty(strOptString2)) {
            IronLog.INTERNAL.error("null propertyId");
            interstitialSmashListener.onInterstitialInitFailed(ErrorBuilder.buildInitFailedError("missing credentials - propertyId", "Interstitial"));
            return;
        }
        this.mPropertyIdToInterstitialSmashListener.put(strOptString2, interstitialSmashListener);
        int i = AnonymousClass5.$SwitchMap$com$ironsource$adapters$hyprmx$HyprMXAdapter$EInitState[mInitState.ordinal()];
        if (i == 1 || i == 2) {
            initSDK(userId, strOptString);
        } else if (i == 3) {
            interstitialSmashListener.onInterstitialInitSuccess();
        } else {
            if (i != 4) {
                return;
            }
            interstitialSmashListener.onInterstitialInitFailed(ErrorBuilder.buildInitFailedError("HyprMX SDK failed to initiate", "Interstitial"));
        }
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void initRewardedVideoWithCallback(String str, String str2, JSONObject jSONObject, RewardedVideoSmashListener rewardedVideoSmashListener) {
        IronLog ironLog = IronLog.INTERNAL;
        ironLog.verbose();
        String strOptString = jSONObject.optString("distributorId");
        String strOptString2 = jSONObject.optString("propertyId");
        String userId = getUserId();
        if (TextUtils.isEmpty(strOptString)) {
            ironLog.error("null distributorId");
            rewardedVideoSmashListener.onRewardedVideoInitFailed(ErrorBuilder.buildInitFailedError("missing credentials - distributorId", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            return;
        }
        if (TextUtils.isEmpty(userId)) {
            ironLog.error("null userId");
            rewardedVideoSmashListener.onRewardedVideoInitFailed(ErrorBuilder.buildInitFailedError("missing credentials - userId", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            return;
        }
        if (TextUtils.isEmpty(strOptString2)) {
            ironLog.error("null propertyId");
            rewardedVideoSmashListener.onRewardedVideoInitFailed(ErrorBuilder.buildInitFailedError("missing credentials - propertyId", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            return;
        }
        this.mPropertyIdToRewardedVideoSmashListener.put(strOptString2, rewardedVideoSmashListener);
        this.mRewardedVideoPropertiesForInitCallbacks.add(strOptString2);
        int i = AnonymousClass5.$SwitchMap$com$ironsource$adapters$hyprmx$HyprMXAdapter$EInitState[mInitState.ordinal()];
        if (i == 1 || i == 2) {
            initSDK(userId, strOptString);
        } else if (i == 3) {
            rewardedVideoSmashListener.onRewardedVideoInitSuccess();
        } else {
            if (i != 4) {
                return;
            }
            rewardedVideoSmashListener.onRewardedVideoInitFailed(ErrorBuilder.buildInitFailedError("HyprMX SDK failed to initiate", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
        }
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.InterstitialAdapterInterface
    public boolean isInterstitialReady(JSONObject jSONObject) {
        Placement placement = this.mPropertyIdToInterstitialAd.get(jSONObject.optString("propertyId"));
        return placement != null && placement.isAdAvailable();
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public boolean isRewardedVideoAvailable(JSONObject jSONObject) {
        Placement placement = this.mPropertyIdToRewardedVideoAd.get(jSONObject.optString("propertyId"));
        return placement != null && placement.isAdAvailable();
    }

    @Override // com.json.mediationsdk.AbstractAdapter
    public boolean isUsingActivityBeforeImpression(IronSource.AD_UNIT ad_unit) {
        return false;
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.BannerAdapterInterface
    public void loadBanner(JSONObject jSONObject, JSONObject jSONObject2, final IronSourceBannerLayout ironSourceBannerLayout, final BannerSmashListener bannerSmashListener) {
        final String strOptString = jSONObject.optString("propertyId");
        if (TextUtils.isEmpty(strOptString)) {
            IronLog.INTERNAL.error("null propertyId");
            bannerSmashListener.onBannerAdLoadFailed(ErrorBuilder.buildLoadFailedError("Banner", getProviderName(), "null propertyId"));
            return;
        }
        if (ironSourceBannerLayout == null) {
            IronLog.INTERNAL.error("banner layout is null");
            bannerSmashListener.onBannerAdLoadFailed(ErrorBuilder.buildLoadFailedError("Banner", getProviderName(), "banner layout is null"));
            return;
        }
        if (!isBannerSizeSupported(ironSourceBannerLayout.getSize())) {
            IronLog.INTERNAL.error("loadBanner - size not supported, size = " + ironSourceBannerLayout.getSize().getDescription());
            bannerSmashListener.onBannerAdLoadFailed(ErrorBuilder.unsupportedBannerSize(getProviderName()));
            return;
        }
        IronLog.ADAPTER_API.verbose("propertyId = " + strOptString);
        this.mPropertyIdToBannerLayout.put(strOptString, ironSourceBannerLayout);
        AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.hyprmx.HyprMXAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                IronLog ironLog = IronLog.INTERNAL;
                ironLog.verbose("creating HyprMXBannerView");
                HyprMXBannerSize bannerSize = HyprMXAdapter.this.getBannerSize(ironSourceBannerLayout.getSize());
                HyprMXBannerView hyprMXBannerView = new HyprMXBannerView(ContextProvider.getInstance().getApplicationContext(), null);
                hyprMXBannerView.setPlacementName(strOptString);
                hyprMXBannerView.setAdSize(bannerSize);
                hyprMXBannerView.setListener(new HyprMxBannerListener(HyprMXAdapter.this, bannerSmashListener, strOptString));
                HyprMXAdapter.this.mPropertyIdToBannerAdView.put(strOptString, hyprMXBannerView);
                ironLog.verbose("loadAd");
                hyprMXBannerView.loadAd();
            }
        });
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void loadInterstitial(JSONObject jSONObject, JSONObject jSONObject2, InterstitialSmashListener interstitialSmashListener) {
        String strOptString = jSONObject.optString("propertyId");
        IronLog.ADAPTER_API.verbose("propertyId = " + strOptString);
        Placement placement = HyprMX.INSTANCE.getPlacement(strOptString);
        placement.setPlacementListener(new HyprMxInterstitialListener(this, interstitialSmashListener, strOptString));
        this.mPropertyIdToInterstitialAd.put(strOptString, placement);
        placement.loadAd();
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void loadRewardedVideo(JSONObject jSONObject, JSONObject jSONObject2, RewardedVideoSmashListener rewardedVideoSmashListener) {
        loadRewardedVideoInternal(jSONObject.optString("propertyId"), rewardedVideoSmashListener);
    }

    public void loadRewardedVideoInternal(String str, RewardedVideoSmashListener rewardedVideoSmashListener) {
        IronLog.ADAPTER_API.verbose("propertyId = " + str);
        Placement placement = HyprMX.INSTANCE.getPlacement(str);
        placement.setPlacementListener(new HyprMxRewardedVideoListener(this, rewardedVideoSmashListener, str));
        this.mPropertyIdToRewardedVideoAd.put(str, placement);
        placement.loadAd();
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface, com.json.mediationsdk.sdk.AdUnitAdapterInterface
    public void onNetworkInitCallbackFailed(String str) {
        for (String str2 : this.mPropertyIdToRewardedVideoSmashListener.keySet()) {
            RewardedVideoSmashListener rewardedVideoSmashListener = this.mPropertyIdToRewardedVideoSmashListener.get(str2);
            if (this.mRewardedVideoPropertiesForInitCallbacks.contains(str2)) {
                rewardedVideoSmashListener.onRewardedVideoInitFailed(ErrorBuilder.buildInitFailedError(str, IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            } else {
                rewardedVideoSmashListener.onRewardedVideoAvailabilityChanged(false);
            }
        }
        Iterator<InterstitialSmashListener> it = this.mPropertyIdToInterstitialSmashListener.values().iterator();
        while (it.hasNext()) {
            it.next().onInterstitialInitFailed(ErrorBuilder.buildInitFailedError(str, "Interstitial"));
        }
        Iterator<BannerSmashListener> it2 = this.mPropertyIdToBannerSmashListener.values().iterator();
        while (it2.hasNext()) {
            it2.next().onBannerInitFailed(ErrorBuilder.buildInitFailedError(str, "Banner"));
        }
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface, com.json.mediationsdk.sdk.AdUnitAdapterInterface
    public void onNetworkInitCallbackSuccess() {
        for (String str : this.mPropertyIdToRewardedVideoSmashListener.keySet()) {
            RewardedVideoSmashListener rewardedVideoSmashListener = this.mPropertyIdToRewardedVideoSmashListener.get(str);
            if (this.mRewardedVideoPropertiesForInitCallbacks.contains(str)) {
                rewardedVideoSmashListener.onRewardedVideoInitSuccess();
            } else {
                loadRewardedVideoInternal(str, rewardedVideoSmashListener);
            }
        }
        Iterator<InterstitialSmashListener> it = this.mPropertyIdToInterstitialSmashListener.values().iterator();
        while (it.hasNext()) {
            it.next().onInterstitialInitSuccess();
        }
        Iterator<BannerSmashListener> it2 = this.mPropertyIdToBannerSmashListener.values().iterator();
        while (it2.hasNext()) {
            it2.next().onBannerInitSuccess();
        }
        if (mConsent != ConsentStatus.CONSENT_STATUS_UNKNOWN) {
            setConsent(mConsent == ConsentStatus.CONSENT_GIVEN);
        }
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.ReleaseMemoryAdapterInterface
    public void releaseMemory(IronSource.AD_UNIT ad_unit, JSONObject jSONObject) {
        IronLog.INTERNAL.verbose("adUnit = " + ad_unit);
        if (ad_unit == IronSource.AD_UNIT.REWARDED_VIDEO) {
            this.mPropertyIdToRewardedVideoSmashListener.clear();
            this.mPropertyIdToRewardedVideoAd.clear();
            this.mRewardedVideoPropertiesForInitCallbacks.clear();
        } else if (ad_unit == IronSource.AD_UNIT.INTERSTITIAL) {
            this.mPropertyIdToInterstitialSmashListener.clear();
            this.mPropertyIdToInterstitialAd.clear();
        } else if (ad_unit == IronSource.AD_UNIT.BANNER) {
            AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.hyprmx.HyprMXAdapter.4
                @Override // java.lang.Runnable
                public void run() {
                    for (HyprMXBannerView hyprMXBannerView : HyprMXAdapter.this.mPropertyIdToBannerAdView.values()) {
                        hyprMXBannerView.destroy();
                        hyprMXBannerView.setListener(null);
                    }
                    HyprMXAdapter.this.mPropertyIdToBannerSmashListener.clear();
                    HyprMXAdapter.this.mPropertyIdToBannerAdView.clear();
                    HyprMXAdapter.this.mPropertyIdToBannerLayout.clear();
                }
            });
        }
    }

    @Override // com.json.mediationsdk.AbstractAdapter
    protected void setConsent(boolean z) {
        mConsent = z ? ConsentStatus.CONSENT_GIVEN : ConsentStatus.CONSENT_DECLINED;
        if (mInitState == EInitState.INIT_SUCCESS) {
            IronLog.ADAPTER_API.verbose("consent = " + z);
            HyprMX.INSTANCE.setConsentStatus(mConsent);
        }
    }

    @Override // com.json.mediationsdk.AbstractAdapter
    protected void setMetaData(String str, List<String> list) {
        if (list.isEmpty()) {
            return;
        }
        String str2 = list.get(0);
        IronLog.ADAPTER_API.verbose("key = " + str + ", value = " + str2);
        String valueForType = MetaDataUtils.formatValueForType(str2, MetaData.MetaDataValueTypes.META_DATA_VALUE_BOOLEAN);
        if (MetaDataUtils.isValidMetaData(str, META_DATA_HYPRMX_AGE_RESTRICTION_KEY, valueForType)) {
            setAgeRestrictionValue(MetaDataUtils.getMetaDataBooleanValue(valueForType));
        }
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void showInterstitial(JSONObject jSONObject, InterstitialSmashListener interstitialSmashListener) {
        String strOptString = jSONObject.optString("propertyId");
        Placement placement = this.mPropertyIdToInterstitialAd.get(strOptString);
        if (!isInterstitialReady(jSONObject)) {
            IronLog.INTERNAL.error("interstitial is not available");
            interstitialSmashListener.onInterstitialAdShowFailed(ErrorBuilder.buildNoAdsToShowError("Interstitial"));
            return;
        }
        IronLog.ADAPTER_API.verbose("propertyId = " + strOptString);
        placement.showAd();
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void showRewardedVideo(JSONObject jSONObject, RewardedVideoSmashListener rewardedVideoSmashListener) {
        String strOptString = jSONObject.optString("propertyId");
        Placement placement = this.mPropertyIdToRewardedVideoAd.get(strOptString);
        if (!isRewardedVideoAvailable(jSONObject)) {
            IronLog.INTERNAL.error("video is not available");
            rewardedVideoSmashListener.onRewardedVideoAdShowFailed(ErrorBuilder.buildNoAdsToShowError(IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            return;
        }
        IronLog.ADAPTER_API.verbose("propertyId = " + strOptString);
        placement.showAd();
    }
}
