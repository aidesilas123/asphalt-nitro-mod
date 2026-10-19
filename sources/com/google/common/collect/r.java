package com.google.common.collect;

import com.google.common.collect.g;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.NavigableSet;
import java.util.SortedSet;

/* JADX INFO: compiled from: AbstractSortedSetMultimap.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class r<K, V> extends o<K, V> implements g3<K, V> {
    private static final long serialVersionUID = 430848587173315748L;

    protected r(Map<K, Collection<V>> map) {
        super(map);
    }

    @Override // com.google.common.collect.o, com.google.common.collect.g
    Collection<V> F(K k, Collection<V> collection) {
        return collection instanceof NavigableSet ? new g.l(k, (NavigableSet) collection, null) : new g.n(k, (SortedSet) collection, null);
    }

    /* JADX INFO: renamed from: I */
    abstract SortedSet<V> u();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.o, com.google.common.collect.g
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public SortedSet<V> z() {
        return (SortedSet<V>) E(u());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.o, com.google.common.collect.g
    /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
    public <E> SortedSet<E> E(Collection<E> collection) {
        return collection instanceof NavigableSet ? Sets.unmodifiableNavigableSet((NavigableSet) collection) : Collections.unmodifiableSortedSet((SortedSet) collection);
    }

    @Override // com.google.common.collect.o, com.google.common.collect.g, com.google.common.collect.b2, com.google.common.collect.z1
    public SortedSet<V> a(Object obj) {
        return (SortedSet) super.a(obj);
    }

    @Override // com.google.common.collect.o, com.google.common.collect.j, com.google.common.collect.b2, com.google.common.collect.z1
    public Map<K, Collection<V>> e() {
        return super.e();
    }

    @Override // com.google.common.collect.o, com.google.common.collect.g, com.google.common.collect.b2, com.google.common.collect.z1
    public SortedSet<V> get(K k) {
        return (SortedSet) super.get((Object) k);
    }
}
