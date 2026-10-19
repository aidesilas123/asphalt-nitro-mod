package org.greenrobot.eventbus;

import java.util.logging.Level;

/* JADX INFO: compiled from: BackgroundPoster.java */
/* JADX INFO: loaded from: classes5.dex */
final class b implements Runnable, j {
    private final i a = new i();
    private final EventBus b;
    private volatile boolean c;

    b(EventBus eventBus) {
        this.b = eventBus;
    }

    @Override // org.greenrobot.eventbus.j
    public void a(o oVar, Object obj) {
        h hVarA = h.a(oVar, obj);
        synchronized (this) {
            this.a.a(hVarA);
            if (!this.c) {
                this.c = true;
                this.b.c().execute(this);
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        h hVarC;
        while (true) {
            try {
                hVarC = this.a.c(1000);
            } catch (InterruptedException e2) {
                this.b.d().a(Level.WARNING, Thread.currentThread().getName() + " was interruppted", e2);
                return;
            } finally {
                this.c = false;
            }
            if (hVarC == null) {
                synchronized (this) {
                    hVarC = this.a.b();
                    if (hVarC == null) {
                        return;
                    }
                    this.c = false;
                }
            }
            this.b.f(hVarC);
        }
    }
}
