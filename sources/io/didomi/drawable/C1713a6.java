package io.didomi.drawable;

import dagger.internal.Preconditions;
import dagger.internal.b;
import e.a.a;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: renamed from: io.didomi.sdk.a6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1713a6 implements b<C1733c6> {
    private final Z5 a;
    private final a<H> b;
    private final a<Z2> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a<V> f8489d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a<io.didomi.drawable.apiEvents.b> f8490e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final a<M2> f8491f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final a<P3> f8492g;
    private final a<P8> h;
    private final a<CoroutineDispatcher> i;

    public C1713a6(Z5 z5, a<H> aVar, a<Z2> aVar2, a<V> aVar3, a<io.didomi.drawable.apiEvents.b> aVar4, a<M2> aVar5, a<P3> aVar6, a<P8> aVar7, a<CoroutineDispatcher> aVar8) {
        this.a = z5;
        this.b = aVar;
        this.c = aVar2;
        this.f8489d = aVar3;
        this.f8490e = aVar4;
        this.f8491f = aVar5;
        this.f8492g = aVar6;
        this.h = aVar7;
        this.i = aVar8;
    }

    public static C1713a6 a(Z5 z5, a<H> aVar, a<Z2> aVar2, a<V> aVar3, a<io.didomi.drawable.apiEvents.b> aVar4, a<M2> aVar5, a<P3> aVar6, a<P8> aVar7, a<CoroutineDispatcher> aVar8) {
        return new C1713a6(z5, aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7, aVar8);
    }

    public static C1733c6 a(Z5 z5, H h, Z2 z2, V v, io.didomi.drawable.apiEvents.b bVar, M2 m2, P3 p3, P8 p8, CoroutineDispatcher coroutineDispatcher) {
        return (C1733c6) Preconditions.checkNotNullFromProvides(z5.a(h, z2, v, bVar, m2, p3, p8, coroutineDispatcher));
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public C1733c6 get() {
        return a(this.a, this.b.get(), this.c.get(), this.f8489d.get(), this.f8490e.get(), this.f8491f.get(), this.f8492g.get(), this.h.get(), this.i.get());
    }
}
