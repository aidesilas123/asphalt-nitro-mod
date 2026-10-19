package com.google.common.collect;

import java.util.Collection;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: ListMultimap.java */
/* JADX INFO: loaded from: classes3.dex */
public interface z1<K, V> extends b2<K, V> {
    List<V> a(Object obj);

    Map<K, Collection<V>> e();

    List<V> get(K k);
}
