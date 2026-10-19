package io.didomi.drawable;

import dagger.internal.b;
import e.a.a;

/* JADX INFO: loaded from: classes5.dex */
public final class A8 implements b<C1965z8> {
    private final a<H> a;
    private final a<C1892s5> b;

    public A8(a<H> aVar, a<C1892s5> aVar2) {
        this.a = aVar;
        this.b = aVar2;
    }

    public static A8 a(a<H> aVar, a<C1892s5> aVar2) {
        return new A8(aVar, aVar2);
    }

    public static C1965z8 a(H h, C1892s5 c1892s5) {
        return new C1965z8(h, c1892s5);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public C1965z8 get() {
        return a(this.a.get(), this.b.get());
    }
}
