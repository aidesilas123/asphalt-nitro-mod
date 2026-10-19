package io.didomi.drawable;

import android.content.Context;
import dagger.internal.Preconditions;
import dagger.internal.b;
import e.a.a;

/* JADX INFO: loaded from: classes5.dex */
public final class U2 implements b<J> {
    private final T2 a;
    private final a<Context> b;

    public U2(T2 t2, a<Context> aVar) {
        this.a = t2;
        this.b = aVar;
    }

    public static J a(T2 t2, Context context) {
        return (J) Preconditions.checkNotNullFromProvides(t2.a(context));
    }

    public static U2 a(T2 t2, a<Context> aVar) {
        return new U2(t2, aVar);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public J get() {
        return a(this.a, this.b.get());
    }
}
