package com.json.adapters.hyprmx;

import androidx.annotation.NonNull;
import com.hyprmx.android.sdk.banner.HyprMXBannerListener;
import com.hyprmx.android.sdk.banner.HyprMXBannerView;
import com.hyprmx.android.sdk.core.HyprMXErrors;
import com.json.mediationsdk.IronSourceBannerLayout;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.logger.IronSourceError;
import com.json.mediationsdk.sdk.BannerSmashListener;
import com.json.mediationsdk.utils.ErrorBuilder;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class HyprMxBannerListener implements HyprMXBannerListener {
    private WeakReference<HyprMXAdapter> mAdapter;
    private BannerSmashListener mListener;
    private String mPropertyId;

    HyprMxBannerListener(HyprMXAdapter hyprMXAdapter, BannerSmashListener bannerSmashListener, String str) {
        this.mAdapter = new WeakReference<>(hyprMXAdapter);
        this.mListener = bannerSmashListener;
        this.mPropertyId = str;
    }

    @Override // com.hyprmx.android.sdk.banner.HyprMXBannerListener
    public void onAdClicked(@NonNull HyprMXBannerView hyprMXBannerView) {
        IronLog.ADAPTER_CALLBACK.verbose("propertyId = " + this.mPropertyId);
        BannerSmashListener bannerSmashListener = this.mListener;
        if (bannerSmashListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
        } else {
            bannerSmashListener.onBannerAdClicked();
        }
    }

    @Override // com.hyprmx.android.sdk.banner.HyprMXBannerListener
    public void onAdClosed(@NonNull HyprMXBannerView hyprMXBannerView) {
        IronLog.ADAPTER_CALLBACK.verbose("propertyId = " + this.mPropertyId);
        BannerSmashListener bannerSmashListener = this.mListener;
        if (bannerSmashListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
        } else {
            bannerSmashListener.onBannerAdScreenDismissed();
        }
    }

    @Override // com.hyprmx.android.sdk.banner.HyprMXBannerListener
    public void onAdFailedToLoad(@NonNull HyprMXBannerView hyprMXBannerView, @NonNull HyprMXErrors hyprMXErrors) {
        IronLog.ADAPTER_CALLBACK.verbose("propertyId = " + this.mPropertyId + ", error = " + hyprMXErrors);
        if (this.mListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
        } else {
            this.mListener.onBannerAdLoadFailed(hyprMXErrors == HyprMXErrors.NO_FILL ? new IronSourceError(606, hyprMXErrors.toString()) : ErrorBuilder.buildLoadFailedError(hyprMXErrors.toString()));
        }
    }

    @Override // com.hyprmx.android.sdk.banner.HyprMXBannerListener
    public void onAdLeftApplication(@NonNull HyprMXBannerView hyprMXBannerView) {
        IronLog.ADAPTER_CALLBACK.verbose("propertyId = " + this.mPropertyId);
        BannerSmashListener bannerSmashListener = this.mListener;
        if (bannerSmashListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
        } else {
            bannerSmashListener.onBannerAdLeftApplication();
        }
    }

    @Override // com.hyprmx.android.sdk.banner.HyprMXBannerListener
    public void onAdLoaded(@NonNull HyprMXBannerView hyprMXBannerView) {
        IronLog.ADAPTER_CALLBACK.verbose("propertyId = " + this.mPropertyId);
        if (this.mListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
            return;
        }
        WeakReference<HyprMXAdapter> weakReference = this.mAdapter;
        if (weakReference == null && weakReference.get() == null) {
            IronLog.INTERNAL.verbose("adapter is null");
            return;
        }
        IronSourceBannerLayout ironSourceBannerLayout = this.mAdapter.get().mPropertyIdToBannerLayout.get(this.mPropertyId);
        if (ironSourceBannerLayout == null || ironSourceBannerLayout.getSize() == null) {
            IronLog.INTERNAL.verbose("banner layout is null");
        } else {
            this.mListener.onBannerAdLoaded(hyprMXBannerView, this.mAdapter.get().getBannerLayoutParams(ironSourceBannerLayout.getSize()));
            this.mListener.onBannerAdShown();
        }
    }

    @Override // com.hyprmx.android.sdk.banner.HyprMXBannerListener
    public void onAdOpened(@NonNull HyprMXBannerView hyprMXBannerView) {
        IronLog.ADAPTER_CALLBACK.verbose("propertyId = " + this.mPropertyId);
        BannerSmashListener bannerSmashListener = this.mListener;
        if (bannerSmashListener == null) {
            IronLog.INTERNAL.verbose("listener is null");
        } else {
            bannerSmashListener.onBannerAdScreenPresented();
        }
    }
}
