package com.google.android.datatransport.runtime.dagger.internal;

/* JADX INFO: loaded from: classes2.dex */
public final class InstanceFactory<T> implements b<T>, com.google.android.datatransport.runtime.o.a<T> {
    private static final InstanceFactory<Object> a = new InstanceFactory<>(null);
    private final T b;

    private InstanceFactory(T t) {
        this.b = t;
    }

    private static <T> InstanceFactory<T> a() {
        return (InstanceFactory<T>) a;
    }

    public static <T> b<T> create(T t) {
        return new InstanceFactory(Preconditions.checkNotNull(t, "instance cannot be null"));
    }

    public static <T> b<T> createNullable(T t) {
        return t == null ? a() : new InstanceFactory(t);
    }

    @Override // e.a.a
    public T get() {
        return this.b;
    }
}
