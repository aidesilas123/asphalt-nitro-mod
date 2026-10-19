package com.bytedance.sdk.openadsdk.api.banner;

import com.bytedance.sdk.openadsdk.api.PAGRequest;

/* JADX INFO: loaded from: classes2.dex */
public class PAGBannerRequest extends PAGRequest {
    private PAGBannerSize a;

    public PAGBannerRequest(PAGBannerSize pAGBannerSize) {
        this.a = pAGBannerSize;
    }

    public PAGBannerSize getAdSize() {
        return this.a;
    }

    public void setAdSize(PAGBannerSize pAGBannerSize) {
        this.a = pAGBannerSize;
    }
}
