package com.google.common.base;

/* JADX INFO: compiled from: Absent.java */
/* JADX INFO: loaded from: classes3.dex */
final class a<T> extends Optional<T> {
    static final a<Object> a = new a<>();
    private static final long serialVersionUID = 0;

    private a() {
    }

    static <T> Optional<T> f() {
        return a;
    }

    private Object readResolve() {
        return a;
    }

    @Override // com.google.common.base.Optional
    public T c() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    @Override // com.google.common.base.Optional
    public boolean d() {
        return false;
    }

    @Override // com.google.common.base.Optional
    public T e(T t) {
        return (T) Preconditions.checkNotNull(t, "use Optional.orNull() instead of Optional.or(null)");
    }

    @Override // com.google.common.base.Optional
    public boolean equals(Object obj) {
        return obj == this;
    }

    public int hashCode() {
        return 2040732332;
    }

    public String toString() {
        return "Optional.absent()";
    }
}
