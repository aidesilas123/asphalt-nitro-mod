package com.fyber.inneractive.sdk.player.controller;

import android.view.View;
import com.fyber.inneractive.sdk.config.enums.Orientation;
import com.fyber.inneractive.sdk.config.f0;
import com.fyber.inneractive.sdk.external.InneractiveUnitController;
import com.fyber.inneractive.sdk.mraid.b0;
import com.fyber.inneractive.sdk.player.enums.VideoClickOrigin;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.k0;
import com.fyber.inneractive.sdk.util.x;
import com.fyber.inneractive.sdk.web.b;
import com.fyber.inneractive.sdk.web.i;

/* JADX INFO: loaded from: classes2.dex */
public class s extends i.l {
    public final /* synthetic */ n a;

    public s(n nVar) {
        this.a = nVar;
    }

    @Override // com.fyber.inneractive.sdk.web.d0
    public x.a a(String str, k0 k0Var, b.a aVar) {
        n nVar = this.a;
        nVar.getClass();
        IAlog.a("%sweb view callback: onClicked", IAlog.a(nVar));
        this.a.a(f0.b.COMPANION.value);
        n nVar2 = this.a;
        if (nVar2.f2179g == 0) {
            return new x.a(x.d.FAILED, new Exception("mListener is null, internal SDK fatal error"), "null");
        }
        com.fyber.inneractive.sdk.player.c cVar = nVar2.a;
        if (cVar != null) {
            com.fyber.inneractive.sdk.model.vast.c cVarC = cVar.c();
            if (cVarC != null) {
                this.a.a.a(cVarC, VideoClickOrigin.COMPANION, com.fyber.inneractive.sdk.model.vast.t.EVENT_CLICK);
            } else if (n.a(this.a)) {
                com.fyber.inneractive.sdk.player.e eVar = (com.fyber.inneractive.sdk.player.e) this.a.a;
                eVar.a(eVar.v, VideoClickOrigin.COMPANION, com.fyber.inneractive.sdk.model.vast.t.EVENT_CLICK);
            }
        }
        int i = IAlog.a;
        IAlog.a(1, null, "AD_CLICKED", new Object[0]);
        this.a.m();
        return this.a.f2179g.a(str, k0Var, aVar, false);
    }

    @Override // com.fyber.inneractive.sdk.web.i.f
    public void a(InneractiveUnitController.AdDisplayError adDisplayError) {
        ListenerT listenert = this.a.f2179g;
        if (listenert != 0) {
            listenert.onPlayerError();
        }
    }

    @Override // com.fyber.inneractive.sdk.web.i.f
    public void a(com.fyber.inneractive.sdk.web.i iVar) {
        ListenerT listenert = this.a.f2179g;
        if (listenert != 0) {
            listenert.s();
        }
    }

    @Override // com.fyber.inneractive.sdk.web.i.f
    public void a(com.fyber.inneractive.sdk.web.i iVar, b0 b0Var) {
        ListenerT listenert = this.a.f2179g;
        if (listenert != 0) {
            listenert.k();
        }
    }

    @Override // com.fyber.inneractive.sdk.web.i.f
    public void a(com.fyber.inneractive.sdk.web.i iVar, boolean z) {
        n nVar = this.a;
        nVar.getClass();
        IAlog.a("%sonCustomCloseButtonAvailableEnabled : %s", IAlog.a(nVar), Boolean.valueOf(z));
        ListenerT listenert = this.a.f2179g;
        if (listenert == 0 || !z) {
            return;
        }
        listenert.h();
    }

    @Override // com.fyber.inneractive.sdk.web.i.f
    public void a(com.fyber.inneractive.sdk.web.i iVar, boolean z, Orientation orientation) {
        n nVar = this.a;
        nVar.getClass();
        IAlog.a("%sonOrientationProperties: allowOrientationChange: %s, forceOrientationType: %s", IAlog.a(nVar), Boolean.valueOf(z), orientation.toString());
        ListenerT listenert = this.a.f2179g;
        if (listenert != 0) {
            listenert.a(z, orientation);
        }
    }

    @Override // com.fyber.inneractive.sdk.web.d0
    public void a(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        n nVar = this.a;
        nVar.getClass();
        sb.append(IAlog.a(nVar));
        sb.append("web view callback: onSuspiciousNoUserWebActionDetected");
        IAlog.a(sb.toString(), new Object[0]);
        ListenerT listenert = this.a.f2179g;
        if (listenert != 0) {
            listenert.a(str, str2);
        }
    }

    @Override // com.fyber.inneractive.sdk.web.i.f
    public boolean a(String str) {
        View endCardView = this.a.f2176d.getEndCardView();
        ListenerT listenert = this.a.f2179g;
        if (listenert == 0) {
            return false;
        }
        listenert.a(endCardView, str);
        return true;
    }

    @Override // com.fyber.inneractive.sdk.web.d0
    public void b() {
        ListenerT listenert = this.a.f2179g;
        if (listenert != 0) {
            listenert.j();
        }
    }

    @Override // com.fyber.inneractive.sdk.web.i.f
    public void b(com.fyber.inneractive.sdk.web.i iVar) {
        ListenerT listenert = this.a.f2179g;
        if (listenert != 0) {
            listenert.s();
        }
    }

    @Override // com.fyber.inneractive.sdk.web.i.f
    public void c() {
        com.fyber.inneractive.sdk.model.vast.c cVarC;
        n nVar = this.a;
        nVar.getClass();
        IAlog.a("%sweb view callback: onClickedAndOpen", IAlog.a(nVar));
        this.a.a(f0.b.COMPANION.value);
        n nVar2 = this.a;
        if (nVar2.f2179g != 0) {
            com.fyber.inneractive.sdk.player.c cVar = nVar2.a;
            if (cVar != null && (cVarC = cVar.c()) != null) {
                this.a.a.a(cVarC, VideoClickOrigin.COMPANION, com.fyber.inneractive.sdk.model.vast.t.EVENT_CLICK);
            }
            int i = IAlog.a;
            IAlog.a(1, null, "AD_CLICKED", new Object[0]);
            this.a.f2179g.g();
        }
    }
}
