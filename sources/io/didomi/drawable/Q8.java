package io.didomi.drawable;

import dagger.internal.b;
import e.a.a;

/* JADX INFO: loaded from: classes5.dex */
public final class Q8 implements b<P8> {
    private final a<io.didomi.drawable.apiEvents.b> a;
    private final a<H> b;
    private final a<V> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a<C1797j0> f8347d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a<M2> f8348e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final a<M8> f8349f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final a<V8> f8350g;

    public Q8(a<io.didomi.drawable.apiEvents.b> aVar, a<H> aVar2, a<V> aVar3, a<C1797j0> aVar4, a<M2> aVar5, a<M8> aVar6, a<V8> aVar7) {
        this.a = aVar;
        this.b = aVar2;
        this.c = aVar3;
        this.f8347d = aVar4;
        this.f8348e = aVar5;
        this.f8349f = aVar6;
        this.f8350g = aVar7;
    }

    public static P8 a(io.didomi.drawable.apiEvents.b bVar, H h, V v, C1797j0 c1797j0, M2 m2, M8 m8, V8 v8) {
        return new P8(bVar, h, v, c1797j0, m2, m8, v8);
    }

    public static Q8 a(a<io.didomi.drawable.apiEvents.b> aVar, a<H> aVar2, a<V> aVar3, a<C1797j0> aVar4, a<M2> aVar5, a<M8> aVar6, a<V8> aVar7) {
        return new Q8(aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public P8 get() {
        return a(this.a.get(), this.b.get(), this.c.get(), this.f8347d.get(), this.f8348e.get(), this.f8349f.get(), this.f8350g.get());
    }
}
