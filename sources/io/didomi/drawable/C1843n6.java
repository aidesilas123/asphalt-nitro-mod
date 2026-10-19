package io.didomi.drawable;

import dagger.internal.b;
import e.a.a;

/* JADX INFO: renamed from: io.didomi.sdk.n6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1843n6 implements b<C1833m6> {
    private final a<H> a;
    private final a<M2> b;
    private final a<C3> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a<C1920v3> f8713d;

    public C1843n6(a<H> aVar, a<M2> aVar2, a<C3> aVar3, a<C1920v3> aVar4) {
        this.a = aVar;
        this.b = aVar2;
        this.c = aVar3;
        this.f8713d = aVar4;
    }

    public static C1833m6 a(H h, M2 m2, C3 c3, C1920v3 c1920v3) {
        return new C1833m6(h, m2, c3, c1920v3);
    }

    public static C1843n6 a(a<H> aVar, a<M2> aVar2, a<C3> aVar3, a<C1920v3> aVar4) {
        return new C1843n6(aVar, aVar2, aVar3, aVar4);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public C1833m6 get() {
        return a(this.a.get(), this.b.get(), this.c.get(), this.f8713d.get());
    }
}
