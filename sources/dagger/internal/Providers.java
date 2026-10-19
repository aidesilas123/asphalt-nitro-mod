package dagger.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class Providers {

    /* JADX INFO: Add missing generic type declarations: [T] */
    class a<T> implements c<T> {
        final /* synthetic */ e.a.a a;

        a(e.a.a aVar) {
            this.a = aVar;
        }

        @Override // e.a.a
        public T get() {
            return (T) this.a.get();
        }
    }

    private Providers() {
    }

    public static <T> c<T> asDaggerProvider(e.a.a<T> aVar) {
        Preconditions.checkNotNull(aVar);
        return new a(aVar);
    }
}
