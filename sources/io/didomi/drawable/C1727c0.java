package io.didomi.drawable;

import android.content.Context;
import dagger.internal.Preconditions;
import dagger.internal.b;

/* JADX INFO: renamed from: io.didomi.sdk.c0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1727c0 implements b<Context> {
    private final C1717b0 a;

    public C1727c0(C1717b0 c1717b0) {
        this.a = c1717b0;
    }

    public static C1727c0 a(C1717b0 c1717b0) {
        return new C1727c0(c1717b0);
    }

    public static Context b(C1717b0 c1717b0) {
        return (Context) Preconditions.checkNotNullFromProvides(c1717b0.getContext());
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Context get() {
        return b(this.a);
    }
}
