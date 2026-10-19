package io.didomi.drawable;

import dagger.internal.Preconditions;
import dagger.internal.b;
import e.a.a;

/* JADX INFO: loaded from: classes5.dex */
public final class W2 implements b<Z2> {
    private final T2 a;
    private final a<F8> b;

    public W2(T2 t2, a<F8> aVar) {
        this.a = t2;
        this.b = aVar;
    }

    public static W2 a(T2 t2, a<F8> aVar) {
        return new W2(t2, aVar);
    }

    public static Z2 a(T2 t2, F8 f8) {
        return (Z2) Preconditions.checkNotNullFromProvides(t2.a(f8));
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Z2 get() {
        return a(this.a, this.b.get());
    }
}
