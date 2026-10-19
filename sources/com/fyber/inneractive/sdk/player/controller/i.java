package com.fyber.inneractive.sdk.player.controller;

import com.fyber.inneractive.sdk.player.controller.g;
import com.fyber.inneractive.sdk.util.IAlog;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class i implements Runnable {
    public final /* synthetic */ g a;

    public i(g gVar) {
        this.a = gVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            Iterator<g.f> it = this.a.b.iterator();
            while (it.hasNext()) {
                it.next().g();
            }
        } catch (Exception e2) {
            if (IAlog.a <= 3) {
                g gVar = this.a;
                gVar.getClass();
                IAlog.a("%sonDrawnToSurface callback threw an exception!", e2, IAlog.a(gVar));
            }
        }
    }
}
