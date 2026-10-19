package com.fyber.inneractive.sdk.flow;

import com.fyber.inneractive.sdk.external.InneractiveAdRequest;

/* JADX INFO: loaded from: classes2.dex */
public class f0 extends p<com.fyber.inneractive.sdk.response.g> {
    public com.fyber.inneractive.sdk.player.h i;
    public boolean j;

    public f0(com.fyber.inneractive.sdk.config.b0 b0Var, com.fyber.inneractive.sdk.config.global.s sVar, com.fyber.inneractive.sdk.response.g gVar, InneractiveAdRequest inneractiveAdRequest) {
        super(b0Var, sVar);
        this.j = false;
        a(gVar);
        a(inneractiveAdRequest);
    }

    @Override // com.fyber.inneractive.sdk.flow.q
    public void a() {
        if (this.f2018g != null && e()) {
            this.f2018g.a();
            this.f2018g = null;
        }
        com.fyber.inneractive.sdk.player.h hVar = this.i;
        if (hVar != null) {
            hVar.a();
            this.i = null;
        }
    }

    @Override // com.fyber.inneractive.sdk.flow.q
    public boolean e() {
        com.fyber.inneractive.sdk.config.c0 c0Var = ((com.fyber.inneractive.sdk.config.a0) this.f2019d).f1942f;
        if (c0Var == null) {
            return false;
        }
        return com.fyber.inneractive.sdk.util.y.a(c0Var.j);
    }

    @Override // com.fyber.inneractive.sdk.flow.q
    public boolean g() {
        return this.i != null;
    }

    @Override // com.fyber.inneractive.sdk.flow.q
    public boolean isVideoAd() {
        return true;
    }

    public String k() {
        com.fyber.inneractive.sdk.model.vast.b bVar;
        T t = this.b;
        if (t == 0 || (bVar = ((com.fyber.inneractive.sdk.response.g) t).K) == null) {
            return null;
        }
        return bVar.b;
    }
}
