package com.bytedance.sdk.openadsdk.apiImpl.b;

import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAd;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAdLoadListener;
import com.bytedance.sdk.openadsdk.utils.aa;

/* JADX INFO: compiled from: PAGInterstitialAdListenerAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
public class a implements PAGInterstitialAdLoadListener {
    private final PAGInterstitialAdLoadListener a;

    public a(PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener) {
        this.a = pAGInterstitialAdLoadListener;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onAdLoaded(final PAGInterstitialAd pAGInterstitialAd) {
        if (this.a == null) {
            return;
        }
        aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.apiImpl.b.a.2
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.a != null) {
                    a.this.a.onAdLoaded(pAGInterstitialAd);
                }
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
        aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.apiImpl.b.a.1
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.a != null) {
                    a.this.a.onError(i, str);
                }
            }
        });
    }
}
