package org.greenrobot.eventbus;

/* JADX INFO: compiled from: Subscription.java */
/* JADX INFO: loaded from: classes5.dex */
final class o {
    final Object a;
    final m b;
    volatile boolean c = true;

    o(Object obj, m mVar) {
        this.a = obj;
        this.b = mVar;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return this.a == oVar.a && this.b.equals(oVar.b);
    }

    public int hashCode() {
        return this.a.hashCode() + this.b.f10946f.hashCode();
    }
}
