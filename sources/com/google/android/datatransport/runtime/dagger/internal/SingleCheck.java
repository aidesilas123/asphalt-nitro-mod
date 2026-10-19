package com.google.android.datatransport.runtime.dagger.internal;

/* JADX INFO: loaded from: classes2.dex */
public final class SingleCheck<T> implements e.a.a<T> {
    private static final Object a = new Object();
    private volatile e.a.a<T> b;
    private volatile Object c = a;

    private SingleCheck(e.a.a<T> aVar) {
        this.b = aVar;
    }

    public static <P extends e.a.a<T>, T> e.a.a<T> provider(P p) {
        return ((p instanceof SingleCheck) || (p instanceof DoubleCheck)) ? p : new SingleCheck((e.a.a) Preconditions.checkNotNull(p));
    }

    @Override // e.a.a
    public T get() {
        T t = (T) this.c;
        if (t != a) {
            return t;
        }
        e.a.a<T> aVar = this.b;
        if (aVar == null) {
            return (T) this.c;
        }
        T t2 = aVar.get();
        this.c = t2;
        this.b = null;
        return t2;
    }
}
