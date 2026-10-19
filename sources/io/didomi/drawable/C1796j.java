package io.didomi.drawable;

import dagger.internal.b;
import io.didomi.drawable.apiEvents.a;

/* JADX INFO: renamed from: io.didomi.sdk.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1796j implements b<a> {
    private final e.a.a<H> a;
    private final e.a.a<V> b;
    private final e.a.a<P3> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final e.a.a<F8> f8589d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final e.a.a<M8> f8590e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final e.a.a<Z> f8591f;

    public C1796j(e.a.a<H> aVar, e.a.a<V> aVar2, e.a.a<P3> aVar3, e.a.a<F8> aVar4, e.a.a<M8> aVar5, e.a.a<Z> aVar6) {
        this.a = aVar;
        this.b = aVar2;
        this.c = aVar3;
        this.f8589d = aVar4;
        this.f8590e = aVar5;
        this.f8591f = aVar6;
    }

    public static a a(H h, V v, P3 p3, F8 f8, M8 m8, Z z) {
        return new a(h, v, p3, f8, m8, z);
    }

    public static C1796j a(e.a.a<H> aVar, e.a.a<V> aVar2, e.a.a<P3> aVar3, e.a.a<F8> aVar4, e.a.a<M8> aVar5, e.a.a<Z> aVar6) {
        return new C1796j(aVar, aVar2, aVar3, aVar4, aVar5, aVar6);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a get() {
        return a(this.a.get(), this.b.get(), this.c.get(), this.f8589d.get(), this.f8590e.get(), this.f8591f.get());
    }
}
