package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.io.Serializable;

/* JADX INFO: compiled from: ReverseNaturalOrdering.java */
/* JADX INFO: loaded from: classes3.dex */
final class v2 extends Ordering<Comparable<?>> implements Serializable {
    static final v2 a = new v2();
    private static final long serialVersionUID = 0;

    private v2() {
    }

    private Object readResolve() {
        return a;
    }

    @Override // com.google.common.collect.Ordering
    public <S extends Comparable<?>> Ordering<S> f() {
        return Ordering.natural();
    }

    @Override // com.google.common.collect.Ordering, java.util.Comparator
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public int compare(Comparable<?> comparable, Comparable<?> comparable2) {
        Preconditions.checkNotNull(comparable);
        if (comparable == comparable2) {
            return 0;
        }
        return comparable2.compareTo(comparable);
    }

    @Override // com.google.common.collect.Ordering
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public <E extends Comparable<?>> E b(E e2, E e3) {
        return (E) d2.a.c(e2, e3);
    }

    @Override // com.google.common.collect.Ordering
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public <E extends Comparable<?>> E c(E e2, E e3) {
        return (E) d2.a.b(e2, e3);
    }

    public String toString() {
        return "Ordering.natural().reverse()";
    }
}
