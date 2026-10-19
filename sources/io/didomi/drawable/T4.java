package io.didomi.drawable;

import dagger.internal.b;
import e.a.a;

/* JADX INFO: loaded from: classes5.dex */
public final class T4 implements b<S4> {
    private final a<V8> a;
    private final a<C1920v3> b;

    public T4(a<V8> aVar, a<C1920v3> aVar2) {
        this.a = aVar;
        this.b = aVar2;
    }

    public static S4 a(V8 v8, C1920v3 c1920v3) {
        return new S4(v8, c1920v3);
    }

    public static T4 a(a<V8> aVar, a<C1920v3> aVar2) {
        return new T4(aVar, aVar2);
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public S4 get() {
        return a(this.a.get(), this.b.get());
    }
}
