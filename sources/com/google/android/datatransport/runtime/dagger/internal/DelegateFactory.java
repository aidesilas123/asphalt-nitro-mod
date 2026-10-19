package com.google.android.datatransport.runtime.dagger.internal;

/* JADX INFO: loaded from: classes2.dex */
public final class DelegateFactory<T> implements b<T> {
    private e.a.a<T> a;

    public static <T> void setDelegate(e.a.a<T> aVar, e.a.a<T> aVar2) {
        Preconditions.checkNotNull(aVar2);
        DelegateFactory delegateFactory = (DelegateFactory) aVar;
        if (delegateFactory.a != null) {
            throw new IllegalStateException();
        }
        delegateFactory.a = aVar2;
    }

    @Override // e.a.a
    public T get() {
        e.a.a<T> aVar = this.a;
        if (aVar != null) {
            return aVar.get();
        }
        throw new IllegalStateException();
    }
}
