package com.google.firebase.components;

import com.google.firebase.inject.Provider;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
class LazySet<T> implements Provider<Set<T>> {
    private volatile Set<T> b = null;
    private volatile Set<Provider<T>> a = Collections.newSetFromMap(new ConcurrentHashMap());

    LazySet(Collection<Provider<T>> collection) {
        this.a.addAll(collection);
    }

    static LazySet<?> b(Collection<Provider<?>> collection) {
        return new LazySet<>((Set) collection);
    }

    private synchronized void d() {
        Iterator<Provider<T>> it = this.a.iterator();
        while (it.hasNext()) {
            this.b.add(it.next().get());
        }
        this.a = null;
    }

    synchronized void a(Provider<T> provider) {
        if (this.b == null) {
            this.a.add(provider);
        } else {
            this.b.add(provider.get());
        }
    }

    @Override // com.google.firebase.inject.Provider
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public Set<T> get() {
        if (this.b == null) {
            synchronized (this) {
                if (this.b == null) {
                    this.b = Collections.newSetFromMap(new ConcurrentHashMap());
                    d();
                }
            }
        }
        return Collections.unmodifiableSet(this.b);
    }
}
