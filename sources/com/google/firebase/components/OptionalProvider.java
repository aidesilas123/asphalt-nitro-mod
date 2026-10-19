package com.google.firebase.components;

import androidx.annotation.GuardedBy;
import com.google.firebase.inject.Deferred;
import com.google.firebase.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
class OptionalProvider<T> implements Provider<T>, Deferred<T> {
    private static final Deferred.DeferredHandler<Object> a = new Deferred.DeferredHandler() { // from class: com.google.firebase.components.l
        @Override // com.google.firebase.inject.Deferred.DeferredHandler
        public final void a(Provider provider) {
            OptionalProvider.b(provider);
        }
    };
    private static final Provider<Object> b = new Provider() { // from class: com.google.firebase.components.k
        @Override // com.google.firebase.inject.Provider
        public final Object get() {
            OptionalProvider.c();
            return null;
        }
    };

    @GuardedBy("this")
    private Deferred.DeferredHandler<T> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile Provider<T> f4052d;

    private OptionalProvider(Deferred.DeferredHandler<T> deferredHandler, Provider<T> provider) {
        this.c = deferredHandler;
        this.f4052d = provider;
    }

    static <T> OptionalProvider<T> a() {
        return new OptionalProvider<>(a, b);
    }

    static /* synthetic */ void b(Provider provider) {
    }

    static /* synthetic */ Object c() {
        return null;
    }

    void d(Provider<T> provider) {
        Deferred.DeferredHandler<T> deferredHandler;
        if (this.f4052d != b) {
            throw new IllegalStateException("provide() can be called only once.");
        }
        synchronized (this) {
            deferredHandler = this.c;
            this.c = null;
            this.f4052d = provider;
        }
        deferredHandler.a(provider);
    }

    @Override // com.google.firebase.inject.Provider
    public T get() {
        return this.f4052d.get();
    }
}
