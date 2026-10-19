package com.fyber.inneractive.sdk.dv.rewarded;

import android.app.Activity;
import androidx.annotation.NonNull;
import com.fyber.inneractive.sdk.config.b0;
import com.fyber.inneractive.sdk.config.global.s;
import com.fyber.inneractive.sdk.dv.d;
import com.fyber.inneractive.sdk.dv.f;
import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.util.l;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.rewarded.RewardItem;
import com.google.android.gms.ads.rewarded.RewardedAd;
import com.google.android.gms.ads.rewarded.RewardedAdCallback;
import com.google.android.gms.ads.rewarded.RewardedAdLoadCallback;

/* JADX INFO: loaded from: classes2.dex */
public class b extends com.fyber.inneractive.sdk.a<RewardedAd> {
    public final RewardedAdLoadCallback k;
    public final RewardedAdCallback l;

    public class a extends RewardedAdLoadCallback {
        public a() {
        }

        public void onRewardedAdFailedToLoad(int i) {
            d dVar = b.this.f1988g;
            if (dVar != null) {
                ((com.fyber.inneractive.sdk.dv.b) dVar).l();
                InneractiveAdRequest inneractiveAdRequest = b.this.a;
                String spotId = inneractiveAdRequest != null ? inneractiveAdRequest.getSpotId() : null;
                com.fyber.inneractive.sdk.dv.enums.a aVar = com.fyber.inneractive.sdk.dv.enums.a.Load;
                b bVar = b.this;
                com.fyber.inneractive.sdk.dv.handler.c.a(spotId, aVar, bVar.a, (f) bVar.b, String.format("errorCode - %d", Integer.valueOf(i)));
            }
        }

        public void onRewardedAdLoaded() {
            b bVar = b.this;
            if (bVar.f1988g != null) {
                bVar.j();
                ((com.fyber.inneractive.sdk.dv.b) b.this.f1988g).h();
            }
        }
    }

    /* JADX INFO: renamed from: com.fyber.inneractive.sdk.dv.rewarded.b$b, reason: collision with other inner class name */
    public class C0157b extends RewardedAdCallback {
        public C0157b() {
        }

        public void onRewardedAdClosed() {
            com.fyber.inneractive.sdk.dv.interstitial.a aVar = b.this.j;
            if (aVar != null) {
                aVar.i();
            }
        }

        public void onRewardedAdFailedToShow(int i) {
        }

        public void onRewardedAdOpened() {
            com.fyber.inneractive.sdk.dv.interstitial.a aVar = b.this.j;
            if (aVar != null) {
                aVar.w();
            }
        }

        public void onUserEarnedReward(@NonNull RewardItem rewardItem) {
            com.fyber.inneractive.sdk.dv.interstitial.a aVar = b.this.j;
            if (aVar != null) {
                aVar.onReward();
            }
        }
    }

    public b(b0 b0Var, s sVar, f fVar) {
        super(b0Var, sVar, fVar);
        this.k = new a();
        this.l = new C0157b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fyber.inneractive.sdk.a
    public void a(com.fyber.inneractive.sdk.dv.interstitial.a aVar, Activity activity) {
        this.j = aVar;
        ((RewardedAd) this.i).show(activity, this.l);
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [T, com.google.android.gms.ads.rewarded.RewardedAd] */
    @Override // com.fyber.inneractive.sdk.dv.a
    public void a(AdRequest adRequest, d dVar) {
        this.f1988g = dVar;
        ?? rewardedAd = new RewardedAd(l.a, "FyberRewarded");
        this.i = rewardedAd;
        rewardedAd.loadAd(adRequest, this.k);
    }

    @Override // com.fyber.inneractive.sdk.flow.q
    public boolean e() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.fyber.inneractive.sdk.dv.a, com.fyber.inneractive.sdk.flow.q
    public boolean g() {
        T t = this.i;
        if (t != 0) {
            return ((RewardedAd) t).isLoaded();
        }
        return false;
    }
}
