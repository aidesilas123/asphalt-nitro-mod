package com.google.firebase.components;

import com.google.firebase.inject.Provider;

/* JADX INFO: loaded from: classes3.dex */
public class Lazy<T> implements Provider<T> {
    private static final Object a = new Object();
    private volatile Object b = a;
    private volatile Provider<T> c;

    public Lazy(Provider<T> provider) {
        this.c = provider;
    }

    @Override // com.google.firebase.inject.Provider
    public T get() {
        T t = (T) this.b;
        Object obj = a;
        if (t == obj) {
            synchronized (this) {
                t = (T) this.b;
                if (t == obj) {
                    t = this.c.get();
                    this.b = t;
                    this.c = null;
                }
            }
        }
        return t;
    }
}
