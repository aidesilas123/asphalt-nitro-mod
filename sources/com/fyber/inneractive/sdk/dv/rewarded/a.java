package com.fyber.inneractive.sdk.dv.rewarded;

import android.app.Activity;
import com.fyber.inneractive.sdk.config.b0;
import com.fyber.inneractive.sdk.config.global.s;
import com.fyber.inneractive.sdk.dv.d;
import com.fyber.inneractive.sdk.dv.f;
import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.util.l;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.OnUserEarnedRewardListener;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;

/* JADX INFO: loaded from: classes2.dex */
public class a extends com.fyber.inneractive.sdk.a<RewardedAd> {
    public final RewardedAdLoadCallback k;
    public final FullScreenContentCallback l;
    public final OnUserEarnedRewardListener m;

    /* JADX INFO: renamed from: com.fyber.inneractive.sdk.dv.rewarded.a$a, reason: collision with other inner class name */
    public class C0156a extends RewardedAdLoadCallback {
        public C0156a() {
        }

        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdFailedToLoad(LoadAdError loadAdError) {
            d dVar = a.this.f1988g;
            if (dVar != null) {
                ((com.fyber.inneractive.sdk.dv.b) dVar).l();
                InneractiveAdRequest inneractiveAdRequest = a.this.a;
                String spotId = inneractiveAdRequest != null ? inneractiveAdRequest.getSpotId() : null;
                com.fyber.inneractive.sdk.dv.enums.a aVar = com.fyber.inneractive.sdk.dv.enums.a.Load;
                a aVar2 = a.this;
                com.fyber.inneractive.sdk.dv.handler.c.a(spotId, aVar, aVar2.a, (f) aVar2.b, loadAdError.getMessage());
            }
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [T, com.google.android.gms.ads.rewarded.RewardedAd] */
        @Override // com.google.android.gms.ads.AdLoadCallback
        public void onAdLoaded(RewardedAd rewardedAd) {
            RewardedAd rewardedAd2 = rewardedAd;
            a aVar = a.this;
            if (aVar.f1988g != null) {
                aVar.i = rewardedAd2;
                aVar.j();
                ((com.fyber.inneractive.sdk.dv.b) a.this.f1988g).h();
            }
        }
    }

    public class b extends FullScreenContentCallback {
        public b() {
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdDismissedFullScreenContent() {
            com.fyber.inneractive.sdk.dv.interstitial.a aVar = a.this.j;
            if (aVar != null) {
                aVar.i();
            }
        }

        @Override // com.google.android.gms.ads.FullScreenContentCallback
        public void onAdImpression() {
            com.fyber.inneractive.sdk.dv.interstitial.a aVar = a.this.j;
            if (aVar != null) {
                aVar.w();
            }
        }
    }

    public class c implements OnUserEarnedRewardListener {
        public c() {
        }

        @Override // com.google.android.gms.ads.OnUserEarnedRewardListener
        public void onUserEarnedReward(RewardItem rewardItem) {
            com.fyber.inneractive.sdk.dv.interstitial.a aVar = a.this.j;
            if (aVar != null) {
                aVar.onReward();
            }
        }
    }

    public a(b0 b0Var, s sVar, f fVar) {
        super(b0Var, sVar, fVar);
        this.k = new C0156a();
        this.l = new b();
        this.m = new c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fyber.inneractive.sdk.a
    public void a(com.fyber.inneractive.sdk.dv.interstitial.a aVar, Activity activity) {
        this.j = aVar;
        T t = this.i;
        if (t != 0) {
            ((RewardedAd) t).setFullScreenContentCallback(this.l);
            ((RewardedAd) this.i).show(activity, this.m);
        }
    }

    @Override // com.fyber.inneractive.sdk.dv.a
    public void a(AdRequest adRequest, d dVar) {
        this.f1988g = dVar;
        RewardedAd.load(l.a, "FyberRewarded", adRequest, this.k);
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
