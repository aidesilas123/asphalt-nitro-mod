package io.didomi.drawable;

import dagger.internal.b;
import e.a.a;

/* JADX INFO: renamed from: io.didomi.sdk.a7, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1714a7 implements b<Z6> {
    private final a<V8> a;
    private final a<C1920v3> b;

    public C1714a7(a<V8> aVar, a<C1920v3> aVar2) {
        this.a = aVar;
        this.b = aVar2;
    }

    public static Z6 a(V8 v8, C1920v3 c1920v3) {
        return new Z6(v8, c1920v3);
    }

    public static C1714a7 a(a<V8> aVar, a<C1920v3> aVar2) {
        return new C1714a7(aVar, aVar2);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Z6 get() {
        return a(this.a.get(), this.b.get());
    }
}
