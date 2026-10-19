package com.json.adapters.custom.kidoz;

import android.app.Activity;
import android.util.Log;
import com.json.adapters.custom.kidoz.utils.BannerLifecycleHandler;
import com.json.mediationsdk.ISBannerSize;
import com.json.mediationsdk.adunit.adapter.BaseBanner;
import com.json.mediationsdk.adunit.adapter.listener.BannerAdListener;
import com.json.mediationsdk.adunit.adapter.utility.AdData;
import com.json.mediationsdk.model.NetworkSettings;

/* JADX INFO: loaded from: classes3.dex */
public class KidozCustomBanner extends BaseBanner<KidozCustomAdapter> {
    public static final String TAG = "KidozCustomBanner";
    BannerLifecycleHandler bannerLifecycleHandler;

    public KidozCustomBanner(NetworkSettings networkSettings) {
        super(networkSettings);
        Log.d(TAG, "constructor");
    }

    @Override // com.json.mediationsdk.adunit.adapter.BaseBanner, com.json.mediationsdk.adunit.adapter.internal.AdapterBannerInterface
    public void destroyAd(AdData adData) {
        this.bannerLifecycleHandler.closeAd();
    }

    @Override // com.json.mediationsdk.adunit.adapter.BaseBanner, com.json.mediationsdk.adunit.adapter.internal.AdapterBannerInterface
    public void loadAd(AdData adData, Activity activity, ISBannerSize iSBannerSize, BannerAdListener bannerAdListener) {
        Log.d(TAG, "loadAd");
        BannerLifecycleHandler bannerLifecycleHandler = new BannerLifecycleHandler(activity, bannerAdListener);
        this.bannerLifecycleHandler = bannerLifecycleHandler;
        bannerLifecycleHandler.loadAd();
    }
}
