package io.didomi.drawable;

import dagger.internal.Preconditions;
import dagger.internal.b;

/* JADX INFO: loaded from: classes5.dex */
public final class S3 implements b<C1960z3> {
    private final Q3 a;

    public S3(Q3 q3) {
        this.a = q3;
    }

    public static S3 a(Q3 q3) {
        return new S3(q3);
    }

    public static C1960z3 b(Q3 q3) {
        return (C1960z3) Preconditions.checkNotNullFromProvides(q3.getLocalPropertiesRepository());
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public C1960z3 get() {
        return b(this.a);
    }
}
