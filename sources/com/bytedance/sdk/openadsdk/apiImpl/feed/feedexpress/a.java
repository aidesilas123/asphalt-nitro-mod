package com.bytedance.sdk.openadsdk.apiImpl.feed.feedexpress;

import android.content.Context;
import androidx.annotation.NonNull;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressVideoView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;

/* JADX INFO: compiled from: PAGFeedExpressVideoView.java */
/* JADX INFO: loaded from: classes2.dex */
public class a extends b {
    public a(@NonNull Context context, q qVar, AdSlot adSlot) {
        super(context, qVar, adSlot);
    }

    @Override // com.bytedance.sdk.openadsdk.apiImpl.feed.feedexpress.b
    protected void a() {
        NativeExpressVideoView nativeExpressVideoView = new NativeExpressVideoView(((b) this).h, this.b, ((b) this).i, this.k);
        this.j = nativeExpressVideoView;
        this.a.a(nativeExpressVideoView.getVideoController());
        c();
    }

    public com.bytedance.sdk.openadsdk.multipro.b.a b() {
        NativeExpressView nativeExpressView = this.j;
        if (nativeExpressView != null) {
            return ((NativeExpressVideoView) nativeExpressView).getVideoModel();
        }
        return null;
    }
}
