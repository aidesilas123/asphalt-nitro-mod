package com.applovin.impl.sdk.utils;

import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinAdViewDisplayErrorCode;
import com.applovin.adview.AppLovinAdViewEventListener;
import com.applovin.impl.sdk.AppLovinError;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAd;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdEventListener;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdLoadListener;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdExpirationListener;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdRequestListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdReviewListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.MaxRewardedAdListener;
import com.applovin.mediation.nativeAds.MaxNativeAdListener;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinPostbackListener;
import com.applovin.sdk.AppLovinSdkUtils;
import com.json.hc;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class m {
    private static boolean aVO = true;
    private static boolean aVP = true;

    public static void a(final AppLovinAdViewEventListener appLovinAdViewEventListener, final AppLovinAd appLovinAd, final AppLovinAdView appLovinAdView) {
        if (appLovinAd == null || appLovinAdViewEventListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.l1
            @Override // java.lang.Runnable
            public final void run() {
                m.f(appLovinAdViewEventListener, appLovinAd, appLovinAdView);
            }
        });
    }

    public static void a(final AppLovinAdViewEventListener appLovinAdViewEventListener, final AppLovinAd appLovinAd, final AppLovinAdView appLovinAdView, final AppLovinAdViewDisplayErrorCode appLovinAdViewDisplayErrorCode) {
        if (appLovinAd == null || appLovinAdViewEventListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.q0
            @Override // java.lang.Runnable
            public final void run() {
                m.b(appLovinAdViewEventListener, appLovinAd, appLovinAdView, appLovinAdViewDisplayErrorCode);
            }
        });
    }

    public static void a(final AppLovinNativeAdEventListener appLovinNativeAdEventListener, final AppLovinNativeAd appLovinNativeAd) {
        if (appLovinNativeAdEventListener != null) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.g1
                @Override // java.lang.Runnable
                public final void run() {
                    m.b(appLovinNativeAdEventListener, appLovinNativeAd);
                }
            });
        }
    }

    public static void a(final AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, final AppLovinError appLovinError) {
        if (appLovinNativeAdLoadListener != null) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.p1
                @Override // java.lang.Runnable
                public final void run() {
                    m.b(appLovinNativeAdLoadListener, appLovinError);
                }
            });
        }
    }

    public static void a(final MaxAdExpirationListener maxAdExpirationListener, final MaxAd maxAd, final MaxAd maxAd2, final boolean z, boolean z2) {
        if (maxAd == null || maxAd2 == null || maxAdExpirationListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z2, new Runnable() { // from class: com.applovin.impl.sdk.utils.f1
            @Override // java.lang.Runnable
            public final void run() {
                m.a(z, maxAdExpirationListener, maxAd, maxAd2);
            }
        });
    }

    public static void a(MaxAdListener maxAdListener, MaxAd maxAd) {
        a(maxAdListener, maxAd, false, false);
    }

    public static void a(MaxAdListener maxAdListener, MaxAd maxAd, MaxError maxError) {
        a(maxAdListener, maxAd, maxError, false);
    }

    public static void a(MaxAdListener maxAdListener, MaxAd maxAd, MaxError maxError, boolean z) {
        a(maxAdListener, maxAd, maxError, z, false);
    }

    public static void a(final MaxAdListener maxAdListener, final MaxAd maxAd, final MaxError maxError, final boolean z, boolean z2) {
        if (maxAd == null || maxAdListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z2, new Runnable() { // from class: com.applovin.impl.sdk.utils.d1
            @Override // java.lang.Runnable
            public final void run() {
                m.a(z, maxAdListener, maxAd, maxError);
            }
        });
    }

    public static void a(MaxAdListener maxAdListener, MaxAd maxAd, MaxReward maxReward) {
        a(maxAdListener, maxAd, maxReward, false, false);
    }

    public static void a(final MaxAdListener maxAdListener, final MaxAd maxAd, final MaxReward maxReward, final boolean z, boolean z2) {
        if (maxAd == null || !(maxAdListener instanceof MaxRewardedAdListener)) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z2, new Runnable() { // from class: com.applovin.impl.sdk.utils.s0
            @Override // java.lang.Runnable
            public final void run() {
                m.a(z, maxAdListener, maxAd, maxReward);
            }
        });
    }

    public static void a(final MaxAdListener maxAdListener, final MaxAd maxAd, final boolean z, boolean z2) {
        if (maxAd == null || maxAdListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z2, new Runnable() { // from class: com.applovin.impl.sdk.utils.h1
            @Override // java.lang.Runnable
            public final void run() {
                m.h(z, maxAdListener, maxAd);
            }
        });
    }

    public static void a(MaxAdListener maxAdListener, String str, MaxError maxError) {
        a(maxAdListener, str, maxError, false);
    }

    public static void a(MaxAdListener maxAdListener, String str, MaxError maxError, boolean z) {
        a(maxAdListener, str, maxError, z, false);
    }

    public static void a(final MaxAdListener maxAdListener, final String str, final MaxError maxError, final boolean z, boolean z2) {
        if (str == null || maxAdListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z2, new Runnable() { // from class: com.applovin.impl.sdk.utils.o0
            @Override // java.lang.Runnable
            public final void run() {
                m.a(z, maxAdListener, str, maxError);
            }
        });
    }

    public static void a(MaxAdRequestListener maxAdRequestListener, String str) {
        a(maxAdRequestListener, str, false, false);
    }

    public static void a(final MaxAdRequestListener maxAdRequestListener, final String str, final boolean z, boolean z2) {
        if (str == null || maxAdRequestListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z2, new Runnable() { // from class: com.applovin.impl.sdk.utils.b1
            @Override // java.lang.Runnable
            public final void run() {
                m.a(z, maxAdRequestListener, str);
            }
        });
    }

    public static void a(MaxAdRevenueListener maxAdRevenueListener, MaxAd maxAd) {
        a(maxAdRevenueListener, maxAd, false);
    }

    public static void a(MaxAdRevenueListener maxAdRevenueListener, MaxAd maxAd, boolean z) {
        a(maxAdRevenueListener, maxAd, z, false);
    }

    public static void a(final MaxAdRevenueListener maxAdRevenueListener, final MaxAd maxAd, final boolean z, boolean z2) {
        if (maxAd == null || maxAdRevenueListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z2, new Runnable() { // from class: com.applovin.impl.sdk.utils.t0
            @Override // java.lang.Runnable
            public final void run() {
                m.a(z, maxAdRevenueListener, maxAd);
            }
        });
    }

    public static void a(MaxAdReviewListener maxAdReviewListener, String str, MaxAd maxAd) {
        a(maxAdReviewListener, str, maxAd, false);
    }

    public static void a(final MaxAdReviewListener maxAdReviewListener, final String str, final MaxAd maxAd, boolean z) {
        if (maxAdReviewListener != null) {
            AppLovinSdkUtils.runOnUiThread(z, new Runnable() { // from class: com.applovin.impl.sdk.utils.y0
                @Override // java.lang.Runnable
                public final void run() {
                    m.b(maxAdReviewListener, str, maxAd);
                }
            });
        }
    }

    public static void a(final MaxNativeAdListener maxNativeAdListener, final MaxAd maxAd, final boolean z, boolean z2) {
        if (maxAd == null || maxNativeAdListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z2, new Runnable() { // from class: com.applovin.impl.sdk.utils.j1
            @Override // java.lang.Runnable
            public final void run() {
                m.b(z, maxNativeAdListener, maxAd);
            }
        });
    }

    public static void a(final MaxNativeAdListener maxNativeAdListener, final MaxNativeAdView maxNativeAdView, final MaxAd maxAd, final boolean z, boolean z2) {
        if (maxAd == null || maxNativeAdListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z2, new Runnable() { // from class: com.applovin.impl.sdk.utils.r1
            @Override // java.lang.Runnable
            public final void run() {
                m.a(z, maxNativeAdListener, maxNativeAdView, maxAd);
            }
        });
    }

    public static void a(final MaxNativeAdListener maxNativeAdListener, final String str, final MaxError maxError, final boolean z, boolean z2) {
        if (str == null || maxNativeAdListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z2, new Runnable() { // from class: com.applovin.impl.sdk.utils.n1
            @Override // java.lang.Runnable
            public final void run() {
                m.a(z, maxNativeAdListener, str, maxError);
            }
        });
    }

    public static void a(final AppLovinAdClickListener appLovinAdClickListener, final AppLovinAd appLovinAd) {
        if (appLovinAd == null || appLovinAdClickListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.i0
            @Override // java.lang.Runnable
            public final void run() {
                m.b(appLovinAdClickListener, appLovinAd);
            }
        });
    }

    public static void a(final AppLovinAdDisplayListener appLovinAdDisplayListener, final AppLovinAd appLovinAd) {
        if (appLovinAd == null || appLovinAdDisplayListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.e1
            @Override // java.lang.Runnable
            public final void run() {
                m.d(appLovinAdDisplayListener, appLovinAd);
            }
        });
    }

    public static void a(final AppLovinAdDisplayListener appLovinAdDisplayListener, final String str) {
        if (appLovinAdDisplayListener instanceof com.applovin.impl.sdk.ad.h) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.a1
                @Override // java.lang.Runnable
                public final void run() {
                    m.b(appLovinAdDisplayListener, str);
                }
            });
        }
    }

    public static void a(final AppLovinAdRewardListener appLovinAdRewardListener, final AppLovinAd appLovinAd, final int i) {
        if (appLovinAd == null || appLovinAdRewardListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.r0
            @Override // java.lang.Runnable
            public final void run() {
                m.b(appLovinAdRewardListener, appLovinAd, i);
            }
        });
    }

    public static void a(final AppLovinAdRewardListener appLovinAdRewardListener, final AppLovinAd appLovinAd, final Map<String, String> map) {
        if (appLovinAd == null || appLovinAdRewardListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.m0
            @Override // java.lang.Runnable
            public final void run() {
                m.f(appLovinAdRewardListener, appLovinAd, map);
            }
        });
    }

    public static void a(final AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, final AppLovinAd appLovinAd) {
        if (appLovinAd == null || appLovinAdVideoPlaybackListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.c1
            @Override // java.lang.Runnable
            public final void run() {
                m.b(appLovinAdVideoPlaybackListener, appLovinAd);
            }
        });
    }

    public static void a(final AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, final AppLovinAd appLovinAd, final double d2, final boolean z) {
        if (appLovinAd == null || appLovinAdVideoPlaybackListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.i1
            @Override // java.lang.Runnable
            public final void run() {
                m.b(appLovinAdVideoPlaybackListener, appLovinAd, d2, z);
            }
        });
    }

    public static void a(final AppLovinPostbackListener appLovinPostbackListener, final String str) {
        if (appLovinPostbackListener != null) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.m1
                @Override // java.lang.Runnable
                public final void run() {
                    m.b(appLovinPostbackListener, str);
                }
            });
        }
    }

    public static void a(final AppLovinPostbackListener appLovinPostbackListener, final String str, final int i) {
        if (appLovinPostbackListener != null) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.z0
                @Override // java.lang.Runnable
                public final void run() {
                    m.b(appLovinPostbackListener, str, i);
                }
            });
        }
    }

    private static void a(String str, Throwable th, boolean z) {
        if (z) {
            h(str, th);
        } else {
            i(str, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(boolean z, MaxAdExpirationListener maxAdExpirationListener, MaxAd maxAd, MaxAd maxAd2) {
        if (!bl(z)) {
            maxAdExpirationListener.onExpiredAdReloaded(maxAd, maxAd2);
            return;
        }
        try {
            maxAdExpirationListener.onExpiredAdReloaded(maxAd, maxAd2);
        } catch (Throwable th) {
            a("onExpiredAdReloaded", th, z);
            g("maxExpiredAdReloaded", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(boolean z, MaxAdListener maxAdListener, MaxAd maxAd) {
        if (!bl(z)) {
            ((MaxAdViewAdListener) maxAdListener).onAdCollapsed(maxAd);
            return;
        }
        try {
            ((MaxAdViewAdListener) maxAdListener).onAdCollapsed(maxAd);
        } catch (Throwable th) {
            a("onAdCollapsed", th, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(boolean z, MaxAdListener maxAdListener, MaxAd maxAd, MaxError maxError) {
        if (!bl(z)) {
            maxAdListener.onAdDisplayFailed(maxAd, maxError);
            return;
        }
        try {
            maxAdListener.onAdDisplayFailed(maxAd, maxError);
        } catch (Throwable th) {
            a("onAdDisplayFailed", th, z);
            g("maxAdDisplayFailed", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(boolean z, MaxAdListener maxAdListener, MaxAd maxAd, MaxReward maxReward) {
        if (!bl(z)) {
            ((MaxRewardedAdListener) maxAdListener).onUserRewarded(maxAd, maxReward);
            return;
        }
        try {
            ((MaxRewardedAdListener) maxAdListener).onUserRewarded(maxAd, maxReward);
        } catch (Throwable th) {
            a("onUserRewarded", th, z);
            g("maxRewardedUser", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(boolean z, MaxAdListener maxAdListener, String str, MaxError maxError) {
        if (!bl(z)) {
            maxAdListener.onAdLoadFailed(str, maxError);
            return;
        }
        try {
            maxAdListener.onAdLoadFailed(str, maxError);
        } catch (Throwable th) {
            a(hc.b, th, z);
            g("maxAdLoadFailed", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(boolean z, MaxAdRequestListener maxAdRequestListener, String str) {
        if (!bl(z)) {
            maxAdRequestListener.onAdRequestStarted(str);
            return;
        }
        try {
            maxAdRequestListener.onAdRequestStarted(str);
        } catch (Throwable th) {
            a("onAdRequestStarted", th, z);
            g("maxAdRequestStarted", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(boolean z, MaxAdRevenueListener maxAdRevenueListener, MaxAd maxAd) {
        if (!bl(z)) {
            maxAdRevenueListener.onAdRevenuePaid(maxAd);
            return;
        }
        try {
            maxAdRevenueListener.onAdRevenuePaid(maxAd);
        } catch (Throwable th) {
            a("onAdRevenuePaid", th, z);
            g("maxAdPaidRevenue", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(boolean z, MaxNativeAdListener maxNativeAdListener, MaxAd maxAd) {
        if (!bl(z)) {
            maxNativeAdListener.onNativeAdExpired(maxAd);
            return;
        }
        try {
            maxNativeAdListener.onNativeAdExpired(maxAd);
        } catch (Throwable th) {
            a("onNativeAdExpired", th, z);
            g("maxNativeAdExpired", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(boolean z, MaxNativeAdListener maxNativeAdListener, MaxNativeAdView maxNativeAdView, MaxAd maxAd) {
        if (!bl(z)) {
            maxNativeAdListener.onNativeAdLoaded(maxNativeAdView, maxAd);
            return;
        }
        try {
            maxNativeAdListener.onNativeAdLoaded(maxNativeAdView, maxAd);
        } catch (Throwable th) {
            a("onNativeAdLoaded", th, z);
            g("maxNativeAdLoaded", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(boolean z, MaxNativeAdListener maxNativeAdListener, String str, MaxError maxError) {
        if (!bl(z)) {
            maxNativeAdListener.onNativeAdLoadFailed(str, maxError);
            return;
        }
        try {
            maxNativeAdListener.onNativeAdLoadFailed(str, maxError);
        } catch (Throwable th) {
            a("onNativeAdLoadFailed", th, z);
            g("maxNativeAdLoadFailed", th);
        }
    }

    public static void b(final AppLovinAdViewEventListener appLovinAdViewEventListener, final AppLovinAd appLovinAd, final AppLovinAdView appLovinAdView) {
        if (appLovinAd == null || appLovinAdViewEventListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.q1
            @Override // java.lang.Runnable
            public final void run() {
                m.e(appLovinAdViewEventListener, appLovinAd, appLovinAdView);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(AppLovinAdViewEventListener appLovinAdViewEventListener, AppLovinAd appLovinAd, AppLovinAdView appLovinAdView, AppLovinAdViewDisplayErrorCode appLovinAdViewDisplayErrorCode) {
        try {
            appLovinAdViewEventListener.adFailedToDisplay(g(appLovinAd), appLovinAdView, appLovinAdViewDisplayErrorCode);
        } catch (Throwable th) {
            com.applovin.impl.sdk.x.e("ListenerCallbackInvoker", "Unable to notify ad event listener about display failed event", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(AppLovinNativeAdEventListener appLovinNativeAdEventListener, AppLovinNativeAd appLovinNativeAd) {
        try {
            appLovinNativeAdEventListener.onNativeAdClicked(appLovinNativeAd);
        } catch (Throwable th) {
            com.applovin.impl.sdk.x.e("ListenerCallbackInvoker", "Unable to notify native ad event listener about ad click", th);
            g("nativeAdClicked", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, AppLovinError appLovinError) {
        try {
            appLovinNativeAdLoadListener.onNativeAdLoadFailed(appLovinError);
        } catch (Throwable th) {
            com.applovin.impl.sdk.x.e("ListenerCallbackInvoker", "Unable to notify native ad event listener about ad failing to load", th);
            g("nativeAdLoadFailed", th);
        }
    }

    public static void b(MaxAdListener maxAdListener, MaxAd maxAd) {
        b(maxAdListener, maxAd, false, false);
    }

    public static void b(final MaxAdListener maxAdListener, final MaxAd maxAd, final boolean z, boolean z2) {
        if (maxAd == null || maxAdListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z2, new Runnable() { // from class: com.applovin.impl.sdk.utils.u0
            @Override // java.lang.Runnable
            public final void run() {
                m.g(z, maxAdListener, maxAd);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(MaxAdReviewListener maxAdReviewListener, String str, MaxAd maxAd) {
        try {
            maxAdReviewListener.onCreativeIdGenerated(str, maxAd);
        } catch (Throwable th) {
            com.applovin.impl.sdk.x.e("ListenerCallbackInvoker", "Unable to notify Ad Review creative id generated", th);
            g("adReviewCreativeIdGenerated", th);
        }
    }

    public static void b(final MaxNativeAdListener maxNativeAdListener, final MaxAd maxAd, final boolean z, boolean z2) {
        if (maxAd == null || maxNativeAdListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z2, new Runnable() { // from class: com.applovin.impl.sdk.utils.j0
            @Override // java.lang.Runnable
            public final void run() {
                m.a(z, maxNativeAdListener, maxAd);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(AppLovinAdClickListener appLovinAdClickListener, AppLovinAd appLovinAd) {
        try {
            appLovinAdClickListener.adClicked(g(appLovinAd));
        } catch (Throwable th) {
            com.applovin.impl.sdk.x.e("ListenerCallbackInvoker", "Unable to notify ad event listener about ad being clicked", th);
            g("adClicked", th);
        }
    }

    public static void b(final AppLovinAdDisplayListener appLovinAdDisplayListener, final AppLovinAd appLovinAd) {
        if (appLovinAd == null || appLovinAdDisplayListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.p0
            @Override // java.lang.Runnable
            public final void run() {
                m.c(appLovinAdDisplayListener, appLovinAd);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(AppLovinAdDisplayListener appLovinAdDisplayListener, String str) {
        ((com.applovin.impl.sdk.ad.h) appLovinAdDisplayListener).onAdDisplayFailed(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAd appLovinAd, int i) {
        try {
            appLovinAdRewardListener.validationRequestFailed(g(appLovinAd), i);
        } catch (Throwable th) {
            com.applovin.impl.sdk.x.e("ListenerCallbackInvoker", "Unable to notify ad reward listener about reward validation request failing", th);
        }
    }

    public static void b(final AppLovinAdRewardListener appLovinAdRewardListener, final AppLovinAd appLovinAd, final Map<String, String> map) {
        if (appLovinAd == null || appLovinAdRewardListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.n0
            @Override // java.lang.Runnable
            public final void run() {
                m.e(appLovinAdRewardListener, appLovinAd, map);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAd appLovinAd) {
        try {
            appLovinAdVideoPlaybackListener.videoPlaybackBegan(g(appLovinAd));
        } catch (Throwable th) {
            com.applovin.impl.sdk.x.e("ListenerCallbackInvoker", "Unable to notify ad event listener about ad playback began", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAd appLovinAd, double d2, boolean z) {
        try {
            appLovinAdVideoPlaybackListener.videoPlaybackEnded(g(appLovinAd), d2, z);
        } catch (Throwable th) {
            com.applovin.impl.sdk.x.e("ListenerCallbackInvoker", "Unable to notify ad event listener about ad playback ended", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(AppLovinPostbackListener appLovinPostbackListener, String str) {
        try {
            appLovinPostbackListener.onPostbackSuccess(str);
        } catch (Throwable th) {
            com.applovin.impl.sdk.x.e("ListenerCallbackInvoker", "Unable to notify AppLovinPostbackListener about postback URL (" + str + ") executed", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(AppLovinPostbackListener appLovinPostbackListener, String str, int i) {
        try {
            appLovinPostbackListener.onPostbackFailure(str, i);
        } catch (Throwable th) {
            com.applovin.impl.sdk.x.e("ListenerCallbackInvoker", "Unable to notify AppLovinPostbackListener about postback URL (" + str + ") failing to execute with error code (" + i + "):", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(boolean z, MaxAdListener maxAdListener, MaxAd maxAd) {
        if (!bl(z)) {
            ((MaxAdViewAdListener) maxAdListener).onAdExpanded(maxAd);
            return;
        }
        try {
            ((MaxAdViewAdListener) maxAdListener).onAdExpanded(maxAd);
        } catch (Throwable th) {
            a("onAdExpanded", th, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void b(boolean z, MaxNativeAdListener maxNativeAdListener, MaxAd maxAd) {
        if (!bl(z)) {
            maxNativeAdListener.onNativeAdClicked(maxAd);
            return;
        }
        try {
            maxNativeAdListener.onNativeAdClicked(maxAd);
        } catch (Throwable th) {
            a("onNativeAdClicked", th, z);
            g("maxNativeAdClicked", th);
        }
    }

    public static void bj(boolean z) {
        aVO = z;
    }

    public static void bk(boolean z) {
        aVP = z;
    }

    private static boolean bl(boolean z) {
        return z ? aVO : aVP;
    }

    public static void c(final AppLovinAdViewEventListener appLovinAdViewEventListener, final AppLovinAd appLovinAd, final AppLovinAdView appLovinAdView) {
        if (appLovinAd == null || appLovinAdViewEventListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.x0
            @Override // java.lang.Runnable
            public final void run() {
                m.d(appLovinAdViewEventListener, appLovinAd, appLovinAdView);
            }
        });
    }

    public static void c(MaxAdListener maxAdListener, MaxAd maxAd) {
        c(maxAdListener, maxAd, false, false);
    }

    public static void c(final MaxAdListener maxAdListener, final MaxAd maxAd, final boolean z, boolean z2) {
        if (maxAd == null || maxAdListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z2, new Runnable() { // from class: com.applovin.impl.sdk.utils.k0
            @Override // java.lang.Runnable
            public final void run() {
                m.f(z, maxAdListener, maxAd);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAd appLovinAd) {
        try {
            appLovinAdDisplayListener.adHidden(g(appLovinAd));
        } catch (Throwable th) {
            com.applovin.impl.sdk.x.e("ListenerCallbackInvoker", "Unable to notify ad event listener about ad being hidden", th);
            g("adHidden", th);
        }
    }

    public static void c(final AppLovinAdRewardListener appLovinAdRewardListener, final AppLovinAd appLovinAd, final Map<String, String> map) {
        if (appLovinAd == null || appLovinAdRewardListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.v0
            @Override // java.lang.Runnable
            public final void run() {
                m.d(appLovinAdRewardListener, appLovinAd, map);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void c(boolean z, MaxAdListener maxAdListener, MaxAd maxAd) {
        if (!bl(z)) {
            ((MaxRewardedAdListener) maxAdListener).onRewardedVideoCompleted(maxAd);
            return;
        }
        try {
            ((MaxRewardedAdListener) maxAdListener).onRewardedVideoCompleted(maxAd);
        } catch (Throwable th) {
            a("onRewardedVideoCompleted", th, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(AppLovinAdViewEventListener appLovinAdViewEventListener, AppLovinAd appLovinAd, AppLovinAdView appLovinAdView) {
        try {
            appLovinAdViewEventListener.adLeftApplication(g(appLovinAd), appLovinAdView);
        } catch (Throwable th) {
            com.applovin.impl.sdk.x.e("ListenerCallbackInvoker", "Unable to notify ad event listener about application leave event", th);
        }
    }

    public static void d(MaxAdListener maxAdListener, MaxAd maxAd) {
        d(maxAdListener, maxAd, false, false);
    }

    public static void d(final MaxAdListener maxAdListener, final MaxAd maxAd, final boolean z, boolean z2) {
        if (maxAd == null || maxAdListener == null) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z2, new Runnable() { // from class: com.applovin.impl.sdk.utils.h0
            @Override // java.lang.Runnable
            public final void run() {
                m.e(z, maxAdListener, maxAd);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAd appLovinAd) {
        try {
            appLovinAdDisplayListener.adDisplayed(g(appLovinAd));
        } catch (Throwable th) {
            com.applovin.impl.sdk.x.e("ListenerCallbackInvoker", "Unable to notify ad event listener about ad being displayed", th);
            g("adDisplayed", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAd appLovinAd, Map map) {
        try {
            appLovinAdRewardListener.userRewardRejected(g(appLovinAd), map);
        } catch (Throwable th) {
            com.applovin.impl.sdk.x.e("ListenerCallbackInvoker", "Unable to notify ad reward listener about reward validation request being rejected", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(boolean z, MaxAdListener maxAdListener, MaxAd maxAd) {
        if (!bl(z)) {
            ((MaxRewardedAdListener) maxAdListener).onRewardedVideoStarted(maxAd);
            return;
        }
        try {
            ((MaxRewardedAdListener) maxAdListener).onRewardedVideoStarted(maxAd);
        } catch (Throwable th) {
            a("onRewardedVideoStarted", th, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e(AppLovinAdViewEventListener appLovinAdViewEventListener, AppLovinAd appLovinAd, AppLovinAdView appLovinAdView) {
        try {
            appLovinAdViewEventListener.adClosedFullscreen(g(appLovinAd), appLovinAdView);
        } catch (Throwable th) {
            com.applovin.impl.sdk.x.e("ListenerCallbackInvoker", "Unable to notify ad event listener about fullscreen closed event", th);
        }
    }

    public static void e(MaxAdListener maxAdListener, MaxAd maxAd) {
        e(maxAdListener, maxAd, false, false);
    }

    public static void e(final MaxAdListener maxAdListener, final MaxAd maxAd, final boolean z, boolean z2) {
        if (maxAd == null || !(maxAdListener instanceof MaxRewardedAdListener)) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z2, new Runnable() { // from class: com.applovin.impl.sdk.utils.o1
            @Override // java.lang.Runnable
            public final void run() {
                m.d(z, maxAdListener, maxAd);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e(AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAd appLovinAd, Map map) {
        try {
            appLovinAdRewardListener.userOverQuota(g(appLovinAd), map);
        } catch (Throwable th) {
            com.applovin.impl.sdk.x.e("ListenerCallbackInvoker", "Unable to notify ad reward listener about exceeding quota", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e(boolean z, MaxAdListener maxAdListener, MaxAd maxAd) {
        if (!bl(z)) {
            maxAdListener.onAdClicked(maxAd);
            return;
        }
        try {
            maxAdListener.onAdClicked(maxAd);
        } catch (Throwable th) {
            a(hc.f6149f, th, z);
            g("maxAdClicked", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f(AppLovinAdViewEventListener appLovinAdViewEventListener, AppLovinAd appLovinAd, AppLovinAdView appLovinAdView) {
        try {
            appLovinAdViewEventListener.adOpenedFullscreen(g(appLovinAd), appLovinAdView);
        } catch (Throwable th) {
            com.applovin.impl.sdk.x.e("ListenerCallbackInvoker", "Unable to notify ad event listener about fullscreen opened event", th);
        }
    }

    public static void f(MaxAdListener maxAdListener, MaxAd maxAd) {
        f(maxAdListener, maxAd, false, false);
    }

    public static void f(final MaxAdListener maxAdListener, final MaxAd maxAd, final boolean z, boolean z2) {
        if (maxAd == null || !(maxAdListener instanceof MaxRewardedAdListener)) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z2, new Runnable() { // from class: com.applovin.impl.sdk.utils.w0
            @Override // java.lang.Runnable
            public final void run() {
                m.c(z, maxAdListener, maxAd);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f(AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAd appLovinAd, Map map) {
        try {
            appLovinAdRewardListener.userRewardVerified(g(appLovinAd), map);
        } catch (Throwable th) {
            com.applovin.impl.sdk.x.e("ListenerCallbackInvoker", "Unable to notify ad reward listener about successful reward validation request", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f(boolean z, MaxAdListener maxAdListener, MaxAd maxAd) {
        if (!bl(z)) {
            maxAdListener.onAdHidden(maxAd);
            return;
        }
        try {
            maxAdListener.onAdHidden(maxAd);
        } catch (Throwable th) {
            a("onAdHidden", th, z);
            g("maxAdHidden", th);
        }
    }

    private static AppLovinAd g(AppLovinAd appLovinAd) {
        AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) appLovinAd;
        return appLovinAdImpl.getDummyAd() != null ? appLovinAdImpl.getDummyAd() : appLovinAd;
    }

    public static void g(MaxAdListener maxAdListener, MaxAd maxAd) {
        g(maxAdListener, maxAd, false, false);
    }

    public static void g(final MaxAdListener maxAdListener, final MaxAd maxAd, final boolean z, boolean z2) {
        if (maxAd == null || !(maxAdListener instanceof MaxAdViewAdListener)) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z2, new Runnable() { // from class: com.applovin.impl.sdk.utils.l0
            @Override // java.lang.Runnable
            public final void run() {
                m.b(z, maxAdListener, maxAd);
            }
        });
    }

    private static void g(String str, Throwable th) {
        com.applovin.impl.sdk.n nVar = com.applovin.impl.sdk.n.aAC;
        if (nVar != null) {
            nVar.Cs().d("ListenerCallbackInvoker", str, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void g(boolean z, MaxAdListener maxAdListener, MaxAd maxAd) {
        if (!bl(z)) {
            maxAdListener.onAdDisplayed(maxAd);
            return;
        }
        try {
            maxAdListener.onAdDisplayed(maxAd);
        } catch (Throwable th) {
            a("onAdDisplayed", th, z);
            g("maxAdDisplayed", th);
        }
    }

    public static void h(MaxAdListener maxAdListener, MaxAd maxAd) {
        h(maxAdListener, maxAd, false, false);
    }

    public static void h(final MaxAdListener maxAdListener, final MaxAd maxAd, final boolean z, boolean z2) {
        if (maxAd == null || !(maxAdListener instanceof MaxAdViewAdListener)) {
            return;
        }
        AppLovinSdkUtils.runOnUiThread(z2, new Runnable() { // from class: com.applovin.impl.sdk.utils.k1
            @Override // java.lang.Runnable
            public final void run() {
                m.a(z, maxAdListener, maxAd);
            }
        });
    }

    private static void h(String str, Throwable th) {
        com.applovin.impl.sdk.x.e("ListenerCallbackInvoker", "Error in publisher callback '" + str + "'", th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(boolean z, MaxAdListener maxAdListener, MaxAd maxAd) {
        if (!bl(z)) {
            maxAdListener.onAdLoaded(maxAd);
            return;
        }
        try {
            maxAdListener.onAdLoaded(maxAd);
        } catch (Throwable th) {
            a(hc.j, th, z);
            g("maxAdLoaded", th);
        }
    }

    private static void i(String str, Throwable th) {
        com.applovin.impl.sdk.x.f("ListenerCallbackInvoker", "Error in internal callback '" + str + "'", th);
    }
}
