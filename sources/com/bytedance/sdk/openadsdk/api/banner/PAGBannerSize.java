package com.bytedance.sdk.openadsdk.api.banner;

import com.gameloft.adsmanager.JavaUtils;

/* JADX INFO: loaded from: classes2.dex */
public final class PAGBannerSize {
    private final int a;
    private final int b;
    public static final PAGBannerSize BANNER_W_320_H_50 = new PAGBannerSize(JavaUtils.Constants.BANNER_WIDTH_DP, 50);
    public static final PAGBannerSize BANNER_W_300_H_250 = new PAGBannerSize(JavaUtils.Constants.NATIVE_HEIGHT_DP_300, 250);
    public static final PAGBannerSize BANNER_W_728_H_90 = new PAGBannerSize(JavaUtils.Constants.TABLET_WIDTH_DP, 90);

    public PAGBannerSize(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public int getHeight() {
        return this.b;
    }

    public int getWidth() {
        return this.a;
    }
}
