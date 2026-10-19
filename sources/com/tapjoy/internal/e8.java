package com.tapjoy.internal;

import com.tapjoy.TJActionRequest;

/* JADX INFO: loaded from: classes4.dex */
public final class e8 implements TJActionRequest {
    public final /* synthetic */ String a;

    public e8(String str) {
        this.a = str;
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
        return null;
    }
}
