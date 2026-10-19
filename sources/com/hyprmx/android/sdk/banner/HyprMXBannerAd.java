package com.hyprmx.android.sdk.banner;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.json.o2;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001J\b\u0010\u0014\u001a\u00020\u0015H&J\b\u0010\u0016\u001a\u00020\u0015H&R\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\u0004\u0018\u00010\tX¦\u000e¢\u0006\f\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u0018\u0010\u000e\u001a\u00020\u000fX¦\u000e¢\u0006\f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u0017À\u0006\u0003"}, d2 = {"Lcom/hyprmx/android/sdk/banner/HyprMXBannerAd;", "", o2.h.O, "Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;", "getAdSize", "()Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;", "setAdSize", "(Lcom/hyprmx/android/sdk/banner/HyprMXBannerSize;)V", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;", "getListener", "()Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;", "setListener", "(Lcom/hyprmx/android/sdk/banner/HyprMXBannerListener;)V", "placementName", "", "getPlacementName", "()Ljava/lang/String;", "setPlacementName", "(Ljava/lang/String;)V", "destroy", "", "loadAd", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1}, xi = 48)
public interface HyprMXBannerAd {
    void destroy();

    HyprMXBannerSize getAdSize();

    HyprMXBannerListener getListener();

    String getPlacementName();

    void loadAd();

    void setAdSize(HyprMXBannerSize hyprMXBannerSize);

    void setListener(HyprMXBannerListener hyprMXBannerListener);

    void setPlacementName(String str);
}
