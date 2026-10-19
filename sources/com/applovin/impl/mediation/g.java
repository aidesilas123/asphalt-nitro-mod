package com.applovin.impl.mediation;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import com.applovin.impl.mediation.MediationServiceImpl;
import com.applovin.impl.sdk.e.q;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.adapter.MaxAdViewAdapter;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.mediation.adapter.MaxAppOpenAdapter;
import com.applovin.mediation.adapter.MaxInterstitialAdViewAdapter;
import com.applovin.mediation.adapter.MaxInterstitialAdapter;
import com.applovin.mediation.adapter.MaxRewardedAdViewAdapter;
import com.applovin.mediation.adapter.MaxRewardedAdapter;
import com.applovin.mediation.adapter.MaxRewardedInterstitialAdapter;
import com.applovin.mediation.adapter.MaxSignalProvider;
import com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener;
import com.applovin.mediation.adapter.parameters.MaxAdapterInitializationParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterSignalCollectionParameters;
import com.applovin.mediation.adapters.MediationAdapterBase;
import com.applovin.mediation.nativeAds.MaxNativeAd;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.applovin.sdk.AppLovinSdkUtils;
import com.facebook.internal.security.CertificateUtil;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class g {
    private String adUnitId;
    private final com.applovin.impl.mediation.b.f ami;
    private final String amj;
    private MaxAdapter amk;
    private com.applovin.impl.mediation.b.a aml;

    @Nullable
    private View amm;

    @Nullable
    private MaxNativeAd amn;

    @Nullable
    private MaxNativeAdView amo;

    @Nullable
    private ViewGroup amp;
    private MaxAdapterResponseParameters amr;
    private final boolean amv;
    private final com.applovin.impl.sdk.x logger;
    private final String name;
    private final com.applovin.impl.sdk.n sdk;
    private final Handler acG = new Handler(Looper.getMainLooper());
    private final a amq = new a();
    private final AtomicBoolean ams = new AtomicBoolean(true);
    private final AtomicBoolean amt = new AtomicBoolean(false);
    private final AtomicBoolean amu = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: private */
    class a implements MaxAdViewAdapterListener, MaxAppOpenAdapterListener, MaxInterstitialAdapterListener, MaxNativeAdAdapterListener, MaxRewardedAdapterListener, MaxRewardedInterstitialAdapterListener {
        private MediationServiceImpl.a amy;

        private a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void I(Bundle bundle) {
            this.amy.d(g.this.aml, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void J(Bundle bundle) {
            this.amy.e(g.this.aml, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void K(Bundle bundle) {
            this.amy.d(g.this.aml, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void L(Bundle bundle) {
            this.amy.d(g.this.aml, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void M(Bundle bundle) {
            this.amy.d(g.this.aml, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void N(Bundle bundle) {
            this.amy.d(g.this.aml, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void O(Bundle bundle) {
            this.amy.d(g.this.aml, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void P(Bundle bundle) {
            this.amy.c(g.this.aml, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void Q(Bundle bundle) {
            this.amy.b(g.this.aml, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void R(Bundle bundle) {
            if (g.this.amt.compareAndSet(false, true)) {
                this.amy.a(g.this.aml, bundle);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(MediationServiceImpl.a aVar) {
            if (aVar == null) {
                throw new IllegalArgumentException("No listener specified");
            }
            this.amy = aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(com.applovin.impl.mediation.b.c cVar, MaxReward maxReward, Bundle bundle) {
            this.amy.a(cVar, maxReward, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(MaxError maxError) {
            if (g.this.amt.compareAndSet(false, true)) {
                this.amy.onAdLoadFailed(g.this.adUnitId, maxError);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(MaxError maxError, Bundle bundle) {
            this.amy.a(g.this.aml, maxError, bundle);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(Runnable runnable, MaxAdListener maxAdListener, String str) {
            try {
                runnable.run();
            } catch (Throwable th) {
                com.applovin.impl.sdk.x.e("MediationAdapterWrapper", "Failed to forward call (" + str + ") to " + (maxAdListener != null ? maxAdListener.getClass().getName() : null), th);
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append(CertificateUtil.DELIMITER);
                sb.append(g.this.ami.vt());
                g.this.sdk.Cs().d("MediationAdapterWrapper", sb.toString(), th);
            }
        }

        private void a(String str, @Nullable final Bundle bundle) {
            if (!g.this.aml.xP().get()) {
                g.this.amu.set(true);
                a(str, this.amy, new Runnable() { // from class: com.applovin.impl.mediation.n0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.R(bundle);
                    }
                });
                return;
            }
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.i("MediationAdapterWrapper", g.this.amj + ": blocking ad loaded callback for " + g.this.aml + " since onAdHidden() has been called");
            }
            g.this.sdk.Ch().b(g.this.aml, str);
        }

        private void a(final String str, final MaxAdListener maxAdListener, final Runnable runnable) {
            g.this.acG.post(new Runnable() { // from class: com.applovin.impl.mediation.p0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.a(runnable, maxAdListener, str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str, final MaxError maxError) {
            if (!g.this.aml.xP().get()) {
                a(str, this.amy, new Runnable() { // from class: com.applovin.impl.mediation.h0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.a(maxError);
                    }
                });
                return;
            }
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.i("MediationAdapterWrapper", g.this.amj + ": blocking ad load failed callback for " + g.this.aml + " since onAdHidden() has been called");
            }
            g.this.sdk.Ch().b(g.this.aml, str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str, final MaxError maxError, @Nullable final Bundle bundle) {
            if (!g.this.aml.xP().get()) {
                a(str, this.amy, new Runnable() { // from class: com.applovin.impl.mediation.d0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.a(maxError, bundle);
                    }
                });
                return;
            }
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.i("MediationAdapterWrapper", g.this.amj + ": blocking ad display failed callback for " + g.this.aml + " since onAdHidden() has been called");
            }
            g.this.sdk.Ch().b(g.this.aml, str);
        }

        private void b(String str, @Nullable final Bundle bundle) {
            if (!g.this.aml.xP().get()) {
                if (g.this.aml.xO().compareAndSet(false, true)) {
                    a(str, this.amy, new Runnable() { // from class: com.applovin.impl.mediation.a0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.a.Q(bundle);
                        }
                    });
                    return;
                }
                return;
            }
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.i("MediationAdapterWrapper", g.this.amj + ": blocking ad displayed callback for " + g.this.aml + " since onAdHidden() has been called");
            }
            g.this.sdk.Ch().b(g.this.aml, str);
        }

        private void c(String str, @Nullable final Bundle bundle) {
            if (g.this.aml.xP().compareAndSet(false, true)) {
                a(str, this.amy, new Runnable() { // from class: com.applovin.impl.mediation.q0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.P(bundle);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void ui() {
            this.amy.onAdCollapsed(g.this.aml);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void uj() {
            this.amy.onRewardedVideoCompleted(g.this.aml);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void uk() {
            this.amy.onRewardedVideoStarted(g.this.aml);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void ul() {
            this.amy.onRewardedVideoCompleted(g.this.aml);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void um() {
            this.amy.onRewardedVideoStarted(g.this.aml);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdClicked() {
            onAdViewAdClicked(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdClicked(@Nullable final Bundle bundle) {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.g("MediationAdapterWrapper", g.this.amj + ": adview ad clicked with extra info: " + bundle);
            }
            a("onAdViewAdClicked", this.amy, new Runnable() { // from class: com.applovin.impl.mediation.e0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.K(bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdCollapsed() {
            onAdViewAdCollapsed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdCollapsed(@Nullable Bundle bundle) {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.g("MediationAdapterWrapper", g.this.amj + ": adview ad collapsed");
            }
            a("onAdViewAdCollapsed", this.amy, new Runnable() { // from class: com.applovin.impl.mediation.c0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.ui();
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdDisplayFailed(MaxAdapterError maxAdapterError) {
            onAdViewAdDisplayFailed(maxAdapterError, null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdDisplayFailed(MaxAdapterError maxAdapterError, @Nullable Bundle bundle) {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.h("MediationAdapterWrapper", g.this.amj + ": adview ad failed to display with error: " + maxAdapterError);
            }
            a("onAdViewAdDisplayFailed", maxAdapterError, bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdDisplayed() {
            onAdViewAdDisplayed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdDisplayed(@Nullable Bundle bundle) {
            if (g.this.aml.xF()) {
                return;
            }
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.g("MediationAdapterWrapper", g.this.amj + ": adview ad displayed with extra info: " + bundle);
            }
            b("onAdViewAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdExpanded() {
            onAdViewAdExpanded(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdExpanded(@Nullable final Bundle bundle) {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.g("MediationAdapterWrapper", g.this.amj + ": adview ad expanded");
            }
            a("onAdViewAdExpanded", this.amy, new Runnable() { // from class: com.applovin.impl.mediation.g0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.J(bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdHidden() {
            onAdViewAdHidden(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdHidden(@Nullable Bundle bundle) {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.g("MediationAdapterWrapper", g.this.amj + ": adview ad hidden with extra info: " + bundle);
            }
            c("onAdViewAdHidden", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdLoadFailed(MaxAdapterError maxAdapterError) {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.h("MediationAdapterWrapper", g.this.amj + ": adview ad ad failed to load with error: " + maxAdapterError);
            }
            a("onAdViewAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdLoaded(View view) {
            onAdViewAdLoaded(view, null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdLoaded(View view, @Nullable Bundle bundle) {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.g("MediationAdapterWrapper", g.this.amj + ": adview ad loaded with extra info: " + bundle);
            }
            g.this.amm = view;
            a("onAdViewAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdClicked() {
            onAppOpenAdClicked(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdClicked(@Nullable final Bundle bundle) {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.g("MediationAdapterWrapper", g.this.amj + ": app open ad clicked with extra info: " + bundle);
            }
            a("onAppOpenAdClicked", this.amy, new Runnable() { // from class: com.applovin.impl.mediation.m0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.L(bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdDisplayFailed(MaxAdapterError maxAdapterError) {
            onAppOpenAdDisplayFailed(maxAdapterError, null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdDisplayFailed(MaxAdapterError maxAdapterError, @Nullable Bundle bundle) {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.h("MediationAdapterWrapper", g.this.amj + ": app open ad display failed with error: " + maxAdapterError);
            }
            a("onAppOpenAdDisplayFailed", maxAdapterError, bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdDisplayed() {
            onAppOpenAdDisplayed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdDisplayed(@Nullable Bundle bundle) {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.g("MediationAdapterWrapper", g.this.amj + ": app open ad displayed with extra info: " + bundle);
            }
            b("onAppOpenAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdHidden() {
            onAppOpenAdHidden(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdHidden(@Nullable Bundle bundle) {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.g("MediationAdapterWrapper", g.this.amj + ": app open ad hidden with extra info: " + bundle);
            }
            c("onAppOpenAdHidden", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdLoadFailed(MaxAdapterError maxAdapterError) {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.h("MediationAdapterWrapper", g.this.amj + ": app open ad failed to load with error: " + maxAdapterError);
            }
            a("onAppOpenAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdLoaded() {
            onAppOpenAdLoaded(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAppOpenAdapterListener
        public void onAppOpenAdLoaded(@Nullable Bundle bundle) {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.g("MediationAdapterWrapper", g.this.amj + ": app open ad loaded with extra info: " + bundle);
            }
            a("onAppOpenAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdClicked() {
            onInterstitialAdClicked(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdClicked(@Nullable final Bundle bundle) {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.g("MediationAdapterWrapper", g.this.amj + ": interstitial ad clicked with extra info: " + bundle);
            }
            a("onInterstitialAdClicked", this.amy, new Runnable() { // from class: com.applovin.impl.mediation.k0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.O(bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdDisplayFailed(MaxAdapterError maxAdapterError) {
            onInterstitialAdDisplayFailed(maxAdapterError, null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdDisplayFailed(MaxAdapterError maxAdapterError, @Nullable Bundle bundle) {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.h("MediationAdapterWrapper", g.this.amj + ": interstitial ad failed to display with error " + maxAdapterError);
            }
            a("onInterstitialAdDisplayFailed", maxAdapterError, bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdDisplayed() {
            onInterstitialAdDisplayed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdDisplayed(@Nullable Bundle bundle) {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.g("MediationAdapterWrapper", g.this.amj + ": interstitial ad displayed with extra info: " + bundle);
            }
            b("onInterstitialAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdHidden() {
            onInterstitialAdHidden(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdHidden(@Nullable Bundle bundle) {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.g("MediationAdapterWrapper", g.this.amj + ": interstitial ad hidden with extra info " + bundle);
            }
            c("onInterstitialAdHidden", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdLoadFailed(MaxAdapterError maxAdapterError) {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.h("MediationAdapterWrapper", g.this.amj + ": interstitial ad failed to load with error " + maxAdapterError);
            }
            a("onInterstitialAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdLoaded() {
            onInterstitialAdLoaded(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdLoaded(@Nullable Bundle bundle) {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.g("MediationAdapterWrapper", g.this.amj + ": interstitial ad loaded with extra info: " + bundle);
            }
            a("onInterstitialAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener
        public void onNativeAdClicked() {
            onNativeAdClicked(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener
        public void onNativeAdClicked(@Nullable final Bundle bundle) {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.g("MediationAdapterWrapper", g.this.amj + ": native ad clicked");
            }
            a("onNativeAdClicked", this.amy, new Runnable() { // from class: com.applovin.impl.mediation.b0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.I(bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener
        public void onNativeAdDisplayed(@Nullable Bundle bundle) {
            if (g.this.aml.xF()) {
                return;
            }
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.g("MediationAdapterWrapper", g.this.amj + ": native ad displayed with extra info: " + bundle);
            }
            b("onNativeAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener
        public void onNativeAdLoadFailed(MaxAdapterError maxAdapterError) {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.h("MediationAdapterWrapper", g.this.amj + ": native ad ad failed to load with error: " + maxAdapterError);
            }
            a("onNativeAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener
        public void onNativeAdLoaded(MaxNativeAd maxNativeAd, @Nullable Bundle bundle) {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.g("MediationAdapterWrapper", g.this.amj + ": native ad loaded with extra info: " + bundle);
            }
            g.this.amn = maxNativeAd;
            a("onNativeAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdClicked() {
            onRewardedAdClicked(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdClicked(@Nullable final Bundle bundle) {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.g("MediationAdapterWrapper", g.this.amj + ": rewarded ad clicked with extra info: " + bundle);
            }
            a("onRewardedAdClicked", this.amy, new Runnable() { // from class: com.applovin.impl.mediation.f0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.N(bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdDisplayFailed(MaxAdapterError maxAdapterError) {
            onRewardedAdDisplayFailed(maxAdapterError, null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdDisplayFailed(MaxAdapterError maxAdapterError, @Nullable Bundle bundle) {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.h("MediationAdapterWrapper", g.this.amj + ": rewarded ad display failed with error: " + maxAdapterError);
            }
            a("onRewardedAdDisplayFailed", maxAdapterError, bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdDisplayed() {
            onRewardedAdDisplayed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdDisplayed(@Nullable Bundle bundle) {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.g("MediationAdapterWrapper", g.this.amj + ": rewarded ad displayed with extra info: " + bundle);
            }
            b("onRewardedAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdHidden() {
            onRewardedAdHidden(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdHidden(@Nullable Bundle bundle) {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.g("MediationAdapterWrapper", g.this.amj + ": rewarded ad hidden with extra info: " + bundle);
            }
            c("onRewardedAdHidden", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdLoadFailed(MaxAdapterError maxAdapterError) {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.h("MediationAdapterWrapper", g.this.amj + ": rewarded ad failed to load with error: " + maxAdapterError);
            }
            a("onRewardedAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdLoaded() {
            onRewardedAdLoaded(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdLoaded(@Nullable Bundle bundle) {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.g("MediationAdapterWrapper", g.this.amj + ": rewarded ad loaded with extra info: " + bundle);
            }
            a("onRewardedAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdVideoCompleted() {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.g("MediationAdapterWrapper", g.this.amj + ": rewarded video completed");
            }
            a("onRewardedAdVideoCompleted", this.amy, new Runnable() { // from class: com.applovin.impl.mediation.r0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.ul();
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdVideoStarted() {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.g("MediationAdapterWrapper", g.this.amj + ": rewarded video started");
            }
            a("onRewardedAdVideoStarted", this.amy, new Runnable() { // from class: com.applovin.impl.mediation.z
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.um();
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdClicked() {
            onRewardedInterstitialAdClicked(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdClicked(@Nullable final Bundle bundle) {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.g("MediationAdapterWrapper", g.this.amj + ": rewarded interstitial ad clicked with extra info: " + bundle);
            }
            a("onRewardedInterstitialAdClicked", this.amy, new Runnable() { // from class: com.applovin.impl.mediation.i0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.M(bundle);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdDisplayFailed(MaxAdapterError maxAdapterError) {
            onRewardedInterstitialAdDisplayFailed(maxAdapterError, null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdDisplayFailed(MaxAdapterError maxAdapterError, @Nullable Bundle bundle) {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.h("MediationAdapterWrapper", g.this.amj + ": rewarded interstitial ad display failed with error: " + maxAdapterError);
            }
            a("onRewardedInterstitialAdDisplayFailed", maxAdapterError, bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdDisplayed() {
            onRewardedInterstitialAdDisplayed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdDisplayed(@Nullable Bundle bundle) {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.g("MediationAdapterWrapper", g.this.amj + ": rewarded interstitial ad displayed with extra info: " + bundle);
            }
            b("onRewardedInterstitialAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdHidden() {
            onRewardedInterstitialAdHidden(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdHidden(@Nullable Bundle bundle) {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.g("MediationAdapterWrapper", g.this.amj + ": rewarded interstitial ad hidden with extra info: " + bundle);
            }
            c("onRewardedInterstitialAdHidden", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdLoadFailed(MaxAdapterError maxAdapterError) {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.h("MediationAdapterWrapper", g.this.amj + ": rewarded ad failed to load with error: " + maxAdapterError);
            }
            a("onRewardedInterstitialAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdLoaded() {
            onRewardedInterstitialAdLoaded(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdLoaded(@Nullable Bundle bundle) {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.g("MediationAdapterWrapper", g.this.amj + ": rewarded interstitial ad loaded with extra info: " + bundle);
            }
            a("onRewardedInterstitialAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdVideoCompleted() {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.g("MediationAdapterWrapper", g.this.amj + ": rewarded interstitial completed");
            }
            a("onRewardedInterstitialAdVideoCompleted", this.amy, new Runnable() { // from class: com.applovin.impl.mediation.j0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.uj();
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdVideoStarted() {
            com.applovin.impl.sdk.x unused = g.this.logger;
            if (com.applovin.impl.sdk.x.Fn()) {
                g.this.logger.g("MediationAdapterWrapper", g.this.amj + ": rewarded interstitial started");
            }
            a("onRewardedInterstitialAdVideoStarted", this.amy, new Runnable() { // from class: com.applovin.impl.mediation.l0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.uk();
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener, com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onUserRewarded(MaxReward maxReward) {
            onUserRewarded(maxReward, null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener, com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onUserRewarded(final MaxReward maxReward, @Nullable final Bundle bundle) {
            if (g.this.aml instanceof com.applovin.impl.mediation.b.c) {
                final com.applovin.impl.mediation.b.c cVar = (com.applovin.impl.mediation.b.c) g.this.aml;
                if (cVar.yi().compareAndSet(false, true)) {
                    com.applovin.impl.sdk.x unused = g.this.logger;
                    if (com.applovin.impl.sdk.x.Fn()) {
                        g.this.logger.g("MediationAdapterWrapper", g.this.amj + ": user was rewarded: " + maxReward);
                    }
                    a("onUserRewarded", this.amy, new Runnable() { // from class: com.applovin.impl.mediation.o0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.a.a(cVar, maxReward, bundle);
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class b implements MaxAdapter.OnCompletionListener {
        private final com.applovin.impl.mediation.b.f ami;

        @Nullable
        private final Runnable amz;
        private final com.applovin.impl.sdk.n sdk;
        private final long startTimeMillis;

        public b(com.applovin.impl.sdk.n nVar, com.applovin.impl.mediation.b.f fVar, long j, @Nullable Runnable runnable) {
            this.sdk = nVar;
            this.ami = fVar;
            this.startTimeMillis = j;
            this.amz = runnable;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(MaxAdapter.InitializationStatus initializationStatus, String str) {
            this.sdk.Cx().a(this.ami, SystemClock.elapsedRealtime() - this.startTimeMillis, initializationStatus, str);
            Runnable runnable = this.amz;
            if (runnable != null) {
                runnable.run();
            }
        }

        @Override // com.applovin.mediation.adapter.MaxAdapter.OnCompletionListener
        public void onCompletion(final MaxAdapter.InitializationStatus initializationStatus, final String str) {
            AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.s0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.a(initializationStatus, str);
                }
            }, this.ami.yF());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class c {
        private final com.applovin.impl.mediation.b.h amA;
        private final MaxSignalCollectionListener amB;
        private final AtomicBoolean amC = new AtomicBoolean();

        c(com.applovin.impl.mediation.b.h hVar, MaxSignalCollectionListener maxSignalCollectionListener) {
            this.amA = hVar;
            this.amB = maxSignalCollectionListener;
        }
    }

    private class d extends com.applovin.impl.sdk.e.d {
        private d() {
            super("TaskTimeoutMediatedAd", g.this.sdk);
        }

        private void c(com.applovin.impl.mediation.b.a aVar) {
            if (aVar != null) {
                this.sdk.CA().e(aVar);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (g.this.amt.get()) {
                return;
            }
            if (g.this.aml.xD()) {
                if (com.applovin.impl.sdk.x.Fn()) {
                    this.logger.f(this.tag, g.this.amj + " is timing out, considering JS Tag ad loaded: " + g.this.aml);
                }
                c(g.this.aml);
                return;
            }
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.i(this.tag, g.this.amj + " is timing out " + g.this.aml + "...");
            }
            c(g.this.aml);
            g.this.amq.a(this.tag, new MaxErrorImpl(-5101, "Adapter timed out"));
        }
    }

    private class e extends com.applovin.impl.sdk.e.d {
        private final c amD;

        private e(c cVar) {
            super("TaskTimeoutSignalCollection", g.this.sdk);
            this.amD = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.amD.amC.get()) {
                return;
            }
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.i(this.tag, g.this.amj + " is timing out " + this.amD.amA + "...");
            }
            g.this.b("The adapter (" + g.this.amj + ") timed out", this.amD);
        }
    }

    g(com.applovin.impl.mediation.b.f fVar, MaxAdapter maxAdapter, boolean z, com.applovin.impl.sdk.n nVar) {
        if (fVar == null) {
            throw new IllegalArgumentException("No adapter name specified");
        }
        if (maxAdapter == null) {
            throw new IllegalArgumentException("No adapter specified");
        }
        if (nVar == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.name = fVar.yA();
        this.amk = maxAdapter;
        this.sdk = nVar;
        this.logger = nVar.BN();
        this.ami = fVar;
        this.amj = maxAdapter.getClass().getSimpleName();
        this.amv = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ViewGroup viewGroup, Lifecycle lifecycle, Activity activity) {
        ((MaxRewardedAdViewAdapter) this.amk).showRewardedAd(this.amr, viewGroup, lifecycle, activity, this.amq);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(MaxSignalProvider maxSignalProvider, MaxAdapterSignalCollectionParameters maxAdapterSignalCollectionParameters, Activity activity, final c cVar, com.applovin.impl.mediation.b.h hVar) {
        try {
            maxSignalProvider.collectSignal(maxAdapterSignalCollectionParameters, activity, new MaxSignalCollectionListener() { // from class: com.applovin.impl.mediation.g.1
                @Override // com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener
                public void onSignalCollected(String str) {
                    g.this.a(str, cVar);
                }

                @Override // com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener
                public void onSignalCollectionFailed(String str) {
                    g.this.b(str, cVar);
                }
            });
        } catch (Throwable th) {
            String str = "Failed signal collection for " + this.name + " due to: " + th;
            com.applovin.impl.sdk.x.H("MediationAdapterWrapper", str);
            b(str, cVar);
            this.sdk.Cs().d("MediationAdapterWrapper", "collect_signal:" + this.ami.vt(), th);
            bC("collect_signal");
            this.sdk.Cw().a(this.ami.vt(), "collect_signal", this.aml);
        }
        if (cVar.amC.get()) {
            return;
        }
        if (hVar.yE() == 0) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f("MediationAdapterWrapper", "Failing signal collection " + hVar + " since it has 0 timeout");
            }
            b("The adapter (" + this.amj + ") has 0 timeout", cVar);
            return;
        }
        if (hVar.yE() <= 0) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f("MediationAdapterWrapper", "Negative timeout set for " + hVar + ", not scheduling a timeout");
                return;
            }
            return;
        }
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f("MediationAdapterWrapper", "Setting timeout " + hVar.yE() + "ms. for " + hVar);
        }
        this.sdk.BO().a(new e(cVar), q.b.MEDIATION_TIMEOUT, hVar.yE());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity) {
        ((MediationAdapterBase) this.amk).loadNativeAd(maxAdapterResponseParameters, activity, this.amq);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(MaxAdapterResponseParameters maxAdapterResponseParameters, MaxAdFormat maxAdFormat, Activity activity) {
        ((MaxAdViewAdapter) this.amk).loadAdViewAd(maxAdapterResponseParameters, maxAdFormat, activity, this.amq);
    }

    private void a(final Runnable runnable, com.applovin.impl.mediation.b.a aVar) {
        a("show_ad", aVar.getFormat(), new Runnable() { // from class: com.applovin.impl.mediation.x0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.g(runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(Runnable runnable, MaxAdapterInitializationParameters maxAdapterInitializationParameters, Activity activity) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f("MediationAdapterWrapper", "Initializing " + this.amj + " on thread: " + Thread.currentThread() + " with 'run_on_ui_thread' value: " + this.ami.yC());
        }
        this.amk.initialize(maxAdapterInitializationParameters, activity, new b(this.sdk, this.ami, jElapsedRealtime, runnable));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, c cVar) {
        if (!cVar.amC.compareAndSet(false, true) || cVar.amB == null) {
            return;
        }
        cVar.amB.onSignalCollected(str);
    }

    private void a(final String str, @Nullable MaxAdFormat maxAdFormat, final Runnable runnable) {
        Runnable runnable2 = new Runnable() { // from class: com.applovin.impl.mediation.w0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.c(str, runnable);
            }
        };
        if (a(str, maxAdFormat)) {
            this.acG.post(runnable2);
        } else {
            runnable2.run();
        }
    }

    private boolean a(String str, @Nullable MaxAdFormat maxAdFormat) {
        Boolean boolShouldShowAdsOnUiThread;
        MaxAdapter maxAdapter = this.amk;
        if (maxAdapter == null) {
            return this.ami.yC();
        }
        if (MobileAdsBridgeBase.initializeMethodName.equals(str)) {
            Boolean boolShouldInitializeOnUiThread = maxAdapter.shouldInitializeOnUiThread();
            if (boolShouldInitializeOnUiThread != null) {
                return boolShouldInitializeOnUiThread.booleanValue();
            }
        } else if ("collect_signal".equals(str)) {
            Boolean boolShouldCollectSignalsOnUiThread = maxAdapter.shouldCollectSignalsOnUiThread();
            if (boolShouldCollectSignalsOnUiThread != null) {
                return boolShouldCollectSignalsOnUiThread.booleanValue();
            }
        } else if ("load_ad".equals(str) && maxAdFormat != null) {
            Boolean boolShouldLoadAdsOnUiThread = maxAdapter.shouldLoadAdsOnUiThread(maxAdFormat);
            if (boolShouldLoadAdsOnUiThread != null) {
                return boolShouldLoadAdsOnUiThread.booleanValue();
            }
        } else if ("show_ad".equals(str) && maxAdFormat != null && (boolShouldShowAdsOnUiThread = maxAdapter.shouldShowAdsOnUiThread(maxAdFormat)) != null) {
            return boolShouldShowAdsOnUiThread.booleanValue();
        }
        return this.ami.yC();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(ViewGroup viewGroup, Lifecycle lifecycle, Activity activity) {
        ((MaxInterstitialAdViewAdapter) this.amk).showInterstitialAd(this.amr, viewGroup, lifecycle, activity, this.amq);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity) {
        ((MaxRewardedInterstitialAdapter) this.amk).loadRewardedInterstitialAd(maxAdapterResponseParameters, activity, this.amq);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(Runnable runnable, com.applovin.impl.mediation.b.a aVar) {
        try {
            runnable.run();
        } catch (Throwable th) {
            String str = "Failed to start loading ad for " + this.name + " due to: " + th;
            com.applovin.impl.sdk.x.H("MediationAdapterWrapper", str);
            this.amq.a("load_ad", new MaxErrorImpl(-1, str));
            this.sdk.Cs().d("MediationAdapterWrapper", "load_ad:" + this.ami.vt(), th);
            bC("load_ad");
            this.sdk.Cw().a(this.ami.vt(), "load_ad", this.aml);
        }
        if (this.amt.get()) {
            return;
        }
        long jYE = this.ami.yE();
        if (jYE <= 0) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f("MediationAdapterWrapper", "Negative timeout set for " + aVar + ", not scheduling a timeout");
                return;
            }
            return;
        }
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f("MediationAdapterWrapper", "Setting timeout " + jYE + "ms. for " + aVar);
        }
        this.sdk.BO().a(new d(), q.b.MEDIATION_TIMEOUT, jYE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str, c cVar) {
        if (!cVar.amC.compareAndSet(false, true) || cVar.amB == null) {
            return;
        }
        cVar.amB.onSignalCollectionFailed(str);
    }

    private void b(String str, Runnable runnable) {
        a(str, (MaxAdFormat) null, runnable);
    }

    private boolean b(com.applovin.impl.mediation.b.a aVar, Activity activity) {
        if (aVar == null) {
            throw new IllegalArgumentException("No mediated ad specified");
        }
        if (aVar.xC() == null) {
            com.applovin.impl.sdk.x.H("MediationAdapterWrapper", "Adapter has been garbage collected");
            this.amq.a("ad_show", new MaxErrorImpl(-1, "Adapter has been garbage collected"), (Bundle) null);
            return false;
        }
        if (aVar.xC() != this) {
            throw new IllegalArgumentException("Mediated ad belongs to a different adapter");
        }
        if (activity == null && MaxAdFormat.APP_OPEN != aVar.getFormat()) {
            throw new IllegalArgumentException("No activity specified");
        }
        if (this.ams.get()) {
            if (ug()) {
                return true;
            }
            throw new IllegalStateException("Mediation adapter '" + this.amj + "' does not have an ad loaded. Please load an ad first");
        }
        String str = "Mediation adapter '" + this.amj + "' is disabled. Showing ads with this adapter is disabled.";
        com.applovin.impl.sdk.x.H("MediationAdapterWrapper", str);
        this.amq.a("ad_show", new MaxErrorImpl(-1, str), (Bundle) null);
        return false;
    }

    private void bC(String str) {
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.g("MediationAdapterWrapper", "Marking " + this.amj + " as disabled due to: " + str);
        }
        this.ams.set(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(Activity activity) {
        ((MaxRewardedInterstitialAdapter) this.amk).showRewardedInterstitialAd(this.amr, activity, this.amq);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(com.applovin.impl.mediation.b.a aVar, Activity activity) {
        this.sdk.Cz().a((com.applovin.impl.mediation.b.c) aVar, activity, this.amq);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity) {
        ((MaxRewardedAdapter) this.amk).loadRewardedAd(maxAdapterResponseParameters, activity, this.amq);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(String str, Runnable runnable) {
        try {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f("MediationAdapterWrapper", this.amj + ": running " + str + "...");
            }
            runnable.run();
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f("MediationAdapterWrapper", this.amj + ": finished " + str + "");
            }
        } catch (Throwable th) {
            com.applovin.impl.sdk.x.e("MediationAdapterWrapper", "Failed operation " + str + " for " + this.name, th);
            StringBuilder sb = new StringBuilder();
            sb.append("fail_");
            sb.append(str);
            bC(sb.toString());
            if (str.equals("destroy")) {
                return;
            }
            this.sdk.Cw().a(this.ami.vt(), str, this.aml);
            this.sdk.Cs().d("MediationAdapterWrapper", "outer:" + str + CertificateUtil.DELIMITER + this.ami.vt(), th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(Activity activity) {
        ((MaxRewardedAdapter) this.amk).showRewardedAd(this.amr, activity, this.amq);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity) {
        ((MaxAppOpenAdapter) this.amk).loadAppOpenAd(maxAdapterResponseParameters, activity, this.amq);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(Activity activity) {
        ((MaxAppOpenAdapter) this.amk).showAppOpenAd(this.amr, activity, this.amq);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity) {
        ((MaxInterstitialAdapter) this.amk).loadInterstitialAd(maxAdapterResponseParameters, activity, this.amq);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(Activity activity) {
        ((MaxInterstitialAdapter) this.amk).showInterstitialAd(this.amr, activity, this.amq);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(Runnable runnable) {
        try {
            runnable.run();
        } catch (Throwable th) {
            String str = "Failed to start displaying ad for " + this.name + " due to: " + th;
            com.applovin.impl.sdk.x.H("MediationAdapterWrapper", str);
            this.amq.a("show_ad", new MaxErrorImpl(-1, str), (Bundle) null);
            this.sdk.Cs().d("MediationAdapterWrapper", "show_ad:" + this.ami.vt(), th);
            bC("show_ad");
            this.sdk.Cw().a(this.ami.vt(), "show_ad", this.aml);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void uh() {
        bC("destroy");
        this.amk.onDestroy();
        this.amk = null;
        this.amm = null;
        this.amn = null;
        this.amo = null;
        this.amp = null;
    }

    public void a(final com.applovin.impl.mediation.b.a aVar, final Activity activity) {
        Runnable runnable;
        if (b(aVar, activity)) {
            if (aVar.xF()) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.z0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.c(aVar, activity);
                    }
                };
            } else if (aVar.getFormat() == MaxAdFormat.INTERSTITIAL) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.s
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.f(activity);
                    }
                };
            } else if (aVar.getFormat() == MaxAdFormat.APP_OPEN) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.v
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.e(activity);
                    }
                };
            } else if (aVar.getFormat() == MaxAdFormat.REWARDED) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.t0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.d(activity);
                    }
                };
            } else {
                if (aVar.getFormat() != MaxAdFormat.REWARDED_INTERSTITIAL) {
                    throw new IllegalStateException("Failed to show " + aVar + ": " + aVar.getFormat() + " is not a supported ad format");
                }
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.b1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.c(activity);
                    }
                };
            }
            a(runnable, aVar);
        }
    }

    public void a(com.applovin.impl.mediation.b.a aVar, final ViewGroup viewGroup, final Lifecycle lifecycle, final Activity activity) {
        Runnable runnable;
        if (b(aVar, activity)) {
            if (aVar.getFormat() == MaxAdFormat.INTERSTITIAL) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.v0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.b(viewGroup, lifecycle, activity);
                    }
                };
            } else {
                if (aVar.getFormat() != MaxAdFormat.REWARDED) {
                    throw new IllegalStateException("Failed to show " + aVar + ": " + aVar.getFormat() + " is not a supported ad format");
                }
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.y
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.a(viewGroup, lifecycle, activity);
                    }
                };
            }
            a(runnable, aVar);
        }
    }

    void a(final MaxAdapterInitializationParameters maxAdapterInitializationParameters, final Activity activity, @Nullable final Runnable runnable) {
        b(MobileAdsBridgeBase.initializeMethodName, new Runnable() { // from class: com.applovin.impl.mediation.w
            @Override // java.lang.Runnable
            public final void run() {
                this.a.a(runnable, maxAdapterInitializationParameters, activity);
            }
        });
    }

    void a(final MaxAdapterSignalCollectionParameters maxAdapterSignalCollectionParameters, final com.applovin.impl.mediation.b.h hVar, final Activity activity, MaxSignalCollectionListener maxSignalCollectionListener) {
        if (maxSignalCollectionListener == null) {
            throw new IllegalArgumentException("No callback specified");
        }
        if (!this.ams.get()) {
            com.applovin.impl.sdk.x.H("MediationAdapterWrapper", "Mediation adapter '" + this.amj + "' is disabled. Signal collection ads with this adapter is disabled.");
            maxSignalCollectionListener.onSignalCollectionFailed("The adapter (" + this.amj + ") is disabled");
            return;
        }
        final c cVar = new c(hVar, maxSignalCollectionListener);
        MaxAdapter maxAdapter = this.amk;
        if (maxAdapter instanceof MaxSignalProvider) {
            final MaxSignalProvider maxSignalProvider = (MaxSignalProvider) maxAdapter;
            b("collect_signal", new Runnable() { // from class: com.applovin.impl.mediation.x
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.a(maxSignalProvider, maxAdapterSignalCollectionParameters, activity, cVar, hVar);
                }
            });
            return;
        }
        b("The adapter (" + this.amj + ") does not support signal collection", cVar);
    }

    public void a(@Nullable MaxNativeAdView maxNativeAdView) {
        this.amo = maxNativeAdView;
    }

    void a(String str, com.applovin.impl.mediation.b.a aVar) {
        this.adUnitId = str;
        this.aml = aVar;
    }

    public void a(String str, final MaxAdapterResponseParameters maxAdapterResponseParameters, final com.applovin.impl.mediation.b.a aVar, final Activity activity, MediationServiceImpl.a aVar2) {
        final Runnable runnable;
        if (aVar == null) {
            throw new IllegalArgumentException("No mediated ad specified");
        }
        if (!this.ams.get()) {
            String str2 = "Mediation adapter '" + this.amj + "' was disabled due to earlier failures. Loading ads with this adapter is disabled.";
            com.applovin.impl.sdk.x.H("MediationAdapterWrapper", str2);
            aVar2.onAdLoadFailed(str, new MaxErrorImpl(-1, str2));
            return;
        }
        this.amr = maxAdapterResponseParameters;
        this.amq.a(aVar2);
        final MaxAdFormat maxAdFormatXE = aVar.xF() ? aVar.xE() : aVar.getFormat();
        if (maxAdFormatXE == MaxAdFormat.INTERSTITIAL) {
            runnable = new Runnable() { // from class: com.applovin.impl.mediation.y0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.e(maxAdapterResponseParameters, activity);
                }
            };
        } else if (maxAdFormatXE == MaxAdFormat.APP_OPEN) {
            runnable = new Runnable() { // from class: com.applovin.impl.mediation.q
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.d(maxAdapterResponseParameters, activity);
                }
            };
        } else if (maxAdFormatXE == MaxAdFormat.REWARDED) {
            runnable = new Runnable() { // from class: com.applovin.impl.mediation.u0
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.c(maxAdapterResponseParameters, activity);
                }
            };
        } else if (maxAdFormatXE == MaxAdFormat.REWARDED_INTERSTITIAL) {
            runnable = new Runnable() { // from class: com.applovin.impl.mediation.t
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.b(maxAdapterResponseParameters, activity);
                }
            };
        } else if (maxAdFormatXE == MaxAdFormat.NATIVE) {
            runnable = new Runnable() { // from class: com.applovin.impl.mediation.a1
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.a(maxAdapterResponseParameters, activity);
                }
            };
        } else {
            if (!maxAdFormatXE.isAdViewAd()) {
                throw new IllegalStateException("Failed to load " + aVar + ": " + aVar.getFormat() + " (" + aVar.xE() + ") is not a supported ad format");
            }
            runnable = new Runnable() { // from class: com.applovin.impl.mediation.r
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.a(maxAdapterResponseParameters, maxAdFormatXE, activity);
                }
            };
        }
        a("load_ad", maxAdFormatXE, new Runnable() { // from class: com.applovin.impl.mediation.u
            @Override // java.lang.Runnable
            public final void run() {
                this.a.b(runnable, aVar);
            }
        });
    }

    public void b(@Nullable ViewGroup viewGroup) {
        this.amp = viewGroup;
    }

    void destroy() {
        if (this.amv) {
            return;
        }
        b("destroy", new Runnable() { // from class: com.applovin.impl.mediation.c1
            @Override // java.lang.Runnable
            public final void run() {
                this.a.uh();
            }
        });
    }

    public String getAdapterVersion() {
        MaxAdapter maxAdapter = this.amk;
        if (maxAdapter == null) {
            return null;
        }
        try {
            return maxAdapter.getAdapterVersion();
        } catch (Throwable th) {
            com.applovin.impl.sdk.x.e("MediationAdapterWrapper", "Failed to get adapter version for " + this.name, th);
            this.sdk.Cs().d("MediationAdapterWrapper", "adapter_version:" + this.ami.vt(), th);
            bC("adapter_version");
            this.sdk.Cw().a(this.ami.vt(), "adapter_version", this.aml);
            return null;
        }
    }

    public String getName() {
        return this.name;
    }

    public String getSdkVersion() {
        MaxAdapter maxAdapter = this.amk;
        if (maxAdapter == null) {
            return null;
        }
        try {
            return maxAdapter.getSdkVersion();
        } catch (Throwable th) {
            com.applovin.impl.sdk.x.e("MediationAdapterWrapper", "Failed to get adapter's SDK version for " + this.name, th);
            this.sdk.Cs().d("MediationAdapterWrapper", "sdk_version:" + this.ami.vt(), th);
            bC("sdk_version");
            this.sdk.Cw().a(this.ami.vt(), "sdk_version", this.aml);
            return null;
        }
    }

    public boolean isEnabled() {
        return this.ams.get();
    }

    public String toString() {
        return "MediationAdapterWrapper{adapterTag='" + this.amj + "'}";
    }

    @Nullable
    public View ub() {
        return this.amm;
    }

    @Nullable
    public MaxNativeAd uc() {
        return this.amn;
    }

    @Nullable
    public MaxNativeAdView ud() {
        return this.amo;
    }

    @Nullable
    public ViewGroup ue() {
        return this.amp;
    }

    public MediationServiceImpl.a uf() {
        return this.amq.amy;
    }

    public boolean ug() {
        return this.amt.get() && this.amu.get();
    }
}
