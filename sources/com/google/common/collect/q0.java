package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: FilteredKeyMultimap.java */
/* JADX INFO: loaded from: classes3.dex */
class q0<K, V> extends j<K, V> implements s0<K, V> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final b2<K, V> f3826d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final com.google.common.base.k<? super K> f3827e;

    /* JADX INFO: compiled from: FilteredKeyMultimap.java */
    static class a<K, V> extends x0<V> {
        final K a;

        a(K k) {
            this.a = k;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.u0
        public List<V> P() {
            return Collections.emptyList();
        }

        @Override // java.util.List
        public void add(int i, V v) {
            Preconditions.checkPositionIndex(i, 0);
            String strValueOf = String.valueOf(this.a);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 32);
            sb.append("Key does not satisfy predicate: ");
            sb.append(strValueOf);
            throw new IllegalArgumentException(sb.toString());
        }

        @Override // com.google.common.collect.u0, java.util.Collection, java.util.Queue
        public boolean add(V v) {
            add(0, v);
            return true;
        }

        @Override // java.util.List
        public boolean addAll(int i, Collection<? extends V> collection) {
            Preconditions.checkNotNull(collection);
            Preconditions.checkPositionIndex(i, 0);
            String strValueOf = String.valueOf(this.a);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 32);
            sb.append("Key does not satisfy predicate: ");
            sb.append(strValueOf);
            throw new IllegalArgumentException(sb.toString());
        }

        @Override // com.google.common.collect.u0, java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            addAll(0, collection);
            return true;
        }
    }

    /* JADX INFO: compiled from: FilteredKeyMultimap.java */
    static class b<K, V> extends f1<V> {
        final K a;

        b(K k) {
            this.a = k;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.u0
        public Set<V> P() {
            return Collections.emptySet();
        }

        @Override // com.google.common.collect.u0, java.util.Collection, java.util.Queue
        public boolean add(V v) {
            String strValueOf = String.valueOf(this.a);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 32);
            sb.append("Key does not satisfy predicate: ");
            sb.append(strValueOf);
            throw new IllegalArgumentException(sb.toString());
        }

        @Override // com.google.common.collect.u0, java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            Preconditions.checkNotNull(collection);
            String strValueOf = String.valueOf(this.a);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 32);
            sb.append("Key does not satisfy predicate: ");
            sb.append(strValueOf);
            throw new IllegalArgumentException(sb.toString());
        }
    }

    /* JADX INFO: compiled from: FilteredKeyMultimap.java */
    class c extends u0<Map.Entry<K, V>> {
        c() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.d1
        /* JADX INFO: renamed from: C */
        public Collection<Map.Entry<K, V>> P() {
            return Collections2.filter(q0.this.f3826d.f(), q0.this.y());
        }

        @Override // com.google.common.collect.u0, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (q0.this.f3826d.containsKey(entry.getKey()) && q0.this.f3827e.apply((Object) entry.getKey())) {
                return q0.this.f3826d.remove(entry.getKey(), entry.getValue());
            }
            return false;
        }
    }

    q0(b2<K, V> b2Var, com.google.common.base.k<? super K> kVar) {
        this.f3826d = (b2) Preconditions.checkNotNull(b2Var);
        this.f3827e = (com.google.common.base.k) Preconditions.checkNotNull(kVar);
    }

    @Override // com.google.common.collect.b2, com.google.common.collect.z1
    public Collection<V> a(Object obj) {
        return containsKey(obj) ? this.f3826d.a(obj) : k();
    }

    @Override // com.google.common.collect.j
    Map<K, Collection<V>> c() {
        return Maps.filterKeys(this.f3826d.e(), this.f3827e);
    }

    @Override // com.google.common.collect.b2
    public void clear() {
        keySet().clear();
    }

    @Override // com.google.common.collect.b2
    public boolean containsKey(Object obj) {
        if (this.f3826d.containsKey(obj)) {
            return this.f3827e.apply(obj);
        }
        return false;
    }

    @Override // com.google.common.collect.j
    Collection<Map.Entry<K, V>> d() {
        return new c();
    }

    @Override // com.google.common.collect.j
    Set<K> g() {
        return Sets.filter(this.f3826d.keySet(), this.f3827e);
    }

    @Override // com.google.common.collect.b2, com.google.common.collect.z1
    public Collection<V> get(K k) {
        return this.f3827e.apply(k) ? this.f3826d.get(k) : this.f3826d instanceof z2 ? new b(k) : new a(k);
    }

    @Override // com.google.common.collect.j
    Iterator<Map.Entry<K, V>> h() {
        throw new AssertionError("should never be called");
    }

    public b2<K, V> i() {
        return this.f3826d;
    }

    Collection<V> k() {
        return this.f3826d instanceof z2 ? Collections.emptySet() : Collections.emptyList();
    }

    @Override // com.google.common.collect.b2
    public int size() {
        Iterator<Collection<V>> it = e().values().iterator();
        int size = 0;
        while (it.hasNext()) {
            size += it.next().size();
        }
        return size;
    }

    @Override // com.google.common.collect.s0
    public com.google.common.base.k<? super Map.Entry<K, V>> y() {
        return Maps.v(this.f3827e);
    }
}
