package org.greenrobot.eventbus;

/* JADX INFO: compiled from: PendingPostQueue.java */
/* JADX INFO: loaded from: classes5.dex */
final class i {
    private h a;
    private h b;

    i() {
    }

    synchronized void a(h hVar) {
        try {
            if (hVar == null) {
                throw new NullPointerException("null cannot be enqueued");
            }
            h hVar2 = this.b;
            if (hVar2 != null) {
                hVar2.f10942d = hVar;
                this.b = hVar;
            } else {
                if (this.a != null) {
                    throw new IllegalStateException("Head present, but no tail");
                }
                this.b = hVar;
                this.a = hVar;
            }
            notifyAll();
        } catch (Throwable th) {
            throw th;
        }
    }

    synchronized h b() {
        h hVar;
        hVar = this.a;
        if (hVar != null) {
            h hVar2 = hVar.f10942d;
            this.a = hVar2;
            if (hVar2 == null) {
                this.b = null;
            }
        }
        return hVar;
    }

    synchronized h c(int i) throws InterruptedException {
        if (this.a == null) {
            wait(i);
        }
        return b();
    }
}
