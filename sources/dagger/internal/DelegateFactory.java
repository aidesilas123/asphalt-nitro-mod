package dagger.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class DelegateFactory<T> implements b<T> {
    private c<T> a;

    private static <T> void a(DelegateFactory<T> delegateFactory, c<T> cVar) {
        Preconditions.checkNotNull(cVar);
        if (((DelegateFactory) delegateFactory).a != null) {
            throw new IllegalStateException();
        }
        ((DelegateFactory) delegateFactory).a = cVar;
    }

    public static <T> void setDelegate(c<T> cVar, c<T> cVar2) {
        a((DelegateFactory) cVar, cVar2);
    }

    @Deprecated
    public static <T> void setDelegate(e.a.a<T> aVar, e.a.a<T> aVar2) {
        a((DelegateFactory) aVar, Providers.asDaggerProvider(aVar2));
    }

    @Override // e.a.a
    public T get() {
        c<T> cVar = this.a;
        if (cVar != null) {
            return cVar.get();
        }
        throw new IllegalStateException();
    }
}
