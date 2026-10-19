package com.vungle.ads;

import android.content.Context;
import com.json.hc;
import com.json.o2;
import com.vungle.ads.BannerAd;
import com.vungle.ads.internal.AdInternal;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.Placement;
import com.vungle.ads.internal.presenter.AdPlayCallback;
import com.vungle.ads.internal.presenter.AdPlayCallbackWrapper;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.util.Logger;
import com.vungle.ads.internal.util.ThreadUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.vungle.ads.p0, reason: from Kotlin metadata */
/* JADX INFO: compiled from: BannerAd.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u001f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bB'\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\u0015\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0002\u001a\u00020\u0003H\u0010¢\u0006\u0002\b\u0012J\u0006\u0010\u0013\u001a\u00020\u0014J\b\u0010\u0015\u001a\u0004\u0018\u00010\u000fR\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/vungle/ads/BannerAd;", "Lcom/vungle/ads/BaseAd;", "context", "Landroid/content/Context;", o2.i, "", o2.h.O, "Lcom/vungle/ads/BannerAdSize;", "(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/BannerAdSize;)V", "adConfig", "Lcom/vungle/ads/AdConfig;", "(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/BannerAdSize;Lcom/vungle/ads/AdConfig;)V", "adPlayCallback", "Lcom/vungle/ads/internal/presenter/AdPlayCallbackWrapper;", "bannerView", "Lcom/vungle/ads/BannerView;", "constructAdInternal", "Lcom/vungle/ads/BannerAdInternal;", "constructAdInternal$vungle_ads_release", "finishAd", "", "getBannerView", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
public final class BannerAd extends BaseAd {
    private final AdPlayCallbackWrapper adPlayCallback;
    private BannerAdSize adSize;
    private BannerView bannerView;

    /* JADX INFO: renamed from: com.vungle.ads.p0$a */
    /* JADX INFO: compiled from: BannerAd.kt */
    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0007\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\b\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\t\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\n\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\rH\u0016¨\u0006\u000e"}, d2 = {"com/vungle/ads/BannerAd$adPlayCallback$1", "Lcom/vungle/ads/internal/presenter/AdPlayCallback;", "onAdClick", "", "id", "", "onAdEnd", "onAdImpression", hc.k, hc.i, "onAdStart", "onFailure", "error", "Lcom/vungle/ads/VungleError;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class a implements AdPlayCallback {
        final /* synthetic */ String $placementId;

        a(String str) {
            this.$placementId = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: onAdClick$lambda-3, reason: not valid java name */
        public static final void m1168onAdClick$lambda3(BannerAd this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            BaseAdListener adListener = this$0.getAdListener();
            if (adListener != null) {
                adListener.onAdClicked(this$0);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: onAdEnd$lambda-2, reason: not valid java name */
        public static final void m1169onAdEnd$lambda2(BannerAd this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            BaseAdListener adListener = this$0.getAdListener();
            if (adListener != null) {
                adListener.onAdEnd(this$0);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: onAdImpression$lambda-1, reason: not valid java name */
        public static final void m1170onAdImpression$lambda1(BannerAd this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            BaseAdListener adListener = this$0.getAdListener();
            if (adListener != null) {
                adListener.onAdImpression(this$0);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: onAdLeftApplication$lambda-4, reason: not valid java name */
        public static final void m1171onAdLeftApplication$lambda4(BannerAd this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            BaseAdListener adListener = this$0.getAdListener();
            if (adListener != null) {
                adListener.onAdLeftApplication(this$0);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: onAdStart$lambda-0, reason: not valid java name */
        public static final void m1172onAdStart$lambda0(BannerAd this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            BaseAdListener adListener = this$0.getAdListener();
            if (adListener != null) {
                adListener.onAdStart(this$0);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: onFailure$lambda-5, reason: not valid java name */
        public static final void m1173onFailure$lambda5(BannerAd this$0, VungleError error) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(error, "$error");
            BaseAdListener adListener = this$0.getAdListener();
            if (adListener != null) {
                adListener.onAdFailedToPlay(this$0, error);
            }
        }

        @Override // com.vungle.ads.internal.presenter.AdPlayCallback
        public void onAdClick(String id) {
            ThreadUtil threadUtil = ThreadUtil.INSTANCE;
            final BannerAd bannerAd = BannerAd.this;
            threadUtil.runOnUiThread(new Runnable() { // from class: com.vungle.ads.f
                @Override // java.lang.Runnable
                public final void run() {
                    BannerAd.a.m1168onAdClick$lambda3(bannerAd);
                }
            });
            BannerAd.this.getDisplayToClickMetric$vungle_ads_release().markEnd();
            AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(BannerAd.this.getDisplayToClickMetric$vungle_ads_release(), (16 & 2) != 0 ? null : this.$placementId, (16 & 4) != 0 ? null : BannerAd.this.getCreativeId(), (16 & 8) != 0 ? null : BannerAd.this.getEventId(), (16 & 16) != 0 ? null : null);
        }

        @Override // com.vungle.ads.internal.presenter.AdPlayCallback
        public void onAdEnd(String id) {
            ThreadUtil threadUtil = ThreadUtil.INSTANCE;
            final BannerAd bannerAd = BannerAd.this;
            threadUtil.runOnUiThread(new Runnable() { // from class: com.vungle.ads.j
                @Override // java.lang.Runnable
                public final void run() {
                    BannerAd.a.m1169onAdEnd$lambda2(bannerAd);
                }
            });
        }

        @Override // com.vungle.ads.internal.presenter.AdPlayCallback
        public void onAdImpression(String id) {
            ThreadUtil threadUtil = ThreadUtil.INSTANCE;
            final BannerAd bannerAd = BannerAd.this;
            threadUtil.runOnUiThread(new Runnable() { // from class: com.vungle.ads.i
                @Override // java.lang.Runnable
                public final void run() {
                    BannerAd.a.m1170onAdImpression$lambda1(bannerAd);
                }
            });
            BannerAd.this.getShowToDisplayMetric$vungle_ads_release().markEnd();
            AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, BannerAd.this.getShowToDisplayMetric$vungle_ads_release(), this.$placementId, BannerAd.this.getCreativeId(), BannerAd.this.getEventId(), (String) null, 16, (Object) null);
            BannerAd.this.getDisplayToClickMetric$vungle_ads_release().markStart();
        }

        @Override // com.vungle.ads.internal.presenter.AdPlayCallback
        public void onAdLeftApplication(String id) {
            ThreadUtil threadUtil = ThreadUtil.INSTANCE;
            final BannerAd bannerAd = BannerAd.this;
            threadUtil.runOnUiThread(new Runnable() { // from class: com.vungle.ads.k
                @Override // java.lang.Runnable
                public final void run() {
                    BannerAd.a.m1171onAdLeftApplication$lambda4(bannerAd);
                }
            });
        }

        @Override // com.vungle.ads.internal.presenter.AdPlayCallback
        public void onAdRewarded(String id) {
        }

        @Override // com.vungle.ads.internal.presenter.AdPlayCallback
        public void onAdStart(String id) {
            ThreadUtil threadUtil = ThreadUtil.INSTANCE;
            final BannerAd bannerAd = BannerAd.this;
            threadUtil.runOnUiThread(new Runnable() { // from class: com.vungle.ads.h
                @Override // java.lang.Runnable
                public final void run() {
                    BannerAd.a.m1172onAdStart$lambda0(bannerAd);
                }
            });
        }

        @Override // com.vungle.ads.internal.presenter.AdPlayCallback
        public void onFailure(final VungleError error) {
            Intrinsics.checkNotNullParameter(error, "error");
            ThreadUtil threadUtil = ThreadUtil.INSTANCE;
            final BannerAd bannerAd = BannerAd.this;
            threadUtil.runOnUiThread(new Runnable() { // from class: com.vungle.ads.g
                @Override // java.lang.Runnable
                public final void run() {
                    BannerAd.a.m1173onFailure$lambda5(bannerAd, error);
                }
            });
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BannerAd(Context context, String placementId, BannerAdSize adSize) {
        this(context, placementId, adSize, new AdConfig());
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(adSize, "adSize");
    }

    private BannerAd(Context context, String str, BannerAdSize bannerAdSize, AdConfig adConfig) {
        super(context, str, adConfig);
        this.adSize = bannerAdSize;
        AdInternal adInternal = getAdInternal();
        Intrinsics.checkNotNull(adInternal, "null cannot be cast to non-null type com.vungle.ads.BannerAdInternal");
        this.adPlayCallback = ((BannerAdInternal) adInternal).wrapCallback$vungle_ads_release(new a(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: getBannerView$lambda-0, reason: not valid java name */
    public static final void m1167getBannerView$lambda0(BannerAd this$0, VungleError vungleError) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        BaseAdListener adListener = this$0.getAdListener();
        if (adListener != null) {
            adListener.onAdFailedToPlay(this$0, vungleError);
        }
    }

    @Override // com.vungle.ads.BaseAd
    public BannerAdInternal constructAdInternal$vungle_ads_release(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new BannerAdInternal(context, this.adSize);
    }

    public final void finishAd() {
        BannerView bannerView = this.bannerView;
        if (bannerView != null) {
            bannerView.finishAdInternal(true);
        }
    }

    public final BannerView getBannerView() {
        Placement placement;
        AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
        analyticsClient.logMetric$vungle_ads_release(new SingleValueMetric(Sdk.SDKMetric.SDKMetricType.PLAY_AD_API), (16 & 2) != 0 ? null : getPlacementId(), (16 & 4) != 0 ? null : getCreativeId(), (16 & 8) != 0 ? null : getEventId(), (16 & 16) != 0 ? null : null);
        BannerView bannerView = this.bannerView;
        if (bannerView != null) {
            return bannerView;
        }
        final VungleError vungleErrorCanPlayAd = getAdInternal().canPlayAd(true);
        if (vungleErrorCanPlayAd != null) {
            if (getAdInternal().isErrorTerminal$vungle_ads_release(vungleErrorCanPlayAd.getCode())) {
                getAdInternal().setAdState(AdInternal.AdState.ERROR);
            }
            ThreadUtil.INSTANCE.runOnUiThread(new Runnable() { // from class: com.vungle.ads.e
                @Override // java.lang.Runnable
                public final void run() {
                    BannerAd.m1167getBannerView$lambda0(this.a, vungleErrorCanPlayAd);
                }
            });
            return null;
        }
        AdPayload advertisement = getAdInternal().getAdvertisement();
        if (advertisement == null || (placement = getAdInternal().getPlacement()) == null) {
            return null;
        }
        getAdInternal().cancelDownload$vungle_ads_release();
        try {
            try {
                this.bannerView = new BannerView(getContext(), placement, advertisement, this.adSize, getAdConfig(), this.adPlayCallback, getAdInternal().getBidPayload());
                getResponseToShowMetric$vungle_ads_release().markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(analyticsClient, getResponseToShowMetric$vungle_ads_release(), getPlacementId(), getCreativeId(), getEventId(), (String) null, 16, (Object) null);
                getShowToDisplayMetric$vungle_ads_release().markStart();
                return this.bannerView;
            } catch (InstantiationException e2) {
                Logger.INSTANCE.e("BannerAd", "Can not create banner view: " + e2.getMessage(), e2);
                getResponseToShowMetric$vungle_ads_release().markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, getResponseToShowMetric$vungle_ads_release(), getPlacementId(), getCreativeId(), getEventId(), (String) null, 16, (Object) null);
                return null;
            }
        } catch (Throwable th) {
            getResponseToShowMetric$vungle_ads_release().markEnd();
            AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, getResponseToShowMetric$vungle_ads_release(), getPlacementId(), getCreativeId(), getEventId(), (String) null, 16, (Object) null);
            throw th;
        }
    }
}
