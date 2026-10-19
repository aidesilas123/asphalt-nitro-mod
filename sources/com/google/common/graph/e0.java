package com.google.common.graph;

import com.google.common.base.Preconditions;
import com.google.common.collect.o3;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: MapIteratorCache.java */
/* JADX INFO: loaded from: classes3.dex */
class e0<K, V> {
    private final Map<K, V> a;
    private volatile transient Map.Entry<K, V> b;

    /* JADX INFO: compiled from: MapIteratorCache.java */
    class a extends AbstractSet<K> {

        /* JADX INFO: renamed from: com.google.common.graph.e0$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: MapIteratorCache.java */
        class C0265a extends o3<K> {
            final /* synthetic */ Iterator a;

            C0265a(Iterator it) {
                this.a = it;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.a.hasNext();
            }

            @Override // java.util.Iterator
            public K next() {
                Map.Entry entry = (Map.Entry) this.a.next();
                e0.this.b = entry;
                return (K) entry.getKey();
            }
        }

        a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return e0.this.d(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public o3<K> iterator() {
            return new C0265a(e0.this.a.entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return e0.this.a.size();
        }
    }

    e0(Map<K, V> map) {
        this.a = (Map) Preconditions.checkNotNull(map);
    }

    void c() {
        this.b = null;
    }

    final boolean d(Object obj) {
        return f(obj) != null || this.a.containsKey(obj);
    }

    V e(Object obj) {
        Preconditions.checkNotNull(obj);
        V vF = f(obj);
        return vF == null ? g(obj) : vF;
    }

    V f(Object obj) {
        Map.Entry<K, V> entry = this.b;
        if (entry == null || entry.getKey() != obj) {
            return null;
        }
        return entry.getValue();
    }

    final V g(Object obj) {
        Preconditions.checkNotNull(obj);
        return this.a.get(obj);
    }

    final V h(K k, V v) {
        Preconditions.checkNotNull(k);
        Preconditions.checkNotNull(v);
        c();
        return this.a.put(k, v);
    }

    final Set<K> i() {
        return new a();
    }
}
