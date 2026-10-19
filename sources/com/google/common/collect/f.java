package com.google.common.collect;

import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: AbstractListMultimap.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class f<K, V> extends g<K, V> implements z1<K, V> {
    private static final long serialVersionUID = 6588350623831699109L;

    protected f(Map<K, Collection<V>> map) {
        super(map);
    }

    @Override // com.google.common.collect.g
    <E> Collection<E> E(Collection<E> collection) {
        return Collections.unmodifiableList((List) collection);
    }

    @Override // com.google.common.collect.g
    Collection<V> F(K k, Collection<V> collection) {
        return G(k, (List) collection, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.g
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public List<V> z() {
        return Collections.emptyList();
    }

    @Override // com.google.common.collect.g, com.google.common.collect.b2, com.google.common.collect.z1
    public List<V> a(Object obj) {
        return (List) super.a(obj);
    }

    @Override // com.google.common.collect.j, com.google.common.collect.b2, com.google.common.collect.z1
    public Map<K, Collection<V>> e() {
        return super.e();
    }

    @Override // com.google.common.collect.j, com.google.common.collect.b2
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.g, com.google.common.collect.b2, com.google.common.collect.z1
    public List<V> get(K k) {
        return (List) super.get((Object) k);
    }

    @Override // com.google.common.collect.g, com.google.common.collect.j, com.google.common.collect.b2
    public boolean put(K k, V v) {
        return super.put(k, v);
    }
}
