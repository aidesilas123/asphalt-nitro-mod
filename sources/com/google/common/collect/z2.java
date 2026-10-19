package com.google.common.collect;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: SetMultimap.java */
/* JADX INFO: loaded from: classes3.dex */
public interface z2<K, V> extends b2<K, V> {
    @Override // com.google.common.collect.b2, com.google.common.collect.z1
    Set<V> a(Object obj);

    @Override // com.google.common.collect.b2, com.google.common.collect.z1
    Map<K, Collection<V>> e();

    @Override // com.google.common.collect.b2
    Set<Map.Entry<K, V>> f();

    @Override // com.google.common.collect.b2, com.google.common.collect.z1
    Set<V> get(K k);
}
