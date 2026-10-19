package io.didomi.drawable;

import dagger.internal.b;
import e.a.a;

/* JADX INFO: renamed from: io.didomi.sdk.r7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1884r7 implements b<C1874q7> {
    private final a<H> a;
    private final a<C1920v3> b;
    private final a<C3> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a<C1892s5> f8749d;

    public C1884r7(a<H> aVar, a<C1920v3> aVar2, a<C3> aVar3, a<C1892s5> aVar4) {
        this.a = aVar;
        this.b = aVar2;
        this.c = aVar3;
        this.f8749d = aVar4;
    }

    public static C1874q7 a(H h, C1920v3 c1920v3, C3 c3, C1892s5 c1892s5) {
        return new C1874q7(h, c1920v3, c3, c1892s5);
    }

    public static C1884r7 a(a<H> aVar, a<C1920v3> aVar2, a<C3> aVar3, a<C1892s5> aVar4) {
        return new C1884r7(aVar, aVar2, aVar3, aVar4);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public C1874q7 get() {
        return a(this.a.get(), this.b.get(), this.c.get(), this.f8749d.get());
    }
}
