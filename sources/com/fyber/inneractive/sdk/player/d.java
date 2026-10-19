package com.fyber.inneractive.sdk.player;

import com.fyber.inneractive.sdk.util.IAlog;
import java.util.concurrent.ScheduledThreadPoolExecutor;

/* JADX INFO: loaded from: classes2.dex */
public class d {
    public com.fyber.inneractive.sdk.player.controller.g a;
    public ScheduledThreadPoolExecutor b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2181d = false;
    public Runnable c = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d dVar = d.this;
            dVar.getClass();
            IAlog.a("player progress monitor: run started", new Object[0]);
            int iC = dVar.a.c();
            if (!dVar.f2181d) {
                int i = iC + 0;
                IAlog.a("run: 2 seconds passed? played for %d since last play started", Integer.valueOf(i));
                if (i >= 2000) {
                    IAlog.a("run: setting played 2 seconds flag", new Object[0]);
                    dVar.f2181d = true;
                }
            }
            dVar.a.a(iC);
        }
    }

    public d(com.fyber.inneractive.sdk.player.controller.g gVar) {
        this.a = gVar;
    }
}
