package io.didomi.drawable;

import dagger.internal.b;
import e.a.a;

/* JADX INFO: loaded from: classes5.dex */
public final class L8 implements b<K8> {
    private final a<H> a;
    private final a<V> b;
    private final a<Z> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a<C1920v3> f8286d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a<M8> f8287e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final a<C3> f8288f;

    public L8(a<H> aVar, a<V> aVar2, a<Z> aVar3, a<C1920v3> aVar4, a<M8> aVar5, a<C3> aVar6) {
        this.a = aVar;
        this.b = aVar2;
        this.c = aVar3;
        this.f8286d = aVar4;
        this.f8287e = aVar5;
        this.f8288f = aVar6;
    }

    public static K8 a(H h, V v, Z z, C1920v3 c1920v3, M8 m8, C3 c3) {
        return new K8(h, v, z, c1920v3, m8, c3);
    }

    public static L8 a(a<H> aVar, a<V> aVar2, a<Z> aVar3, a<C1920v3> aVar4, a<M8> aVar5, a<C3> aVar6) {
        return new L8(aVar, aVar2, aVar3, aVar4, aVar5, aVar6);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public K8 get() {
        return a(this.a.get(), this.b.get(), this.c.get(), this.f8286d.get(), this.f8287e.get(), this.f8288f.get());
    }
}
