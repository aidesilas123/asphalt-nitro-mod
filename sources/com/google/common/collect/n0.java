package com.google.common.collect;

import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicates;
import com.google.common.collect.Maps;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: FilteredEntryMultimap.java */
/* JADX INFO: loaded from: classes3.dex */
class n0<K, V> extends j<K, V> implements s0<K, V> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final b2<K, V> f3805d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final com.google.common.base.k<? super Map.Entry<K, V>> f3806e;

    /* JADX INFO: compiled from: FilteredEntryMultimap.java */
    class a extends Maps.o0<K, Collection<V>> {

        /* JADX INFO: renamed from: com.google.common.collect.n0$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: FilteredEntryMultimap.java */
        class C0260a extends Maps.p<K, Collection<V>> {

            /* JADX INFO: renamed from: com.google.common.collect.n0$a$a$a, reason: collision with other inner class name */
            /* JADX INFO: compiled from: FilteredEntryMultimap.java */
            class C0261a extends AbstractIterator<Map.Entry<K, Collection<V>>> {
                final Iterator<Map.Entry<K, Collection<V>>> c;

                C0261a() {
                    this.c = n0.this.f3805d.e().entrySet().iterator();
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.common.collect.AbstractIterator
                /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
                public Map.Entry<K, Collection<V>> b() {
                    while (this.c.hasNext()) {
                        Map.Entry<K, Collection<V>> next = this.c.next();
                        K key = next.getKey();
                        Collection collectionM = n0.m(next.getValue(), new b(key));
                        if (!collectionM.isEmpty()) {
                            return Maps.immutableEntry(key, collectionM);
                        }
                    }
                    return c();
                }
            }

            C0260a() {
            }

            @Override // com.google.common.collect.Maps.p
            Map<K, Collection<V>> i() {
                return a.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return new C0261a();
            }

            @Override // com.google.common.collect.Maps.p, com.google.common.collect.Sets.j, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean removeAll(Collection<?> collection) {
                return n0.this.n(Predicates.in(collection));
            }

            @Override // com.google.common.collect.Maps.p, com.google.common.collect.Sets.j, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                return n0.this.n(Predicates.not(Predicates.in(collection)));
            }

            @Override // com.google.common.collect.Maps.p, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return Iterators.size(iterator());
            }
        }

        /* JADX INFO: compiled from: FilteredEntryMultimap.java */
        class b extends Maps.y<K, Collection<V>> {
            b() {
                super(a.this);
            }

            @Override // com.google.common.collect.Maps.y, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                return a.this.remove(obj) != null;
            }

            @Override // com.google.common.collect.Sets.j, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean removeAll(Collection<?> collection) {
                return n0.this.n(Maps.v(Predicates.in(collection)));
            }

            @Override // com.google.common.collect.Sets.j, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                return n0.this.n(Maps.v(Predicates.not(Predicates.in(collection))));
            }
        }

        /* JADX INFO: compiled from: FilteredEntryMultimap.java */
        class c extends Maps.n0<K, Collection<V>> {
            c() {
                super(a.this);
            }

            @Override // com.google.common.collect.Maps.n0, java.util.AbstractCollection, java.util.Collection
            public boolean remove(Object obj) {
                if (!(obj instanceof Collection)) {
                    return false;
                }
                Collection collection = (Collection) obj;
                Iterator<Map.Entry<K, Collection<V>>> it = n0.this.f3805d.e().entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry<K, Collection<V>> next = it.next();
                    Collection collectionM = n0.m(next.getValue(), new b(next.getKey()));
                    if (!collectionM.isEmpty() && collection.equals(collectionM)) {
                        if (collectionM.size() == next.getValue().size()) {
                            it.remove();
                            return true;
                        }
                        collectionM.clear();
                        return true;
                    }
                }
                return false;
            }

            @Override // com.google.common.collect.Maps.n0, java.util.AbstractCollection, java.util.Collection
            public boolean removeAll(Collection<?> collection) {
                return n0.this.n(Maps.N(Predicates.in(collection)));
            }

            @Override // com.google.common.collect.Maps.n0, java.util.AbstractCollection, java.util.Collection
            public boolean retainAll(Collection<?> collection) {
                return n0.this.n(Maps.N(Predicates.not(Predicates.in(collection))));
            }
        }

        a() {
        }

        @Override // com.google.common.collect.Maps.o0
        Set<Map.Entry<K, Collection<V>>> a() {
            return new C0260a();
        }

        @Override // com.google.common.collect.Maps.o0
        /* JADX INFO: renamed from: b */
        Set<K> h() {
            return new b();
        }

        @Override // com.google.common.collect.Maps.o0
        Collection<Collection<V>> c() {
            return new c();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            n0.this.clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return get(obj) != null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Collection<V> get(Object obj) {
            Collection<V> collection = n0.this.f3805d.e().get(obj);
            if (collection == null) {
                return null;
            }
            Collection<V> collectionM = n0.m(collection, new b(obj));
            if (collectionM.isEmpty()) {
                return null;
            }
            return collectionM;
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Collection<V> remove(Object obj) {
            Collection<V> collection = n0.this.f3805d.e().get(obj);
            if (collection == null) {
                return null;
            }
            ArrayList arrayListNewArrayList = Lists.newArrayList();
            Iterator<V> it = collection.iterator();
            while (it.hasNext()) {
                V next = it.next();
                if (n0.this.p(obj, next)) {
                    it.remove();
                    arrayListNewArrayList.add(next);
                }
            }
            if (arrayListNewArrayList.isEmpty()) {
                return null;
            }
            return n0.this.f3805d instanceof z2 ? Collections.unmodifiableSet(Sets.newLinkedHashSet(arrayListNewArrayList)) : Collections.unmodifiableList(arrayListNewArrayList);
        }
    }

    /* JADX INFO: compiled from: FilteredEntryMultimap.java */
    final class b implements com.google.common.base.k<V> {
        private final K a;

        b(K k) {
            this.a = k;
        }

        @Override // com.google.common.base.k
        public boolean apply(V v) {
            return n0.this.p(this.a, v);
        }
    }

    n0(b2<K, V> b2Var, com.google.common.base.k<? super Map.Entry<K, V>> kVar) {
        this.f3805d = (b2) Preconditions.checkNotNull(b2Var);
        this.f3806e = (com.google.common.base.k) Preconditions.checkNotNull(kVar);
    }

    static <E> Collection<E> m(Collection<E> collection, com.google.common.base.k<? super E> kVar) {
        return collection instanceof Set ? Sets.filter((Set) collection, kVar) : Collections2.filter(collection, kVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean p(K k, V v) {
        return this.f3806e.apply(Maps.immutableEntry(k, v));
    }

    @Override // com.google.common.collect.b2, com.google.common.collect.z1
    public Collection<V> a(Object obj) {
        return (Collection) MoreObjects.firstNonNull(e().remove(obj), q());
    }

    @Override // com.google.common.collect.j
    Map<K, Collection<V>> c() {
        return new a();
    }

    @Override // com.google.common.collect.b2
    public void clear() {
        f().clear();
    }

    @Override // com.google.common.collect.b2
    public boolean containsKey(Object obj) {
        return e().get(obj) != null;
    }

    @Override // com.google.common.collect.j
    Collection<Map.Entry<K, V>> d() {
        return m(this.f3805d.f(), this.f3806e);
    }

    @Override // com.google.common.collect.j
    Set<K> g() {
        return e().keySet();
    }

    @Override // com.google.common.collect.b2, com.google.common.collect.z1
    public Collection<V> get(K k) {
        return m(this.f3805d.get(k), new b(k));
    }

    @Override // com.google.common.collect.j
    Iterator<Map.Entry<K, V>> h() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.s0
    public b2<K, V> i() {
        return this.f3805d;
    }

    boolean n(com.google.common.base.k<? super Map.Entry<K, Collection<V>>> kVar) {
        Iterator<Map.Entry<K, Collection<V>>> it = this.f3805d.e().entrySet().iterator();
        boolean z = false;
        while (it.hasNext()) {
            Map.Entry<K, Collection<V>> next = it.next();
            K key = next.getKey();
            Collection collectionM = m(next.getValue(), new b(key));
            if (!collectionM.isEmpty() && kVar.apply(Maps.immutableEntry(key, collectionM))) {
                if (collectionM.size() == next.getValue().size()) {
                    it.remove();
                } else {
                    collectionM.clear();
                }
                z = true;
            }
        }
        return z;
    }

    Collection<V> q() {
        return this.f3805d instanceof z2 ? Collections.emptySet() : Collections.emptyList();
    }

    @Override // com.google.common.collect.b2
    public int size() {
        return f().size();
    }

    @Override // com.google.common.collect.s0
    public com.google.common.base.k<? super Map.Entry<K, V>> y() {
        return this.f3806e;
    }
}
