package com.fyber.inneractive.sdk.dv.interstitial;

import android.app.Activity;
import androidx.annotation.NonNull;
import com.fyber.inneractive.sdk.config.b0;
import com.fyber.inneractive.sdk.config.global.s;
import com.fyber.inneractive.sdk.dv.f;
import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.util.l;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.ads.interstitial.InterstitialAdLoadCallback;

/* JADX INFO: loaded from: classes2.dex */
public class b extends com.fyber.inneractive.sdk.a<InterstitialAd> {
    public final InterstitialAdLoadCallback k;
    public final FullScreenContentCallback l;

    public class a extends InterstitialAdLoadCallback {
        public a() {
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdFailedToLoad(@NonNull LoadAdError loadAdError) {
            com.fyber.inneractive.sdk.dv.d dVar = b.this.f1988g;
            if (dVar != null) {
                ((com.fyber.inneractive.sdk.dv.b) dVar).l();
                InneractiveAdRequest inneractiveAdRequest = b.this.a;
                String spotId = inneractiveAdRequest != null ? inneractiveAdRequest.getSpotId() : null;
                com.fyber.inneractive.sdk.dv.enums.a aVar = com.fyber.inneractive.sdk.dv.enums.a.Load;
                b bVar = b.this;
                com.fyber.inneractive.sdk.dv.handler.c.a(spotId, aVar, bVar.a, (f) bVar.b, loadAdError.getMessage());
            }
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [T, com.google.android.gms.ads.interstitial.InterstitialAd] */
        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdLoaded(InterstitialAd interstitialAd) {
            InterstitialAd interstitialAd2 = interstitialAd;
            b bVar = b.this;
            if (bVar.f1988g != null) {
                bVar.i = interstitialAd2;
                bVar.j();
                ((com.fyber.inneractive.sdk.dv.b) b.this.f1988g).h();
            }
        }
    }

    /* JADX INFO: renamed from: com.fyber.inneractive.sdk.dv.interstitial.b$b, reason: collision with other inner class name */
    public class C0155b extends FullScreenContentCallback {
        public C0155b() {
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdDismissedFullScreenContent() {
            com.fyber.inneractive.sdk.dv.interstitial.a aVar = b.this.j;
            if (aVar != null) {
                aVar.i();
            }
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdShowedFullScreenContent() {
            com.fyber.inneractive.sdk.dv.interstitial.a aVar = b.this.j;
            if (aVar != null) {
                aVar.w();
            }
        }
    }

    public b(b0 b0Var, s sVar, f fVar) {
        super(b0Var, sVar, fVar);
        this.k = new a();
        this.l = new C0155b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fyber.inneractive.sdk.a
    public void a(com.fyber.inneractive.sdk.dv.interstitial.a aVar, Activity activity) {
        this.j = aVar;
        T t = this.i;
        if (t != 0) {
            ((InterstitialAd) t).setFullScreenContentCallback(this.l);
            ((InterstitialAd) this.i).show(activity);
        }
    }

    @Override // com.fyber.inneractive.sdk.dv.a
    public void a(AdRequest adRequest, com.fyber.inneractive.sdk.dv.d dVar) {
        this.f1988g = dVar;
        InterstitialAd.load(l.a, "FyberInterstitial", adRequest, this.k);
    }

    @Override // com.fyber.inneractive.sdk.flow.q
    public boolean e() {
        return true;
    }

    @Override // com.fyber.inneractive.sdk.dv.a, com.fyber.inneractive.sdk.flow.q
    public boolean g() {
        return this.i != 0;
    }
}
