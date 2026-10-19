package com.google.common.collect;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: Multimap.java */
/* JADX INFO: loaded from: classes3.dex */
public interface b2<K, V> {
    boolean A(Object obj, Object obj2);

    Collection<V> a(Object obj);

    void clear();

    boolean containsKey(Object obj);

    Map<K, Collection<V>> e();

    boolean equals(Object obj);

    Collection<Map.Entry<K, V>> f();

    Collection<V> get(K k);

    int hashCode();

    boolean isEmpty();

    Set<K> keySet();

    boolean put(K k, V v);

    boolean remove(Object obj, Object obj2);

    int size();
}
