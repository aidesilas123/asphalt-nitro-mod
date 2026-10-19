package io.didomi.drawable;

import dagger.internal.Preconditions;
import dagger.internal.b;
import e.a.a;

/* JADX INFO: renamed from: io.didomi.sdk.n5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1842n5 implements b<InterfaceC1780h3> {
    private final C1832m5 a;
    private final a<H> b;

    public C1842n5(C1832m5 c1832m5, a<H> aVar) {
        this.a = c1832m5;
        this.b = aVar;
    }

    public static InterfaceC1780h3 a(C1832m5 c1832m5, H h) {
        return (InterfaceC1780h3) Preconditions.checkNotNullFromProvides(c1832m5.a(h));
    }

    public static C1842n5 a(C1832m5 c1832m5, a<H> aVar) {
        return new C1842n5(c1832m5, aVar);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public InterfaceC1780h3 get() {
        return a(this.a, this.b.get());
    }
}
