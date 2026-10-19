package dagger.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class ProviderOfLazy<T> implements c<d.a<T>> {
    private final c<T> a;

    private ProviderOfLazy(c<T> cVar) {
        this.a = cVar;
    }

    public static <T> c<d.a<T>> create(c<T> cVar) {
        return new ProviderOfLazy((c) Preconditions.checkNotNull(cVar));
    }

    @Deprecated
    public static <T> c<d.a<T>> create(e.a.a<T> aVar) {
        return create(Providers.asDaggerProvider(aVar));
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public d.a<T> get() {
        return DoubleCheck.lazy(this.a);
    }
}
