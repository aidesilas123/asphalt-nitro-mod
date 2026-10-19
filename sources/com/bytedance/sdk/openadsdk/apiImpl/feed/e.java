package com.bytedance.sdk.openadsdk.apiImpl.feed;

import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdLoadListener;
import com.bytedance.sdk.openadsdk.utils.aa;

/* JADX INFO: compiled from: PAGNativeAdLoadListenerAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
public class e implements PAGNativeAdLoadListener {
    private final PAGNativeAdLoadListener a;

    public e(PAGNativeAdLoadListener pAGNativeAdLoadListener) {
        this.a = pAGNativeAdLoadListener;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onAdLoaded(final PAGNativeAd pAGNativeAd) {
        if (this.a == null) {
            return;
        }
        aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.apiImpl.feed.e.2
            @Override // java.lang.Runnable
            public void run() {
                e.this.a.onAdLoaded(pAGNativeAd);
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
        aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.apiImpl.feed.e.1
            @Override // java.lang.Runnable
            public void run() {
                e.this.a.onError(i, str);
            }
        });
    }
}
