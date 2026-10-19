package io.didomi.drawable;

import dagger.internal.b;
import e.a.a;

/* JADX INFO: renamed from: io.didomi.sdk.p6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1863p6 implements b<C1853o6> {
    private final a<H> a;
    private final a<C1920v3> b;
    private final a<V8> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a<C3> f8732d;

    public C1863p6(a<H> aVar, a<C1920v3> aVar2, a<V8> aVar3, a<C3> aVar4) {
        this.a = aVar;
        this.b = aVar2;
        this.c = aVar3;
        this.f8732d = aVar4;
    }

    public static C1853o6 a(H h, C1920v3 c1920v3, V8 v8, C3 c3) {
        return new C1853o6(h, c1920v3, v8, c3);
    }

    public static C1863p6 a(a<H> aVar, a<C1920v3> aVar2, a<V8> aVar3, a<C3> aVar4) {
        return new C1863p6(aVar, aVar2, aVar3, aVar4);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public C1853o6 get() {
        return a(this.a.get(), this.b.get(), this.c.get(), this.f8732d.get());
    }
}
