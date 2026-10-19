package dagger.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class DoubleCheck<T> implements c<T>, d.a<T> {
    private static final Object a = new Object();
    private volatile c<T> b;
    private volatile Object c = a;

    private DoubleCheck(c<T> cVar) {
        this.b = cVar;
    }

    private static Object a(Object obj, Object obj2) {
        if (!(obj != a) || obj == obj2) {
            return obj2;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
    }

    public static <P extends c<T>, T> d.a<T> lazy(P p) {
        return p instanceof d.a ? (d.a) p : new DoubleCheck((c) Preconditions.checkNotNull(p));
    }

    public static <P extends e.a.a<T>, T> d.a<T> lazy(P p) {
        return lazy(Providers.asDaggerProvider(p));
    }

    public static <P extends c<T>, T> c<T> provider(P p) {
        Preconditions.checkNotNull(p);
        return p instanceof DoubleCheck ? p : new DoubleCheck(p);
    }

    @Deprecated
    public static <P extends e.a.a<T>, T> e.a.a<T> provider(P p) {
        return provider(Providers.asDaggerProvider(p));
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
                    this.c = a(this.c, t);
                    this.b = null;
                }
            }
        }
        return t;
    }
}
