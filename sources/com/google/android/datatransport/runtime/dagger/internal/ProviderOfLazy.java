package com.google.android.datatransport.runtime.dagger.internal;

/* JADX INFO: loaded from: classes2.dex */
public final class ProviderOfLazy<T> implements e.a.a<com.google.android.datatransport.runtime.o.a<T>> {
    private final e.a.a<T> a;

    private ProviderOfLazy(e.a.a<T> aVar) {
        this.a = aVar;
    }

    public static <T> e.a.a<com.google.android.datatransport.runtime.o.a<T>> create(e.a.a<T> aVar) {
        return new ProviderOfLazy((e.a.a) Preconditions.checkNotNull(aVar));
    }

    @Override // e.a.a
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.google.android.datatransport.runtime.o.a<T> get() {
        return DoubleCheck.lazy(this.a);
    }
}
