package io.didomi.drawable;

import dagger.internal.b;
import e.a.a;

/* JADX INFO: loaded from: classes5.dex */
public final class R5 implements b<Q5> {
    private final a<io.didomi.drawable.apiEvents.b> a;
    private final a<H> b;
    private final a<V> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a<M2> f8356d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a<C1920v3> f8357e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final a<G8> f8358f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final a<D8> f8359g;
    private final a<V8> h;
    private final a<C3> i;
    private final a<P8> j;

    public R5(a<io.didomi.drawable.apiEvents.b> aVar, a<H> aVar2, a<V> aVar3, a<M2> aVar4, a<C1920v3> aVar5, a<G8> aVar6, a<D8> aVar7, a<V8> aVar8, a<C3> aVar9, a<P8> aVar10) {
        this.a = aVar;
        this.b = aVar2;
        this.c = aVar3;
        this.f8356d = aVar4;
        this.f8357e = aVar5;
        this.f8358f = aVar6;
        this.f8359g = aVar7;
        this.h = aVar8;
        this.i = aVar9;
        this.j = aVar10;
    }

    public static Q5 a(io.didomi.drawable.apiEvents.b bVar, H h, V v, M2 m2, C1920v3 c1920v3, G8 g8, D8 d8, V8 v8, C3 c3, P8 p8) {
        return new Q5(bVar, h, v, m2, c1920v3, g8, d8, v8, c3, p8);
    }

    public static R5 a(a<io.didomi.drawable.apiEvents.b> aVar, a<H> aVar2, a<V> aVar3, a<M2> aVar4, a<C1920v3> aVar5, a<G8> aVar6, a<D8> aVar7, a<V8> aVar8, a<C3> aVar9, a<P8> aVar10) {
        return new R5(aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7, aVar8, aVar9, aVar10);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Q5 get() {
        return a(this.a.get(), this.b.get(), this.c.get(), this.f8356d.get(), this.f8357e.get(), this.f8358f.get(), this.f8359g.get(), this.h.get(), this.i.get(), this.j.get());
    }
}
