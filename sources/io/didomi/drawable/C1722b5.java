package io.didomi.drawable;

import dagger.internal.b;
import e.a.a;

/* JADX INFO: renamed from: io.didomi.sdk.b5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1722b5 implements b<C1712a5> {
    private final a<io.didomi.drawable.apiEvents.b> a;
    private final a<H> b;
    private final a<V> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a<Z> f8506d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a<M2> f8507e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final a<C1920v3> f8508f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final a<G8> f8509g;
    private final a<P8> h;
    private final a<D8> i;
    private final a<V8> j;
    private final a<C3> k;
    private final a<I3> l;

    public C1722b5(a<io.didomi.drawable.apiEvents.b> aVar, a<H> aVar2, a<V> aVar3, a<Z> aVar4, a<M2> aVar5, a<C1920v3> aVar6, a<G8> aVar7, a<P8> aVar8, a<D8> aVar9, a<V8> aVar10, a<C3> aVar11, a<I3> aVar12) {
        this.a = aVar;
        this.b = aVar2;
        this.c = aVar3;
        this.f8506d = aVar4;
        this.f8507e = aVar5;
        this.f8508f = aVar6;
        this.f8509g = aVar7;
        this.h = aVar8;
        this.i = aVar9;
        this.j = aVar10;
        this.k = aVar11;
        this.l = aVar12;
    }

    public static C1712a5 a(io.didomi.drawable.apiEvents.b bVar, H h, V v, Z z, M2 m2, C1920v3 c1920v3, G8 g8, P8 p8, D8 d8, V8 v8, C3 c3, I3 i3) {
        return new C1712a5(bVar, h, v, z, m2, c1920v3, g8, p8, d8, v8, c3, i3);
    }

    public static C1722b5 a(a<io.didomi.drawable.apiEvents.b> aVar, a<H> aVar2, a<V> aVar3, a<Z> aVar4, a<M2> aVar5, a<C1920v3> aVar6, a<G8> aVar7, a<P8> aVar8, a<D8> aVar9, a<V8> aVar10, a<C3> aVar11, a<I3> aVar12) {
        return new C1722b5(aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7, aVar8, aVar9, aVar10, aVar11, aVar12);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public C1712a5 get() {
        return a(this.a.get(), this.b.get(), this.c.get(), this.f8506d.get(), this.f8507e.get(), this.f8508f.get(), this.f8509g.get(), this.h.get(), this.i.get(), this.j.get(), this.k.get(), this.l.get());
    }
}
