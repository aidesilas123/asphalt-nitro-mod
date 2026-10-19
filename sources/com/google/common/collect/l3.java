package com.google.common.collect;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: Table.java */
/* JADX INFO: loaded from: classes3.dex */
public interface l3<R, C, V> {

    /* JADX INFO: compiled from: Table.java */
    public interface a<R, C, V> {
        R c();

        C d();

        V getValue();
    }

    void clear();

    boolean containsValue(Object obj);

    boolean equals(Object obj);

    Set<R> h();

    int hashCode();

    Map<R, Map<C, V>> j();

    Map<C, Map<R, V>> n();

    int size();

    Set<a<R, C, V>> t();

    V v(R r, C c, V v);

    Collection<V> values();

    Set<C> z();
}
