package com.bytedance.sdk.openadsdk.apiImpl.feed;

import android.view.View;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAdInteractionListener;
import com.bytedance.sdk.openadsdk.utils.aa;

/* JADX INFO: compiled from: PAGNativeFeedAdWrapperListenerImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class g implements f {
    private final PAGNativeAdInteractionListener a;

    public g(PAGNativeAdInteractionListener pAGNativeAdInteractionListener) {
        this.a = pAGNativeAdInteractionListener;
    }

    @Override // com.bytedance.sdk.openadsdk.apiImpl.feed.f
    public void a() {
        aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.apiImpl.feed.g.4
            @Override // java.lang.Runnable
            public void run() {
                if (g.this.a != null) {
                    g.this.a.onAdDismissed();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.apiImpl.feed.f
    public void a(View view, PAGNativeAd pAGNativeAd) {
        aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.apiImpl.feed.g.1
            @Override // java.lang.Runnable
            public void run() {
                if (g.this.a != null) {
                    g.this.a.onAdClicked();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.apiImpl.feed.f
    public void a(PAGNativeAd pAGNativeAd) {
        aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.apiImpl.feed.g.3
            @Override // java.lang.Runnable
            public void run() {
                if (g.this.a != null) {
                    g.this.a.onAdShowed();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.apiImpl.feed.f
    public void b(View view, PAGNativeAd pAGNativeAd) {
        aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.apiImpl.feed.g.2
            @Override // java.lang.Runnable
            public void run() {
                if (g.this.a != null) {
                    g.this.a.onAdClicked();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.apiImpl.feed.f
    public boolean b() {
        return this.a != null;
    }
}
