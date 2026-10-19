package com.google.common.collect;

import com.google.common.collect.Ordering;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: compiled from: ExplicitOrdering.java */
/* JADX INFO: loaded from: classes3.dex */
final class m0<T> extends Ordering<T> implements Serializable {
    private static final long serialVersionUID = 0;
    final ImmutableMap<T, Integer> a;

    m0(ImmutableMap<T, Integer> immutableMap) {
        this.a = immutableMap;
    }

    m0(List<T> list) {
        this(Maps.r(list));
    }

    private int h(T t) {
        Integer num = this.a.get(t);
        if (num != null) {
            return num.intValue();
        }
        throw new Ordering.c(t);
    }

    @Override // com.google.common.collect.Ordering, java.util.Comparator
    public int compare(T t, T t2) {
        return h(t) - h(t2);
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (obj instanceof m0) {
            return this.a.equals(((m0) obj).a);
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        String strValueOf = String.valueOf(this.a.keySet());
        StringBuilder sb = new StringBuilder(strValueOf.length() + 19);
        sb.append("Ordering.explicit(");
        sb.append(strValueOf);
        sb.append(")");
        return sb.toString();
    }
}
