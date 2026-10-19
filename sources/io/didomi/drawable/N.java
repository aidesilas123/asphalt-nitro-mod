package io.didomi.drawable;

import android.content.Context;
import dagger.internal.Preconditions;
import dagger.internal.b;
import e.a.a;

/* JADX INFO: loaded from: classes5.dex */
public final class N implements b<InterfaceC1890s3> {
    private final L a;
    private final a<H> b;
    private final a<Context> c;

    public N(L l, a<H> aVar, a<Context> aVar2) {
        this.a = l;
        this.b = aVar;
        this.c = aVar2;
    }

    public static N a(L l, a<H> aVar, a<Context> aVar2) {
        return new N(l, aVar, aVar2);
    }

    public static InterfaceC1890s3 a(L l, H h, Context context) {
        return (InterfaceC1890s3) Preconditions.checkNotNullFromProvides(l.a(h, context));
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public InterfaceC1890s3 get() {
        return a(this.a, this.b.get(), this.c.get());
    }
}
