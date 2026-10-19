package com.bytedance.sdk.openadsdk.core.bannerexpress;

import android.view.View;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdInteractionListener;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener;

/* JADX INFO: compiled from: PAGBannerAdWrapper.java */
/* JADX INFO: loaded from: classes2.dex */
public class b implements PAGBannerAdWrapperListener {
    private final PAGBannerAdInteractionListener a;

    public b(PAGBannerAdInteractionListener pAGBannerAdInteractionListener) {
        this.a = pAGBannerAdInteractionListener;
    }

    @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener
    public void onAdClicked(View view, int i) {
        PAGBannerAdInteractionListener pAGBannerAdInteractionListener = this.a;
        if (pAGBannerAdInteractionListener != null) {
            pAGBannerAdInteractionListener.onAdClicked();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener
    public void onAdDismissed() {
        PAGBannerAdInteractionListener pAGBannerAdInteractionListener = this.a;
        if (pAGBannerAdInteractionListener != null) {
            pAGBannerAdInteractionListener.onAdDismissed();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener
    public void onAdShow(View view, int i) {
        PAGBannerAdInteractionListener pAGBannerAdInteractionListener = this.a;
        if (pAGBannerAdInteractionListener != null) {
            pAGBannerAdInteractionListener.onAdShowed();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener
    public void onRenderFail(View view, String str, int i) {
    }

    @Override // com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener
    public void onRenderSuccess(View view, float f2, float f3) {
    }
}
