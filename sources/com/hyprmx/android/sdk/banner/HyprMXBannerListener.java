package com.hyprmx.android.sdk.banner;

import com.hyprmx.android.sdk.core.HyprMXErrors;
import com.json.hc;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tH&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\rÀ\u0006\u0003"}, d2 = {"Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;", "", hc.f6149f, "", "ad", "Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;", hc.f6150g, "onAdFailedToLoad", "error", "Lcom/hyprmx/android/sdk/core/HyprMXErrors;", hc.k, hc.j, hc.c, "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1}, xi = 48)
public interface HyprMXBannerListener {
    void onAdClicked(HyprMXBannerView ad);

    void onAdClosed(HyprMXBannerView ad);

    void onAdFailedToLoad(HyprMXBannerView ad, HyprMXErrors error);

    void onAdLeftApplication(HyprMXBannerView ad);

    void onAdLoaded(HyprMXBannerView ad);

    void onAdOpened(HyprMXBannerView ad);
}
