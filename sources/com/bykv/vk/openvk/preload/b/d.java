package com.bykv.vk.openvk.preload.b;

import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: Interceptor.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class d<IN, OUT> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static AtomicLong f545g = new AtomicLong();
    d a;
    IN b;
    public OUT c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    com.bykv.vk.openvk.preload.b.b.a f546d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    b f547e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f548f;

    public abstract Object a(b<OUT> bVar, IN in) throws Throwable;

    final void a(b bVar, d dVar, IN in, com.bykv.vk.openvk.preload.b.b.a aVar, Object[] objArr) {
        this.f547e = new m(bVar);
        this.a = dVar;
        this.b = in;
        this.f546d = aVar;
        if (dVar != null) {
            this.f548f = dVar.f548f;
        } else {
            long andIncrement = f545g.getAndIncrement();
            this.f548f = andIncrement;
            if (andIncrement < 0) {
                throw new RuntimeException("Pipeline ID use up!");
            }
        }
        a(objArr);
    }

    protected void a(Object... objArr) {
    }

    protected final void b(Throwable th) {
        com.bykv.vk.openvk.preload.b.b.a aVar = this.f546d;
        if (aVar == null) {
            return;
        }
        aVar.c(this.f547e, this, th);
    }
}
