package com.applovin.impl.mediation;

import com.applovin.impl.mediation.a;
import com.applovin.impl.mediation.c;
import com.applovin.impl.sdk.utils.AppLovinSdkExtraParameterKey;
import com.applovin.sdk.AppLovinSdkUtils;

/* JADX INFO: loaded from: classes.dex */
public class b implements a.InterfaceC0058a, c.a {
    private final a akS;
    private final c akT;
    private final com.applovin.impl.sdk.n sdk;

    public b(com.applovin.impl.sdk.n nVar) {
        this.sdk = nVar;
        this.akS = new a(nVar);
        this.akT = new c(nVar, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public void e(com.applovin.impl.mediation.b.c cVar) {
        if (cVar != null && cVar.xP().compareAndSet(false, true)) {
            com.applovin.impl.sdk.utils.m.c(cVar.xC().uf(), cVar);
        }
    }

    @Override // com.applovin.impl.mediation.a.InterfaceC0058a
    public void a(final com.applovin.impl.mediation.b.c cVar) {
        AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.n
            @Override // java.lang.Runnable
            public final void run() {
                this.a.e(cVar);
            }
        }, cVar.xZ());
    }

    public void b(com.applovin.impl.mediation.b.c cVar) {
        long jXW = cVar.xW();
        if (jXW >= 0) {
            this.akT.a(cVar, jXW);
        }
        boolean z = Boolean.parseBoolean(this.sdk.getSettings().getExtraParameters().get(AppLovinSdkExtraParameterKey.SHOULD_SCHEDULE_AD_HIDDEN_ON_AD_DESTROY));
        if (cVar.xX() || cVar.xY() || z) {
            this.akS.ay(z);
            this.akS.a(cVar, this);
        }
    }

    @Override // com.applovin.impl.mediation.c.a
    public void c(com.applovin.impl.mediation.b.c cVar) {
        e(cVar);
    }

    public void tS() {
        this.akT.tT();
        this.akS.W();
    }
}
