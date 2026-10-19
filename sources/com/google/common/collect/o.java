package com.google.common.collect;

import com.google.common.collect.g;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: AbstractSetMultimap.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class o<K, V> extends g<K, V> implements z2<K, V> {
    private static final long serialVersionUID = 7431625294878419160L;

    protected o(Map<K, Collection<V>> map) {
        super(map);
    }

    @Override // com.google.common.collect.g
    <E> Collection<E> E(Collection<E> collection) {
        return Collections.unmodifiableSet((Set) collection);
    }

    @Override // com.google.common.collect.g
    Collection<V> F(K k, Collection<V> collection) {
        return new g.m(k, (Set) collection);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.g
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public Set<V> z() {
        return Collections.emptySet();
    }

    @Override // com.google.common.collect.g, com.google.common.collect.b2, com.google.common.collect.z1
    public Set<V> a(Object obj) {
        return (Set) super.a(obj);
    }

    @Override // com.google.common.collect.j, com.google.common.collect.b2, com.google.common.collect.z1
    public Map<K, Collection<V>> e() {
        return super.e();
    }

    @Override // com.google.common.collect.j, com.google.common.collect.b2
    public boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.g, com.google.common.collect.j, com.google.common.collect.b2
    public Set<Map.Entry<K, V>> f() {
        return (Set) super.f();
    }

    @Override // com.google.common.collect.g, com.google.common.collect.b2, com.google.common.collect.z1
    public Set<V> get(K k) {
        return (Set) super.get((Object) k);
    }

    @Override // com.google.common.collect.g, com.google.common.collect.j, com.google.common.collect.b2
    public boolean put(K k, V v) {
        return super.put(k, v);
    }
}
