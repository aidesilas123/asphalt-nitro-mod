package com.json.adapters.custom.kidoz.utils;

import android.app.Activity;
import android.util.Log;
import android.widget.FrameLayout;
import com.json.adapters.custom.kidoz.KidozCustomBanner;
import com.json.hc;
import com.json.mediationsdk.adunit.adapter.listener.BannerAdListener;
import com.json.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import com.kidoz.sdk.api.ads.banner.BannerAdCallback;
import com.kidoz.sdk.api.ads.banner.KidozBannerView;
import com.kidoz.sdk.api.general.KidozError;
import com.kidoz.sdk.api.general.utils.ScreenUtils;

/* JADX INFO: loaded from: classes3.dex */
public class BannerLifecycleHandler implements BannerAdCallback {
    protected final String TAG = KidozCustomBanner.TAG;
    KidozBannerView bannerView;
    private Activity mActivity;
    private final BannerAdListener mIronSourceListener;

    public BannerLifecycleHandler(Activity activity, BannerAdListener bannerAdListener) {
        this.mIronSourceListener = bannerAdListener;
        this.mActivity = activity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: lambda$closeAd$1, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void a() {
        this.bannerView.hide();
        this.bannerView = null;
        this.mActivity = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: lambda$loadAd$0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void b() {
        KidozBannerView kidozBannerView = new KidozBannerView(this.mActivity);
        this.bannerView = kidozBannerView;
        kidozBannerView.setLayoutWithoutShowing();
        this.bannerView.setKidozBannerListener(this);
        this.bannerView.load();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: lambda$onAdLoaded$2, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void c() {
        this.bannerView.show();
    }

    private void runOnUiThread(Runnable runnable) {
        Activity activity = this.mActivity;
        if (activity != null) {
            activity.runOnUiThread(runnable);
        }
    }

    public void closeAd() {
        Log.d(this.TAG, "closeAd");
        runOnUiThread(new Runnable() { // from class: com.ironsource.adapters.custom.kidoz.utils.c
            @Override // java.lang.Runnable
            public final void run() {
                this.a.a();
            }
        });
    }

    public void loadAd() {
        Log.d(this.TAG, "loadAd");
        runOnUiThread(new Runnable() { // from class: com.ironsource.adapters.custom.kidoz.utils.a
            @Override // java.lang.Runnable
            public final void run() {
                this.a.b();
            }
        });
    }

    @Override // com.kidoz.sdk.api.ads.AdViewCallback
    public void onAdClosed() {
        Log.d(this.TAG, "Banner onAdClosed");
    }

    @Override // com.kidoz.sdk.api.ads.AdViewCallback
    public void onAdFailedToLoad(KidozError kidozError) {
        Log.d(this.TAG, "onAdFailedToLoad::" + kidozError.toString());
        this.mIronSourceListener.onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_NO_FILL, kidozError.getErrorCode(), kidozError.getMessage());
    }

    @Override // com.kidoz.sdk.api.ads.AdViewCallback
    public void onAdFailedToShow(KidozError kidozError) {
        Log.d(this.TAG, "onAdFailedToShow::" + kidozError.toString());
        this.mIronSourceListener.onAdLoadFailed(AdapterErrorType.ADAPTER_ERROR_TYPE_AD_EXPIRED, kidozError.getErrorCode(), kidozError.getMessage());
    }

    @Override // com.kidoz.sdk.api.ads.AdViewCallback
    public void onAdImpression() {
        Log.d(this.TAG, "onAdImpression");
        this.mIronSourceListener.onAdOpened();
    }

    @Override // com.kidoz.sdk.api.ads.AdViewCallback
    public void onAdLoaded() {
        Log.d(this.TAG, hc.j);
        runOnUiThread(new Runnable() { // from class: com.ironsource.adapters.custom.kidoz.utils.b
            @Override // java.lang.Runnable
            public final void run() {
                this.a.c();
            }
        });
    }

    @Override // com.kidoz.sdk.api.ads.AdViewCallback
    public void onAdShown() {
        Log.d(this.TAG, "onAdShown");
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) ScreenUtils.convertDpToPixel(320.0f), (int) ScreenUtils.convertDpToPixel(50.0f));
        layoutParams.gravity = 17;
        this.mIronSourceListener.onAdLoadSuccess(this.bannerView, layoutParams);
    }
}
