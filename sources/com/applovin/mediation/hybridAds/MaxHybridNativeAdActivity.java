package com.applovin.mediation.hybridAds;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.applovin.impl.mediation.a.b;
import com.applovin.impl.mediation.a.c;
import com.applovin.impl.sdk.e.ab;
import com.applovin.impl.sdk.e.q;
import com.applovin.impl.sdk.n;
import com.applovin.mediation.adapter.listeners.MaxAdapterListener;
import com.applovin.mediation.nativeAds.MaxNativeAd;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.applovin.mediation.nativeAds.MaxNativeAdViewBinder;
import com.applovin.sdk.R;

/* JADX INFO: loaded from: classes.dex */
public class MaxHybridNativeAdActivity extends b {
    private MaxNativeAdView nativeAdView;

    public void a(c cVar, final MaxNativeAd maxNativeAd, n nVar, MaxAdapterListener maxAdapterListener) {
        super.a(cVar, nVar, maxAdapterListener);
        MaxNativeAdView maxNativeAdView = new MaxNativeAdView(maxNativeAd, new MaxNativeAdViewBinder.Builder(R.layout.max_hybrid_native_ad_view).setTitleTextViewId(R.id.applovin_native_title_text_view).setBodyTextViewId(R.id.applovin_native_body_text_view).setAdvertiserTextViewId(R.id.applovin_native_advertiser_text_view).setIconImageViewId(R.id.applovin_native_icon_image_view).setMediaContentViewGroupId(R.id.applovin_native_media_content_view).setOptionsContentViewGroupId(R.id.applovin_native_options_view).setCallToActionButtonId(R.id.applovin_native_cta_button).build(), this);
        this.nativeAdView = maxNativeAdView;
        maxNativeAdView.renderCustomNativeAdView(maxNativeAd);
        Runnable runnable = new Runnable() { // from class: com.applovin.mediation.hybridAds.MaxHybridNativeAdActivity.1
            @Override // java.lang.Runnable
            public void run() {
                if (maxNativeAd.prepareForInteraction(MaxHybridNativeAdActivity.this.nativeAdView.getClickableViews(), MaxHybridNativeAdActivity.this.nativeAdView)) {
                    return;
                }
                maxNativeAd.prepareViewForInteraction(MaxHybridNativeAdActivity.this.nativeAdView);
            }
        };
        if (maxNativeAd.shouldPrepareViewForInteractionOnMainThread()) {
            runOnUiThread(runnable);
        } else {
            nVar.BO().a(new ab(nVar, "MaxHybridNativeAdPrepareForInteraction", runnable), q.b.MEDIATION_MAIN);
        }
    }

    @Override // com.applovin.impl.mediation.a.b, android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        a(this.nativeAdView, "MaxHybridNativeAdActivity");
    }
}
