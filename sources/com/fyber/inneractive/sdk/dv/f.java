package com.fyber.inneractive.sdk.dv;

import androidx.annotation.Nullable;
import com.fyber.inneractive.sdk.config.global.s;
import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.external.InneractiveErrorCode;

/* JADX INFO: loaded from: classes2.dex */
public class f extends com.fyber.inneractive.sdk.response.e {

    @Nullable
    public String J;

    @Override // com.fyber.inneractive.sdk.response.e
    @Nullable
    public InneractiveErrorCode a(InneractiveAdRequest inneractiveAdRequest) {
        if (this.J == null) {
            return InneractiveErrorCode.SERVER_INVALID_RESPONSE;
        }
        return null;
    }

    @Override // com.fyber.inneractive.sdk.response.e
    @Nullable
    public InneractiveErrorCode a(InneractiveAdRequest inneractiveAdRequest, s sVar) {
        if (this.J == null) {
            return InneractiveErrorCode.SERVER_INVALID_RESPONSE;
        }
        return null;
    }
}
