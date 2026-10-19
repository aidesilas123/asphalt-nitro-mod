package io.didomi.drawable;

import android.content.Context;
import dagger.internal.Preconditions;
import dagger.internal.b;
import e.a.a;

/* JADX INFO: loaded from: classes5.dex */
public final class G implements b<H> {
    private final F a;
    private final a<Context> b;
    private final a<Z> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a<C1960z3> f8221d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a<DidomiInitializeParameters> f8222e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final a<C1822l5> f8223f;

    public G(F f2, a<Context> aVar, a<Z> aVar2, a<C1960z3> aVar3, a<DidomiInitializeParameters> aVar4, a<C1822l5> aVar5) {
        this.a = f2;
        this.b = aVar;
        this.c = aVar2;
        this.f8221d = aVar3;
        this.f8222e = aVar4;
        this.f8223f = aVar5;
    }

    public static G a(F f2, a<Context> aVar, a<Z> aVar2, a<C1960z3> aVar3, a<DidomiInitializeParameters> aVar4, a<C1822l5> aVar5) {
        return new G(f2, aVar, aVar2, aVar3, aVar4, aVar5);
    }

    public static H a(F f2, Context context, Z z, C1960z3 c1960z3, DidomiInitializeParameters didomiInitializeParameters, C1822l5 c1822l5) {
        return (H) Preconditions.checkNotNullFromProvides(f2.a(context, z, c1960z3, didomiInitializeParameters, c1822l5));
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public H get() {
        return a(this.a, this.b.get(), this.c.get(), this.f8221d.get(), this.f8222e.get(), this.f8223f.get());
    }
}
