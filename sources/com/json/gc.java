package com.json;

import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.adunit.adapter.utility.AdInfo;
import com.json.mediationsdk.logger.IronSourceError;
import com.json.mediationsdk.model.Placement;
import com.json.mediationsdk.sdk.LevelPlayBannerListener;
import com.json.mediationsdk.sdk.LevelPlayInterstitialListener;
import com.json.mediationsdk.sdk.LevelPlayRewardedVideoBaseListener;
import com.json.mediationsdk.sdk.LevelPlayRewardedVideoListener;
import com.json.mediationsdk.sdk.LevelPlayRewardedVideoManualListener;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0010\u001a\u00020\r¢\u0006\u0004\b\u0011\u0010\u0012J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J(\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\u000e\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\tH\u0002J\u0006\u0010\f\u001a\u00020\u0002J\u0006\u0010\u000b\u001a\u00020\u0002R\u0014\u0010\u000f\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u000e¨\u0006\u0013"}, d2 = {"Lcom/ironsource/gc;", "", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", "", "callbackName", "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;", "adUnit", "", "args", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/ironsource/cc;", "Lcom/ironsource/cc;", "mJavaScriptEvaluator", "javaScriptEvaluator", "<init>", "(Lcom/ironsource/cc;)V", "mediationsdk_release"}, mv = {1, 8, 0})
public final class gc {

    /* JADX INFO: renamed from: a, reason: from kotlin metadata */
    private final cc mJavaScriptEvaluator;

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\b\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\t\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\n\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u001c\u0010\u000b\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\f\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\r\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\u000e"}, d2 = {"com/ironsource/gc$a", "Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;", "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;", "adInfo", "", hc.a, "Lcom/ironsource/mediationsdk/logger/IronSourceError;", "error", hc.b, hc.c, hc.f6147d, hc.f6148e, hc.f6149f, hc.f6150g, "mediationsdk_release"}, mv = {1, 8, 0})
    public static final class a implements LevelPlayInterstitialListener {
        a() {
        }

        @Override // com.json.mediationsdk.sdk.LevelPlayInterstitialListener
        public void onAdClicked(AdInfo adInfo) {
            gc.this.b(hc.f6149f, IronSource.AD_UNIT.INTERSTITIAL, jc.a.a(adInfo));
        }

        @Override // com.json.mediationsdk.sdk.LevelPlayInterstitialListener
        public void onAdClosed(AdInfo adInfo) {
            gc.this.b(hc.f6150g, IronSource.AD_UNIT.INTERSTITIAL, jc.a.a(adInfo));
        }

        @Override // com.json.mediationsdk.sdk.LevelPlayInterstitialListener
        public void onAdLoadFailed(IronSourceError error) {
            gc gcVar = gc.this;
            IronSource.AD_UNIT ad_unit = IronSource.AD_UNIT.INTERSTITIAL;
            jc jcVar = jc.a;
            Object[] objArr = new Object[1];
            objArr[0] = error != null ? error.getErrorMessage() : null;
            gcVar.b(hc.b, ad_unit, jcVar.a(objArr));
        }

        @Override // com.json.mediationsdk.sdk.LevelPlayInterstitialListener
        public void onAdOpened(AdInfo adInfo) {
            gc.this.b(hc.c, IronSource.AD_UNIT.INTERSTITIAL, jc.a.a(adInfo));
        }

        @Override // com.json.mediationsdk.sdk.LevelPlayInterstitialListener
        public void onAdReady(AdInfo adInfo) {
            gc.this.b(hc.a, IronSource.AD_UNIT.INTERSTITIAL, jc.a.a(adInfo));
        }

        @Override // com.json.mediationsdk.sdk.LevelPlayInterstitialListener
        public void onAdShowFailed(IronSourceError error, AdInfo adInfo) {
            gc gcVar = gc.this;
            IronSource.AD_UNIT ad_unit = IronSource.AD_UNIT.INTERSTITIAL;
            jc jcVar = jc.a;
            Object[] objArr = new Object[2];
            objArr[0] = error != null ? error.getErrorMessage() : null;
            objArr[1] = adInfo;
            gcVar.b(hc.f6148e, ad_unit, jcVar.a(objArr));
        }

        @Override // com.json.mediationsdk.sdk.LevelPlayInterstitialListener
        public void onAdShowSucceeded(AdInfo adInfo) {
            gc.this.b(hc.f6147d, IronSource.AD_UNIT.INTERSTITIAL, jc.a.a(adInfo));
        }
    }

    @Metadata(d1 = {"\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005*\u0001\u0000\b\n\u0018\u00002\u00020\u00012\u00020\u0002J\u0012\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010\t\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016J\u0012\u0010\n\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016J\b\u0010\u000b\u001a\u00020\u0005H\u0016J\u0012\u0010\f\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016J\u001c\u0010\r\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016J\u001c\u0010\u0010\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016J\u001c\u0010\u0011\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010\u0012\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¨\u0006\u0013"}, d2 = {"com/ironsource/gc$b", "Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoManualListener;", "Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoListener;", "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;", "adInfo", "", hc.a, "Lcom/ironsource/mediationsdk/logger/IronSourceError;", "error", hc.b, hc.h, hc.n, hc.c, hc.f6148e, "Lcom/ironsource/mediationsdk/model/Placement;", "placement", hc.f6149f, hc.i, hc.f6150g, "mediationsdk_release"}, mv = {1, 8, 0})
    public static final class b implements LevelPlayRewardedVideoManualListener, LevelPlayRewardedVideoListener {
        b() {
        }

        @Override // com.json.mediationsdk.sdk.LevelPlayRewardedVideoListener
        public void onAdAvailable(AdInfo adInfo) {
            gc.this.b(hc.h, IronSource.AD_UNIT.REWARDED_VIDEO, jc.a.a(adInfo));
        }

        @Override // com.json.mediationsdk.sdk.LevelPlayRewardedVideoBaseListener
        public void onAdClicked(Placement placement, AdInfo adInfo) {
            gc.this.b(hc.f6149f, IronSource.AD_UNIT.REWARDED_VIDEO, jc.a.a(fc.a.a(placement), adInfo));
        }

        @Override // com.json.mediationsdk.sdk.LevelPlayRewardedVideoBaseListener
        public void onAdClosed(AdInfo adInfo) {
            gc.this.b(hc.f6150g, IronSource.AD_UNIT.REWARDED_VIDEO, jc.a.a(adInfo));
        }

        @Override // com.json.mediationsdk.sdk.LevelPlayRewardedVideoManualListener
        public void onAdLoadFailed(IronSourceError error) {
            gc gcVar = gc.this;
            IronSource.AD_UNIT ad_unit = IronSource.AD_UNIT.REWARDED_VIDEO;
            jc jcVar = jc.a;
            Object[] objArr = new Object[1];
            objArr[0] = error != null ? error.getErrorMessage() : null;
            gcVar.b(hc.b, ad_unit, jcVar.a(objArr));
        }

        @Override // com.json.mediationsdk.sdk.LevelPlayRewardedVideoBaseListener
        public void onAdOpened(AdInfo adInfo) {
            gc.this.b(hc.c, IronSource.AD_UNIT.REWARDED_VIDEO, jc.a.a(adInfo));
        }

        @Override // com.json.mediationsdk.sdk.LevelPlayRewardedVideoManualListener
        public void onAdReady(AdInfo adInfo) {
            gc.this.b(hc.a, IronSource.AD_UNIT.REWARDED_VIDEO, jc.a.a(adInfo));
        }

        @Override // com.json.mediationsdk.sdk.LevelPlayRewardedVideoBaseListener
        public void onAdRewarded(Placement placement, AdInfo adInfo) {
            gc.this.b(hc.i, IronSource.AD_UNIT.REWARDED_VIDEO, jc.a.a(fc.a.a(placement), adInfo));
        }

        @Override // com.json.mediationsdk.sdk.LevelPlayRewardedVideoBaseListener
        public void onAdShowFailed(IronSourceError error, AdInfo adInfo) {
            gc gcVar = gc.this;
            IronSource.AD_UNIT ad_unit = IronSource.AD_UNIT.REWARDED_VIDEO;
            jc jcVar = jc.a;
            Object[] objArr = new Object[2];
            objArr[0] = error != null ? error.getErrorMessage() : null;
            objArr[1] = adInfo;
            gcVar.b(hc.f6148e, ad_unit, jcVar.a(objArr));
        }

        @Override // com.json.mediationsdk.sdk.LevelPlayRewardedVideoListener
        public void onAdUnavailable() {
            gc.this.b(hc.n, IronSource.AD_UNIT.REWARDED_VIDEO, jc.a.a(new Object[0]));
        }
    }

    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\b\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0012\u0010\t\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\n\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u000b\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\f\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\r"}, d2 = {"com/ironsource/gc$c", "Lcom/ironsource/mediationsdk/sdk/LevelPlayBannerListener;", "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;", "adInfo", "", hc.j, "Lcom/ironsource/mediationsdk/logger/IronSourceError;", "error", hc.b, hc.f6149f, hc.k, hc.l, hc.m, "mediationsdk_release"}, mv = {1, 8, 0})
    public static final class c implements LevelPlayBannerListener {
        c() {
        }

        @Override // com.json.mediationsdk.sdk.LevelPlayBannerListener
        public void onAdClicked(AdInfo adInfo) {
            gc.this.b(hc.f6149f, IronSource.AD_UNIT.BANNER, jc.a.a(adInfo));
        }

        @Override // com.json.mediationsdk.sdk.LevelPlayBannerListener
        public void onAdLeftApplication(AdInfo adInfo) {
            gc.this.b(hc.k, IronSource.AD_UNIT.BANNER, jc.a.a(adInfo));
        }

        @Override // com.json.mediationsdk.sdk.LevelPlayBannerListener
        public void onAdLoadFailed(IronSourceError error) {
            gc gcVar = gc.this;
            IronSource.AD_UNIT ad_unit = IronSource.AD_UNIT.BANNER;
            jc jcVar = jc.a;
            Object[] objArr = new Object[1];
            objArr[0] = error != null ? error.getErrorMessage() : null;
            gcVar.b(hc.b, ad_unit, jcVar.a(objArr));
        }

        @Override // com.json.mediationsdk.sdk.LevelPlayBannerListener
        public void onAdLoaded(AdInfo adInfo) {
            gc.this.b(hc.j, IronSource.AD_UNIT.BANNER, jc.a.a(adInfo));
        }

        @Override // com.json.mediationsdk.sdk.LevelPlayBannerListener
        public void onAdScreenDismissed(AdInfo adInfo) {
            gc.this.b(hc.m, IronSource.AD_UNIT.BANNER, jc.a.a(adInfo));
        }

        @Override // com.json.mediationsdk.sdk.LevelPlayBannerListener
        public void onAdScreenPresented(AdInfo adInfo) {
            gc.this.b(hc.l, IronSource.AD_UNIT.BANNER, jc.a.a(adInfo));
        }
    }

    public gc(cc javaScriptEvaluator) {
        Intrinsics.checkNotNullParameter(javaScriptEvaluator, "javaScriptEvaluator");
        this.mJavaScriptEvaluator = javaScriptEvaluator;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(String str, IronSource.AD_UNIT ad_unit, List<? extends Object> list) {
        this.mJavaScriptEvaluator.a(str, ad_unit, list);
    }

    private final void c() {
        fc fcVar = fc.a;
        fcVar.a((LevelPlayInterstitialListener) null);
        fcVar.a((LevelPlayRewardedVideoBaseListener) null);
        fcVar.a((LevelPlayBannerListener) null);
    }

    private final void e() {
        fc.a.i();
    }

    public final void a() {
        c();
        e();
    }

    public final void d() {
        fc fcVar = fc.a;
        fcVar.a(new a());
        fcVar.a(new b());
        fcVar.a(new c());
    }
}
