package org.greenrobot.eventbus;

/* JADX INFO: compiled from: AsyncPoster.java */
/* JADX INFO: loaded from: classes5.dex */
class a implements Runnable, j {
    private final i a = new i();
    private final EventBus b;

    a(EventBus eventBus) {
        this.b = eventBus;
    }

    @Override // org.greenrobot.eventbus.j
    public void a(o oVar, Object obj) {
        this.a.a(h.a(oVar, obj));
        this.b.c().execute(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        h hVarB = this.a.b();
        if (hVarB == null) {
            throw new IllegalStateException("No pending post available");
        }
        this.b.f(hVarB);
    }
}
