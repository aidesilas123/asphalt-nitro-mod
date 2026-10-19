package io.didomi.drawable;

import dagger.internal.b;
import e.a.a;

/* JADX INFO: loaded from: classes5.dex */
public final class D0 implements b<C0> {
    private final a<H> a;
    private final a<C1920v3> b;
    private final a<V8> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a<C3> f8200d;

    public D0(a<H> aVar, a<C1920v3> aVar2, a<V8> aVar3, a<C3> aVar4) {
        this.a = aVar;
        this.b = aVar2;
        this.c = aVar3;
        this.f8200d = aVar4;
    }

    public static C0 a(H h, C1920v3 c1920v3, V8 v8, C3 c3) {
        return new C0(h, c1920v3, v8, c3);
    }

    public static D0 a(a<H> aVar, a<C1920v3> aVar2, a<V8> aVar3, a<C3> aVar4) {
        return new D0(aVar, aVar2, aVar3, aVar4);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public C0 get() {
        return a(this.a.get(), this.b.get(), this.c.get(), this.f8200d.get());
    }
}
