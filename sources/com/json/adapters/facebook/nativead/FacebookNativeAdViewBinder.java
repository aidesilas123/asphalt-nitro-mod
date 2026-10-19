package com.json.adapters.facebook.nativead;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdLayout;
import com.json.mediationsdk.ads.nativead.LevelPlayMediaView;
import com.json.mediationsdk.ads.nativead.internal.NativeAdViewHolder;
import com.json.mediationsdk.adunit.adapter.internal.nativead.AdapterNativeAdViewBinder;
import com.json.mediationsdk.adunit.adapter.utility.AdOptionsPosition;
import com.json.mediationsdk.logger.IronLog;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class FacebookNativeAdViewBinder extends AdapterNativeAdViewBinder {
    private final AdOptionsPosition mAdOptionsPosition;
    private final NativeAd mNativeAd;
    private NativeAdLayout mNativeAdLayout;

    /* JADX INFO: renamed from: com.ironsource.adapters.facebook.nativead.FacebookNativeAdViewBinder$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$ironsource$mediationsdk$adunit$adapter$utility$AdOptionsPosition;

        static {
            int[] iArr = new int[AdOptionsPosition.values().length];
            $SwitchMap$com$ironsource$mediationsdk$adunit$adapter$utility$AdOptionsPosition = iArr;
            try {
                iArr[AdOptionsPosition.TOP_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$ironsource$mediationsdk$adunit$adapter$utility$AdOptionsPosition[AdOptionsPosition.TOP_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$ironsource$mediationsdk$adunit$adapter$utility$AdOptionsPosition[AdOptionsPosition.BOTTOM_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public FacebookNativeAdViewBinder(NativeAd nativeAd, AdOptionsPosition adOptionsPosition) {
        this.mNativeAd = nativeAd;
        this.mAdOptionsPosition = adOptionsPosition;
    }

    private FrameLayout.LayoutParams getAdOptionsLayoutParams() {
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        int i = AnonymousClass1.$SwitchMap$com$ironsource$mediationsdk$adunit$adapter$utility$AdOptionsPosition[this.mAdOptionsPosition.ordinal()];
        if (i == 1) {
            layoutParams.gravity = 51;
        } else if (i == 2) {
            layoutParams.gravity = 53;
        } else if (i != 3) {
            layoutParams.gravity = 85;
        } else {
            layoutParams.gravity = 83;
        }
        return layoutParams;
    }

    @Override // com.json.mediationsdk.adunit.adapter.internal.nativead.AdapterNativeAdViewBinder, com.json.mediationsdk.adunit.adapter.internal.nativead.AdapterNativeAdViewBinderInterface
    public ViewGroup getNetworkNativeAdView() {
        return this.mNativeAdLayout;
    }

    @Override // com.json.mediationsdk.adunit.adapter.internal.nativead.AdapterNativeAdViewBinder, com.json.mediationsdk.adunit.adapter.internal.nativead.AdapterNativeAdViewBinderInterface
    public void setNativeAdView(View view) {
        if (view == null) {
            IronLog.INTERNAL.error("nativeAdView is null");
            return;
        }
        Context context = view.getContext();
        this.mNativeAdLayout = new NativeAdLayout(context);
        ArrayList arrayList = new ArrayList();
        NativeAdViewHolder nativeAdViewHolder = getNativeAdViewHolder();
        arrayList.add(nativeAdViewHolder.getTitleView());
        arrayList.add(nativeAdViewHolder.getAdvertiserView());
        arrayList.add(nativeAdViewHolder.getIconView());
        arrayList.add(nativeAdViewHolder.getBodyView());
        LevelPlayMediaView mediaView = nativeAdViewHolder.getMediaView();
        MediaView mediaView2 = new MediaView(context);
        if (mediaView != null) {
            mediaView.addView(mediaView2);
        }
        arrayList.add(nativeAdViewHolder.getCallToActionView());
        this.mNativeAdLayout.addView(view);
        arrayList.add(view);
        this.mNativeAdLayout.addView(new AdOptionsView(context, this.mNativeAd, this.mNativeAdLayout), getAdOptionsLayoutParams());
        this.mNativeAd.registerViewForInteraction(view, mediaView2, arrayList);
    }
}
