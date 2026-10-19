package com.applovin.impl.mediation.ads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.mediation.d;
import com.applovin.impl.sdk.ac;
import com.applovin.impl.sdk.ad;
import com.applovin.impl.sdk.e;
import com.applovin.impl.sdk.e.ab;
import com.applovin.impl.sdk.f;
import com.applovin.impl.sdk.r;
import com.applovin.impl.sdk.utils.AppLovinSdkExtraParameterKey;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.u;
import com.applovin.impl.sdk.utils.v;
import com.applovin.impl.sdk.x;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.ads.MaxAdView;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class MaxAdViewImpl extends com.applovin.impl.mediation.ads.a implements ad.a, e.a, f.a {
    private final Context E;
    private boolean agJ;
    private final String ajW;
    private String amN;
    private final MaxAdView amO;
    private final View amP;
    private long amQ;
    private com.applovin.impl.mediation.b.b amR;
    private String amS;
    private final a amT;
    private final c amU;
    private final com.applovin.impl.sdk.e amV;
    private final ac amW;
    private final ad amX;
    private final Object amY;
    private com.applovin.impl.mediation.b.b amZ;
    private boolean ana;
    private boolean anb;
    private boolean anc;
    private boolean and;
    private boolean ane;
    private boolean anf;
    private boolean ang;
    private boolean anh;
    private boolean ani;
    private boolean anj;

    private class a extends b {
        private a() {
            super();
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(@NonNull String str, @NonNull MaxError maxError) {
            x xVar = MaxAdViewImpl.this.logger;
            if (x.Fn()) {
                MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                maxAdViewImpl.logger.f(maxAdViewImpl.tag, "MaxAdListener.onAdLoadFailed(adUnitId=" + str + ", error=" + maxError + "), listener=" + MaxAdViewImpl.this.adListener);
            }
            com.applovin.impl.sdk.utils.m.a(MaxAdViewImpl.this.adListener, str, maxError, true, true);
            MaxAdViewImpl.this.b(maxError);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(@NonNull MaxAd maxAd) {
            if (MaxAdViewImpl.this.ur()) {
                x xVar = MaxAdViewImpl.this.logger;
                if (x.Fn()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    maxAdViewImpl.logger.f(maxAdViewImpl.tag, "Precache ad with ad unit ID '" + MaxAdViewImpl.this.adUnitId + "' loaded after MaxAdView was destroyed. Destroying the ad.");
                }
                MaxAdViewImpl.this.sdk.Cy().destroyAd(maxAd);
                return;
            }
            com.applovin.impl.mediation.b.b bVar = (com.applovin.impl.mediation.b.b) maxAd;
            bVar.setPlacement(MaxAdViewImpl.this.amN);
            bVar.setCustomData(MaxAdViewImpl.this.amS);
            if (bVar.getAdView() == null) {
                MaxAdViewImpl.this.sdk.Cy().destroyAd(bVar);
                onAdLoadFailed(bVar.getAdUnitId(), new MaxErrorImpl(-5001, "Ad view not fully loaded"));
                return;
            }
            Boolean bool = (Boolean) MaxAdViewImpl.this.sdk.a(com.applovin.impl.sdk.c.a.aJD);
            if (!bool.booleanValue()) {
                MaxAdViewImpl.this.a(bVar);
            }
            if (bVar.xS()) {
                long jXT = bVar.xT();
                MaxAdViewImpl.this.sdk.BN();
                if (x.Fn()) {
                    MaxAdViewImpl.this.sdk.BN().f(MaxAdViewImpl.this.tag, "Scheduling banner ad refresh " + jXT + " milliseconds from now for '" + MaxAdViewImpl.this.adUnitId + "'...");
                }
                MaxAdViewImpl.this.amV.bK(jXT);
                if (MaxAdViewImpl.this.amV.AL() || MaxAdViewImpl.this.anb) {
                    x xVar2 = MaxAdViewImpl.this.logger;
                    if (x.Fn()) {
                        MaxAdViewImpl maxAdViewImpl2 = MaxAdViewImpl.this;
                        maxAdViewImpl2.logger.f(maxAdViewImpl2.tag, "Pausing ad refresh for publisher");
                    }
                    MaxAdViewImpl.this.amV.AJ();
                }
            }
            x xVar3 = MaxAdViewImpl.this.logger;
            if (x.Fn()) {
                MaxAdViewImpl maxAdViewImpl3 = MaxAdViewImpl.this;
                maxAdViewImpl3.logger.f(maxAdViewImpl3.tag, "MaxAdListener.onAdLoaded(ad=" + maxAd + "), listener=" + MaxAdViewImpl.this.adListener);
            }
            com.applovin.impl.sdk.utils.m.a(MaxAdViewImpl.this.adListener, maxAd, true, true);
            if (bool.booleanValue()) {
                MaxAdViewImpl.this.a(bVar);
            }
        }
    }

    private abstract class b implements a.InterfaceC0060a, MaxAdListener, MaxAdRevenueListener, MaxAdViewAdListener {
        private boolean anl;

        private b() {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(@NonNull MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.amZ)) {
                x xVar = MaxAdViewImpl.this.logger;
                if (x.Fn()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    maxAdViewImpl.logger.f(maxAdViewImpl.tag, "MaxAdListener.onAdClicked(ad=" + maxAd + "), listener=" + MaxAdViewImpl.this.adListener);
                }
                com.applovin.impl.sdk.utils.m.d(MaxAdViewImpl.this.adListener, maxAd, true, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdViewAdListener
        public void onAdCollapsed(@NonNull MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.amZ)) {
                if ((MaxAdViewImpl.this.amZ.xU() || MaxAdViewImpl.this.anh) && this.anl) {
                    this.anl = false;
                    MaxAdViewImpl.this.startAutoRefresh();
                }
                x xVar = MaxAdViewImpl.this.logger;
                if (x.Fn()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    maxAdViewImpl.logger.f(maxAdViewImpl.tag, "MaxAdViewAdListener.onAdCollapsed(ad=" + maxAd + "), listener=" + MaxAdViewImpl.this.adListener);
                }
                com.applovin.impl.sdk.utils.m.h(MaxAdViewImpl.this.adListener, maxAd, true, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(@NonNull MaxAd maxAd, @NonNull MaxError maxError) {
            if (maxAd.equals(MaxAdViewImpl.this.amZ)) {
                x xVar = MaxAdViewImpl.this.logger;
                if (x.Fn()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    maxAdViewImpl.logger.f(maxAdViewImpl.tag, "MaxAdListener.onAdDisplayFailed(ad=" + maxAd + ", error=" + maxError + "), listener=" + MaxAdViewImpl.this.adListener);
                }
                com.applovin.impl.sdk.utils.m.a(MaxAdViewImpl.this.adListener, maxAd, maxError, true, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(@NonNull MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.amZ)) {
                x xVar = MaxAdViewImpl.this.logger;
                if (x.Fn()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    maxAdViewImpl.logger.f(maxAdViewImpl.tag, "MaxAdListener.onAdDisplayed(ad=" + maxAd + "), listener=" + MaxAdViewImpl.this.adListener);
                }
                com.applovin.impl.sdk.utils.m.b(MaxAdViewImpl.this.adListener, maxAd, true, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdViewAdListener
        public void onAdExpanded(@NonNull MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.amZ)) {
                if ((MaxAdViewImpl.this.amZ.xU() || MaxAdViewImpl.this.anh) && !MaxAdViewImpl.this.amV.AL()) {
                    this.anl = true;
                    MaxAdViewImpl.this.stopAutoRefresh();
                }
                x xVar = MaxAdViewImpl.this.logger;
                if (x.Fn()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    maxAdViewImpl.logger.f(maxAdViewImpl.tag, "MaxAdViewAdListener.onAdExpanded(ad=" + maxAd + "), listener=" + MaxAdViewImpl.this.adListener);
                }
                com.applovin.impl.sdk.utils.m.g(MaxAdViewImpl.this.adListener, maxAd, true, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(@NonNull MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.amZ)) {
                x xVar = MaxAdViewImpl.this.logger;
                if (x.Fn()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    maxAdViewImpl.logger.f(maxAdViewImpl.tag, "MaxAdListener.onAdHidden(ad=" + maxAd + "), listener=" + MaxAdViewImpl.this.adListener);
                }
                com.applovin.impl.sdk.utils.m.c(MaxAdViewImpl.this.adListener, maxAd, true, true);
            }
        }

        @Override // com.applovin.mediation.MaxAdRequestListener
        public void onAdRequestStarted(@NonNull String str) {
            x xVar = MaxAdViewImpl.this.logger;
            if (x.Fn()) {
                MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                maxAdViewImpl.logger.f(maxAdViewImpl.tag, "MaxAdRequestListener.onAdRequestStarted(adUnitId=" + str + "), listener=" + MaxAdViewImpl.this.requestListener);
            }
            com.applovin.impl.sdk.utils.m.a(MaxAdViewImpl.this.requestListener, str, true, true);
        }

        @Override // com.applovin.mediation.MaxAdRevenueListener
        public void onAdRevenuePaid(@NonNull MaxAd maxAd) {
            x xVar = MaxAdViewImpl.this.logger;
            if (x.Fn()) {
                MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                maxAdViewImpl.logger.f(maxAdViewImpl.tag, "MaxAdRevenueListener.onAdRevenuePaid(ad=" + maxAd + "), listener=" + MaxAdViewImpl.this.revenueListener);
            }
            com.applovin.impl.sdk.utils.m.a(MaxAdViewImpl.this.revenueListener, maxAd, true, true);
        }
    }

    private class c extends b {
        private c() {
            super();
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(@NonNull String str, @NonNull MaxError maxError) {
            x xVar = MaxAdViewImpl.this.logger;
            if (x.Fn()) {
                MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                maxAdViewImpl.logger.f(maxAdViewImpl.tag, "Failed to precache ad for refresh with error code: " + maxError.getCode());
            }
            MaxAdViewImpl.this.b(maxError);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(@NonNull MaxAd maxAd) {
            if (!MaxAdViewImpl.this.agJ) {
                x xVar = MaxAdViewImpl.this.logger;
                if (x.Fn()) {
                    MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                    maxAdViewImpl.logger.f(maxAdViewImpl.tag, "Successfully pre-cached ad for refresh");
                }
                MaxAdViewImpl.this.c(maxAd);
                return;
            }
            x xVar2 = MaxAdViewImpl.this.logger;
            if (x.Fn()) {
                MaxAdViewImpl maxAdViewImpl2 = MaxAdViewImpl.this;
                maxAdViewImpl2.logger.f(maxAdViewImpl2.tag, "Ad with ad unit ID '" + MaxAdViewImpl.this.adUnitId + "' loaded after MaxAdView was destroyed. Destroying the ad.");
            }
            MaxAdViewImpl.this.sdk.Cy().destroyAd(maxAd);
        }
    }

    public MaxAdViewImpl(String str, MaxAdFormat maxAdFormat, MaxAdView maxAdView, View view, com.applovin.impl.sdk.n nVar, Context context) {
        super(str, maxAdFormat, "MaxAdView", nVar);
        this.ajW = UUID.randomUUID().toString().toLowerCase(Locale.US);
        this.amQ = Long.MAX_VALUE;
        this.amY = new Object();
        this.amZ = null;
        this.agJ = false;
        if (context == null) {
            throw new IllegalArgumentException("No context specified");
        }
        this.E = context.getApplicationContext();
        this.amO = maxAdView;
        this.amP = view;
        this.amT = new a();
        this.amU = new c();
        this.amV = new com.applovin.impl.sdk.e(nVar, this);
        this.amW = new ac(maxAdView, nVar);
        this.amX = new ad(maxAdView, nVar, this);
        nVar.Cv().a(this);
        if (x.Fn()) {
            this.logger.f(this.tag, "Created new MaxAdView (" + this + ")");
        }
    }

    private void a(View view, com.applovin.impl.mediation.b.b bVar) {
        int width = bVar.getWidth();
        int height = bVar.getHeight();
        int iDpToPx = width == -1 ? -1 : AppLovinSdkUtils.dpToPx(view.getContext(), width);
        int iDpToPx2 = height != -1 ? AppLovinSdkUtils.dpToPx(view.getContext(), height) : -1;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new RelativeLayout.LayoutParams(iDpToPx, iDpToPx2);
        } else {
            layoutParams.width = iDpToPx;
            layoutParams.height = iDpToPx2;
        }
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            if (x.Fn()) {
                this.logger.f(this.tag, "Pinning ad view to MAX ad view with width: " + iDpToPx + " and height: " + iDpToPx2 + ".");
            }
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
            for (int i : v.m(this.amO.getGravity(), 10, 14)) {
                layoutParams2.addRule(i);
            }
        }
        view.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(a.InterfaceC0060a interfaceC0060a, d.a aVar) {
        com.applovin.impl.mediation.b.b bVar = this.amZ;
        if (bVar != null) {
            long jA = this.amW.a(bVar);
            this.extraParameters.put("visible_ad_ad_unit_id", this.amZ.getAdUnitId());
            this.extraParameters.put("viewability_flags", Long.valueOf(jA));
        } else {
            this.extraParameters.remove("visible_ad_ad_unit_id");
            this.extraParameters.remove("viewability_flags");
        }
        int iPxToDp = AppLovinSdkUtils.pxToDp(this.amO.getContext(), this.amO.getWidth());
        int iPxToDp2 = AppLovinSdkUtils.pxToDp(this.amO.getContext(), this.amO.getHeight());
        this.extraParameters.put("viewport_width", Integer.valueOf(iPxToDp));
        this.extraParameters.put("viewport_height", Integer.valueOf(iPxToDp2));
        this.extraParameters.put("auto_refresh_stopped", Boolean.valueOf(this.amV.AL() || this.anb));
        this.extraParameters.put("auto_retries_disabled", Boolean.valueOf(this.anf));
        if (x.Fn()) {
            this.logger.f(this.tag, "Loading " + this.adFormat.getLabel().toLowerCase(Locale.ENGLISH) + " ad for '" + this.adUnitId + "' and notifying " + interfaceC0060a + "...");
        }
        this.sdk.Cy().loadAd(this.adUnitId, this.ajW, this.adFormat, aVar, this.localExtraParameters, this.extraParameters, this.E, interfaceC0060a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final com.applovin.impl.mediation.b.b bVar) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.mediation.ads.f
            @Override // java.lang.Runnable
            public final void run() {
                this.a.c(bVar);
            }
        });
    }

    private void a(com.applovin.impl.mediation.b.b bVar, long j) {
        if (x.Fn()) {
            this.logger.f(this.tag, "Scheduling viewability impression for ad...");
        }
        this.sdk.Cy().processViewabilityAdImpressionPostback(bVar, j, this.amT);
    }

    private void a(final d.a aVar, final a.InterfaceC0060a interfaceC0060a) {
        if (!ur()) {
            AppLovinSdkUtils.runOnUiThread(true, new Runnable() { // from class: com.applovin.impl.mediation.ads.e
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.a(interfaceC0060a, aVar);
                }
            });
            return;
        }
        boolean zB = u.b(com.applovin.impl.sdk.n.getApplicationContext(), this.sdk);
        this.sdk.Cs().a(r.a.INTEGRATION_ERROR, "attemptingToLoadDestroyedAdView", "debug=" + zB);
        if (!zB) {
            x.H(this.tag, "Failed to load new ad - this instance is already destroyed");
            return;
        }
        throw new IllegalStateException("Failed to load new ad - this instance is already destroyed for ad unit ID: " + this.adUnitId);
    }

    private void b(com.applovin.impl.mediation.b.b bVar) {
        int height = this.amO.getHeight();
        int width = this.amO.getWidth();
        if (height > 0 || width > 0) {
            int iPxToDp = AppLovinSdkUtils.pxToDp(this.E, height);
            int iPxToDp2 = AppLovinSdkUtils.pxToDp(this.E, width);
            MaxAdFormat format = bVar.getFormat();
            int height2 = (this.anj ? format.getAdaptiveSize(iPxToDp2, this.amO.getContext()) : format.getSize()).getHeight();
            int iMin = Math.min(format.getSize().getWidth(), com.applovin.impl.sdk.utils.h.Y(this.E).x);
            if (iPxToDp < height2 || iPxToDp2 < iMin) {
                StringBuilder sb = new StringBuilder();
                sb.append("\n**************************************************\n`MaxAdView` size ");
                sb.append(iPxToDp2);
                sb.append("x");
                sb.append(iPxToDp);
                sb.append(" dp smaller than required ");
                sb.append(this.anj ? "adaptive " : "");
                sb.append("size: ");
                sb.append(iMin);
                sb.append("x");
                sb.append(height2);
                sb.append(" dp\nSome mediated networks (e.g. Google Ad Manager) may not render correctly\n**************************************************\n");
                String string = sb.toString();
                if (x.Fn()) {
                    this.logger.i("AppLovinSdk", string);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(MaxError maxError) {
        if (ur()) {
            if (x.Fn()) {
                this.logger.f(this.tag, "Ad load failure with ad unit ID '" + this.adUnitId + "' occured after MaxAdView was destroyed.");
                return;
            }
            return;
        }
        if (this.sdk.b(com.applovin.impl.sdk.c.a.aJr).contains(String.valueOf(maxError.getCode()))) {
            this.sdk.BN();
            if (x.Fn()) {
                this.sdk.BN().f(this.tag, "Ignoring banner ad refresh for error code " + maxError.getCode());
                return;
            }
            return;
        }
        if (!this.anb && !this.amV.AL()) {
            this.ana = true;
            this.and = false;
            long jLongValue = ((Long) this.sdk.a(com.applovin.impl.sdk.c.a.aJq)).longValue();
            if (jLongValue >= 0) {
                this.sdk.BN();
                if (x.Fn()) {
                    this.sdk.BN().f(this.tag, "Scheduling failed banner ad refresh " + jLongValue + " milliseconds from now for '" + this.adUnitId + "'...");
                }
                this.amV.bK(jLongValue);
                return;
            }
            return;
        }
        if (this.and) {
            if (x.Fn()) {
                this.logger.f(this.tag, "Refresh pre-cache failed when auto-refresh is stopped");
            }
            this.and = false;
        }
        if (this.anc) {
            if (x.Fn()) {
                this.logger.f(this.tag, "Refresh pre-cache failed - MaxAdListener.onAdLoadFailed(adUnitId=" + this.adUnitId + ", error=" + maxError + "), listener=" + this.adListener);
            }
            com.applovin.impl.sdk.utils.m.a(this.adListener, this.adUnitId, maxError, true, true);
        }
    }

    private void bH(long j) {
        if (!u.E(j, ((Long) this.sdk.a(com.applovin.impl.sdk.c.a.aJB)).longValue()) || this.ani) {
            if (x.Fn()) {
                this.logger.f(this.tag, "No undesired viewability flags matched or forcing pre-cache - scheduling viewability");
            }
            this.ana = false;
            uo();
            return;
        }
        if (x.Fn()) {
            this.logger.f(this.tag, "Undesired flags matched - current: " + Long.toBinaryString(j) + ", undesired: " + Long.toBinaryString(j));
        }
        if (x.Fn()) {
            this.logger.f(this.tag, "Waiting for refresh timer to manually fire request");
        }
        this.ana = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(final com.applovin.impl.mediation.b.b bVar) {
        View adView = bVar.getAdView();
        String str = adView == null ? "MaxAdView does not have a loaded ad view" : null;
        MaxAdView maxAdView = this.amO;
        if (maxAdView == null) {
            str = "MaxAdView does not have a parent view";
        }
        if (str != null) {
            if (x.Fn()) {
                this.logger.i(this.tag, str);
            }
            MaxErrorImpl maxErrorImpl = new MaxErrorImpl(-1, str);
            if (x.Fn()) {
                this.logger.f(this.tag, "MaxAdListener.onAdDisplayFailed(ad=" + bVar + ", error=" + maxErrorImpl + "), listener=" + this.adListener);
            }
            com.applovin.impl.sdk.utils.m.a(this.adListener, (MaxAd) bVar, (MaxError) maxErrorImpl, true, true);
            this.sdk.Cy().processAdDisplayErrorPostbackForUserError(maxErrorImpl, bVar);
            return;
        }
        un();
        g(bVar);
        if (bVar.yw()) {
            this.amX.b(bVar);
        }
        maxAdView.setDescendantFocusability(393216);
        if (bVar.xV() != Long.MAX_VALUE) {
            this.amP.setBackgroundColor((int) bVar.xV());
        } else {
            long j = this.amQ;
            if (j != Long.MAX_VALUE) {
                this.amP.setBackgroundColor((int) j);
            } else {
                this.amP.setBackgroundColor(0);
            }
        }
        maxAdView.addView(adView);
        a(adView, bVar);
        this.sdk.Co().V(bVar);
        b(bVar);
        synchronized (this.amY) {
            this.amZ = bVar;
        }
        if (x.Fn()) {
            this.logger.f(this.tag, "Scheduling impression for ad manually...");
        }
        this.sdk.Cy().processRawAdImpressionPostback(bVar, this.amT);
        if (StringUtils.isValidString(this.amZ.getAdReviewCreativeId())) {
            com.applovin.impl.sdk.utils.m.a(this.adReviewListener, this.amZ.getAdReviewCreativeId(), (MaxAd) this.amZ, true);
        }
        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.ads.d
            @Override // java.lang.Runnable
            public final void run() {
                this.a.d(bVar);
            }
        }, bVar.xR());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(MaxAd maxAd) {
        this.and = false;
        if (!this.anc) {
            if (x.Fn()) {
                this.logger.f(this.tag, "Saving pre-cache ad...");
            }
            com.applovin.impl.mediation.b.b bVar = (com.applovin.impl.mediation.b.b) maxAd;
            this.amR = bVar;
            bVar.setPlacement(this.amN);
            this.amR.setCustomData(this.amS);
            return;
        }
        this.anc = false;
        if (x.Fn()) {
            this.logger.f(this.tag, "Rendering precache request ad: " + maxAd.getAdUnitId() + "...");
        }
        this.amT.onAdLoaded(maxAd);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(com.applovin.impl.mediation.b.b bVar) {
        long jA = this.amW.a(bVar);
        if (!bVar.yw()) {
            a(bVar, jA);
        }
        bH(jA);
    }

    private void r(String str, String str2) {
        if (AppLovinSdkExtraParameterKey.ALLOW_IMMEDIATE_AUTO_REFRESH_PAUSE.equalsIgnoreCase(str)) {
            if (x.Fn()) {
                this.logger.f(this.tag, "Updated allow immediate auto-refresh pause and ad load to: " + str2);
            }
            this.ane = Boolean.parseBoolean(str2);
            return;
        }
        if (AppLovinSdkExtraParameterKey.DISABLE_AUTO_RETRIES.equalsIgnoreCase(str)) {
            if (x.Fn()) {
                this.logger.f(this.tag, "Updated disable auto-retries to: " + str2);
            }
            this.anf = Boolean.parseBoolean(str2);
            return;
        }
        if (AppLovinSdkExtraParameterKey.DISABLE_PRECACHE.equalsIgnoreCase(str)) {
            if (x.Fn()) {
                this.logger.f(this.tag, "Updated precached disabled to: " + str2);
            }
            this.ang = Boolean.parseBoolean(str2);
            return;
        }
        if (AppLovinSdkExtraParameterKey.DISABLE_AUTO_REFRESH_ON_AD_EXPAND.equals(str)) {
            if (x.Fn()) {
                this.logger.f(this.tag, "Updated should stop auto-refresh on ad expand to: " + str2);
            }
            this.anh = Boolean.parseBoolean(str2);
            return;
        }
        if (AppLovinSdkExtraParameterKey.FORCE_PRECACHE.equals(str)) {
            if (x.Fn()) {
                this.logger.f(this.tag, "Updated force precache to: " + str2);
            }
            this.ani = Boolean.parseBoolean(str2);
            return;
        }
        if (AppLovinSdkExtraParameterKey.IS_ADAPTIVE_BANNER.equalsIgnoreCase(str)) {
            if (x.Fn()) {
                this.logger.f(this.tag, "Updated is adaptive banner to: " + str2);
            }
            this.anj = Boolean.parseBoolean(str2);
            setLocalExtraParameter(str, str2);
        }
    }

    private void un() {
        com.applovin.impl.mediation.b.b bVar;
        MaxAdView maxAdView = this.amO;
        if (maxAdView != null) {
            com.applovin.impl.sdk.utils.c.a(maxAdView, this.amP);
        }
        this.amX.Fw();
        synchronized (this.amY) {
            bVar = this.amZ;
        }
        if (bVar != null) {
            this.sdk.Cy().destroyAd(bVar);
        }
    }

    private void uo() {
        if (uq()) {
            if (x.Fn()) {
                this.logger.f(this.tag, "Scheduling refresh precache request now");
            }
            this.and = true;
            this.sdk.BO().a(new ab(this.sdk, "loadMaxAdForPrecacheRequest", new Runnable() { // from class: com.applovin.impl.mediation.ads.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.us();
                }
            }), com.applovin.impl.mediation.e.c.f(this.adFormat));
        }
    }

    private void up() {
        if (x.Fn()) {
            this.logger.f(this.tag, "Rendering for cached ad: " + this.amR + "...");
        }
        this.amT.onAdLoaded(this.amR);
        this.amR = null;
    }

    private boolean uq() {
        if (this.ang) {
            return false;
        }
        return ((Boolean) this.sdk.a(com.applovin.impl.sdk.c.a.aJC)).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean ur() {
        boolean z;
        synchronized (this.amY) {
            z = this.agJ;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void us() {
        if (x.Fn()) {
            this.logger.f(this.tag, "Loading ad for pre-cache request...");
        }
        a(d.a.SEQUENTIAL_OR_PRECACHE, this.amU);
    }

    @Override // com.applovin.impl.mediation.ads.a
    public void destroy() {
        un();
        if (this.amR != null) {
            this.sdk.Cy().destroyAd(this.amR);
        }
        synchronized (this.amY) {
            this.agJ = true;
        }
        this.amV.AI();
        this.sdk.Cv().b(this);
        this.sdk.CD().o(this.adUnitId, this.ajW);
        super.destroy();
    }

    public MaxAdFormat getAdFormat() {
        return this.adFormat;
    }

    public String getPlacement() {
        return this.amN;
    }

    public void loadAd() {
        loadAd(d.a.PUBLISHER_INITIATED);
    }

    public void loadAd(d.a aVar) {
        if (x.Fn()) {
            this.logger.f(this.tag, "" + this + " Loading ad for " + this.adUnitId + "...");
        }
        boolean z = this.ane || ((Boolean) this.sdk.a(com.applovin.impl.sdk.c.a.aJx)).booleanValue();
        if (z && !this.amV.AL() && this.amV.AG()) {
            x.H(this.tag, "Unable to load a new ad. An ad refresh has already been scheduled in " + TimeUnit.MILLISECONDS.toSeconds(this.amV.AH()) + " seconds.");
            return;
        }
        if (!z) {
            if (x.Fn()) {
                this.logger.f(this.tag, "Loading ad...");
            }
            a(aVar, this.amT);
        } else if (this.amR != null) {
            if (x.Fn()) {
                this.logger.f(this.tag, "Rendering cached ad");
            }
            up();
        } else if (this.and) {
            if (x.Fn()) {
                this.logger.f(this.tag, "Waiting for precache ad to load to render");
            }
            this.anc = true;
        } else {
            if (x.Fn()) {
                this.logger.f(this.tag, "Loading ad...");
            }
            a(aVar, this.amT);
        }
    }

    @Override // com.applovin.impl.sdk.e.a
    public void onAdRefresh() {
        this.anc = false;
        if (this.amR != null) {
            up();
            return;
        }
        if (!uq()) {
            if (x.Fn()) {
                this.logger.f(this.tag, "Refreshing ad from network...");
            }
            loadAd(d.a.REFRESH);
        } else if (this.ana) {
            if (x.Fn()) {
                this.logger.f(this.tag, "Refreshing ad from network due to viewability requirements not met for refresh request...");
            }
            loadAd(d.a.REFRESH);
        } else {
            if (x.Fn()) {
                this.logger.i(this.tag, "Ignoring attempt to refresh ad - either still waiting for precache or did not attempt request due to visibility requirement not met");
            }
            this.anc = true;
        }
    }

    @Override // com.applovin.impl.sdk.f.a
    public void onCreativeIdGenerated(String str, String str2) {
        com.applovin.impl.mediation.b.b bVar = this.amZ;
        if (bVar != null && bVar.xA().equalsIgnoreCase(str)) {
            this.amZ.bV(str2);
            com.applovin.impl.sdk.utils.m.a(this.adReviewListener, str2, this.amZ);
            return;
        }
        com.applovin.impl.mediation.b.b bVar2 = this.amR;
        if (bVar2 == null || !bVar2.xA().equalsIgnoreCase(str)) {
            return;
        }
        this.amR.bV(str2);
    }

    @Override // com.applovin.impl.sdk.ad.a
    public void onLogVisibilityImpression() {
        a(this.amZ, this.amW.a(this.amZ));
    }

    public void onWindowVisibilityChanged(int i) {
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.a.aJv)).booleanValue() && this.amV.AG()) {
            if (v.gZ(i)) {
                if (x.Fn()) {
                    this.logger.f(this.tag, "Ad view visible");
                }
                this.amV.AC();
            } else {
                if (x.Fn()) {
                    this.logger.f(this.tag, "Ad view hidden");
                }
                this.amV.AB();
            }
        }
    }

    public void setCustomData(String str) {
        if (this.amZ != null && x.Fn()) {
            this.logger.h(this.tag, "Setting custom data (" + str + ") for Ad Unit ID (" + this.adUnitId + ") after an ad has been loaded already.");
        }
        u.N(str, this.tag);
        this.amS = str;
    }

    @Override // com.applovin.impl.mediation.ads.a
    public void setExtraParameter(String str, String str2) {
        super.setExtraParameter(str, str2);
        r(str, str2);
    }

    public void setPlacement(String str) {
        if (this.amZ != null && x.Fn()) {
            this.logger.h(this.tag, "Setting placement (" + str + ") for Ad Unit ID (" + this.adUnitId + ") after an ad has been loaded already.");
        }
        this.amN = str;
    }

    public void setPublisherBackgroundColor(int i) {
        this.amQ = i;
    }

    public void startAutoRefresh() {
        this.anb = false;
        if (!this.amV.AL()) {
            if (x.Fn()) {
                this.logger.f(this.tag, "Ignoring call to startAutoRefresh() - ad refresh is not paused");
                return;
            }
            return;
        }
        this.amV.AK();
        if (x.Fn()) {
            this.logger.f(this.tag, "Resumed auto-refresh with remaining time: " + this.amV.AH() + "ms");
        }
    }

    public void stopAutoRefresh() {
        if (this.amZ == null) {
            if (this.ane || ((Boolean) this.sdk.a(com.applovin.impl.sdk.c.a.aJx)).booleanValue()) {
                this.anb = true;
                return;
            } else {
                x.F(this.tag, "Stopping auto-refresh has no effect until after the first ad has been loaded.");
                return;
            }
        }
        if (x.Fn()) {
            this.logger.f(this.tag, "Pausing auto-refresh with remaining time: " + this.amV.AH() + "ms");
        }
        this.amV.AJ();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("MaxAdView{adUnitId='");
        sb.append(this.adUnitId);
        sb.append('\'');
        sb.append(", adListener=");
        Object obj = this.adListener;
        if (obj == this.amO) {
            obj = "this";
        }
        sb.append(obj);
        sb.append(", isDestroyed=");
        sb.append(ur());
        sb.append('}');
        return sb.toString();
    }
}
