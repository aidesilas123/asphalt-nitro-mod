package com.applovin.impl.mediation.ads;

import android.view.ViewGroup;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.sdk.ac;
import com.applovin.impl.sdk.ad;
import com.applovin.impl.sdk.x;

/* JADX INFO: loaded from: classes.dex */
public class b implements ad.a {
    private final ac amW;
    private final ad amX;
    private final com.applovin.impl.mediation.b.d anP;
    private final a.InterfaceC0060a anQ;
    private final com.applovin.impl.sdk.n sdk;

    public b(com.applovin.impl.mediation.b.d dVar, ViewGroup viewGroup, a.InterfaceC0060a interfaceC0060a, com.applovin.impl.sdk.n nVar) {
        this.sdk = nVar;
        this.anP = dVar;
        this.anQ = interfaceC0060a;
        this.amW = new ac(viewGroup, nVar);
        ad adVar = new ad(viewGroup, nVar, this);
        this.amX = adVar;
        adVar.b(dVar);
        nVar.BN();
        if (x.Fn()) {
            nVar.BN().f("MaxNativeAdView", "Created new MaxNativeAdView (" + this + ")");
        }
    }

    private void bI(long j) {
        if (this.anP.yp().compareAndSet(false, true)) {
            this.sdk.BN();
            if (x.Fn()) {
                this.sdk.BN().f("MaxNativeAdView", "Scheduling viewability impression for ad...");
            }
            this.sdk.Cy().processViewabilityAdImpressionPostback(this.anP, j, this.anQ);
        }
    }

    public void destroy() {
        this.amX.Fw();
    }

    @Override // com.applovin.impl.sdk.ad.a
    public void onLogVisibilityImpression() {
        bI(this.amW.a(this.anP));
    }

    public void uy() {
        this.sdk.BN();
        if (x.Fn()) {
            this.sdk.BN().f("MaxNativeAdView", "Handling view attached to window");
        }
        if (this.anP.yo().compareAndSet(false, true)) {
            this.sdk.BN();
            if (x.Fn()) {
                this.sdk.BN().f("MaxNativeAdView", "Scheduling impression for ad manually...");
            }
            if (this.anP.getNativeAd().isExpired()) {
                x.H("MaxNativeAdView", "Attempting to display an expired native ad. Check if an ad is expired before displaying using `MaxAd.getNativeAd().isExpired()`");
            } else {
                this.sdk.Cb().a(this.anP);
            }
            this.sdk.Cy().processRawAdImpressionPostback(this.anP, this.anQ);
        }
    }

    public com.applovin.impl.mediation.b.d uz() {
        return this.anP;
    }
}
