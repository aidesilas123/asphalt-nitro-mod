package com.bytedance.sdk.openadsdk.apiImpl.c;

import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAd;
import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAdLoadListener;
import com.bytedance.sdk.openadsdk.utils.aa;

/* JADX INFO: compiled from: PAGAppOpenAdListenerAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
public class a implements PAGAppOpenAdLoadListener {
    private final PAGAppOpenAdLoadListener a;

    public a(PAGAppOpenAdLoadListener pAGAppOpenAdLoadListener) {
        this.a = pAGAppOpenAdLoadListener;
    }

    @Override // com.bytedance.sdk.openadsdk.api.PAGLoadListener
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onAdLoaded(final PAGAppOpenAd pAGAppOpenAd) {
        if (this.a == null) {
            return;
        }
        aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.apiImpl.c.a.2
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.a != null) {
                    a.this.a.onAdLoaded(pAGAppOpenAd);
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
        aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.apiImpl.c.a.1
            @Override // java.lang.Runnable
            public void run() {
                if (a.this.a != null) {
                    a.this.a.onError(i, str);
                }
            }
        });
    }
}
