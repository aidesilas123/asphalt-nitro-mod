package com.bytedance.sdk.openadsdk.core.bannerexpress;

import android.content.Context;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.core.model.q;

/* JADX INFO: compiled from: PAGBannerVideoAdImpl.java */
/* JADX INFO: loaded from: classes2.dex */
public class c extends a {
    public c(Context context, q qVar, AdSlot adSlot) {
        super(context, qVar, adSlot);
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.a
    public void a(Context context, q qVar, AdSlot adSlot) {
        BannerExpressVideoView bannerExpressVideoView = new BannerExpressVideoView(context, qVar, adSlot);
        this.a = bannerExpressVideoView;
        bannerExpressVideoView.addOnAttachStateChangeListener(this.f1482f);
    }

    public com.bytedance.sdk.openadsdk.multipro.b.a c() {
        BannerExpressView bannerExpressView = this.a;
        if (bannerExpressView != null) {
            return ((BannerExpressVideoView) bannerExpressView).getVideoModel();
        }
        return null;
    }
}
