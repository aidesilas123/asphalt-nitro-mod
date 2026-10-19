package com.bytedance.sdk.openadsdk.component.reward;

import android.content.Context;
import com.bytedance.sdk.openadsdk.TTClientBidding;

/* JADX INFO: compiled from: TTFullScreenVideoAdImpl.java */
/* JADX INFO: loaded from: classes2.dex */
class n implements TTClientBidding {
    private final f a;

    n(Context context, com.bytedance.sdk.openadsdk.core.model.a aVar) {
        this.a = new f(context, aVar);
    }

    public f a() {
        return this.a;
    }

    public void a(boolean z) {
        this.a.a(z);
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
