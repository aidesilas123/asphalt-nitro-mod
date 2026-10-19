package io.didomi.drawable;

import dagger.internal.Preconditions;
import dagger.internal.b;
import e.a.a;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: renamed from: io.didomi.sdk.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1776h implements b<io.didomi.drawable.apiEvents.b> {
    private final C1766g a;
    private final a<io.didomi.drawable.apiEvents.a> b;
    private final a<J> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a<Z> f8564d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a<Z2> f8565e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final a<CoroutineDispatcher> f8566f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final a<V8> f8567g;
    private final a<H> h;

    public C1776h(C1766g c1766g, a<io.didomi.drawable.apiEvents.a> aVar, a<J> aVar2, a<Z> aVar3, a<Z2> aVar4, a<CoroutineDispatcher> aVar5, a<V8> aVar6, a<H> aVar7) {
        this.a = c1766g;
        this.b = aVar;
        this.c = aVar2;
        this.f8564d = aVar3;
        this.f8565e = aVar4;
        this.f8566f = aVar5;
        this.f8567g = aVar6;
        this.h = aVar7;
    }

    public static io.didomi.drawable.apiEvents.b a(C1766g c1766g, io.didomi.drawable.apiEvents.a aVar, J j, Z z, Z2 z2, CoroutineDispatcher coroutineDispatcher, V8 v8, H h) {
        return (io.didomi.drawable.apiEvents.b) Preconditions.checkNotNullFromProvides(c1766g.a(aVar, j, z, z2, coroutineDispatcher, v8, h));
    }

    public static C1776h a(C1766g c1766g, a<io.didomi.drawable.apiEvents.a> aVar, a<J> aVar2, a<Z> aVar3, a<Z2> aVar4, a<CoroutineDispatcher> aVar5, a<V8> aVar6, a<H> aVar7) {
        return new C1776h(c1766g, aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public io.didomi.drawable.apiEvents.b get() {
        return a(this.a, this.b.get(), this.c.get(), this.f8564d.get(), this.f8565e.get(), this.f8566f.get(), this.f8567g.get(), this.h.get());
    }
}
