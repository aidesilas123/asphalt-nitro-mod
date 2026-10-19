package com.bytedance.sdk.component.a;

import com.bytedance.component.sdk.annotation.CallSuper;

/* JADX INFO: compiled from: BaseStatefulMethod.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class d<P, R> extends com.bytedance.sdk.component.a.b<P, R> {
    private boolean a = true;
    private a b;
    private f c;

    /* JADX INFO: compiled from: BaseStatefulMethod.java */
    interface a {
        void a(Throwable th);
    }

    /* JADX INFO: compiled from: BaseStatefulMethod.java */
    public interface b {
        d a();
    }

    private boolean g() {
        if (this.a) {
            return true;
        }
        i.a(new IllegalStateException("Jsb async call already finished: " + a() + ", hashcode: " + hashCode()));
        return false;
    }

    @Override // com.bytedance.sdk.component.a.b
    public /* bridge */ /* synthetic */ String a() {
        return super.a();
    }

    protected abstract void a(P p, f fVar) throws Exception;

    void a(P p, f fVar, a aVar) throws Exception {
        this.c = fVar;
        this.b = aVar;
        a(p, fVar);
    }

    protected final void a(Throwable th) {
        if (g()) {
            this.b.a(th);
            e();
        }
    }

    protected final void c() {
        a((Throwable) null);
    }

    protected abstract void d();

    @CallSuper
    protected void e() {
        this.a = false;
        this.c = null;
    }

    void f() {
        d();
        e();
    }
}
