package com.google.common.collect;

import com.google.common.collect.Multimaps;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: AbstractMultimap.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class j<K, V> implements b2<K, V> {
    private transient Collection<Map.Entry<K, V>> a;
    private transient Set<K> b;
    private transient Map<K, Collection<V>> c;

    /* JADX INFO: compiled from: AbstractMultimap.java */
    class a extends Multimaps.f<K, V> {
        a() {
        }

        @Override // com.google.common.collect.Multimaps.f
        b2<K, V> e() {
            return j.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return j.this.h();
        }
    }

    /* JADX INFO: compiled from: AbstractMultimap.java */
    class b extends j<K, V>.a implements Set<Map.Entry<K, V>> {
        b(j jVar) {
            super();
        }

        @Override // java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            return Sets.a(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            return Sets.b(this);
        }
    }

    j() {
    }

    @Override // com.google.common.collect.b2
    public boolean A(Object obj, Object obj2) {
        Collection<V> collection = e().get(obj);
        return collection != null && collection.contains(obj2);
    }

    abstract Map<K, Collection<V>> c();

    abstract Collection<Map.Entry<K, V>> d();

    @Override // com.google.common.collect.b2, com.google.common.collect.z1
    public Map<K, Collection<V>> e() {
        Map<K, Collection<V>> map = this.c;
        if (map != null) {
            return map;
        }
        Map<K, Collection<V>> mapC = c();
        this.c = mapC;
        return mapC;
    }

    @Override // com.google.common.collect.b2
    public boolean equals(Object obj) {
        return Multimaps.c(this, obj);
    }

    @Override // com.google.common.collect.b2
    public Collection<Map.Entry<K, V>> f() {
        Collection<Map.Entry<K, V>> collection = this.a;
        if (collection != null) {
            return collection;
        }
        Collection<Map.Entry<K, V>> collectionD = d();
        this.a = collectionD;
        return collectionD;
    }

    abstract Set<K> g();

    abstract Iterator<Map.Entry<K, V>> h();

    @Override // com.google.common.collect.b2
    public int hashCode() {
        return e().hashCode();
    }

    @Override // com.google.common.collect.b2
    public boolean isEmpty() {
        return size() == 0;
    }

    public boolean j(b2<? extends K, ? extends V> b2Var) {
        boolean zPut = false;
        for (Map.Entry<? extends K, ? extends V> entry : b2Var.f()) {
            zPut |= put(entry.getKey(), entry.getValue());
        }
        return zPut;
    }

    @Override // com.google.common.collect.b2
    public Set<K> keySet() {
        Set<K> set = this.b;
        if (set != null) {
            return set;
        }
        Set<K> setG = g();
        this.b = setG;
        return setG;
    }

    @Override // com.google.common.collect.b2
    public boolean put(K k, V v) {
        return get(k).add(v);
    }

    @Override // com.google.common.collect.b2
    public boolean remove(Object obj, Object obj2) {
        Collection<V> collection = e().get(obj);
        return collection != null && collection.remove(obj2);
    }

    public String toString() {
        return e().toString();
    }
}
