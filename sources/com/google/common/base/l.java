package com.google.common.base;

/* JADX INFO: compiled from: Present.java */
/* JADX INFO: loaded from: classes3.dex */
final class l<T> extends Optional<T> {
    private static final long serialVersionUID = 0;
    private final T a;

    l(T t) {
        this.a = t;
    }

    @Override // com.google.common.base.Optional
    public T c() {
        return this.a;
    }

    @Override // com.google.common.base.Optional
    public boolean d() {
        return true;
    }

    @Override // com.google.common.base.Optional
    public T e(T t) {
        Preconditions.checkNotNull(t, "use Optional.orNull() instead of Optional.or(null)");
        return this.a;
    }

    @Override // com.google.common.base.Optional
    public boolean equals(Object obj) {
        if (obj instanceof l) {
            return this.a.equals(((l) obj).a);
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode() + 1502476572;
    }

    public String toString() {
        String strValueOf = String.valueOf(this.a);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 13);
        sb.append("Optional.of(");
        sb.append(strValueOf);
        sb.append(")");
        return sb.toString();
    }
}
