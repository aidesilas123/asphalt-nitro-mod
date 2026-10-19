package com.fyber.inneractive.sdk.flow;

import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.external.InneractiveAdSpot;
import com.fyber.inneractive.sdk.external.InneractiveAdViewUnitController;
import com.fyber.inneractive.sdk.external.InneractiveErrorCode;
import com.fyber.inneractive.sdk.external.InneractiveInfrastructureError;
import com.fyber.inneractive.sdk.flow.t;
import com.fyber.inneractive.sdk.interfaces.a;
import com.fyber.inneractive.sdk.network.k;
import com.fyber.inneractive.sdk.util.IAlog;

/* JADX INFO: loaded from: classes2.dex */
public abstract class k implements k.a, a.InterfaceC0163a, a.b {
    public com.fyber.inneractive.sdk.interfaces.a a;
    public a b;
    public com.fyber.inneractive.sdk.config.global.s c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public com.fyber.inneractive.sdk.network.k f2010d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f2011e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f2012f = false;

    public interface a {
    }

    public k(String str) {
        this.f2011e = str;
    }

    public com.fyber.inneractive.sdk.response.e a() {
        Content content;
        com.fyber.inneractive.sdk.interfaces.a aVar = this.a;
        if (aVar == null || (content = ((h) aVar).c) == 0) {
            return null;
        }
        return content.d();
    }

    @Override // com.fyber.inneractive.sdk.interfaces.a.InterfaceC0163a
    public void a(InneractiveAdRequest inneractiveAdRequest) {
        T t;
        e0 e0Var;
        d();
        com.fyber.inneractive.sdk.interfaces.a aVar = this.a;
        if (aVar != null) {
            a aVar2 = this.b;
            if (aVar2 != null) {
                Content content = ((h) aVar).c;
                u uVar = (u) aVar2;
                t tVar = uVar.a;
                if (tVar.j || (e0Var = tVar.f2028f) == null || !e0Var.supportsRefresh()) {
                    uVar.a.j = false;
                    t tVar2 = uVar.a;
                    tVar2.f2027e = content;
                    content.a = inneractiveAdRequest;
                    if (tVar2.e()) {
                        t tVar3 = uVar.a;
                        InneractiveAdSpot.RequestListener requestListener = tVar3.b;
                        if (requestListener != null) {
                            requestListener.onInneractiveSuccessfulAdRequest(tVar3);
                        }
                    } else {
                        t tVar4 = uVar.a;
                        tVar4.getClass();
                        IAlog.a("%sCannot find appropriate unit controller for unit: %s", IAlog.a(tVar4), uVar.a.f2027e.f2019d);
                        j jVar = uVar.a.h;
                        com.fyber.inneractive.sdk.response.e eVarA = jVar != null ? jVar.a() : null;
                        uVar.a(inneractiveAdRequest, eVarA, new InneractiveInfrastructureError(InneractiveErrorCode.INVALID_INPUT, g.COULD_NOT_SELECT_UNIT_CONTROLLER, new Exception("Cannot find appropriate unit controller for unit: " + uVar.a.f2027e.f2019d)));
                        uVar.a.f2027e = null;
                    }
                } else if (uVar.a.f2028f.canRefreshAd()) {
                    t tVar5 = uVar.a;
                    tVar5.f2027e = content;
                    content.a = inneractiveAdRequest;
                    t.c cVar = tVar5.i;
                    if (cVar != null) {
                        cVar.onAdRefreshed(tVar5);
                    } else {
                        e0 e0Var2 = tVar5.f2028f;
                        if (e0Var2 instanceof InneractiveAdViewUnitController) {
                            ((InneractiveAdViewUnitController) e0Var2).onAdRefreshed(tVar5);
                        }
                    }
                } else {
                    t tVar6 = uVar.a;
                    tVar6.getClass();
                    IAlog.a("%sad loaded successfully, but the selected unit controller has rejected the refresh!", IAlog.a(tVar6));
                    t tVar7 = uVar.a;
                    tVar7.i.onAdRefreshFailed(tVar7, InneractiveErrorCode.CANCELLED);
                }
                String str = uVar.a.a;
                com.fyber.inneractive.sdk.metrics.c cVar2 = com.fyber.inneractive.sdk.metrics.c.f2066d;
                cVar2.a(str).e();
                cVar2.a(str).b();
                t tVar8 = uVar.a;
                q qVar = tVar8.f2027e;
                if (qVar != null && (t = qVar.b) != 0 && t.n != null) {
                    q qVar2 = tVar8.f2027e;
                    T t2 = qVar2.b;
                    new com.fyber.inneractive.sdk.metrics.b(t2, tVar8.c, tVar8.a, t2.n, qVar2.c.c()).a();
                }
            }
            this.a = null;
        }
        b(inneractiveAdRequest);
    }

    public void a(InneractiveAdRequest inneractiveAdRequest, com.fyber.inneractive.sdk.response.e eVar, InneractiveInfrastructureError inneractiveInfrastructureError) {
        d();
        a aVar = this.b;
        if (aVar != null) {
            ((u) aVar).a(inneractiveAdRequest, eVar, inneractiveInfrastructureError);
        }
        a(eVar, inneractiveAdRequest);
    }

    @Override // com.fyber.inneractive.sdk.interfaces.a.InterfaceC0163a
    public void a(InneractiveInfrastructureError inneractiveInfrastructureError) {
        Content content;
        d();
        com.fyber.inneractive.sdk.interfaces.a aVar = this.a;
        a((aVar == null || (content = ((h) aVar).c) == 0) ? null : content.a, a(), inneractiveInfrastructureError);
    }

    public void a(com.fyber.inneractive.sdk.response.e eVar, InneractiveAdRequest inneractiveAdRequest) {
    }

    public void a(boolean z) {
        this.f2012f = true;
        com.fyber.inneractive.sdk.interfaces.a aVar = this.a;
        if (aVar == null || !z) {
            return;
        }
        aVar.a();
        this.a = null;
    }

    public void b(InneractiveAdRequest inneractiveAdRequest) {
    }

    public void b(InneractiveAdRequest inneractiveAdRequest, com.fyber.inneractive.sdk.response.e eVar, InneractiveInfrastructureError inneractiveInfrastructureError) {
        if (IAlog.a <= 3) {
            Thread.dumpStack();
        }
        d();
        inneractiveInfrastructureError.getErrorCode();
        if (this.b != null) {
            if (eVar != null && eVar.i != null) {
                inneractiveInfrastructureError.setCause(new Exception(eVar.i + ": " + eVar.j));
            }
            ((u) this.b).a(inneractiveAdRequest, eVar, inneractiveInfrastructureError);
        }
    }

    public String d() {
        return IAlog.a(this);
    }
}
