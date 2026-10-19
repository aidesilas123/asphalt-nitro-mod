package com.fyber.inneractive.sdk.renderers;

import android.content.Context;
import com.fyber.inneractive.sdk.config.enums.Skip;
import com.fyber.inneractive.sdk.config.global.features.r;
import com.fyber.inneractive.sdk.config.global.s;
import com.fyber.inneractive.sdk.external.InneractiveAdSpot;
import com.fyber.inneractive.sdk.flow.d0;
import com.fyber.inneractive.sdk.flow.f0;
import com.fyber.inneractive.sdk.flow.g0;
import com.fyber.inneractive.sdk.player.c;

/* JADX INFO: loaded from: classes2.dex */
public class c extends n {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2714d;

    public c(com.fyber.inneractive.sdk.player.h hVar) {
        super(hVar);
        this.f2714d = false;
    }

    @Override // com.fyber.inneractive.sdk.renderers.n
    public com.fyber.inneractive.sdk.player.controller.b a(InneractiveAdSpot inneractiveAdSpot, f0 f0Var) {
        if (this.a == null) {
            Object selectedUnitController = inneractiveAdSpot.getSelectedUnitController();
            boolean zIsOverlayOutside = selectedUnitController instanceof g0 ? ((g0) selectedUnitController).isOverlayOutside() : false;
            Skip skipA = inneractiveAdSpot instanceof d0 ? ((d0) inneractiveAdSpot).a() : null;
            if (this.f2714d) {
                this.a = new com.fyber.inneractive.sdk.player.controller.e(this.c, (com.fyber.inneractive.sdk.player.ui.j) this.b, inneractiveAdSpot.getAdContent().f2019d, f0Var.c, false, zIsOverlayOutside, skipA, f0Var.h(), b(), a());
            } else {
                this.a = new com.fyber.inneractive.sdk.player.controller.e(this.c, (com.fyber.inneractive.sdk.player.ui.k) this.b, inneractiveAdSpot.getAdContent().f2019d, f0Var.c, false, zIsOverlayOutside, skipA, f0Var.h(), b(), a());
            }
        }
        return this.a;
    }

    public com.fyber.inneractive.sdk.player.ui.h a(Context context, s sVar) {
        com.fyber.inneractive.sdk.flow.e eVar;
        boolean zA;
        f0 f0Var;
        r rVar;
        if (this.b == null) {
            if (sVar != null && (rVar = (r) sVar.a(r.class)) != null) {
                this.f2714d = rVar.a("use_video_design", false);
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
            if (this.f2714d) {
                this.b = new com.fyber.inneractive.sdk.player.ui.j(context, eVar, new com.fyber.inneractive.sdk.player.ui.e(), sVar, zA, b());
            } else {
                this.b = new com.fyber.inneractive.sdk.player.ui.k(context, eVar, new com.fyber.inneractive.sdk.player.ui.e(), sVar, zA, b());
            }
        }
        return this.b;
    }

    @Override // com.fyber.inneractive.sdk.renderers.n
    public void a(c.InterfaceC0169c interfaceC0169c) {
        com.fyber.inneractive.sdk.player.e eVar = this.c;
        eVar.getClass();
        interfaceC0169c.a(eVar);
    }

    @Override // com.fyber.inneractive.sdk.renderers.n
    public boolean c() {
        this.c.getClass();
        return false;
    }
}
