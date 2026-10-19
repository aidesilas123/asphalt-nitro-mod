package com.bytedance.sdk.openadsdk.apiImpl.d;

import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAd;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdLoadListener;
import com.bytedance.sdk.openadsdk.utils.aa;

/* JADX INFO: compiled from: PARewardedAdListenerAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
public class b implements PAGRewardedAdLoadListener {
    private final PAGRewardedAdLoadListener a;

    public b(PAGRewardedAdLoadListener pAGRewardedAdLoadListener) {
        this.a = pAGRewardedAdLoadListener;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onAdLoaded(final PAGRewardedAd pAGRewardedAd) {
        if (this.a == null) {
            return;
        }
        aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.apiImpl.d.b.2
            @Override // java.lang.Runnable
            public void run() {
                if (b.this.a != null) {
                    b.this.a.onAdLoaded(pAGRewardedAd);
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
        aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.apiImpl.d.b.1
            @Override // java.lang.Runnable
            public void run() {
                if (b.this.a != null) {
                    b.this.a.onError(i, str);
                }
            }
        });
    }
}
