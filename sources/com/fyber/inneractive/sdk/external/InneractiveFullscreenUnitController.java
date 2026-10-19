package com.fyber.inneractive.sdk.external;

import android.app.Activity;
import com.fyber.inneractive.sdk.activities.InneractiveFullscreenAdActivity;
import com.fyber.inneractive.sdk.config.a0;
import com.fyber.inneractive.sdk.config.c0;
import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;
import com.fyber.inneractive.sdk.config.t;
import com.fyber.inneractive.sdk.external.InneractiveUnitController;
import com.fyber.inneractive.sdk.factories.c;
import com.fyber.inneractive.sdk.flow.e0;
import com.fyber.inneractive.sdk.flow.w;
import com.fyber.inneractive.sdk.interfaces.c;
import com.fyber.inneractive.sdk.network.r;
import com.fyber.inneractive.sdk.network.s;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.q;

/* JADX INFO: loaded from: classes2.dex */
public class InneractiveFullscreenUnitController extends e0<InneractiveFullscreenAdEventsListener> implements InneractiveFullscreenAdActivity.FullScreenRendererProvider, InneractiveFullscreenAdActivity.OnInneractiveFullscreenAdDestroyListener {
    public InneractiveFullScreenAdRewardedListener b;
    public c mRenderer;
    public boolean a = false;
    public final c.b c = new a();

    public static class AdExpiredError extends InneractiveUnitController.AdDisplayError {
        public AdExpiredError(String str) {
            super(str);
        }
    }

    public class a implements c.b {
        public a() {
        }

        public void a() {
            w wVar = (w) q.a(InneractiveFullscreenUnitController.this.mAdSpot);
            InneractiveFullScreenAdRewardedListener inneractiveFullScreenAdRewardedListener = InneractiveFullscreenUnitController.this.b;
            if (inneractiveFullScreenAdRewardedListener == null || wVar == null) {
                return;
            }
            inneractiveFullScreenAdRewardedListener.onAdRewarded(wVar);
        }
    }

    @Override // com.fyber.inneractive.sdk.flow.e0, com.fyber.inneractive.sdk.external.InneractiveUnitController
    public void destroy() {
        c cVar = this.mRenderer;
        if (cVar != null) {
            cVar.destroy();
            this.mRenderer = null;
        }
        super.destroy();
    }

    @Override // com.fyber.inneractive.sdk.activities.InneractiveFullscreenAdActivity.FullScreenRendererProvider
    public c getFullscreenRenderer() {
        return this.mRenderer;
    }

    public InneractiveFullScreenAdRewardedListener getRewardedListener() {
        return this.b;
    }

    public boolean isAvailable() {
        w wVar = (w) q.a(this.mAdSpot);
        return wVar != null && wVar.isReady();
    }

    @Override // com.fyber.inneractive.sdk.activities.InneractiveFullscreenAdActivity.OnInneractiveFullscreenAdDestroyListener
    public void onActivityDestroyed(InneractiveFullscreenAdActivity inneractiveFullscreenAdActivity) {
        this.a = false;
    }

    public void setRewardedListener(InneractiveFullScreenAdRewardedListener inneractiveFullScreenAdRewardedListener) {
        this.b = inneractiveFullScreenAdRewardedListener;
    }

    public void show(Activity activity) {
        if (activity == null) {
            IAlog.e("show() called with a null activity", new Object[0]);
            return;
        }
        if (this.a) {
            IAlog.e("InneractiveFullscreenUnitController->show(android.content.Context) called while an ad is already showing", new Object[0]);
            return;
        }
        InneractiveAdSpot adSpot = getAdSpot();
        if (adSpot == null) {
            IAlog.e("InneractiveFullscreenUnitController was not attached to an ad spot", new Object[0]);
            return;
        }
        com.fyber.inneractive.sdk.flow.q adContent = adSpot.getAdContent();
        if (adContent != null) {
            new s.a(r.IA_PUBLISHER_REQUESTED_SHOW, adContent.a, adContent.d(), adContent.c.c()).a((String) null);
        }
        if (!adSpot.isReady()) {
            EL el = this.mEventsListener;
            if (el != 0) {
                ((InneractiveFullscreenAdEventsListener) el).onAdEnteredErrorState(adSpot, new AdExpiredError("Ad Expired"));
                return;
            }
            return;
        }
        if (this.mRenderer == null) {
            this.mRenderer = c.b.a.a(getAdSpot());
        }
        selectContentController();
        (adContent instanceof com.fyber.inneractive.sdk.dv.a ? new com.fyber.inneractive.sdk.display.b() : new com.fyber.inneractive.sdk.display.c()).a(activity, adSpot, adSpot.getLocalUniqueId());
        this.a = true;
        com.fyber.inneractive.sdk.interfaces.c cVar = this.mRenderer;
        if (cVar != null) {
            cVar.a(this.c);
        }
    }

    @Override // com.fyber.inneractive.sdk.flow.e0
    public boolean supports(InneractiveAdSpot inneractiveAdSpot) {
        a0 a0Var = (a0) inneractiveAdSpot.getAdContent().f2019d;
        if (a0Var.f1941e != null) {
            return false;
        }
        t tVar = a0Var.c;
        if (tVar != null && UnitDisplayType.INTERSTITIAL.equals(tVar.b)) {
            return true;
        }
        c0 c0Var = a0Var.f1942f;
        return c0Var != null && (UnitDisplayType.REWARDED.equals(c0Var.j) || UnitDisplayType.INTERSTITIAL.equals(c0Var.j) || UnitDisplayType.VERTICAL.equals(c0Var.j));
    }

    @Override // com.fyber.inneractive.sdk.flow.e0
    public boolean supportsRefresh() {
        return false;
    }
}
