package com.fyber.inneractive.sdk.dv.banner;

import com.fyber.inneractive.sdk.config.a0;
import com.fyber.inneractive.sdk.config.b0;
import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;
import com.fyber.inneractive.sdk.config.global.s;
import com.fyber.inneractive.sdk.config.t;
import com.fyber.inneractive.sdk.dv.d;
import com.fyber.inneractive.sdk.dv.f;
import com.fyber.inneractive.sdk.dv.handler.c;
import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.util.l;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.LoadAdError;

/* JADX INFO: loaded from: classes2.dex */
public class a extends com.fyber.inneractive.sdk.dv.a<AdView> {
    public boolean j;
    public boolean k;
    public final AdListener l;

    /* JADX INFO: renamed from: com.fyber.inneractive.sdk.dv.banner.a$a, reason: collision with other inner class name */
    public class C0153a extends AdListener {
        public C0153a() {
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdFailedToLoad(LoadAdError loadAdError) {
            InneractiveAdRequest inneractiveAdRequest = a.this.a;
            String spotId = inneractiveAdRequest != null ? inneractiveAdRequest.getSpotId() : null;
            com.fyber.inneractive.sdk.dv.enums.a aVar = com.fyber.inneractive.sdk.dv.enums.a.Load;
            a aVar2 = a.this;
            c.a(spotId, aVar, aVar2.a, (f) aVar2.b, loadAdError.getMessage());
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdImpression() {
            a aVar = a.this;
            b bVar = aVar.h;
            if (bVar != null) {
                bVar.w();
            } else {
                aVar.j = true;
            }
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdLoaded() {
            a aVar = a.this;
            if (aVar.f1988g != null) {
                aVar.k = true;
                ((com.fyber.inneractive.sdk.dv.b) a.this.f1988g).h();
            }
        }

        @Override // com.google.android.gms.ads.AdListener
        public void onAdOpened() {
            f fVar;
            t tVar;
            b bVar = a.this.h;
            if (bVar != null) {
                bVar.D();
                AdContent adcontent = bVar.b;
                if (adcontent == 0 || (fVar = (f) ((a) adcontent).b) == null) {
                    return;
                }
                bVar.a(fVar);
                b0 b0Var = ((a) bVar.b).f2019d;
                if (b0Var == null || (tVar = ((a0) b0Var).c) == null) {
                    return;
                }
                bVar.a(com.fyber.inneractive.sdk.cache.session.enums.a.CLICK, tVar.b == UnitDisplayType.MRECT ? com.fyber.inneractive.sdk.cache.session.enums.b.RECTANGLE_DISPLAY : com.fyber.inneractive.sdk.cache.session.enums.b.BANNER_DISPLAY);
            }
        }
    }

    public a(b0 b0Var, s sVar, f fVar) {
        super(b0Var, sVar, fVar);
        this.j = false;
        this.k = false;
        this.l = new C0153a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [T, com.google.android.gms.ads.AdView, com.google.android.gms.ads.BaseAdView] */
    @Override // com.fyber.inneractive.sdk.dv.a
    public void a(AdRequest adRequest, d dVar) {
        t tVar;
        this.f1988g = dVar;
        ?? adView = new AdView(l.a);
        this.i = adView;
        AdSize adSize = AdSize.BANNER;
        b0 b0Var = this.f2019d;
        if (b0Var != null && (tVar = ((a0) b0Var).c) != null && tVar.b == UnitDisplayType.MRECT) {
            adSize = AdSize.MEDIUM_RECTANGLE;
        }
        adView.setAdSize(adSize);
        ((AdView) this.i).setAdUnitId("FyberBanner");
        ((AdView) this.i).setAdListener(this.l);
        ((AdView) this.i).loadAd(adRequest);
    }

    @Override // com.fyber.inneractive.sdk.flow.q
    public boolean e() {
        return false;
    }

    @Override // com.fyber.inneractive.sdk.dv.a, com.fyber.inneractive.sdk.flow.q
    public boolean g() {
        return this.k;
    }
}
