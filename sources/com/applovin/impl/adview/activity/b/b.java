package com.applovin.impl.adview.activity.b;

import android.app.Activity;
import android.os.SystemClock;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.e.ab;
import com.applovin.impl.sdk.e.q;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.iab.omid.library.applovin.adsession.FriendlyObstructionPurpose;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class b extends a {
    private final com.applovin.impl.adview.activity.a.b ajm;
    private com.applovin.impl.sdk.utils.f ajn;
    private long ajo;
    private final AtomicBoolean ajp;

    public b(com.applovin.impl.sdk.ad.e eVar, Activity activity, @Nullable Map<String, Object> map, com.applovin.impl.sdk.n nVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        super(eVar, activity, map, nVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
        this.ajm = new com.applovin.impl.adview.activity.a.b(this.aiL, this.ahM, this.sdk);
        this.ajp = new AtomicBoolean();
        if (com.applovin.impl.sdk.utils.u.a(com.applovin.impl.sdk.c.b.aMb, nVar)) {
            checkCachedAdResourcesAsync(false);
        }
    }

    private void sT() {
        this.ajm.a(this.aiS);
        this.aiV = SystemClock.elapsedRealtime();
        this.ajp.set(true);
    }

    private long sU() {
        com.applovin.impl.sdk.ad.e eVar = this.aiL;
        if (!(eVar instanceof com.applovin.impl.sdk.ad.a)) {
            return 0L;
        }
        float fFM = ((com.applovin.impl.sdk.ad.a) eVar).FM();
        if (fFM <= 0.0f) {
            fFM = this.aiL.Ge();
        }
        return (long) (com.applovin.impl.sdk.utils.u.C(fFM) * (((double) this.aiL.GF()) / 100.0d));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void sV() {
        ArrayList arrayList = new ArrayList();
        com.applovin.impl.adview.n nVar = this.aiR;
        if (nVar != null) {
            arrayList.add(new com.applovin.impl.sdk.a.d(nVar, FriendlyObstructionPurpose.CLOSE_AD, "close button"));
        }
        com.applovin.impl.adview.v vVar = this.agn;
        if (vVar != null && vVar.sh()) {
            com.applovin.impl.adview.v vVar2 = this.agn;
            arrayList.add(new com.applovin.impl.sdk.a.d(vVar2, FriendlyObstructionPurpose.NOT_VISIBLE, vVar2.getIdentifier()));
        }
        this.aiL.getAdEventTracker().a(this.aiQ, arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void sW() {
        this.aiV = SystemClock.elapsedRealtime();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void sX() {
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f("AppLovinFullscreenActivity", "Marking ad as fully watched");
        }
        this.ajp.set(true);
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void a(@Nullable ViewGroup viewGroup) {
        this.ajm.a(this.aiR, this.agn, this.aiQ, viewGroup);
        if (!com.applovin.impl.sdk.utils.u.a(com.applovin.impl.sdk.c.b.aMb, this.sdk)) {
            checkCachedAdResourcesImmediately(false);
        }
        com.applovin.impl.adview.v vVar = this.agn;
        if (vVar != null) {
            vVar.sg();
        }
        this.aiQ.renderAd(this.aiL);
        d("javascript:al_onPoststitialShow();", this.aiL.GI());
        if (sK()) {
            long jSU = sU();
            this.ajo = jSU;
            if (jSU > 0) {
                if (com.applovin.impl.sdk.x.Fn()) {
                    this.logger.f("AppLovinFullscreenActivity", "Scheduling timer for ad fully watched in " + this.ajo + "ms...");
                }
                this.ajn = com.applovin.impl.sdk.utils.f.a(this.ajo, this.sdk, new Runnable() { // from class: com.applovin.impl.adview.activity.b.s
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.sX();
                    }
                });
            }
        }
        if (this.aiR != null) {
            if (this.aiL.Ge() >= 0) {
                a(this.aiR, this.aiL.Ge(), new Runnable() { // from class: com.applovin.impl.adview.activity.b.u
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.sW();
                    }
                });
            } else {
                this.aiR.setVisibility(0);
            }
        }
        sL();
        this.sdk.BO().a(new ab(this.sdk, "updateMainViewOM", new Runnable() { // from class: com.applovin.impl.adview.activity.b.t
            @Override // java.lang.Runnable
            public final void run() {
                this.a.sV();
            }
        }), q.b.MAIN, TimeUnit.SECONDS.toMillis(1L));
        sM();
        super.au(com.applovin.impl.sdk.utils.u.P(this.sdk));
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void bE(long j) {
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void dismiss() {
        sD();
        com.applovin.impl.sdk.utils.f fVar = this.ajn;
        if (fVar != null) {
            fVar.tT();
            this.ajn = null;
        }
        super.dismiss();
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void pauseVideo() {
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void rl() {
        super.rl();
        sT();
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void sA() {
        a(null);
    }

    @Override // com.applovin.impl.adview.activity.b.a
    protected void sD() {
        com.applovin.impl.sdk.utils.f fVar;
        boolean zSI = sI();
        int iMin = 100;
        if (sK()) {
            if (!zSI && (fVar = this.ajn) != null) {
                iMin = (int) Math.min(100.0d, ((this.ajo - fVar.AH()) / this.ajo) * 100.0d);
            }
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.f("AppLovinFullscreenActivity", "Ad engaged at " + iMin + "%");
            }
        }
        super.a(iMin, false, zSI, -2L);
    }

    @Override // com.applovin.impl.adview.activity.b.a
    protected boolean sI() {
        if (sK()) {
            return this.ajp.get();
        }
        return true;
    }

    @Override // com.applovin.impl.adview.activity.b.a
    protected boolean sJ() {
        return false;
    }

    @Override // com.applovin.impl.adview.activity.b.a
    protected void sL() {
        long jGU;
        long millis;
        long j = 0;
        if (this.aiL.GT() >= 0 || this.aiL.GU() >= 0) {
            if (this.aiL.GT() >= 0) {
                jGU = this.aiL.GT();
            } else {
                if (this.aiL.GV()) {
                    int iFM = (int) ((com.applovin.impl.sdk.ad.a) this.aiL).FM();
                    if (iFM > 0) {
                        millis = TimeUnit.SECONDS.toMillis(iFM);
                    } else {
                        int iGe = (int) this.aiL.Ge();
                        if (iGe > 0) {
                            millis = TimeUnit.SECONDS.toMillis(iGe);
                        }
                    }
                    j = 0 + millis;
                }
                jGU = (long) (j * (((double) this.aiL.GU()) / 100.0d));
            }
            bF(jGU);
        }
    }

    @Override // com.applovin.impl.adview.activity.b.a
    public void sN() {
        super.sN();
        sT();
    }

    @Override // com.applovin.impl.sdk.b.b.a
    public void sR() {
    }

    @Override // com.applovin.impl.sdk.b.b.a
    public void sS() {
    }
}
