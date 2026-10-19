package io.didomi.drawable;

import android.content.Context;
import dagger.internal.Preconditions;
import dagger.internal.b;
import e.a.a;

/* JADX INFO: loaded from: classes5.dex */
public final class Y2 implements b<C1892s5> {
    private final T2 a;
    private final a<Context> b;

    public Y2(T2 t2, a<Context> aVar) {
        this.a = t2;
        this.b = aVar;
    }

    public static Y2 a(T2 t2, a<Context> aVar) {
        return new Y2(t2, aVar);
    }

    public static C1892s5 a(T2 t2, Context context) {
        return (C1892s5) Preconditions.checkNotNullFromProvides(t2.b(context));
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public C1892s5 get() {
        return a(this.a, this.b.get());
    }
}
