package com.kidoz.sdk.api.platforms;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.Toast;
import com.json.hc;
import com.kidoz.sdk.api.KidozSDK;
import com.kidoz.sdk.api.PanelView;
import com.kidoz.sdk.api.ads.banner.BannerAdCallback;
import com.kidoz.sdk.api.ads.banner.KidozBannerView;
import com.kidoz.sdk.api.ads.fullscreen.KidozInterstitial;
import com.kidoz.sdk.api.ads.fullscreen.interstitial.InterstitialAd;
import com.kidoz.sdk.api.ads.fullscreen.interstitial.InterstitialAdCallback;
import com.kidoz.sdk.api.ads.fullscreen.rewarded.RewardedAd;
import com.kidoz.sdk.api.ads.fullscreen.rewarded.RewardedAdCallback;
import com.kidoz.sdk.api.general.KidozError;
import com.kidoz.sdk.api.general.utils.SDKLogger;
import com.kidoz.sdk.api.interfaces.SDKEventListener;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BasePlatformsBridge {
    private static final int BANNER_DEFAULT_GRAVITY = 80;
    private static final int BANNER_POSITION_BOTTOM = 1;
    private static final int BANNER_POSITION_BOTTOM_CENTER = 1;
    private static final int BANNER_POSITION_BOTTOM_LEFT = 4;
    private static final int BANNER_POSITION_BOTTOM_RIGHT = 5;
    private static final int BANNER_POSITION_TOP = 0;
    private static final int BANNER_POSITION_TOP_CENTER = 0;
    private static final int BANNER_POSITION_TOP_LEFT = 2;
    private static final int BANNER_POSITION_TOP_RIGHT = 3;
    public static final int FLEXI_VIEW_POSITION_BOTTOM_CENTER = 7;
    public static final int FLEXI_VIEW_POSITION_BOTTOM_END = 8;
    public static final int FLEXI_VIEW_POSITION_BOTTOM_START = 6;
    public static final int FLEXI_VIEW_POSITION_MID_CENTER = 4;
    public static final int FLEXI_VIEW_POSITION_MID_END = 5;
    public static final int FLEXI_VIEW_POSITION_MID_START = 3;
    public static final int FLEXI_VIEW_POSITION_TOP_CENTER = 1;
    public static final int FLEXI_VIEW_POSITION_TOP_END = 2;
    public static final int FLEXI_VIEW_POSITION_TOP_START = 0;
    public static final int HANDLE_POSITION_CENTER = 1;
    public static final int HANDLE_POSITION_END = 2;
    public static final int HANDLE_POSITION_NONE = 3;
    public static final int HANDLE_POSITION_START = 0;
    protected static final String KIDOZ_ERROR_ACTIVITY_REQUIRED = "Kidoz requires an Activity context in order to function properly.";
    public static final int PANEL_TYPE_BOTTOM = 0;
    public static final int PANEL_TYPE_LEFT = 2;
    public static final int PANEL_TYPE_RIGHT = 3;
    public static final int PANEL_TYPE_TOP = 1;
    private static final String TAG = "BasePlatformsBridge";
    private boolean isContainerAdded = false;
    protected Activity mActivity;
    private KidozBannerView mBannerView;
    private FrameLayout mContainer;
    private InterstitialAd mInterstitialAd;
    private KidozInterstitial.AD_TYPE mInterstitialAdType;
    private PanelView mPanelView;
    private RewardedAd mRewardedAd;

    public BasePlatformsBridge(Context context) {
        if (!(context instanceof Activity)) {
            SDKLogger.printErrorLog(KIDOZ_ERROR_ACTIVITY_REQUIRED);
            return;
        }
        this.mActivity = (Activity) context;
        this.mContainer = new FrameLayout(this.mActivity);
        KidozSDK.setSDKListener(new SDKEventListener() { // from class: com.kidoz.sdk.api.platforms.BasePlatformsBridge.1
            @Override // com.kidoz.sdk.api.interfaces.SDKEventListener
            public void onInitError(String str) {
                BasePlatformsBridge.this.onSDKInitError(str);
            }

            @Override // com.kidoz.sdk.api.interfaces.SDKEventListener
            public void onInitSuccess() {
                BasePlatformsBridge.this.onSDKInitSuccess();
            }
        });
    }

    private void addContainerIfNeeded() {
        this.mActivity.runOnUiThread(new Runnable() { // from class: com.kidoz.sdk.api.platforms.BasePlatformsBridge.2
            @Override // java.lang.Runnable
            public void run() {
                if (BasePlatformsBridge.this.isContainerAdded) {
                    return;
                }
                BasePlatformsBridge basePlatformsBridge = BasePlatformsBridge.this;
                basePlatformsBridge.mActivity.addContentView(basePlatformsBridge.mContainer, new ViewGroup.LayoutParams(-1, -1));
                BasePlatformsBridge.this.isContainerAdded = true;
                BasePlatformsBridge.this.mContainer.bringToFront();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public KidozBannerView.Position bannerPositionConverter(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? KidozBannerView.Position.BOTTOM_CENTER : KidozBannerView.Position.BOTTOM_RIGHT : KidozBannerView.Position.BOTTOM_LEFT : KidozBannerView.Position.TOP_RIGHT : KidozBannerView.Position.TOP_LEFT : KidozBannerView.Position.BOTTOM_CENTER : KidozBannerView.Position.TOP_CENTER;
    }

    private void defineAdType(int i) {
        this.mInterstitialAdType = KidozInterstitial.AD_TYPE.INTERSTITIAL;
        try {
            if (KidozInterstitial.AD_TYPE.values().length > i) {
                this.mInterstitialAdType = KidozInterstitial.AD_TYPE.values()[i];
            }
        } catch (Exception unused) {
        }
    }

    private int getGravityForPosition(int i) {
        if (i == 0) {
            return 48;
        }
        if (i == 2) {
            return 51;
        }
        if (i == 3) {
            return 53;
        }
        if (i != 4) {
            return i != 5 ? 80 : 85;
        }
        return 83;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isChildViewExistsInContainer(View view) {
        FrameLayout frameLayout = this.mContainer;
        if (frameLayout == null || frameLayout.getChildCount() <= 0) {
            return false;
        }
        for (int i = 0; i < this.mContainer.getChildCount(); i++) {
            if (this.mContainer.getChildAt(i) == view) {
                return true;
            }
        }
        return false;
    }

    public boolean getIsInterstitialLoaded() {
        InterstitialAd interstitialAd = this.mInterstitialAd;
        return interstitialAd != null && interstitialAd.isLoaded();
    }

    public boolean getIsRewardedLoaded() {
        RewardedAd rewardedAd = this.mRewardedAd;
        return rewardedAd != null && rewardedAd.isLoaded();
    }

    public void hideBannerAd() {
        SDKLogger.printDebugLog(TAG, "BasePlatformBridge | hideBannerAd()");
        this.mActivity.runOnUiThread(new Runnable() { // from class: com.kidoz.sdk.api.platforms.BasePlatformsBridge.8
            @Override // java.lang.Runnable
            public void run() {
                if (BasePlatformsBridge.this.mBannerView != null) {
                    SDKLogger.printDebugLog(BasePlatformsBridge.TAG, "BasePlatformBridge | hideBannerAd() | hiding..");
                    BasePlatformsBridge.this.mBannerView.hide();
                    BasePlatformsBridge basePlatformsBridge = BasePlatformsBridge.this;
                    if (basePlatformsBridge.isChildViewExistsInContainer(basePlatformsBridge.mBannerView)) {
                        BasePlatformsBridge.this.mContainer.removeView(BasePlatformsBridge.this.mBannerView);
                    }
                    BasePlatformsBridge.this.mBannerView = null;
                }
            }
        });
    }

    protected abstract boolean isInitialised();

    public void loadBannerAd(final boolean z, final int i) {
        addContainerIfNeeded();
        this.mActivity.runOnUiThread(new Runnable() { // from class: com.kidoz.sdk.api.platforms.BasePlatformsBridge.6
            @Override // java.lang.Runnable
            public void run() {
                if (BasePlatformsBridge.this.mBannerView == null) {
                    BasePlatformsBridge.this.mBannerView = new KidozBannerView(BasePlatformsBridge.this.mActivity);
                    BasePlatformsBridge.this.mBannerView.setLayoutWithoutShowing();
                    BasePlatformsBridge.this.mBannerView.setKidozBannerListener(new BannerAdCallback() { // from class: com.kidoz.sdk.api.platforms.BasePlatformsBridge.6.1
                        @Override // com.kidoz.sdk.api.ads.AdViewCallback
                        public void onAdClosed() {
                            BasePlatformsBridge.this.onBannerClosed();
                        }

                        @Override // com.kidoz.sdk.api.ads.AdViewCallback
                        public void onAdFailedToLoad(KidozError kidozError) {
                            BasePlatformsBridge.this.onBannerFailedToLoad(kidozError);
                        }

                        @Override // com.kidoz.sdk.api.ads.AdViewCallback
                        public void onAdFailedToShow(KidozError kidozError) {
                            BasePlatformsBridge.this.onBannerFailedToShow(kidozError);
                        }

                        @Override // com.kidoz.sdk.api.ads.AdViewCallback
                        public void onAdImpression() {
                            BasePlatformsBridge.this.onBannerImpression();
                        }

                        @Override // com.kidoz.sdk.api.ads.AdViewCallback
                        public void onAdLoaded() {
                            BasePlatformsBridge.this.onBannerLoaded();
                            AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                            if (z) {
                                BasePlatformsBridge.this.showBannerAd();
                            }
                        }

                        @Override // com.kidoz.sdk.api.ads.AdViewCallback
                        public void onAdShown() {
                            BasePlatformsBridge.this.onBannerShown();
                        }
                    });
                }
                BasePlatformsBridge.this.mBannerView.setBannerPosition(BasePlatformsBridge.this.bannerPositionConverter(i));
                BasePlatformsBridge.this.mBannerView.load();
            }
        });
    }

    public void loadInterstitialAd(final boolean z) {
        this.mActivity.runOnUiThread(new Runnable() { // from class: com.kidoz.sdk.api.platforms.BasePlatformsBridge.3
            @Override // java.lang.Runnable
            public void run() {
                InterstitialAd.load(BasePlatformsBridge.this.mActivity, new InterstitialAdCallback() { // from class: com.kidoz.sdk.api.platforms.BasePlatformsBridge.3.1
                    @Override // com.kidoz.sdk.api.ads.AdCallback
                    public void onAdClosed(InterstitialAd interstitialAd) {
                        Log.d(BasePlatformsBridge.TAG, hc.f6150g);
                        BasePlatformsBridge.this.onInterstitialClosed();
                    }

                    @Override // com.kidoz.sdk.api.ads.AdCallback
                    public void onAdFailedToLoad(KidozError kidozError) {
                        Log.e(BasePlatformsBridge.TAG, "onAdFailedToLoad::" + kidozError.toString());
                        BasePlatformsBridge.this.onInterstitialFailedToLoad(kidozError);
                    }

                    @Override // com.kidoz.sdk.api.ads.AdCallback
                    public void onAdFailedToShow(KidozError kidozError) {
                        Log.e(BasePlatformsBridge.TAG, "onAdFailedToShow::" + kidozError.toString());
                        BasePlatformsBridge.this.onInterstitialFailedToShow(kidozError);
                    }

                    @Override // com.kidoz.sdk.api.ads.AdCallback
                    public void onAdImpression() {
                        Log.d(BasePlatformsBridge.TAG, "onAdImpression");
                        BasePlatformsBridge.this.onInterstitialImpression();
                    }

                    @Override // com.kidoz.sdk.api.ads.AdCallback
                    public void onAdLoaded(InterstitialAd interstitialAd) {
                        Log.d(BasePlatformsBridge.TAG, "onAdShown");
                        BasePlatformsBridge.this.mInterstitialAd = interstitialAd;
                        BasePlatformsBridge.this.onInterstitialLoaded();
                        AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                        if (z) {
                            BasePlatformsBridge.this.showInterstitial();
                        }
                    }

                    @Override // com.kidoz.sdk.api.ads.AdCallback
                    public void onAdShown(InterstitialAd interstitialAd) {
                        Log.d(BasePlatformsBridge.TAG, "onAdShown");
                        BasePlatformsBridge.this.onInterstitialShown();
                    }
                });
            }
        });
    }

    public void loadRewardedAd(final boolean z) {
        this.mActivity.runOnUiThread(new Runnable() { // from class: com.kidoz.sdk.api.platforms.BasePlatformsBridge.4
            @Override // java.lang.Runnable
            public void run() {
                RewardedAd.load(BasePlatformsBridge.this.mActivity, new RewardedAdCallback() { // from class: com.kidoz.sdk.api.platforms.BasePlatformsBridge.4.1
                    @Override // com.kidoz.sdk.api.ads.AdCallback
                    public void onAdClosed(RewardedAd rewardedAd) {
                        BasePlatformsBridge.this.onRewardedClosed();
                    }

                    @Override // com.kidoz.sdk.api.ads.AdCallback
                    public void onAdFailedToLoad(KidozError kidozError) {
                        Log.e(BasePlatformsBridge.TAG, "onAdFailedToLoad::" + kidozError.toString());
                        BasePlatformsBridge.this.onRewardedFailedToLoad(kidozError);
                    }

                    @Override // com.kidoz.sdk.api.ads.AdCallback
                    public void onAdFailedToShow(KidozError kidozError) {
                        Log.e(BasePlatformsBridge.TAG, "onAdFailedToShow::" + kidozError.toString());
                        BasePlatformsBridge.this.onRewardedFailedToShow(kidozError);
                    }

                    @Override // com.kidoz.sdk.api.ads.AdCallback
                    public void onAdImpression() {
                        Log.d(BasePlatformsBridge.TAG, "onAdImpression");
                        BasePlatformsBridge.this.onRewardedImpression();
                    }

                    @Override // com.kidoz.sdk.api.ads.AdCallback
                    public void onAdLoaded(RewardedAd rewardedAd) {
                        Log.d(BasePlatformsBridge.TAG, hc.j);
                        BasePlatformsBridge.this.mRewardedAd = rewardedAd;
                        BasePlatformsBridge.this.onRewardedLoaded();
                        AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                        if (z) {
                            BasePlatformsBridge.this.showRewarded();
                        }
                    }

                    @Override // com.kidoz.sdk.api.ads.AdCallback
                    public void onAdShown(RewardedAd rewardedAd) {
                        Log.d(BasePlatformsBridge.TAG, "onAdShown");
                        BasePlatformsBridge.this.onRewardedShown();
                    }

                    @Override // com.kidoz.sdk.api.ui_views.interstitial.BaseInterstitial.IOnInterstitialRewardedEventListener
                    public void onRewardReceived() {
                        BasePlatformsBridge.this.onRewarded();
                    }
                });
            }
        });
    }

    public abstract void onBannerClosed();

    public abstract void onBannerFailedToLoad(KidozError kidozError);

    public abstract void onBannerFailedToShow(KidozError kidozError);

    public abstract void onBannerImpression();

    public abstract void onBannerLoaded();

    public abstract void onBannerShown();

    public abstract void onInterstitialClosed();

    public abstract void onInterstitialFailedToLoad(KidozError kidozError);

    public abstract void onInterstitialFailedToShow(KidozError kidozError);

    public abstract void onInterstitialImpression();

    public abstract void onInterstitialLoaded();

    public abstract void onInterstitialShown();

    public abstract void onRewarded();

    public abstract void onRewardedClosed();

    public abstract void onRewardedFailedToLoad(KidozError kidozError);

    public abstract void onRewardedFailedToShow(KidozError kidozError);

    public abstract void onRewardedImpression();

    public abstract void onRewardedLoaded();

    public abstract void onRewardedShown();

    protected abstract void onSDKInitError(String str);

    protected abstract void onSDKInitSuccess();

    public void printToastLog(final String str) {
        this.mActivity.runOnUiThread(new Runnable() { // from class: com.kidoz.sdk.api.platforms.BasePlatformsBridge.9
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(BasePlatformsBridge.this.mActivity, str, 0).show();
            }
        });
    }

    public void setBannerPosition(final int i) {
        this.mActivity.runOnUiThread(new Runnable() { // from class: com.kidoz.sdk.api.platforms.BasePlatformsBridge.5
            @Override // java.lang.Runnable
            public void run() {
                if (BasePlatformsBridge.this.mBannerView != null) {
                    BasePlatformsBridge.this.mBannerView.setBannerPosition(BasePlatformsBridge.this.bannerPositionConverter(i));
                }
            }
        });
    }

    public void showBannerAd() {
        SDKLogger.printDebugLog(TAG, "BasePlatformBridge | showBannerAd()");
        this.mActivity.runOnUiThread(new Runnable() { // from class: com.kidoz.sdk.api.platforms.BasePlatformsBridge.7
            @Override // java.lang.Runnable
            public void run() {
                try {
                    BasePlatformsBridge basePlatformsBridge = BasePlatformsBridge.this;
                    if (!basePlatformsBridge.isChildViewExistsInContainer(basePlatformsBridge.mBannerView)) {
                        BasePlatformsBridge.this.mContainer.addView(BasePlatformsBridge.this.mBannerView, new FrameLayout.LayoutParams(-1, -2));
                        BasePlatformsBridge.this.mBannerView.bringToFront();
                    }
                    if (BasePlatformsBridge.this.mBannerView != null) {
                        BasePlatformsBridge.this.mBannerView.bringToFront();
                        SDKLogger.printDebugLog(BasePlatformsBridge.TAG, "BasePlatformBridge | showBannerAd() | showing..");
                        BasePlatformsBridge.this.mBannerView.show();
                    }
                } catch (Throwable th) {
                    SDKLogger.printErrorLog(BasePlatformsBridge.TAG, "Failed to show banner " + th.getMessage());
                }
            }
        });
    }

    public void showInterstitial() {
        if (getIsInterstitialLoaded()) {
            this.mInterstitialAd.show();
        }
    }

    public void showRewarded() {
        if (getIsRewardedLoaded()) {
            this.mRewardedAd.show();
        }
    }
}
