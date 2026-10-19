package io.didomi.drawable;

import dagger.internal.Preconditions;
import dagger.internal.b;
import e.a.a;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: renamed from: io.didomi.sdk.h4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1781h4 implements b<C3> {
    private final C1771g4 a;
    private final a<H> b;
    private final a<Z> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a<C1790i3> f8568d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a<CoroutineDispatcher> f8569e;

    public C1781h4(C1771g4 c1771g4, a<H> aVar, a<Z> aVar2, a<C1790i3> aVar3, a<CoroutineDispatcher> aVar4) {
        this.a = c1771g4;
        this.b = aVar;
        this.c = aVar2;
        this.f8568d = aVar3;
        this.f8569e = aVar4;
    }

    public static C3 a(C1771g4 c1771g4, H h, Z z, C1790i3 c1790i3, CoroutineDispatcher coroutineDispatcher) {
        return (C3) Preconditions.checkNotNullFromProvides(c1771g4.a(h, z, c1790i3, coroutineDispatcher));
    }

    public static C1781h4 a(C1771g4 c1771g4, a<H> aVar, a<Z> aVar2, a<C1790i3> aVar3, a<CoroutineDispatcher> aVar4) {
        return new C1781h4(c1771g4, aVar, aVar2, aVar3, aVar4);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public C3 get() {
        return a(this.a, this.b.get(), this.c.get(), this.f8568d.get(), this.f8569e.get());
    }
}
