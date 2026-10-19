package io.didomi.drawable;

import dagger.internal.Preconditions;
import dagger.internal.b;

/* JADX INFO: loaded from: classes5.dex */
public final class U3 implements b<F8> {
    private final Q3 a;

    public U3(Q3 q3) {
        this.a = q3;
    }

    public static U3 a(Q3 q3) {
        return new U3(q3);
    }

    public static F8 b(Q3 q3) {
        return (F8) Preconditions.checkNotNullFromProvides(q3.getUserAgentRepository());
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public F8 get() {
        return b(this.a);
    }
}
