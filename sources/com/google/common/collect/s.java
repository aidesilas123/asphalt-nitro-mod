package com.google.common.collect;

import com.google.common.collect.l3;
import java.util.AbstractCollection;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: AbstractTable.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class s<R, C, V> implements l3<R, C, V> {
    private transient Set<l3.a<R, C, V>> a;
    private transient Collection<V> b;

    /* JADX INFO: compiled from: AbstractTable.java */
    class a extends m3<l3.a<R, C, V>, V> {
        a(s sVar, Iterator it) {
            super(it);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.m3
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public V a(l3.a<R, C, V> aVar) {
            return aVar.getValue();
        }
    }

    /* JADX INFO: compiled from: AbstractTable.java */
    class b extends AbstractSet<l3.a<R, C, V>> {
        b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            s.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof l3.a)) {
                return false;
            }
            l3.a aVar = (l3.a) obj;
            Map map = (Map) Maps.C(s.this.j(), aVar.c());
            return map != null && Collections2.f(map.entrySet(), Maps.immutableEntry(aVar.d(), aVar.getValue()));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<l3.a<R, C, V>> iterator() {
            return s.this.c();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (!(obj instanceof l3.a)) {
                return false;
            }
            l3.a aVar = (l3.a) obj;
            Map map = (Map) Maps.C(s.this.j(), aVar.c());
            return map != null && Collections2.g(map.entrySet(), Maps.immutableEntry(aVar.d(), aVar.getValue()));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return s.this.size();
        }
    }

    /* JADX INFO: compiled from: AbstractTable.java */
    class c extends AbstractCollection<V> {
        c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            s.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return s.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return s.this.m();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return s.this.size();
        }
    }

    s() {
    }

    abstract Iterator<l3.a<R, C, V>> c();

    @Override // com.google.common.collect.l3
    public abstract void clear();

    @Override // com.google.common.collect.l3
    public boolean containsValue(Object obj) {
        Iterator<Map<C, V>> it = j().values().iterator();
        while (it.hasNext()) {
            if (it.next().containsValue(obj)) {
                return true;
            }
        }
        return false;
    }

    public boolean d(Object obj, Object obj2) {
        Map map = (Map) Maps.C(j(), obj);
        return map != null && Maps.B(map, obj2);
    }

    Set<l3.a<R, C, V>> e() {
        return new b();
    }

    @Override // com.google.common.collect.l3
    public boolean equals(Object obj) {
        return Tables.b(this, obj);
    }

    Collection<V> f() {
        return new c();
    }

    public V g(Object obj, Object obj2) {
        Map map = (Map) Maps.C(j(), obj);
        if (map == null) {
            return null;
        }
        return (V) Maps.C(map, obj2);
    }

    @Override // com.google.common.collect.l3
    public int hashCode() {
        return t().hashCode();
    }

    public boolean i() {
        return size() == 0;
    }

    public void k(l3<? extends R, ? extends C, ? extends V> l3Var) {
        for (l3.a<? extends R, ? extends C, ? extends V> aVar : l3Var.t()) {
            v(aVar.c(), aVar.d(), aVar.getValue());
        }
    }

    Iterator<V> m() {
        return new a(this, t().iterator());
    }

    @Override // com.google.common.collect.l3
    public Set<l3.a<R, C, V>> t() {
        Set<l3.a<R, C, V>> set = this.a;
        if (set != null) {
            return set;
        }
        Set<l3.a<R, C, V>> setE = e();
        this.a = setE;
        return setE;
    }

    public String toString() {
        return j().toString();
    }

    @Override // com.google.common.collect.l3
    public abstract V v(R r, C c2, V v);

    @Override // com.google.common.collect.l3
    public Collection<V> values() {
        Collection<V> collection = this.b;
        if (collection != null) {
            return collection;
        }
        Collection<V> collectionF = f();
        this.b = collectionF;
        return collectionF;
    }
}
