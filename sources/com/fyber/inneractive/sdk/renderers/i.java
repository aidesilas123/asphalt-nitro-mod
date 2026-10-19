package com.fyber.inneractive.sdk.renderers;

import com.fyber.inneractive.sdk.player.controller.t;
import com.fyber.inneractive.sdk.util.IAlog;

/* JADX INFO: loaded from: classes2.dex */
public class i implements Runnable {
    public final /* synthetic */ h a;

    public i(h hVar) {
        this.a = hVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        h hVar = this.a;
        if (hVar.u != null) {
            h.a(hVar, true);
            h hVar2 = this.a;
            hVar2.getClass();
            IAlog.a("%sIdle state reached!", IAlog.a(hVar2));
            t tVar = this.a.n;
            if (tVar != null) {
                tVar.b(true);
            }
            this.a.u = null;
        }
    }
}
