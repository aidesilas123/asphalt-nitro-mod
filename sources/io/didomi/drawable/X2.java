package io.didomi.drawable;

import android.content.Context;
import dagger.internal.Preconditions;
import dagger.internal.b;
import e.a.a;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes5.dex */
public final class X2 implements b<C1822l5> {
    private final T2 a;
    private final a<Context> b;
    private final a<J> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a<Z2> f8446d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a<CoroutineDispatcher> f8447e;

    public X2(T2 t2, a<Context> aVar, a<J> aVar2, a<Z2> aVar3, a<CoroutineDispatcher> aVar4) {
        this.a = t2;
        this.b = aVar;
        this.c = aVar2;
        this.f8446d = aVar3;
        this.f8447e = aVar4;
    }

    public static X2 a(T2 t2, a<Context> aVar, a<J> aVar2, a<Z2> aVar3, a<CoroutineDispatcher> aVar4) {
        return new X2(t2, aVar, aVar2, aVar3, aVar4);
    }

    public static C1822l5 a(T2 t2, Context context, J j, Z2 z2, CoroutineDispatcher coroutineDispatcher) {
        return (C1822l5) Preconditions.checkNotNullFromProvides(t2.a(context, j, z2, coroutineDispatcher));
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public C1822l5 get() {
        return a(this.a, this.b.get(), this.c.get(), this.f8446d.get(), this.f8447e.get());
    }
}
