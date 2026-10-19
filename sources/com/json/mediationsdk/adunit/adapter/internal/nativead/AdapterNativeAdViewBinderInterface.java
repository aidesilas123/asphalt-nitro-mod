package com.json.mediationsdk.adunit.adapter.internal.nativead;

import android.view.View;
import android.view.ViewGroup;
import com.json.mediationsdk.ads.nativead.LevelPlayMediaView;
import com.json.mediationsdk.ads.nativead.interfaces.NativeAdViewBinderInterface;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0012\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH&R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\n"}, d2 = {"Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinderInterface;", "Lcom/ironsource/mediationsdk/ads/nativead/interfaces/NativeAdViewBinderInterface;", "networkNativeAdView", "Landroid/view/ViewGroup;", "getNetworkNativeAdView", "()Landroid/view/ViewGroup;", "setNativeAdView", "", "nativeAdView", "Landroid/view/View;", "mediationsdk_release"}, mv = {1, 8, 0}, xi = 48)
public interface AdapterNativeAdViewBinderInterface extends NativeAdViewBinderInterface {
    ViewGroup getNetworkNativeAdView();

    @Override // com.json.mediationsdk.ads.nativead.interfaces.NativeAdViewBinderInterface
    /* synthetic */ void setAdvertiserView(View view);

    @Override // com.json.mediationsdk.ads.nativead.interfaces.NativeAdViewBinderInterface
    /* synthetic */ void setBodyView(View view);

    @Override // com.json.mediationsdk.ads.nativead.interfaces.NativeAdViewBinderInterface
    /* synthetic */ void setCallToActionView(View view);

    @Override // com.json.mediationsdk.ads.nativead.interfaces.NativeAdViewBinderInterface
    /* synthetic */ void setIconView(View view);

    @Override // com.json.mediationsdk.ads.nativead.interfaces.NativeAdViewBinderInterface
    /* synthetic */ void setMediaView(LevelPlayMediaView levelPlayMediaView);

    void setNativeAdView(View nativeAdView);

    @Override // com.json.mediationsdk.ads.nativead.interfaces.NativeAdViewBinderInterface
    /* synthetic */ void setTitleView(View view);
}
