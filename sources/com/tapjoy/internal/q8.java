package com.tapjoy.internal;

import com.tapjoy.TJActionRequest;

/* JADX INFO: loaded from: classes4.dex */
public final class q8 implements TJActionRequest {
    public final /* synthetic */ String a;
    public final /* synthetic */ String b;

    public q8(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    @Override // com.tapjoy.TJActionRequest
    public final void cancelled() {
    }

    @Override // com.tapjoy.TJActionRequest
    public final void completed() {
    }

    @Override // com.tapjoy.TJActionRequest
    public final String getRequestId() {
        return this.a;
    }

    @Override // com.tapjoy.TJActionRequest
    public final String getToken() {
        return this.b;
    }
}
