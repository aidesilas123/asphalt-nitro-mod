package io.didomi.drawable;

import android.content.Context;
import dagger.internal.Preconditions;
import dagger.internal.b;
import e.a.a;

/* JADX INFO: renamed from: io.didomi.sdk.o5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1852o5 implements b<Z4> {
    private final C1832m5 a;
    private final a<Context> b;
    private final a<C1822l5> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a<Z> f8726d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a<C1920v3> f8727e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final a<H> f8728f;

    public C1852o5(C1832m5 c1832m5, a<Context> aVar, a<C1822l5> aVar2, a<Z> aVar3, a<C1920v3> aVar4, a<H> aVar5) {
        this.a = c1832m5;
        this.b = aVar;
        this.c = aVar2;
        this.f8726d = aVar3;
        this.f8727e = aVar4;
        this.f8728f = aVar5;
    }

    public static Z4 a(C1832m5 c1832m5, Context context, C1822l5 c1822l5, Z z, C1920v3 c1920v3, H h) {
        return (Z4) Preconditions.checkNotNullFromProvides(c1832m5.a(context, c1822l5, z, c1920v3, h));
    }

    public static C1852o5 a(C1832m5 c1832m5, a<Context> aVar, a<C1822l5> aVar2, a<Z> aVar3, a<C1920v3> aVar4, a<H> aVar5) {
        return new C1852o5(c1832m5, aVar, aVar2, aVar3, aVar4, aVar5);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Z4 get() {
        return a(this.a, this.b.get(), this.c.get(), this.f8726d.get(), this.f8727e.get(), this.f8728f.get());
    }
}
