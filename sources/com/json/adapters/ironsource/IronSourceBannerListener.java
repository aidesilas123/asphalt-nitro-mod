package com.json.adapters.ironsource;

import android.widget.FrameLayout;
import com.json.a6;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.sdk.BannerSmashListener;
import com.json.mediationsdk.utils.ErrorBuilder;
import com.json.s7;
import com.json.y5;
import com.json.z9;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
class IronSourceBannerListener implements z9 {
    private WeakReference<IronSourceAdapter> mAdapter;
    private final String mDemandSourceName;
    private final BannerSmashListener mListener;

    IronSourceBannerListener(IronSourceAdapter ironSourceAdapter, BannerSmashListener bannerSmashListener, String str) {
        this.mDemandSourceName = str;
        this.mListener = bannerSmashListener;
        this.mAdapter = new WeakReference<>(ironSourceAdapter);
    }

    @Override // com.json.z9
    public void onBannerClick() {
        IronLog.ADAPTER_CALLBACK.verbose(this.mDemandSourceName + " bannerListener");
        this.mListener.onBannerAdClicked();
    }

    @Override // com.json.z9
    public void onBannerInitFailed(String str) {
        IronLog.ADAPTER_CALLBACK.verbose(this.mDemandSourceName + " bannerListener");
    }

    @Override // com.json.z9
    public void onBannerInitSuccess() {
        IronLog.ADAPTER_CALLBACK.verbose(this.mDemandSourceName + " bannerListener");
    }

    @Override // com.json.z9
    public void onBannerLoadFail(String str) {
        IronLog.ADAPTER_CALLBACK.verbose(this.mDemandSourceName + " bannerListener");
        this.mListener.onBannerAdLoadFailed(ErrorBuilder.buildLoadFailedError("load failed - error = " + str));
    }

    @Override // com.json.z9
    public void onBannerLoadSuccess(s7 s7Var, a6 a6Var) {
        IronLog.ADAPTER_CALLBACK.verbose(this.mDemandSourceName + " bannerListener");
        if (this.mAdapter.get() != null) {
            if (a6Var == null) {
                this.mListener.onBannerAdLoadFailed(ErrorBuilder.adContainerIsNull(this.mAdapter.get().getProviderName()));
                return;
            }
            ConcurrentHashMap<String, ArrayList<s7>> concurrentHashMap = this.mAdapter.get().mDemandSourceToBnAd;
            if (concurrentHashMap.get(this.mDemandSourceName) == null) {
                concurrentHashMap.put(this.mDemandSourceName, new ArrayList<>());
            }
            concurrentHashMap.get(this.mDemandSourceName).add(s7Var);
            y5 size = a6Var.getSize();
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(size.c(), size.a());
            layoutParams.gravity = 17;
            this.mListener.onBannerAdLoaded(a6Var, layoutParams);
        }
    }

    @Override // com.json.z9
    public void onBannerShowSuccess() {
        IronLog.ADAPTER_CALLBACK.verbose(this.mDemandSourceName + " onBannerShowSuccess");
        BannerSmashListener bannerSmashListener = this.mListener;
        if (bannerSmashListener != null) {
            bannerSmashListener.onBannerAdShown();
        }
    }
}
