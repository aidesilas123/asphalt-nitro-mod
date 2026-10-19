package io.didomi.drawable;

import dagger.internal.Preconditions;
import dagger.internal.b;
import e.a.a;

/* JADX INFO: renamed from: io.didomi.sdk.q5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1872q5 implements b<V8> {
    private final C1832m5 a;
    private final a<H> b;
    private final a<C1920v3> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a<Z4> f8742d;

    public C1872q5(C1832m5 c1832m5, a<H> aVar, a<C1920v3> aVar2, a<Z4> aVar3) {
        this.a = c1832m5;
        this.b = aVar;
        this.c = aVar2;
        this.f8742d = aVar3;
    }

    public static V8 a(C1832m5 c1832m5, H h, C1920v3 c1920v3, Z4 z4) {
        return (V8) Preconditions.checkNotNullFromProvides(c1832m5.a(h, c1920v3, z4));
    }

    public static C1872q5 a(C1832m5 c1832m5, a<H> aVar, a<C1920v3> aVar2, a<Z4> aVar3) {
        return new C1872q5(c1832m5, aVar, aVar2, aVar3);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public V8 get() {
        return a(this.a, this.b.get(), this.c.get(), this.f8742d.get());
    }
}
