package io.didomi.drawable;

import dagger.internal.Preconditions;
import dagger.internal.b;

/* JADX INFO: loaded from: classes5.dex */
public final class L2 implements b<M2> {
    private final K2 a;

    public L2(K2 k2) {
        this.a = k2;
    }

    public static L2 a(K2 k2) {
        return new L2(k2);
    }

    public static M2 b(K2 k2) {
        return (M2) Preconditions.checkNotNullFromProvides(k2.getEventsRepository());
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public M2 get() {
        return b(this.a);
    }
}
