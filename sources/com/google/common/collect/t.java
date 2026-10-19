package com.google.common.collect;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: compiled from: AllEqualOrdering.java */
/* JADX INFO: loaded from: classes3.dex */
final class t extends Ordering<Object> implements Serializable {
    static final t a = new t();
    private static final long serialVersionUID = 0;

    t() {
    }

    private Object readResolve() {
        return a;
    }

    @Override // com.google.common.collect.Ordering
    public <E> ImmutableList<E> a(Iterable<E> iterable) {
        return ImmutableList.copyOf(iterable);
    }

    @Override // com.google.common.collect.Ordering, java.util.Comparator
    public int compare(Object obj, Object obj2) {
        return 0;
    }

    @Override // com.google.common.collect.Ordering
    public <S> Ordering<S> f() {
        return this;
    }

    @Override // com.google.common.collect.Ordering
    public <E> List<E> g(Iterable<E> iterable) {
        return Lists.newArrayList(iterable);
    }

    public String toString() {
        return "Ordering.allEqual()";
    }
}
