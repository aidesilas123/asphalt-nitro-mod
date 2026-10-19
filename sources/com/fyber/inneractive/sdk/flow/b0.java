package com.fyber.inneractive.sdk.flow;

import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;
import com.fyber.inneractive.sdk.measurement.a;
import com.fyber.inneractive.sdk.ui.IAmraidWebViewController;

/* JADX INFO: loaded from: classes2.dex */
public class b0 extends p<com.fyber.inneractive.sdk.response.f> {
    public IAmraidWebViewController i;

    public b0(com.fyber.inneractive.sdk.config.b0 b0Var, com.fyber.inneractive.sdk.config.global.s sVar) {
        super(b0Var, sVar);
    }

    @Override // com.fyber.inneractive.sdk.flow.q
    public void a() {
        if (this.f2018g != null && e()) {
            this.f2018g.a();
            this.f2018g = null;
        }
        IAmraidWebViewController iAmraidWebViewController = this.i;
        if (iAmraidWebViewController != null) {
            a.InterfaceC0164a interfaceC0164a = iAmraidWebViewController.I;
            if (interfaceC0164a != null) {
                ((com.fyber.inneractive.sdk.measurement.tracker.c) interfaceC0164a).a(false);
            }
            this.i.c();
            this.i = null;
        }
    }

    @Override // com.fyber.inneractive.sdk.flow.q
    public boolean e() {
        com.fyber.inneractive.sdk.config.t tVar;
        UnitDisplayType unitDisplayType;
        com.fyber.inneractive.sdk.config.b0 b0Var = this.f2019d;
        if (b0Var == null || (tVar = ((com.fyber.inneractive.sdk.config.a0) b0Var).c) == null || (unitDisplayType = tVar.b) == null) {
            return false;
        }
        return unitDisplayType.isFullscreenUnit();
    }

    @Override // com.fyber.inneractive.sdk.flow.q
    public boolean g() {
        IAmraidWebViewController iAmraidWebViewController = this.i;
        if (iAmraidWebViewController != null) {
            if (iAmraidWebViewController.b != null) {
                return true;
            }
        }
        return false;
    }

    @Override // com.fyber.inneractive.sdk.flow.q
    public boolean isVideoAd() {
        return false;
    }
}
