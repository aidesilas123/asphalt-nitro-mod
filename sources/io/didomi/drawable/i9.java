package io.didomi.drawable;

import dagger.internal.b;
import e.a.a;

/* JADX INFO: loaded from: classes5.dex */
public final class i9 implements b<h9> {
    private final a<io.didomi.drawable.apiEvents.b> a;
    private final a<H> b;
    private final a<M2> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a<C1920v3> f8585d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a<C1965z8> f8586e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final a<G8> f8587f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final a<V8> f8588g;
    private final a<C3> h;

    public i9(a<io.didomi.drawable.apiEvents.b> aVar, a<H> aVar2, a<M2> aVar3, a<C1920v3> aVar4, a<C1965z8> aVar5, a<G8> aVar6, a<V8> aVar7, a<C3> aVar8) {
        this.a = aVar;
        this.b = aVar2;
        this.c = aVar3;
        this.f8585d = aVar4;
        this.f8586e = aVar5;
        this.f8587f = aVar6;
        this.f8588g = aVar7;
        this.h = aVar8;
    }

    public static h9 a(io.didomi.drawable.apiEvents.b bVar, H h, M2 m2, C1920v3 c1920v3, C1965z8 c1965z8, G8 g8, V8 v8, C3 c3) {
        return new h9(bVar, h, m2, c1920v3, c1965z8, g8, v8, c3);
    }

    public static i9 a(a<io.didomi.drawable.apiEvents.b> aVar, a<H> aVar2, a<M2> aVar3, a<C1920v3> aVar4, a<C1965z8> aVar5, a<G8> aVar6, a<V8> aVar7, a<C3> aVar8) {
        return new i9(aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7, aVar8);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public h9 get() {
        return a(this.a.get(), this.b.get(), this.c.get(), this.f8585d.get(), this.f8586e.get(), this.f8587f.get(), this.f8588g.get(), this.h.get());
    }
}
