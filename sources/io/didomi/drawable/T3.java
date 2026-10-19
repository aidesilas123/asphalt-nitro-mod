package io.didomi.drawable;

import dagger.internal.Preconditions;
import dagger.internal.b;

/* JADX INFO: loaded from: classes5.dex */
public final class T3 implements b<P3> {
    private final Q3 a;

    public T3(Q3 q3) {
        this.a = q3;
    }

    public static T3 a(Q3 q3) {
        return new T3(q3);
    }

    public static P3 b(Q3 q3) {
        return (P3) Preconditions.checkNotNullFromProvides(q3.getOrganizationUserRepository());
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public P3 get() {
        return b(this.a);
    }
}
