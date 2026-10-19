package com.fyber.inneractive.sdk.player.cache;

import com.fyber.inneractive.sdk.network.t;
import com.fyber.inneractive.sdk.player.cache.c;
import com.fyber.inneractive.sdk.player.cache.h;
import com.fyber.inneractive.sdk.util.IAlog;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class f implements Runnable {
    public final /* synthetic */ h a;

    public f(h hVar) {
        this.a = hVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            h hVar = this.a;
            c.f fVarB = hVar.b.b(hVar.a());
            h hVar2 = this.a;
            hVar2.c = fVarB;
            if (fVarB == null) {
                c.C0170c c0170cA = hVar2.b.a(hVar2.a());
                if (c0170cA == null) {
                    this.a.n = true;
                }
                if (c0170cA != null) {
                    h hVar3 = this.a;
                    String str = hVar3.a;
                    hVar3.a();
                    c0170cA.a();
                }
            }
        } catch (IOException e2) {
            h hVar4 = this.a;
            IAlog.a(String.format("%s | Exception raised starting a new caching process for %s", hVar4.a, hVar4.a()), e2, new Object[0]);
            t.a("Exception raised starting a new caching process", e2.getMessage(), null, null);
        }
        h hVar5 = this.a;
        if (hVar5.c != null || hVar5.n) {
            h.b(hVar5, true);
            return;
        }
        h.f fVar = hVar5.h;
        if (fVar != null) {
            fVar.start();
        }
    }
}
