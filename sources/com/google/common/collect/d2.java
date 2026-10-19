package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.io.Serializable;

/* JADX INFO: compiled from: NaturalOrdering.java */
/* JADX INFO: loaded from: classes3.dex */
final class d2 extends Ordering<Comparable<?>> implements Serializable {
    static final d2 a = new d2();
    private static final long serialVersionUID = 0;

    private d2() {
    }

    private Object readResolve() {
        return a;
    }

    @Override // com.google.common.collect.Ordering
    public <S extends Comparable<?>> Ordering<S> f() {
        return v2.a;
    }

    @Override // com.google.common.collect.Ordering, java.util.Comparator
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public int compare(Comparable<?> comparable, Comparable<?> comparable2) {
        Preconditions.checkNotNull(comparable);
        Preconditions.checkNotNull(comparable2);
        return comparable.compareTo(comparable2);
    }

    public String toString() {
        return "Ordering.natural()";
    }
}
