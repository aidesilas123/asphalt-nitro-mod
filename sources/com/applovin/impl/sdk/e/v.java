package com.applovin.impl.sdk.e;

import com.applovin.impl.b.a;
import com.applovin.impl.sdk.e.q;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdType;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
class v extends d {
    private final AppLovinAdLoadListener aTG;
    private final com.applovin.impl.b.e aUX;

    v(com.applovin.impl.b.e eVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.n nVar) {
        super("TaskRenderVastAd", nVar);
        this.aTG = appLovinAdLoadListener;
        this.aUX = eVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f(this.tag, "Rendering VAST ad...");
        }
        int size = this.aUX.Ms().size();
        HashSet hashSet = new HashSet(size);
        HashSet hashSet2 = new HashSet(size);
        String strA = "";
        com.applovin.impl.b.j jVarA = null;
        com.applovin.impl.b.n nVarA = null;
        com.applovin.impl.b.d dVarA = null;
        com.applovin.impl.b.c cVarA = null;
        String strA2 = "";
        for (com.applovin.impl.sdk.utils.y yVar : this.aUX.Ms()) {
            com.applovin.impl.sdk.utils.y yVarDL = yVar.dL(com.applovin.impl.b.m.d(yVar) ? "Wrapper" : "InLine");
            if (yVarDL != null) {
                com.applovin.impl.sdk.utils.y yVarDL2 = yVarDL.dL("AdSystem");
                if (yVarDL2 != null) {
                    jVarA = com.applovin.impl.b.j.a(yVarDL2, jVarA, this.sdk);
                }
                strA = com.applovin.impl.b.m.a(yVarDL, "AdTitle", strA);
                strA2 = com.applovin.impl.b.m.a(yVarDL, "Description", strA2);
                com.applovin.impl.b.m.a(yVarDL.dJ("Impression"), hashSet, this.aUX, this.sdk);
                com.applovin.impl.sdk.utils.y yVarDK = yVarDL.dK("ViewableImpression");
                if (yVarDK != null) {
                    com.applovin.impl.b.m.a(yVarDK.dJ("Viewable"), hashSet, this.aUX, this.sdk);
                }
                com.applovin.impl.sdk.utils.y yVarDL3 = yVarDL.dL("AdVerifications");
                if (yVarDL3 != null) {
                    cVarA = com.applovin.impl.b.c.a(yVarDL3, cVarA, this.aUX, this.sdk);
                }
                com.applovin.impl.b.m.a(yVarDL.dJ("Error"), hashSet2, this.aUX, this.sdk);
                com.applovin.impl.sdk.utils.y yVarDK2 = yVarDL.dK("Creatives");
                if (yVarDK2 != null) {
                    for (com.applovin.impl.sdk.utils.y yVar2 : yVarDK2.LL()) {
                        com.applovin.impl.sdk.utils.y yVarDK3 = yVar2.dK("Linear");
                        if (yVarDK3 != null) {
                            nVarA = com.applovin.impl.b.n.a(yVarDK3, nVarA, this.aUX, this.sdk);
                        } else {
                            com.applovin.impl.sdk.utils.y yVarDL4 = yVar2.dL("CompanionAds");
                            if (yVarDL4 != null) {
                                com.applovin.impl.sdk.utils.y yVarDL5 = yVarDL4.dL("Companion");
                                if (yVarDL5 != null) {
                                    dVarA = com.applovin.impl.b.d.a(yVarDL5, dVarA, this.aUX, this.sdk);
                                }
                            } else if (com.applovin.impl.sdk.x.Fn()) {
                                this.logger.i(this.tag, "Received and will skip rendering for an unidentified creative: " + yVar2);
                            }
                        }
                    }
                }
            } else if (com.applovin.impl.sdk.x.Fn()) {
                this.logger.i(this.tag, "Did not find wrapper or inline response for node: " + yVar);
            }
        }
        com.applovin.impl.b.a aVarMi = new a.C0057a().R(this.sdk).V(this.aUX.Mt()).W(this.aUX.FR()).a(this.aUX.getSource()).cc(this.aUX.getCreatedAtMillis()).dP(strA).dQ(strA2).a(jVarA).a(nVarA).a(dVarA).a(cVarA).b(hashSet).a(cVarA).c(hashSet2).Mi();
        com.applovin.impl.b.f fVarA = com.applovin.impl.b.m.a(aVarMi);
        if (fVarA != null) {
            com.applovin.impl.b.m.a(this.aUX, this.aTG, fVarA, -6, this.sdk);
            return;
        }
        if (com.applovin.impl.sdk.x.Fn()) {
            this.logger.f(this.tag, "Finished rendering VAST ad: " + aVarMi);
        }
        aVarMi.getAdEventTracker().IJ();
        h hVar = new h(aVarMi, this.sdk, this.aTG);
        q.b bVar = q.b.CACHING_OTHER;
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aLH)).booleanValue()) {
            if (aVarMi.getType() == AppLovinAdType.REGULAR) {
                bVar = q.b.CACHING_INTERSTITIAL;
            } else if (aVarMi.getType() == AppLovinAdType.INCENTIVIZED) {
                bVar = q.b.CACHING_INCENTIVIZED;
            } else if (aVarMi.getType() == AppLovinAdType.NATIVE) {
                bVar = q.b.CACHING_NATIVE;
            }
        }
        this.sdk.BO().a(hVar, bVar);
    }
}
