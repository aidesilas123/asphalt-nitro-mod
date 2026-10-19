package com.bytedance.sdk.openadsdk.component;

import com.bytedance.sdk.openadsdk.api.open.PAGAppOpenAdInteractionListener;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: PAGAppOpenAdWrapper.java */
/* JADX INFO: loaded from: classes2.dex */
public class e implements com.bytedance.sdk.openadsdk.apiImpl.c.b {
    private final PAGAppOpenAdInteractionListener a;
    private final AtomicBoolean b = new AtomicBoolean(false);

    public e(PAGAppOpenAdInteractionListener pAGAppOpenAdInteractionListener) {
        this.a = pAGAppOpenAdInteractionListener;
    }

    @Override // com.bytedance.sdk.openadsdk.apiImpl.c.b
    public void a() {
        PAGAppOpenAdInteractionListener pAGAppOpenAdInteractionListener = this.a;
        if (pAGAppOpenAdInteractionListener != null) {
            pAGAppOpenAdInteractionListener.onAdShowed();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.apiImpl.c.b
    public void b() {
        PAGAppOpenAdInteractionListener pAGAppOpenAdInteractionListener = this.a;
        if (pAGAppOpenAdInteractionListener != null) {
            pAGAppOpenAdInteractionListener.onAdClicked();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.apiImpl.c.b
    public void c() {
        PAGAppOpenAdInteractionListener pAGAppOpenAdInteractionListener = this.a;
        if (pAGAppOpenAdInteractionListener != null) {
            pAGAppOpenAdInteractionListener.onAdDismissed();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.apiImpl.c.b
    public void d() {
        PAGAppOpenAdInteractionListener pAGAppOpenAdInteractionListener;
        if (this.b.getAndSet(true) || (pAGAppOpenAdInteractionListener = this.a) == null) {
            return;
        }
        pAGAppOpenAdInteractionListener.onAdDismissed();
    }
}
