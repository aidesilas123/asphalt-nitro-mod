package io.didomi.drawable;

import dagger.internal.Preconditions;
import dagger.internal.b;

/* JADX INFO: renamed from: io.didomi.sdk.p5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1862p5 implements b<UIStateRepository> {
    private final C1832m5 a;

    public C1862p5(C1832m5 c1832m5) {
        this.a = c1832m5;
    }

    public static C1862p5 a(C1832m5 c1832m5) {
        return new C1862p5(c1832m5);
    }

    public static UIStateRepository b(C1832m5 c1832m5) {
        return (UIStateRepository) Preconditions.checkNotNullFromProvides(c1832m5.a());
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public UIStateRepository get() {
        return b(this.a);
    }
}
