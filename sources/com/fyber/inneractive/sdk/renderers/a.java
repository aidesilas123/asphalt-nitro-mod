package com.fyber.inneractive.sdk.renderers;

import android.content.Context;
import android.content.res.Resources;
import com.fyber.inneractive.sdk.config.global.features.r;
import com.fyber.inneractive.sdk.config.global.s;
import com.fyber.inneractive.sdk.external.InneractiveAdSpot;
import com.fyber.inneractive.sdk.flow.f0;
import com.fyber.inneractive.sdk.flow.g0;
import com.fyber.inneractive.sdk.player.c;

/* JADX INFO: loaded from: classes2.dex */
public class a extends n {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2709d;

    public a(com.fyber.inneractive.sdk.player.h hVar) {
        super(hVar);
        this.f2709d = false;
    }

    @Override // com.fyber.inneractive.sdk.renderers.n
    public com.fyber.inneractive.sdk.player.controller.b a(InneractiveAdSpot inneractiveAdSpot, f0 f0Var) {
        if (this.a == null) {
            Object selectedUnitController = inneractiveAdSpot.getSelectedUnitController();
            boolean zIsOverlayOutside = selectedUnitController instanceof g0 ? ((g0) selectedUnitController).isOverlayOutside() : false;
            if (this.f2709d) {
                this.a = new com.fyber.inneractive.sdk.player.controller.j(this.c, (com.fyber.inneractive.sdk.player.ui.j) this.b, com.fyber.inneractive.sdk.config.a.b(inneractiveAdSpot.getAdContent().d().m), f0Var.c, zIsOverlayOutside, b(), a());
            } else {
                this.a = new com.fyber.inneractive.sdk.player.controller.j(this.c, (com.fyber.inneractive.sdk.player.ui.k) this.b, com.fyber.inneractive.sdk.config.a.b(inneractiveAdSpot.getAdContent().d().m), f0Var.c, zIsOverlayOutside, b(), a());
            }
        }
        return this.a;
    }

    public com.fyber.inneractive.sdk.player.ui.h a(Context context, s sVar) throws Resources.NotFoundException {
        com.fyber.inneractive.sdk.flow.e eVar;
        boolean zA;
        f0 f0Var;
        r rVar;
        if (this.b == null) {
            if (sVar != null && (rVar = (r) sVar.a(r.class)) != null) {
                this.f2709d = rVar.a("use_video_design", false);
            }
            com.fyber.inneractive.sdk.player.e eVar2 = this.c;
            if (eVar2 == null || (f0Var = eVar2.f2137e) == null) {
                eVar = null;
                zA = false;
            } else {
                com.fyber.inneractive.sdk.flow.e eVar3 = new com.fyber.inneractive.sdk.flow.e(f0Var.a, f0Var.b, sVar);
                com.fyber.inneractive.sdk.player.e eVar4 = this.c;
                T t = eVar4.f2137e.b;
                zA = eVar4.a(sVar, t != 0 ? ((com.fyber.inneractive.sdk.response.g) t).F : com.fyber.inneractive.sdk.ignite.k.NONE);
                eVar = eVar3;
            }
            if (this.f2709d) {
                this.b = new com.fyber.inneractive.sdk.player.ui.j(context, eVar, new com.fyber.inneractive.sdk.player.ui.g(), sVar, zA, b());
            } else {
                this.b = new com.fyber.inneractive.sdk.player.ui.k(context, eVar, new com.fyber.inneractive.sdk.player.ui.g(), sVar, zA, b());
            }
        }
        return this.b;
    }

    @Override // com.fyber.inneractive.sdk.renderers.n
    public void a(c.InterfaceC0169c interfaceC0169c) {
    }

    @Override // com.fyber.inneractive.sdk.renderers.n
    public boolean c() {
        this.c.getClass();
        return false;
    }
}
