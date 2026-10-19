package com.json.adapters.fyber;

import android.content.Context;
import android.text.TextUtils;
import com.fyber.inneractive.sdk.external.BidTokenProvider;
import com.fyber.inneractive.sdk.external.InneractiveAdManager;
import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.external.InneractiveAdSpot;
import com.fyber.inneractive.sdk.external.InneractiveAdSpotManager;
import com.fyber.inneractive.sdk.external.InneractiveAdViewUnitController;
import com.fyber.inneractive.sdk.external.InneractiveFullscreenUnitController;
import com.fyber.inneractive.sdk.external.InneractiveFullscreenVideoContentController;
import com.fyber.inneractive.sdk.external.OnFyberMarketplaceInitializedListener;
import com.json.environment.ContextProvider;
import com.json.mediationsdk.AbstractAdapter;
import com.json.mediationsdk.INetworkInitCallbackListener;
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
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class FyberAdapter extends AbstractAdapter implements INetworkInitCallbackListener {
    private static final String GitHash = "9c1c1bb07";
    private static final String META_DATA_DT_COPPA_KEY = "DT_COPPA";
    private static final String META_DATA_DT_IS_CHILD_KEY = "DT_IsChild";
    private static final String VERSION = "4.3.28";
    private static Boolean mCCPA;
    private static Boolean mConsent;
    private static Boolean mDTCOPPA;
    private static boolean mDTIsChild;
    private static String mUserId;
    private final String APP_ID;
    private final String MEDIATION_NAME;
    private final String SPOT_ID;
    protected InneractiveAdViewUnitController mInneractiveAdViewUnitController;
    protected ConcurrentHashMap<String, Boolean> mInterstitialAdsAvailability;
    protected ConcurrentHashMap<String, Boolean> mRewardedVideoAdsAvailability;
    private CopyOnWriteArraySet<String> mRewardedVideoSpotIdsForInitCallbacks;
    private ConcurrentHashMap<String, InneractiveAdSpot> mSpotIdToBannerAd;
    private ConcurrentHashMap<String, FyberBannerAdListener> mSpotIdToBannerFyberAdListener;
    protected ConcurrentHashMap<String, IronSourceBannerLayout> mSpotIdToBannerLayout;
    private ConcurrentHashMap<String, BannerSmashListener> mSpotIdToBannerSmashListener;
    private ConcurrentHashMap<String, InneractiveAdSpot> mSpotIdToInterstitialAd;
    private ConcurrentHashMap<String, FyberInterstitialAdListener> mSpotIdToInterstitialFyberAdListener;
    private ConcurrentHashMap<String, InterstitialSmashListener> mSpotIdToInterstitialSmashListener;
    private ConcurrentHashMap<String, InneractiveAdSpot> mSpotIdToRewardedVideoAd;
    private ConcurrentHashMap<String, FyberRewardedVideoAdListener> mSpotIdToRewardedVideoFyberAdListener;
    private ConcurrentHashMap<String, RewardedVideoSmashListener> mSpotIdToRewardedVideoSmashListener;
    private static AtomicBoolean mWasInitCalled = new AtomicBoolean(false);
    private static InitState mInitState = InitState.INIT_STATE_NONE;
    private static HashSet<INetworkInitCallbackListener> initCallbackListeners = new HashSet<>();

    /* JADX INFO: renamed from: com.ironsource.adapters.fyber.FyberAdapter$10, reason: invalid class name */
    static /* synthetic */ class AnonymousClass10 {
        static final /* synthetic */ int[] $SwitchMap$com$ironsource$adapters$fyber$FyberAdapter$InitState;

        static {
            int[] iArr = new int[InitState.values().length];
            $SwitchMap$com$ironsource$adapters$fyber$FyberAdapter$InitState = iArr;
            try {
                iArr[InitState.INIT_STATE_NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ironsource$adapters$fyber$FyberAdapter$InitState[InitState.INIT_STATE_IN_PROGRESS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$ironsource$adapters$fyber$FyberAdapter$InitState[InitState.INIT_STATE_SUCCESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$ironsource$adapters$fyber$FyberAdapter$InitState[InitState.INIT_STATE_FAILED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private enum InitState {
        INIT_STATE_NONE,
        INIT_STATE_IN_PROGRESS,
        INIT_STATE_SUCCESS,
        INIT_STATE_FAILED
    }

    private FyberAdapter(String str) {
        super(str);
        this.MEDIATION_NAME = IronSourceConstants.IRONSOURCE_CONFIG_NAME;
        this.APP_ID = "appId";
        this.SPOT_ID = "adSpotId";
        IronLog.INTERNAL.verbose();
        this.mSpotIdToRewardedVideoAd = new ConcurrentHashMap<>();
        this.mSpotIdToRewardedVideoSmashListener = new ConcurrentHashMap<>();
        this.mSpotIdToRewardedVideoFyberAdListener = new ConcurrentHashMap<>();
        this.mRewardedVideoSpotIdsForInitCallbacks = new CopyOnWriteArraySet<>();
        this.mRewardedVideoAdsAvailability = new ConcurrentHashMap<>();
        this.mSpotIdToInterstitialAd = new ConcurrentHashMap<>();
        this.mSpotIdToInterstitialSmashListener = new ConcurrentHashMap<>();
        this.mSpotIdToInterstitialFyberAdListener = new ConcurrentHashMap<>();
        this.mInterstitialAdsAvailability = new ConcurrentHashMap<>();
        this.mSpotIdToBannerAd = new ConcurrentHashMap<>();
        this.mSpotIdToBannerSmashListener = new ConcurrentHashMap<>();
        this.mSpotIdToBannerFyberAdListener = new ConcurrentHashMap<>();
        this.mSpotIdToBannerLayout = new ConcurrentHashMap<>();
        this.mLWSSupportState = LoadWhileShowSupportState.LOAD_WHILE_SHOW_BY_INSTANCE;
    }

    public static String getAdapterSDKVersion() {
        return InneractiveAdManager.getVersion();
    }

    private Map<String, Object> getBiddingData() {
        if (mInitState != InitState.INIT_STATE_SUCCESS) {
            IronLog.INTERNAL.verbose("returning null as token since init did not finish");
            return null;
        }
        String bidderToken = BidTokenProvider.getBidderToken();
        if (TextUtils.isEmpty(bidderToken)) {
            bidderToken = "";
        }
        IronLog.ADAPTER_API.verbose("token = " + bidderToken);
        HashMap map = new HashMap();
        map.put("token", bidderToken);
        return map;
    }

    public static IntegrationData getIntegrationData(Context context) {
        return new IntegrationData("Fyber", "4.3.28");
    }

    private void initSDK(final String str, final String str2) {
        AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.fyber.FyberAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                if (FyberAdapter.mInitState == InitState.INIT_STATE_NONE || FyberAdapter.mInitState == InitState.INIT_STATE_IN_PROGRESS) {
                    FyberAdapter.initCallbackListeners.add(FyberAdapter.this);
                }
                if (FyberAdapter.mWasInitCalled.compareAndSet(false, true)) {
                    IronLog.ADAPTER_API.verbose("appId = " + str);
                    InitState unused = FyberAdapter.mInitState = InitState.INIT_STATE_IN_PROGRESS;
                    String unused2 = FyberAdapter.mUserId = str2;
                    FyberAdapter.this.setIsChildValue(FyberAdapter.mDTIsChild);
                    InneractiveAdManager.initialize(ContextProvider.getInstance().getApplicationContext(), str, new OnFyberMarketplaceInitializedListener() { // from class: com.ironsource.adapters.fyber.FyberAdapter.1.1
                        @Override // com.fyber.inneractive.sdk.external.OnFyberMarketplaceInitializedListener
                        public void onFyberMarketplaceInitialized(OnFyberMarketplaceInitializedListener.FyberInitStatus fyberInitStatus) {
                            if (fyberInitStatus == OnFyberMarketplaceInitializedListener.FyberInitStatus.SUCCESSFULLY) {
                                FyberAdapter.this.initializationSuccess();
                            } else {
                                FyberAdapter.this.initializationFailure();
                            }
                        }
                    });
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initializationFailure() {
        IronLog.ADAPTER_CALLBACK.verbose();
        mInitState = InitState.INIT_STATE_FAILED;
        Iterator<INetworkInitCallbackListener> it = initCallbackListeners.iterator();
        while (it.hasNext()) {
            it.next().onNetworkInitCallbackFailed("Fyber sdk init failed");
        }
        initCallbackListeners.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initializationSuccess() {
        IronLog.ADAPTER_CALLBACK.verbose();
        mInitState = InitState.INIT_STATE_SUCCESS;
        if (!TextUtils.isEmpty(mUserId)) {
            IronLog.INTERNAL.verbose("setUserID to " + mUserId);
            InneractiveAdManager.setUserId(mUserId);
        }
        Boolean bool = mConsent;
        if (bool != null) {
            setConsent(bool.booleanValue());
        }
        Boolean bool2 = mCCPA;
        if (bool2 != null) {
            setCCPAValue(bool2.booleanValue());
        }
        Boolean bool3 = mDTCOPPA;
        if (bool3 != null) {
            setCOPPAValue(bool3.booleanValue());
        }
        Iterator<INetworkInitCallbackListener> it = initCallbackListeners.iterator();
        while (it.hasNext()) {
            it.next().onNetworkInitCallbackSuccess();
        }
        initCallbackListeners.clear();
    }

    private void loadBannerInternal(final String str, final IronSourceBannerLayout ironSourceBannerLayout, final BannerSmashListener bannerSmashListener, final String str2) {
        IronLog.ADAPTER_API.verbose("spotId = " + str);
        AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.fyber.FyberAdapter.6
            @Override // java.lang.Runnable
            public void run() {
                IronSourceBannerLayout ironSourceBannerLayout2 = ironSourceBannerLayout;
                if (ironSourceBannerLayout2 == null || ironSourceBannerLayout2.isDestroyed()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Fyber loadBanner - banner ");
                    sb.append(ironSourceBannerLayout == null ? "layout is null" : "is destroyed");
                    bannerSmashListener.onBannerAdLoadFailed(ErrorBuilder.buildLoadFailedError(sb.toString()));
                    return;
                }
                FyberAdapter.this.mSpotIdToBannerLayout.put(str, ironSourceBannerLayout);
                InneractiveAdSpot inneractiveAdSpotCreateSpot = InneractiveAdSpotManager.get().createSpot();
                FyberAdapter.this.setMediationData(inneractiveAdSpotCreateSpot);
                FyberAdapter.this.mInneractiveAdViewUnitController = new InneractiveAdViewUnitController();
                inneractiveAdSpotCreateSpot.addUnitController(FyberAdapter.this.mInneractiveAdViewUnitController);
                FyberBannerAdListener fyberBannerAdListener = new FyberBannerAdListener(FyberAdapter.this, bannerSmashListener, str);
                FyberAdapter.this.mSpotIdToBannerFyberAdListener.put(str, fyberBannerAdListener);
                inneractiveAdSpotCreateSpot.setRequestListener(fyberBannerAdListener);
                FyberAdapter.this.mInneractiveAdViewUnitController.setEventsListener(fyberBannerAdListener);
                FyberAdapter.this.mSpotIdToBannerAd.put(str, inneractiveAdSpotCreateSpot);
                String str3 = str2;
                if (str3 == null) {
                    inneractiveAdSpotCreateSpot.requestAd(new InneractiveAdRequest(str));
                } else {
                    inneractiveAdSpotCreateSpot.loadAd(str3);
                }
            }
        });
    }

    private void loadInterstitialInternal(final String str, final String str2, final InterstitialSmashListener interstitialSmashListener) {
        IronLog.ADAPTER_API.verbose("spotId = " + str);
        AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.fyber.FyberAdapter.4
            @Override // java.lang.Runnable
            public void run() {
                InneractiveAdSpot inneractiveAdSpot = (InneractiveAdSpot) FyberAdapter.this.mSpotIdToInterstitialAd.get(str);
                if (inneractiveAdSpot != null) {
                    IronLog.ADAPTER_API.verbose("destroying previous ad with spotId " + str);
                    inneractiveAdSpot.destroy();
                    FyberAdapter.this.mSpotIdToInterstitialAd.remove(str);
                }
                InneractiveAdSpot inneractiveAdSpotCreateSpot = InneractiveAdSpotManager.get().createSpot();
                inneractiveAdSpotCreateSpot.addUnitController(new InneractiveFullscreenUnitController());
                FyberAdapter.this.setMediationData(inneractiveAdSpotCreateSpot);
                FyberInterstitialAdListener fyberInterstitialAdListener = new FyberInterstitialAdListener(FyberAdapter.this, interstitialSmashListener, str);
                FyberAdapter.this.mSpotIdToInterstitialFyberAdListener.put(str, fyberInterstitialAdListener);
                inneractiveAdSpotCreateSpot.setRequestListener(fyberInterstitialAdListener);
                FyberAdapter.this.mSpotIdToInterstitialAd.put(str, inneractiveAdSpotCreateSpot);
                String str3 = str2;
                if (str3 == null) {
                    inneractiveAdSpotCreateSpot.requestAd(new InneractiveAdRequest(str));
                } else {
                    inneractiveAdSpotCreateSpot.loadAd(str3);
                }
            }
        });
    }

    private void loadRewardedVideoInternal(final String str, final String str2, final RewardedVideoSmashListener rewardedVideoSmashListener) {
        IronLog.ADAPTER_API.verbose("spotId = " + str);
        AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.fyber.FyberAdapter.2
            @Override // java.lang.Runnable
            public void run() {
                InneractiveAdSpot inneractiveAdSpot = (InneractiveAdSpot) FyberAdapter.this.mSpotIdToRewardedVideoAd.get(str);
                if (inneractiveAdSpot != null) {
                    inneractiveAdSpot.destroy();
                    FyberAdapter.this.mSpotIdToRewardedVideoAd.remove(str);
                }
                InneractiveAdSpot inneractiveAdSpotCreateSpot = InneractiveAdSpotManager.get().createSpot();
                inneractiveAdSpotCreateSpot.addUnitController(new InneractiveFullscreenUnitController());
                FyberAdapter.this.setMediationData(inneractiveAdSpotCreateSpot);
                FyberRewardedVideoAdListener fyberRewardedVideoAdListener = new FyberRewardedVideoAdListener(FyberAdapter.this, rewardedVideoSmashListener, str);
                FyberAdapter.this.mSpotIdToRewardedVideoFyberAdListener.put(str, fyberRewardedVideoAdListener);
                inneractiveAdSpotCreateSpot.setRequestListener(fyberRewardedVideoAdListener);
                FyberAdapter.this.mSpotIdToRewardedVideoAd.put(str, inneractiveAdSpotCreateSpot);
                String str3 = str2;
                if (str3 == null) {
                    inneractiveAdSpotCreateSpot.requestAd(new InneractiveAdRequest(str));
                } else {
                    inneractiveAdSpotCreateSpot.loadAd(str3);
                }
            }
        });
    }

    private void setCCPAValue(final boolean z) {
        AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.fyber.FyberAdapter.9
            @Override // java.lang.Runnable
            public void run() {
                if (!FyberAdapter.mWasInitCalled.get()) {
                    Boolean unused = FyberAdapter.mCCPA = Boolean.valueOf(z);
                    return;
                }
                IronLog ironLog = IronLog.ADAPTER_API;
                StringBuilder sb = new StringBuilder();
                sb.append("setCCPAValue - value = ");
                sb.append(z ? "1YY-" : "1YN-");
                ironLog.verbose(sb.toString());
                InneractiveAdManager.setUSPrivacyString(z ? "1YY-" : "1YN-");
            }
        });
    }

    private void setCOPPAValue(boolean z) {
        if (z) {
            if (mInitState != InitState.INIT_STATE_SUCCESS) {
                mDTCOPPA = Boolean.valueOf(z);
            } else {
                IronLog.ADAPTER_API.verbose("calling InneractiveAdManager.currentAudienceAppliesToCoppa");
                InneractiveAdManager.currentAudienceAppliesToCoppa();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setIsChildValue(boolean z) {
        if (mInitState == InitState.INIT_STATE_NONE) {
            mDTIsChild = z;
        } else if (mInitState == InitState.INIT_STATE_IN_PROGRESS && z) {
            IronLog.ADAPTER_API.verbose("calling InneractiveAdManager.currentAudienceIsAChild");
            InneractiveAdManager.currentAudienceIsAChild();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMediationData(InneractiveAdSpot inneractiveAdSpot) {
        inneractiveAdSpot.setMediationName(IronSourceConstants.IRONSOURCE_CONFIG_NAME);
        inneractiveAdSpot.setMediationVersion("4.3.28");
    }

    public static FyberAdapter startAdapter(String str) {
        return new FyberAdapter(str);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.widget.FrameLayout.LayoutParams calculateLayoutParams(com.json.mediationsdk.ISBannerSize r6) {
        /*
            r5 = this;
            r0 = 0
            if (r6 != 0) goto Lb
            com.ironsource.mediationsdk.logger.IronLog r6 = com.json.mediationsdk.logger.IronLog.ADAPTER_API
            java.lang.String r1 = "bannerSize is null"
            r6.error(r1)
            return r0
        Lb:
            android.widget.FrameLayout$LayoutParams r1 = new android.widget.FrameLayout$LayoutParams
            r2 = 0
            r1.<init>(r2, r2)
            com.ironsource.environment.ContextProvider r1 = com.json.environment.ContextProvider.getInstance()
            android.content.Context r1 = r1.getApplicationContext()
            java.lang.String r6 = r6.getDescription()
            r6.hashCode()
            r3 = -1
            int r4 = r6.hashCode()
            switch(r4) {
                case -387072689: goto L40;
                case 79011241: goto L35;
                case 1951953708: goto L2a;
                default: goto L28;
            }
        L28:
            r2 = -1
            goto L49
        L2a:
            java.lang.String r2 = "BANNER"
            boolean r6 = r6.equals(r2)
            if (r6 != 0) goto L33
            goto L28
        L33:
            r2 = 2
            goto L49
        L35:
            java.lang.String r2 = "SMART"
            boolean r6 = r6.equals(r2)
            if (r6 != 0) goto L3e
            goto L28
        L3e:
            r2 = 1
            goto L49
        L40:
            java.lang.String r4 = "RECTANGLE"
            boolean r6 = r6.equals(r4)
            if (r6 != 0) goto L49
            goto L28
        L49:
            r6 = 50
            r3 = 320(0x140, float:4.48E-43)
            switch(r2) {
                case 0: goto L85;
                case 1: goto L5f;
                case 2: goto L51;
                default: goto L50;
            }
        L50:
            return r0
        L51:
            android.widget.FrameLayout$LayoutParams r0 = new android.widget.FrameLayout$LayoutParams
            int r2 = com.json.mediationsdk.AdapterUtils.dpToPixels(r1, r3)
            int r6 = com.json.mediationsdk.AdapterUtils.dpToPixels(r1, r6)
            r0.<init>(r2, r6)
            goto L96
        L5f:
            boolean r0 = com.json.mediationsdk.AdapterUtils.isLargeScreen(r1)
            if (r0 == 0) goto L77
            android.widget.FrameLayout$LayoutParams r0 = new android.widget.FrameLayout$LayoutParams
            r6 = 728(0x2d8, float:1.02E-42)
            int r6 = com.json.mediationsdk.AdapterUtils.dpToPixels(r1, r6)
            r2 = 90
            int r1 = com.json.mediationsdk.AdapterUtils.dpToPixels(r1, r2)
            r0.<init>(r6, r1)
            goto L96
        L77:
            android.widget.FrameLayout$LayoutParams r0 = new android.widget.FrameLayout$LayoutParams
            int r2 = com.json.mediationsdk.AdapterUtils.dpToPixels(r1, r3)
            int r6 = com.json.mediationsdk.AdapterUtils.dpToPixels(r1, r6)
            r0.<init>(r2, r6)
            goto L96
        L85:
            android.widget.FrameLayout$LayoutParams r0 = new android.widget.FrameLayout$LayoutParams
            r6 = 300(0x12c, float:4.2E-43)
            int r6 = com.json.mediationsdk.AdapterUtils.dpToPixels(r1, r6)
            r2 = 250(0xfa, float:3.5E-43)
            int r1 = com.json.mediationsdk.AdapterUtils.dpToPixels(r1, r2)
            r0.<init>(r6, r1)
        L96:
            r6 = 17
            r0.gravity = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.json.adapters.fyber.FyberAdapter.calculateLayoutParams(com.ironsource.mediationsdk.ISBannerSize):android.widget.FrameLayout$LayoutParams");
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.BannerAdapterInterface
    public void destroyBanner(JSONObject jSONObject) {
        final String strOptString = jSONObject.optString("adSpotId");
        IronLog.ADAPTER_API.verbose("spotId = " + strOptString);
        AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.fyber.FyberAdapter.7
            @Override // java.lang.Runnable
            public void run() {
                InneractiveAdSpot inneractiveAdSpot = (InneractiveAdSpot) FyberAdapter.this.mSpotIdToBannerAd.get(strOptString);
                if (inneractiveAdSpot != null) {
                    IronLog.ADAPTER_API.verbose("destroying previous ad with spotId " + strOptString);
                    inneractiveAdSpot.destroy();
                    FyberAdapter.this.mSpotIdToBannerAd.remove(strOptString);
                }
            }
        });
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.BannerAdapterInterface
    public Map<String, Object> getBannerBiddingData(JSONObject jSONObject, JSONObject jSONObject2) {
        return getBiddingData();
    }

    @Override // com.json.mediationsdk.AbstractAdapter
    public String getCoreSDKVersion() {
        return getAdapterSDKVersion();
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.InterstitialAdapterInterface
    public Map<String, Object> getInterstitialBiddingData(JSONObject jSONObject, JSONObject jSONObject2) {
        return getBiddingData();
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public Map<String, Object> getRewardedVideoBiddingData(JSONObject jSONObject, JSONObject jSONObject2) {
        return getBiddingData();
    }

    @Override // com.json.mediationsdk.AbstractAdapter
    public String getVersion() {
        return "4.3.28";
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void initAndLoadRewardedVideo(String str, String str2, JSONObject jSONObject, JSONObject jSONObject2, RewardedVideoSmashListener rewardedVideoSmashListener) {
        String strOptString = jSONObject.optString("appId");
        String strOptString2 = jSONObject.optString("adSpotId");
        if (TextUtils.isEmpty(strOptString)) {
            IronLog.INTERNAL.error("Missing param - appId");
            rewardedVideoSmashListener.onRewardedVideoAvailabilityChanged(false);
            return;
        }
        if (TextUtils.isEmpty(strOptString2)) {
            IronLog.INTERNAL.error("Missing param - adSpotId");
            rewardedVideoSmashListener.onRewardedVideoAvailabilityChanged(false);
            return;
        }
        IronLog.ADAPTER_API.verbose("spotId = " + strOptString2);
        this.mSpotIdToRewardedVideoSmashListener.put(strOptString2, rewardedVideoSmashListener);
        int i = AnonymousClass10.$SwitchMap$com$ironsource$adapters$fyber$FyberAdapter$InitState[mInitState.ordinal()];
        if (i == 1 || i == 2) {
            initSDK(strOptString, str2);
            return;
        }
        if (i == 3) {
            loadRewardedVideoInternal(strOptString2, null, rewardedVideoSmashListener);
            return;
        }
        if (i != 4) {
            return;
        }
        IronLog.INTERNAL.verbose("init failed - spotId = " + strOptString2);
        rewardedVideoSmashListener.onRewardedVideoAvailabilityChanged(false);
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.BannerAdapterInterface
    public void initBannerForBidding(String str, String str2, JSONObject jSONObject, BannerSmashListener bannerSmashListener) {
        initBanners(str, str2, jSONObject, bannerSmashListener);
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.BannerAdapterInterface
    public void initBanners(String str, String str2, JSONObject jSONObject, BannerSmashListener bannerSmashListener) {
        String strOptString = jSONObject.optString("appId");
        String strOptString2 = jSONObject.optString("adSpotId");
        if (TextUtils.isEmpty(strOptString)) {
            IronLog.INTERNAL.error("missing param - appId");
            bannerSmashListener.onBannerInitFailed(ErrorBuilder.buildInitFailedError("Missing param - appId", "Banner"));
            return;
        }
        if (TextUtils.isEmpty(strOptString2)) {
            IronLog.INTERNAL.error("missing param - adSpotId");
            bannerSmashListener.onBannerInitFailed(ErrorBuilder.buildInitFailedError("Missing params - adSpotId", "Banner"));
            return;
        }
        IronLog.ADAPTER_API.verbose("spotId = " + strOptString2);
        this.mSpotIdToBannerSmashListener.put(strOptString2, bannerSmashListener);
        int i = AnonymousClass10.$SwitchMap$com$ironsource$adapters$fyber$FyberAdapter$InitState[mInitState.ordinal()];
        if (i == 1 || i == 2) {
            initSDK(strOptString, str2);
            return;
        }
        if (i == 3) {
            bannerSmashListener.onBannerInitSuccess();
            return;
        }
        if (i != 4) {
            return;
        }
        IronLog.INTERNAL.verbose("init failed - spotId = " + strOptString2);
        bannerSmashListener.onBannerInitFailed(ErrorBuilder.buildInitFailedError("Fyber sdk init failed", "Banner"));
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void initInterstitial(String str, String str2, JSONObject jSONObject, InterstitialSmashListener interstitialSmashListener) {
        String strOptString = jSONObject.optString("appId");
        String strOptString2 = jSONObject.optString("adSpotId");
        if (TextUtils.isEmpty(strOptString)) {
            IronLog.INTERNAL.error("missing param - appId");
            interstitialSmashListener.onInterstitialInitFailed(ErrorBuilder.buildInitFailedError("Missing param - appId", "Interstitial"));
            return;
        }
        if (TextUtils.isEmpty(strOptString2)) {
            IronLog.INTERNAL.error("missing param - adSpotId");
            interstitialSmashListener.onInterstitialInitFailed(ErrorBuilder.buildInitFailedError("Missing params - adSpotId", "Interstitial"));
            return;
        }
        IronLog.ADAPTER_API.verbose("spotId = " + strOptString2);
        this.mSpotIdToInterstitialSmashListener.put(strOptString2, interstitialSmashListener);
        int i = AnonymousClass10.$SwitchMap$com$ironsource$adapters$fyber$FyberAdapter$InitState[mInitState.ordinal()];
        if (i == 1 || i == 2) {
            initSDK(strOptString, str2);
            return;
        }
        if (i == 3) {
            interstitialSmashListener.onInterstitialInitSuccess();
            return;
        }
        if (i != 4) {
            return;
        }
        IronLog.INTERNAL.verbose("init failed - spotId = " + strOptString2);
        interstitialSmashListener.onInterstitialInitFailed(ErrorBuilder.buildInitFailedError("Fyber sdk init failed", "Interstitial"));
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void initInterstitialForBidding(String str, String str2, JSONObject jSONObject, InterstitialSmashListener interstitialSmashListener) {
        initInterstitial(str, str2, jSONObject, interstitialSmashListener);
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void initRewardedVideoWithCallback(String str, String str2, JSONObject jSONObject, RewardedVideoSmashListener rewardedVideoSmashListener) {
        String strOptString = jSONObject.optString("appId");
        String strOptString2 = jSONObject.optString("adSpotId");
        if (TextUtils.isEmpty(strOptString)) {
            IronLog.INTERNAL.error("Missing param - appId");
            rewardedVideoSmashListener.onRewardedVideoInitFailed(ErrorBuilder.buildInitFailedError("Missing param - appId", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            return;
        }
        if (TextUtils.isEmpty(strOptString2)) {
            IronLog.INTERNAL.error("Missing param - adSpotId");
            rewardedVideoSmashListener.onRewardedVideoInitFailed(ErrorBuilder.buildInitFailedError("Missing params - adSpotId", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            return;
        }
        IronLog.ADAPTER_API.verbose("spotId = " + strOptString2);
        this.mSpotIdToRewardedVideoSmashListener.put(strOptString2, rewardedVideoSmashListener);
        this.mRewardedVideoSpotIdsForInitCallbacks.add(strOptString2);
        int i = AnonymousClass10.$SwitchMap$com$ironsource$adapters$fyber$FyberAdapter$InitState[mInitState.ordinal()];
        if (i == 1 || i == 2) {
            initSDK(strOptString, str2);
            return;
        }
        if (i == 3) {
            rewardedVideoSmashListener.onRewardedVideoInitSuccess();
            return;
        }
        if (i != 4) {
            return;
        }
        IronLog.INTERNAL.verbose("init failed - spotId = " + strOptString2);
        rewardedVideoSmashListener.onRewardedVideoInitFailed(ErrorBuilder.buildInitFailedError("Fyber sdk init failed", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.InterstitialAdapterInterface
    public boolean isInterstitialReady(JSONObject jSONObject) {
        String strOptString = jSONObject.optString("adSpotId");
        IronLog.ADAPTER_API.verbose("spotId = " + strOptString);
        return this.mInterstitialAdsAvailability.containsKey(strOptString) && this.mInterstitialAdsAvailability.get(strOptString).booleanValue();
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public boolean isRewardedVideoAvailable(JSONObject jSONObject) {
        String strOptString = jSONObject.optString("adSpotId");
        IronLog.ADAPTER_API.verbose("spotId = " + strOptString);
        return this.mRewardedVideoAdsAvailability.containsKey(strOptString) && this.mRewardedVideoAdsAvailability.get(strOptString).booleanValue();
    }

    @Override // com.json.mediationsdk.AbstractAdapter
    public boolean isUsingActivityBeforeImpression(IronSource.AD_UNIT ad_unit) {
        return false;
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.BannerAdapterInterface
    public void loadBanner(JSONObject jSONObject, JSONObject jSONObject2, IronSourceBannerLayout ironSourceBannerLayout, BannerSmashListener bannerSmashListener) {
        loadBannerInternal(jSONObject.optString("adSpotId"), ironSourceBannerLayout, bannerSmashListener, null);
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.BannerAdapterInterface
    public void loadBannerForBidding(JSONObject jSONObject, JSONObject jSONObject2, String str, IronSourceBannerLayout ironSourceBannerLayout, BannerSmashListener bannerSmashListener) {
        loadBannerInternal(jSONObject.optString("adSpotId"), ironSourceBannerLayout, bannerSmashListener, str);
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void loadInterstitial(JSONObject jSONObject, JSONObject jSONObject2, InterstitialSmashListener interstitialSmashListener) {
        loadInterstitialInternal(jSONObject.optString("adSpotId"), null, interstitialSmashListener);
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void loadInterstitialForBidding(JSONObject jSONObject, JSONObject jSONObject2, String str, InterstitialSmashListener interstitialSmashListener) {
        loadInterstitialInternal(jSONObject.optString("adSpotId"), str, interstitialSmashListener);
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void loadRewardedVideo(JSONObject jSONObject, JSONObject jSONObject2, RewardedVideoSmashListener rewardedVideoSmashListener) {
        loadRewardedVideoInternal(jSONObject.optString("adSpotId"), null, rewardedVideoSmashListener);
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void loadRewardedVideoForBidding(JSONObject jSONObject, JSONObject jSONObject2, String str, RewardedVideoSmashListener rewardedVideoSmashListener) {
        loadRewardedVideoInternal(jSONObject.optString("adSpotId"), str, rewardedVideoSmashListener);
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface, com.json.mediationsdk.sdk.AdUnitAdapterInterface
    public void onNetworkInitCallbackFailed(String str) {
        for (String str2 : this.mSpotIdToRewardedVideoSmashListener.keySet()) {
            RewardedVideoSmashListener rewardedVideoSmashListener = this.mSpotIdToRewardedVideoSmashListener.get(str2);
            if (this.mRewardedVideoSpotIdsForInitCallbacks.contains(str2)) {
                rewardedVideoSmashListener.onRewardedVideoInitFailed(ErrorBuilder.buildInitFailedError(str, IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            } else {
                rewardedVideoSmashListener.onRewardedVideoAvailabilityChanged(false);
            }
        }
        Iterator<InterstitialSmashListener> it = this.mSpotIdToInterstitialSmashListener.values().iterator();
        while (it.hasNext()) {
            it.next().onInterstitialInitFailed(ErrorBuilder.buildInitFailedError(str, "Interstitial"));
        }
        Iterator<BannerSmashListener> it2 = this.mSpotIdToBannerSmashListener.values().iterator();
        while (it2.hasNext()) {
            it2.next().onBannerInitFailed(ErrorBuilder.buildInitFailedError(str, "Banner"));
        }
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface, com.json.mediationsdk.sdk.AdUnitAdapterInterface
    public void onNetworkInitCallbackSuccess() {
        for (String str : this.mSpotIdToRewardedVideoSmashListener.keySet()) {
            RewardedVideoSmashListener rewardedVideoSmashListener = this.mSpotIdToRewardedVideoSmashListener.get(str);
            if (this.mRewardedVideoSpotIdsForInitCallbacks.contains(str)) {
                rewardedVideoSmashListener.onRewardedVideoInitSuccess();
            } else {
                loadRewardedVideoInternal(str, null, rewardedVideoSmashListener);
            }
        }
        Iterator<InterstitialSmashListener> it = this.mSpotIdToInterstitialSmashListener.values().iterator();
        while (it.hasNext()) {
            it.next().onInterstitialInitSuccess();
        }
        Iterator<BannerSmashListener> it2 = this.mSpotIdToBannerSmashListener.values().iterator();
        while (it2.hasNext()) {
            it2.next().onBannerInitSuccess();
        }
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.ReleaseMemoryAdapterInterface
    public void releaseMemory(IronSource.AD_UNIT ad_unit, JSONObject jSONObject) {
        if (ad_unit == IronSource.AD_UNIT.REWARDED_VIDEO) {
            Iterator<InneractiveAdSpot> it = this.mSpotIdToRewardedVideoAd.values().iterator();
            while (it.hasNext()) {
                it.next().destroy();
            }
            this.mSpotIdToRewardedVideoAd.clear();
            this.mSpotIdToRewardedVideoSmashListener.clear();
            this.mSpotIdToRewardedVideoFyberAdListener.clear();
            this.mRewardedVideoAdsAvailability.clear();
            this.mRewardedVideoSpotIdsForInitCallbacks.clear();
            return;
        }
        if (ad_unit == IronSource.AD_UNIT.INTERSTITIAL) {
            Iterator<InneractiveAdSpot> it2 = this.mSpotIdToInterstitialAd.values().iterator();
            while (it2.hasNext()) {
                it2.next().destroy();
            }
            this.mSpotIdToInterstitialAd.clear();
            this.mSpotIdToInterstitialSmashListener.clear();
            this.mSpotIdToInterstitialFyberAdListener.clear();
            this.mInterstitialAdsAvailability.clear();
            return;
        }
        if (ad_unit == IronSource.AD_UNIT.BANNER) {
            Iterator<InneractiveAdSpot> it3 = this.mSpotIdToBannerAd.values().iterator();
            while (it3.hasNext()) {
                it3.next().destroy();
            }
            this.mSpotIdToBannerAd.clear();
            this.mSpotIdToBannerLayout.clear();
            this.mSpotIdToBannerSmashListener.clear();
            this.mSpotIdToBannerFyberAdListener.clear();
        }
    }

    @Override // com.json.mediationsdk.AbstractAdapter
    protected void setConsent(final boolean z) {
        AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.fyber.FyberAdapter.8
            @Override // java.lang.Runnable
            public void run() {
                if (!FyberAdapter.mWasInitCalled.get()) {
                    Boolean unused = FyberAdapter.mConsent = Boolean.valueOf(z);
                    return;
                }
                IronLog.ADAPTER_API.verbose("setConsent - consent = " + z);
                InneractiveAdManager.setGdprConsent(z);
            }
        });
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
        if (MetaDataUtils.isValidMetaData(str, META_DATA_DT_IS_CHILD_KEY, valueForType)) {
            setIsChildValue(MetaDataUtils.getMetaDataBooleanValue(valueForType));
        } else if (MetaDataUtils.isValidMetaData(str, META_DATA_DT_COPPA_KEY, valueForType)) {
            setCOPPAValue(MetaDataUtils.getMetaDataBooleanValue(valueForType));
        }
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.InterstitialAdapterInterface
    public void showInterstitial(final JSONObject jSONObject, final InterstitialSmashListener interstitialSmashListener) {
        final String strOptString = jSONObject.optString("adSpotId");
        IronLog.ADAPTER_API.verbose("spotId = " + strOptString);
        AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.fyber.FyberAdapter.5
            @Override // java.lang.Runnable
            public void run() {
                InneractiveAdSpot inneractiveAdSpot = (InneractiveAdSpot) FyberAdapter.this.mSpotIdToInterstitialAd.get(strOptString);
                if (inneractiveAdSpot != null && FyberAdapter.this.isInterstitialReady(jSONObject) && inneractiveAdSpot.isReady()) {
                    InneractiveFullscreenUnitController inneractiveFullscreenUnitController = (InneractiveFullscreenUnitController) inneractiveAdSpot.getSelectedUnitController();
                    inneractiveFullscreenUnitController.setEventsListener((FyberInterstitialAdListener) FyberAdapter.this.mSpotIdToInterstitialFyberAdListener.get(strOptString));
                    inneractiveFullscreenUnitController.addContentController(new InneractiveFullscreenVideoContentController());
                    IronLog.ADAPTER_API.verbose("showInterstitial - show");
                    inneractiveFullscreenUnitController.show(ContextProvider.getInstance().getCurrentActiveActivity());
                } else {
                    interstitialSmashListener.onInterstitialAdShowFailed(ErrorBuilder.buildNoAdsToShowError("Interstitial"));
                }
                FyberAdapter.this.mInterstitialAdsAvailability.put(strOptString, Boolean.FALSE);
            }
        });
    }

    @Override // com.json.mediationsdk.AbstractAdapter, com.json.mediationsdk.sdk.RewardedVideoAdapterInterface
    public void showRewardedVideo(final JSONObject jSONObject, final RewardedVideoSmashListener rewardedVideoSmashListener) {
        final String strOptString = jSONObject.optString("adSpotId");
        IronLog.ADAPTER_API.verbose("spotId = " + strOptString);
        AbstractAdapter.postOnUIThread(new Runnable() { // from class: com.ironsource.adapters.fyber.FyberAdapter.3
            @Override // java.lang.Runnable
            public void run() {
                if (!TextUtils.isEmpty(FyberAdapter.this.getDynamicUserId())) {
                    IronLog.INTERNAL.verbose("setUserID to " + FyberAdapter.this.getDynamicUserId());
                    InneractiveAdManager.setUserId(FyberAdapter.this.getDynamicUserId());
                }
                InneractiveAdSpot inneractiveAdSpot = (InneractiveAdSpot) FyberAdapter.this.mSpotIdToRewardedVideoAd.get(strOptString);
                if (inneractiveAdSpot != null && FyberAdapter.this.isRewardedVideoAvailable(jSONObject) && inneractiveAdSpot.isReady()) {
                    InneractiveFullscreenUnitController inneractiveFullscreenUnitController = (InneractiveFullscreenUnitController) inneractiveAdSpot.getSelectedUnitController();
                    FyberRewardedVideoAdListener fyberRewardedVideoAdListener = (FyberRewardedVideoAdListener) FyberAdapter.this.mSpotIdToRewardedVideoFyberAdListener.get(strOptString);
                    inneractiveFullscreenUnitController.setRewardedListener(fyberRewardedVideoAdListener);
                    inneractiveFullscreenUnitController.setEventsListener(fyberRewardedVideoAdListener);
                    InneractiveFullscreenVideoContentController inneractiveFullscreenVideoContentController = new InneractiveFullscreenVideoContentController();
                    inneractiveFullscreenVideoContentController.setEventsListener(fyberRewardedVideoAdListener);
                    inneractiveFullscreenUnitController.addContentController(inneractiveFullscreenVideoContentController);
                    inneractiveFullscreenUnitController.show(ContextProvider.getInstance().getCurrentActiveActivity());
                } else {
                    rewardedVideoSmashListener.onRewardedVideoAdShowFailed(ErrorBuilder.buildNoAdsToShowError(IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
                }
                FyberAdapter.this.mRewardedVideoAdsAvailability.put(strOptString, Boolean.FALSE);
            }
        });
    }
}
