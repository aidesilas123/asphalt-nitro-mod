package com.applovin.impl.sdk.e;

import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdLoadListener;

/* JADX INFO: loaded from: classes.dex */
class z extends d {
    private final AppLovinAdLoadListener aTG;
    private final com.applovin.impl.b.e aUX;

    z(com.applovin.impl.b.e eVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.n nVar) {
        super("TaskResolveVastWrapper", nVar);
        this.aTG = appLovinAdLoadListener;
        this.aUX = eVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void gP(int i) {
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.i(this.tag, "Failed to resolve VAST wrapper due to error code " + i);
        }
        if (i != -1009) {
            com.applovin.impl.b.m.a(this.aUX, this.aTG, i == -1001 ? com.applovin.impl.b.f.TIMED_OUT : com.applovin.impl.b.f.GENERAL_WRAPPER_ERROR, i, this.sdk);
            return;
        }
        AppLovinAdLoadListener appLovinAdLoadListener = this.aTG;
        if (appLovinAdLoadListener != null) {
            appLovinAdLoadListener.failedToReceiveAd(i);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        String strA = com.applovin.impl.b.m.a(this.aUX);
        if (!StringUtils.isValidString(strA)) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.i(this.tag, "Resolving VAST failed. Could not find resolution URL");
            }
            gP(-1);
            return;
        }
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f(this.tag, "Resolving VAST ad with depth " + this.aUX.Mr() + " at " + strA);
        }
        try {
            this.sdk.BO().b(new w<com.applovin.impl.sdk.utils.y>(com.applovin.impl.sdk.network.c.D(this.sdk).cW(strA).cX("GET").ad(com.applovin.impl.sdk.utils.y.aWz).gE(((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aPx)).intValue()).gF(((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aPy)).intValue()).aS(false).Ig(), this.sdk) { // from class: com.applovin.impl.sdk.e.z.1
                @Override // com.applovin.impl.sdk.e.w, com.applovin.impl.sdk.network.b.d
                public void a(int i, String str, com.applovin.impl.sdk.utils.y yVar) {
                    if (com.applovin.impl.sdk.x.Fn()) {
                        this.logger.i(this.tag, "Unable to resolve VAST wrapper. Server returned " + i);
                    }
                    z.this.gP(i);
                }

                @Override // com.applovin.impl.sdk.e.w, com.applovin.impl.sdk.network.b.d
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public void d(com.applovin.impl.sdk.utils.y yVar, int i) {
                    this.sdk.BO().b(t.a(yVar, z.this.aUX, z.this.aTG, z.this.sdk));
                }
            });
        } catch (Throwable th) {
            if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.c(this.tag, "Unable to resolve VAST wrapper", th);
            }
            gP(-1);
        }
    }
}
