package com.google.common.collect;

import java.util.Collection;
import java.util.Map;
import java.util.SortedSet;

/* JADX INFO: compiled from: SortedSetMultimap.java */
/* JADX INFO: loaded from: classes3.dex */
public interface g3<K, V> extends z2<K, V> {
    @Override // com.google.common.collect.z2, com.google.common.collect.b2, com.google.common.collect.z1
    SortedSet<V> a(Object obj);

    @Override // com.google.common.collect.z2, com.google.common.collect.b2, com.google.common.collect.z1
    Map<K, Collection<V>> e();

    @Override // com.google.common.collect.z2, com.google.common.collect.b2, com.google.common.collect.z1
    SortedSet<V> get(K k);
}
