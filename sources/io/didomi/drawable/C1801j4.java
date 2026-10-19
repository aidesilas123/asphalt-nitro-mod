package io.didomi.drawable;

import dagger.internal.Preconditions;
import dagger.internal.b;

/* JADX INFO: renamed from: io.didomi.sdk.j4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1801j4 implements b<G8> {
    private final C1771g4 a;

    public C1801j4(C1771g4 c1771g4) {
        this.a = c1771g4;
    }

    public static C1801j4 a(C1771g4 c1771g4) {
        return new C1801j4(c1771g4);
    }

    public static G8 b(C1771g4 c1771g4) {
        return (G8) Preconditions.checkNotNullFromProvides(c1771g4.a());
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public G8 get() {
        return b(this.a);
    }
}
