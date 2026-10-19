package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.io.Serializable;

/* JADX INFO: compiled from: ReverseOrdering.java */
/* JADX INFO: loaded from: classes3.dex */
final class w2<T> extends Ordering<T> implements Serializable {
    private static final long serialVersionUID = 0;
    final Ordering<? super T> a;

    w2(Ordering<? super T> ordering) {
        this.a = (Ordering) Preconditions.checkNotNull(ordering);
    }

    @Override // com.google.common.collect.Ordering
    public <E extends T> E b(E e2, E e3) {
        return (E) this.a.c(e2, e3);
    }

    @Override // com.google.common.collect.Ordering
    public <E extends T> E c(E e2, E e3) {
        return (E) this.a.b(e2, e3);
    }

    @Override // com.google.common.collect.Ordering, java.util.Comparator
    public int compare(T t, T t2) {
        return this.a.compare(t2, t);
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof w2) {
            return this.a.equals(((w2) obj).a);
        }
        return false;
    }

    @Override // com.google.common.collect.Ordering
    public <S extends T> Ordering<S> f() {
        return this.a;
    }

    public int hashCode() {
        return -this.a.hashCode();
    }

    public String toString() {
        String strValueOf = String.valueOf(this.a);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 10);
        sb.append(strValueOf);
        sb.append(".reverse()");
        return sb.toString();
    }
}
