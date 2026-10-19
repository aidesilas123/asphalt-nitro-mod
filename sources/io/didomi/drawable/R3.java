package io.didomi.drawable;

import dagger.internal.Preconditions;
import dagger.internal.b;

/* JADX INFO: loaded from: classes5.dex */
public final class R3 implements b<DidomiInitializeParameters> {
    private final Q3 a;

    public R3(Q3 q3) {
        this.a = q3;
    }

    public static R3 a(Q3 q3) {
        return new R3(q3);
    }

    public static DidomiInitializeParameters b(Q3 q3) {
        return (DidomiInitializeParameters) Preconditions.checkNotNullFromProvides(q3.getParameters());
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public DidomiInitializeParameters get() {
        return b(this.a);
    }
}
