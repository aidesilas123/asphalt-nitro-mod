package dagger.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class SingleCheck<T> implements c<T> {
    private static final Object a = new Object();
    private volatile c<T> b;
    private volatile Object c = a;

    private SingleCheck(c<T> cVar) {
        this.b = cVar;
    }

    public static <P extends c<T>, T> c<T> provider(P p) {
        return ((p instanceof SingleCheck) || (p instanceof DoubleCheck)) ? p : new SingleCheck((c) Preconditions.checkNotNull(p));
    }

    public static <P extends e.a.a<T>, T> e.a.a<T> provider(P p) {
        return provider(Providers.asDaggerProvider(p));
    }

    @Override // e.a.a
    public T get() {
        T t = (T) this.c;
        if (t != a) {
            return t;
        }
        c<T> cVar = this.b;
        if (cVar == null) {
            return (T) this.c;
        }
        T t2 = cVar.get();
        this.c = t2;
        this.b = null;
        return t2;
    }
}
