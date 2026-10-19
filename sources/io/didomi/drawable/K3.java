package io.didomi.drawable;

import dagger.internal.Preconditions;
import dagger.internal.b;
import e.a.a;

/* JADX INFO: loaded from: classes5.dex */
public final class K3 implements b<I3> {
    private final J3 a;
    private final a<H> b;
    private final a<M2> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a<io.didomi.drawable.apiEvents.b> f8267d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a<V> f8268e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final a<D8> f8269f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final a<G8> f8270g;

    public K3(J3 j3, a<H> aVar, a<M2> aVar2, a<io.didomi.drawable.apiEvents.b> aVar3, a<V> aVar4, a<D8> aVar5, a<G8> aVar6) {
        this.a = j3;
        this.b = aVar;
        this.c = aVar2;
        this.f8267d = aVar3;
        this.f8268e = aVar4;
        this.f8269f = aVar5;
        this.f8270g = aVar6;
    }

    public static I3 a(J3 j3, H h, M2 m2, io.didomi.drawable.apiEvents.b bVar, V v, D8 d8, G8 g8) {
        return (I3) Preconditions.checkNotNullFromProvides(j3.a(h, m2, bVar, v, d8, g8));
    }

    public static K3 a(J3 j3, a<H> aVar, a<M2> aVar2, a<io.didomi.drawable.apiEvents.b> aVar3, a<V> aVar4, a<D8> aVar5, a<G8> aVar6) {
        return new K3(j3, aVar, aVar2, aVar3, aVar4, aVar5, aVar6);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public I3 get() {
        return a(this.a, this.b.get(), this.c.get(), this.f8267d.get(), this.f8268e.get(), this.f8269f.get(), this.f8270g.get());
    }
}
