package com.vungle.ads;

import android.content.Context;
import com.json.hc;
import com.json.o2;
import com.vungle.ads.BaseFullscreenAd;
import com.vungle.ads.internal.presenter.AdPlayCallback;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.util.ThreadUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.vungle.ads.u0, reason: from Kotlin metadata */
/* JADX INFO: compiled from: BaseFullscreenAd.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\b&\u0018\u00002\u00020\u00012\u00020\u0002B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u0012\u0010\n\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0016¨\u0006\f"}, d2 = {"Lcom/vungle/ads/BaseFullscreenAd;", "Lcom/vungle/ads/BaseAd;", "Lcom/vungle/ads/FullscreenAd;", "context", "Landroid/content/Context;", o2.i, "", "adConfig", "Lcom/vungle/ads/AdConfig;", "(Landroid/content/Context;Ljava/lang/String;Lcom/vungle/ads/AdConfig;)V", "play", "", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
public abstract class BaseFullscreenAd extends BaseAd implements FullscreenAd {

    /* JADX INFO: renamed from: com.vungle.ads.u0$a */
    /* JADX INFO: compiled from: BaseFullscreenAd.kt */
    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0007\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\b\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\t\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\n\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\rH\u0016¨\u0006\u000e"}, d2 = {"com/vungle/ads/BaseFullscreenAd$play$1", "Lcom/vungle/ads/internal/presenter/AdPlayCallback;", "onAdClick", "", "id", "", "onAdEnd", "onAdImpression", hc.k, hc.i, "onAdStart", "onFailure", "error", "Lcom/vungle/ads/VungleError;", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
    public static final class a implements AdPlayCallback {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: onAdClick$lambda-3, reason: not valid java name */
        public static final void m1177onAdClick$lambda3(BaseFullscreenAd this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            BaseAdListener adListener = this$0.getAdListener();
            if (adListener != null) {
                adListener.onAdClicked(this$0);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: onAdEnd$lambda-2, reason: not valid java name */
        public static final void m1178onAdEnd$lambda2(BaseFullscreenAd this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            BaseAdListener adListener = this$0.getAdListener();
            if (adListener != null) {
                adListener.onAdEnd(this$0);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: onAdImpression$lambda-1, reason: not valid java name */
        public static final void m1179onAdImpression$lambda1(BaseFullscreenAd this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            BaseAdListener adListener = this$0.getAdListener();
            if (adListener != null) {
                adListener.onAdImpression(this$0);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: onAdLeftApplication$lambda-5, reason: not valid java name */
        public static final void m1180onAdLeftApplication$lambda5(BaseFullscreenAd this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            BaseAdListener adListener = this$0.getAdListener();
            if (adListener != null) {
                adListener.onAdLeftApplication(this$0);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: onAdRewarded$lambda-4, reason: not valid java name */
        public static final void m1181onAdRewarded$lambda4(BaseFullscreenAd this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            BaseAdListener adListener = this$0.getAdListener();
            RewardedAdListener rewardedAdListener = adListener instanceof RewardedAdListener ? (RewardedAdListener) adListener : null;
            if (rewardedAdListener != null) {
                rewardedAdListener.onAdRewarded(this$0);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: onAdStart$lambda-0, reason: not valid java name */
        public static final void m1182onAdStart$lambda0(BaseFullscreenAd this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            BaseAdListener adListener = this$0.getAdListener();
            if (adListener != null) {
                adListener.onAdStart(this$0);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: onFailure$lambda-6, reason: not valid java name */
        public static final void m1183onFailure$lambda6(BaseFullscreenAd this$0, VungleError error) {
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
            final BaseFullscreenAd baseFullscreenAd = BaseFullscreenAd.this;
            threadUtil.runOnUiThread(new Runnable() { // from class: com.vungle.ads.t
                @Override // java.lang.Runnable
                public final void run() {
                    BaseFullscreenAd.a.m1177onAdClick$lambda3(baseFullscreenAd);
                }
            });
            BaseFullscreenAd.this.getDisplayToClickMetric$vungle_ads_release().markEnd();
            AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(BaseFullscreenAd.this.getDisplayToClickMetric$vungle_ads_release(), (16 & 2) != 0 ? null : BaseFullscreenAd.this.getPlacementId(), (16 & 4) != 0 ? null : BaseFullscreenAd.this.getCreativeId(), (16 & 8) != 0 ? null : BaseFullscreenAd.this.getEventId(), (16 & 16) != 0 ? null : null);
        }

        @Override // com.vungle.ads.internal.presenter.AdPlayCallback
        public void onAdEnd(String id) {
            ThreadUtil threadUtil = ThreadUtil.INSTANCE;
            final BaseFullscreenAd baseFullscreenAd = BaseFullscreenAd.this;
            threadUtil.runOnUiThread(new Runnable() { // from class: com.vungle.ads.u
                @Override // java.lang.Runnable
                public final void run() {
                    BaseFullscreenAd.a.m1178onAdEnd$lambda2(baseFullscreenAd);
                }
            });
        }

        @Override // com.vungle.ads.internal.presenter.AdPlayCallback
        public void onAdImpression(String id) {
            ThreadUtil threadUtil = ThreadUtil.INSTANCE;
            final BaseFullscreenAd baseFullscreenAd = BaseFullscreenAd.this;
            threadUtil.runOnUiThread(new Runnable() { // from class: com.vungle.ads.s
                @Override // java.lang.Runnable
                public final void run() {
                    BaseFullscreenAd.a.m1179onAdImpression$lambda1(baseFullscreenAd);
                }
            });
            BaseFullscreenAd.this.getShowToDisplayMetric$vungle_ads_release().markEnd();
            AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, BaseFullscreenAd.this.getShowToDisplayMetric$vungle_ads_release(), BaseFullscreenAd.this.getPlacementId(), BaseFullscreenAd.this.getCreativeId(), BaseFullscreenAd.this.getEventId(), (String) null, 16, (Object) null);
            BaseFullscreenAd.this.getDisplayToClickMetric$vungle_ads_release().markStart();
        }

        @Override // com.vungle.ads.internal.presenter.AdPlayCallback
        public void onAdLeftApplication(String id) {
            ThreadUtil threadUtil = ThreadUtil.INSTANCE;
            final BaseFullscreenAd baseFullscreenAd = BaseFullscreenAd.this;
            threadUtil.runOnUiThread(new Runnable() { // from class: com.vungle.ads.r
                @Override // java.lang.Runnable
                public final void run() {
                    BaseFullscreenAd.a.m1180onAdLeftApplication$lambda5(baseFullscreenAd);
                }
            });
        }

        @Override // com.vungle.ads.internal.presenter.AdPlayCallback
        public void onAdRewarded(String id) {
            ThreadUtil threadUtil = ThreadUtil.INSTANCE;
            final BaseFullscreenAd baseFullscreenAd = BaseFullscreenAd.this;
            threadUtil.runOnUiThread(new Runnable() { // from class: com.vungle.ads.p
                @Override // java.lang.Runnable
                public final void run() {
                    BaseFullscreenAd.a.m1181onAdRewarded$lambda4(baseFullscreenAd);
                }
            });
        }

        @Override // com.vungle.ads.internal.presenter.AdPlayCallback
        public void onAdStart(String id) {
            ThreadUtil threadUtil = ThreadUtil.INSTANCE;
            final BaseFullscreenAd baseFullscreenAd = BaseFullscreenAd.this;
            threadUtil.runOnUiThread(new Runnable() { // from class: com.vungle.ads.q
                @Override // java.lang.Runnable
                public final void run() {
                    BaseFullscreenAd.a.m1182onAdStart$lambda0(baseFullscreenAd);
                }
            });
        }

        @Override // com.vungle.ads.internal.presenter.AdPlayCallback
        public void onFailure(final VungleError error) {
            Intrinsics.checkNotNullParameter(error, "error");
            ThreadUtil threadUtil = ThreadUtil.INSTANCE;
            final BaseFullscreenAd baseFullscreenAd = BaseFullscreenAd.this;
            threadUtil.runOnUiThread(new Runnable() { // from class: com.vungle.ads.o
                @Override // java.lang.Runnable
                public final void run() {
                    BaseFullscreenAd.a.m1183onFailure$lambda6(baseFullscreenAd, error);
                }
            });
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseFullscreenAd(Context context, String placementId, AdConfig adConfig) {
        super(context, placementId, adConfig);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(adConfig, "adConfig");
    }

    @Override // com.vungle.ads.FullscreenAd
    public void play(Context context) {
        AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
        analyticsClient.logMetric$vungle_ads_release(new SingleValueMetric(Sdk.SDKMetric.SDKMetricType.PLAY_AD_API), (16 & 2) != 0 ? null : getPlacementId(), (16 & 4) != 0 ? null : getCreativeId(), (16 & 8) != 0 ? null : getEventId(), (16 & 16) != 0 ? null : null);
        getResponseToShowMetric$vungle_ads_release().markEnd();
        AnalyticsClient.logMetric$vungle_ads_release$default(analyticsClient, getResponseToShowMetric$vungle_ads_release(), getPlacementId(), getCreativeId(), getEventId(), (String) null, 16, (Object) null);
        getShowToDisplayMetric$vungle_ads_release().markStart();
        getAdInternal().play(context, new a());
    }
}
