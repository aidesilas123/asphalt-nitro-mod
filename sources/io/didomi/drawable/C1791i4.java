package io.didomi.drawable;

import dagger.internal.Preconditions;
import dagger.internal.b;
import e.a.a;

/* JADX INFO: renamed from: io.didomi.sdk.i4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1791i4 implements b<D8> {
    private final C1771g4 a;
    private final a<Z> b;
    private final a<H> c;

    public C1791i4(C1771g4 c1771g4, a<Z> aVar, a<H> aVar2) {
        this.a = c1771g4;
        this.b = aVar;
        this.c = aVar2;
    }

    public static D8 a(C1771g4 c1771g4, Z z, H h) {
        return (D8) Preconditions.checkNotNullFromProvides(c1771g4.a(z, h));
    }

    public static C1791i4 a(C1771g4 c1771g4, a<Z> aVar, a<H> aVar2) {
        return new C1791i4(c1771g4, aVar, aVar2);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public D8 get() {
        return a(this.a, this.b.get(), this.c.get());
    }
}
