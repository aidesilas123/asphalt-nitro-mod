package io.didomi.drawable;

import dagger.internal.b;
import e.a.a;

/* JADX INFO: loaded from: classes5.dex */
public final class C5 implements b<B5> {
    private final a<H> a;
    private final a<C1920v3> b;
    private final a<C3> c;

    public C5(a<H> aVar, a<C1920v3> aVar2, a<C3> aVar3) {
        this.a = aVar;
        this.b = aVar2;
        this.c = aVar3;
    }

    public static B5 a(H h, C1920v3 c1920v3, C3 c3) {
        return new B5(h, c1920v3, c3);
    }

    public static C5 a(a<H> aVar, a<C1920v3> aVar2, a<C3> aVar3) {
        return new C5(aVar, aVar2, aVar3);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public B5 get() {
        return a(this.a.get(), this.b.get(), this.c.get());
    }
}
