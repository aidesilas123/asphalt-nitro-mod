package com.bytedance.sdk.openadsdk.component.c;

import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAdInteractionListener;

/* JADX INFO: compiled from: PAGInterstitialAdWrapper.java */
/* JADX INFO: loaded from: classes2.dex */
public class a implements com.bytedance.sdk.openadsdk.apiImpl.b.b {
    private final PAGInterstitialAdInteractionListener a;

    public a(PAGInterstitialAdInteractionListener pAGInterstitialAdInteractionListener) {
        this.a = pAGInterstitialAdInteractionListener;
    }

    @Override // com.bytedance.sdk.openadsdk.apiImpl.b.b
    public void a() {
        PAGInterstitialAdInteractionListener pAGInterstitialAdInteractionListener = this.a;
        if (pAGInterstitialAdInteractionListener != null) {
            pAGInterstitialAdInteractionListener.onAdShowed();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.apiImpl.b.b
    public void b() {
        PAGInterstitialAdInteractionListener pAGInterstitialAdInteractionListener = this.a;
        if (pAGInterstitialAdInteractionListener != null) {
            pAGInterstitialAdInteractionListener.onAdClicked();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.apiImpl.b.b
    public void c() {
        PAGInterstitialAdInteractionListener pAGInterstitialAdInteractionListener = this.a;
        if (pAGInterstitialAdInteractionListener != null) {
            pAGInterstitialAdInteractionListener.onAdDismissed();
        }
    }
}
