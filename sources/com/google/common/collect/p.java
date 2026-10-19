package com.google.common.collect;

import java.util.Collection;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

/* JADX INFO: compiled from: AbstractSortedKeySortedSetMultimap.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class p<K, V> extends r<K, V> {
    p(SortedMap<K, Collection<V>> sortedMap) {
        super(sortedMap);
    }

    public SortedMap<K, Collection<V>> L() {
        return (SortedMap) super.e();
    }

    public SortedSet<K> M() {
        return (SortedSet) super.keySet();
    }

    @Override // com.google.common.collect.g, com.google.common.collect.j
    Set<K> g() {
        return x();
    }
}
