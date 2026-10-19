package com.bytedance.sdk.openadsdk.apiImpl.a;

import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAd;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdLoadListener;
import com.bytedance.sdk.openadsdk.utils.aa;

/* JADX INFO: compiled from: PAGBannerAdListenerAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
public class a implements PAGBannerAdLoadListener {
    private final PAGBannerAdLoadListener a;

    public a(PAGBannerAdLoadListener pAGBannerAdLoadListener) {
        this.a = pAGBannerAdLoadListener;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onAdLoaded(final PAGBannerAd pAGBannerAd) {
        if (this.a == null) {
            return;
        }
        aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.apiImpl.a.a.2
            @Override // java.lang.Runnable
            public void run() {
                a.this.a.onAdLoaded(pAGBannerAd);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener, com.bytedance.sdk.openadsdk.common.b
    public void onError(final int i, final String str) {
        if (this.a == null) {
            return;
        }
        if (str == null) {
            str = "Unknown exception.";
        }
        aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.apiImpl.a.a.1
            @Override // java.lang.Runnable
            public void run() {
                a.this.a.onError(i, str);
            }
        });
    }
}
