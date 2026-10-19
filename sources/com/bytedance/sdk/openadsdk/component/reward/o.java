package com.bytedance.sdk.openadsdk.component.reward;

import android.content.Context;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTClientBidding;

/* JADX INFO: compiled from: TTRewardVideoAdImpl.java */
/* JADX INFO: loaded from: classes2.dex */
class o implements TTClientBidding {
    private final h a;

    o(Context context, com.bytedance.sdk.openadsdk.core.model.a aVar, AdSlot adSlot) {
        this.a = new h(context, aVar, adSlot);
    }

    public h a() {
        return this.a;
    }

    public void b() {
        this.a.a();
    }

    @Override // com.bytedance.sdk.openadsdk.TTClientBidding
    public void loss(Double d2, String str, String str2) {
        this.a.loss(d2, str, str2);
    }

    @Override // com.bytedance.sdk.openadsdk.TTClientBidding
    public void win(Double d2) {
        this.a.win(d2);
    }
}
