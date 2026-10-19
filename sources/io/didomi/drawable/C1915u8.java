package io.didomi.drawable;

import dagger.internal.b;
import e.a.a;

/* JADX INFO: renamed from: io.didomi.sdk.u8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1915u8 implements b<C1905t8> {
    private final a<io.didomi.drawable.apiEvents.b> a;
    private final a<H> b;
    private final a<M2> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a<C1920v3> f8767d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a<C1965z8> f8768e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final a<G8> f8769f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final a<V8> f8770g;
    private final a<C3> h;
    private final a<C1892s5> i;

    public C1915u8(a<io.didomi.drawable.apiEvents.b> aVar, a<H> aVar2, a<M2> aVar3, a<C1920v3> aVar4, a<C1965z8> aVar5, a<G8> aVar6, a<V8> aVar7, a<C3> aVar8, a<C1892s5> aVar9) {
        this.a = aVar;
        this.b = aVar2;
        this.c = aVar3;
        this.f8767d = aVar4;
        this.f8768e = aVar5;
        this.f8769f = aVar6;
        this.f8770g = aVar7;
        this.h = aVar8;
        this.i = aVar9;
    }

    public static C1905t8 a(io.didomi.drawable.apiEvents.b bVar, H h, M2 m2, C1920v3 c1920v3, C1965z8 c1965z8, G8 g8, V8 v8, C3 c3, C1892s5 c1892s5) {
        return new C1905t8(bVar, h, m2, c1920v3, c1965z8, g8, v8, c3, c1892s5);
    }

    public static C1915u8 a(a<io.didomi.drawable.apiEvents.b> aVar, a<H> aVar2, a<M2> aVar3, a<C1920v3> aVar4, a<C1965z8> aVar5, a<G8> aVar6, a<V8> aVar7, a<C3> aVar8, a<C1892s5> aVar9) {
        return new C1915u8(aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7, aVar8, aVar9);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public C1905t8 get() {
        return a(this.a.get(), this.b.get(), this.c.get(), this.f8767d.get(), this.f8768e.get(), this.f8769f.get(), this.f8770g.get(), this.h.get(), this.i.get());
    }
}
