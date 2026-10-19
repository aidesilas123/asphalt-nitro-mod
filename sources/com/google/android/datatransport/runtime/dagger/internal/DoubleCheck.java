package com.google.android.datatransport.runtime.dagger.internal;

/* JADX INFO: loaded from: classes2.dex */
public final class DoubleCheck<T> implements e.a.a<T>, com.google.android.datatransport.runtime.o.a<T> {
    private static final Object a = new Object();
    private volatile e.a.a<T> b;
    private volatile Object c = a;

    private DoubleCheck(e.a.a<T> aVar) {
        this.b = aVar;
    }

    public static <P extends e.a.a<T>, T> com.google.android.datatransport.runtime.o.a<T> lazy(P p) {
        return p instanceof com.google.android.datatransport.runtime.o.a ? (com.google.android.datatransport.runtime.o.a) p : new DoubleCheck((e.a.a) Preconditions.checkNotNull(p));
    }

    public static <P extends e.a.a<T>, T> e.a.a<T> provider(P p) {
        Preconditions.checkNotNull(p);
        return p instanceof DoubleCheck ? p : new DoubleCheck(p);
    }

    public static Object reentrantCheck(Object obj, Object obj2) {
        if (!(obj != a) || obj == obj2) {
            return obj2;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
    }

    @Override // e.a.a
    public T get() {
        T t = (T) this.c;
        Object obj = a;
        if (t == obj) {
            synchronized (this) {
                t = (T) this.c;
                if (t == obj) {
                    t = this.b.get();
                    this.c = reentrantCheck(this.c, t);
                    this.b = null;
                }
            }
        }
        return t;
    }
}
