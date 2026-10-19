package io.didomi.drawable;

import android.content.Context;
import dagger.internal.Preconditions;
import dagger.internal.b;
import e.a.a;

/* JADX INFO: loaded from: classes5.dex */
public final class V2 implements b<Z> {
    private final T2 a;
    private final a<Context> b;
    private final a<DidomiInitializeParameters> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a<C1960z3> f8409d;

    public V2(T2 t2, a<Context> aVar, a<DidomiInitializeParameters> aVar2, a<C1960z3> aVar3) {
        this.a = t2;
        this.b = aVar;
        this.c = aVar2;
        this.f8409d = aVar3;
    }

    public static V2 a(T2 t2, a<Context> aVar, a<DidomiInitializeParameters> aVar2, a<C1960z3> aVar3) {
        return new V2(t2, aVar, aVar2, aVar3);
    }

    public static Z a(T2 t2, Context context, DidomiInitializeParameters didomiInitializeParameters, C1960z3 c1960z3) {
        return (Z) Preconditions.checkNotNullFromProvides(t2.a(context, didomiInitializeParameters, c1960z3));
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Z get() {
        return a(this.a, this.b.get(), this.c.get(), this.f8409d.get());
    }
}
