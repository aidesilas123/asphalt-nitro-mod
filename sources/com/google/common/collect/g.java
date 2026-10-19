package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.Maps;
import com.google.common.collect.j;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Objects;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

/* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class g<K, V> extends com.google.common.collect.j<K, V> implements Serializable {
    private static final long serialVersionUID = 2447537837011683357L;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private transient Map<K, Collection<V>> f3748d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private transient int f3749e;

    /* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
    class a extends g<K, V>.c<Map.Entry<K, V>> {
        a(g gVar) {
            super();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.g.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> a(K k, V v) {
            return Maps.immutableEntry(k, v);
        }
    }

    /* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
    private class b extends Maps.o0<K, Collection<V>> {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final transient Map<K, Collection<V>> f3750d;

        /* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
        class a extends Maps.p<K, Collection<V>> {
            a() {
            }

            @Override // com.google.common.collect.Maps.p, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                return Collections2.f(b.this.f3750d.entrySet(), obj);
            }

            @Override // com.google.common.collect.Maps.p
            Map<K, Collection<V>> i() {
                return b.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return b.this.new C0254b();
            }

            @Override // com.google.common.collect.Maps.p, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (!contains(obj)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Objects.requireNonNull(entry);
                g.this.C(entry.getKey());
                return true;
            }
        }

        /* JADX INFO: renamed from: com.google.common.collect.g$b$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
        class C0254b implements Iterator<Map.Entry<K, Collection<V>>> {
            final Iterator<Map.Entry<K, Collection<V>>> a;
            Collection<V> b;

            C0254b() {
                this.a = b.this.f3750d.entrySet().iterator();
            }

            @Override // java.util.Iterator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public Map.Entry<K, Collection<V>> next() {
                Map.Entry<K, Collection<V>> next = this.a.next();
                this.b = next.getValue();
                return b.this.f(next);
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.a.hasNext();
            }

            @Override // java.util.Iterator
            public void remove() {
                Preconditions.checkState(this.b != null, "no calls to next() since the last call to remove()");
                this.a.remove();
                g.r(g.this, this.b.size());
                this.b.clear();
                this.b = null;
            }
        }

        b(Map<K, Collection<V>> map) {
            this.f3750d = map;
        }

        @Override // com.google.common.collect.Maps.o0
        protected Set<Map.Entry<K, Collection<V>>> a() {
            return new a();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            if (this.f3750d == g.this.f3748d) {
                g.this.clear();
            } else {
                Iterators.c(new C0254b());
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return Maps.B(this.f3750d, obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Collection<V> get(Object obj) {
            Collection<V> collection = (Collection) Maps.C(this.f3750d, obj);
            if (collection == null) {
                return null;
            }
            return g.this.F(obj, collection);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Collection<V> remove(Object obj) {
            Collection<V> collectionRemove = this.f3750d.remove(obj);
            if (collectionRemove == null) {
                return null;
            }
            Collection<V> collectionU = g.this.u();
            collectionU.addAll(collectionRemove);
            g.r(g.this, collectionRemove.size());
            collectionRemove.clear();
            return collectionU;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean equals(Object obj) {
            return this == obj || this.f3750d.equals(obj);
        }

        Map.Entry<K, Collection<V>> f(Map.Entry<K, Collection<V>> entry) {
            K key = entry.getKey();
            return Maps.immutableEntry(key, g.this.F(key, entry.getValue()));
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int hashCode() {
            return this.f3750d.hashCode();
        }

        @Override // com.google.common.collect.Maps.o0, java.util.AbstractMap, java.util.Map, java.util.SortedMap
        public Set<K> keySet() {
            return g.this.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f3750d.size();
        }

        @Override // java.util.AbstractMap
        public String toString() {
            return this.f3750d.toString();
        }
    }

    /* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
    private abstract class c<T> implements Iterator<T> {
        final Iterator<Map.Entry<K, Collection<V>>> a;
        K b = null;
        Collection<V> c = null;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Iterator<V> f3752d = Iterators.h();

        c() {
            this.a = g.this.f3748d.entrySet().iterator();
        }

        abstract T a(K k, V v);

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.a.hasNext() || this.f3752d.hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            if (!this.f3752d.hasNext()) {
                Map.Entry<K, Collection<V>> next = this.a.next();
                this.b = next.getKey();
                Collection<V> value = next.getValue();
                this.c = value;
                this.f3752d = value.iterator();
            }
            return a(e2.a(this.b), this.f3752d.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f3752d.remove();
            Collection<V> collection = this.c;
            Objects.requireNonNull(collection);
            if (collection.isEmpty()) {
                this.a.remove();
            }
            g.p(g.this);
        }
    }

    /* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
    private class d extends Maps.y<K, Collection<V>> {

        /* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
        class a implements Iterator<K> {
            Map.Entry<K, Collection<V>> a;
            final /* synthetic */ Iterator b;

            a(Iterator it) {
                this.b = it;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.b.hasNext();
            }

            @Override // java.util.Iterator
            public K next() {
                Map.Entry<K, Collection<V>> entry = (Map.Entry) this.b.next();
                this.a = entry;
                return entry.getKey();
            }

            @Override // java.util.Iterator
            public void remove() {
                Preconditions.checkState(this.a != null, "no calls to next() since the last call to remove()");
                Collection<V> value = this.a.getValue();
                this.b.remove();
                g.r(g.this, value.size());
                value.clear();
                this.a = null;
            }
        }

        d(Map<K, Collection<V>> map) {
            super(map);
        }

        @Override // com.google.common.collect.Maps.y, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            Iterators.c(iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return j().keySet().containsAll(collection);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            return this == obj || j().keySet().equals(obj);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public int hashCode() {
            return j().keySet().hashCode();
        }

        @Override // com.google.common.collect.Maps.y, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new a(j().entrySet().iterator());
        }

        @Override // com.google.common.collect.Maps.y, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            int size;
            Collection<V> collectionRemove = j().remove(obj);
            if (collectionRemove != null) {
                size = collectionRemove.size();
                collectionRemove.clear();
                g.r(g.this, size);
            } else {
                size = 0;
            }
            return size > 0;
        }
    }

    /* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
    class e extends g<K, V>.h implements NavigableMap<K, Collection<V>> {
        e(NavigableMap<K, Collection<V>> navigableMap) {
            super(navigableMap);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> ceilingEntry(K k) {
            Map.Entry<K, Collection<V>> entryCeilingEntry = j().ceilingEntry(k);
            if (entryCeilingEntry == null) {
                return null;
            }
            return f(entryCeilingEntry);
        }

        @Override // java.util.NavigableMap
        public K ceilingKey(K k) {
            return j().ceilingKey(k);
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            return descendingMap().navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> descendingMap() {
            return new e(j().descendingMap());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> firstEntry() {
            Map.Entry<K, Collection<V>> entryFirstEntry = j().firstEntry();
            if (entryFirstEntry == null) {
                return null;
            }
            return f(entryFirstEntry);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> floorEntry(K k) {
            Map.Entry<K, Collection<V>> entryFloorEntry = j().floorEntry(k);
            if (entryFloorEntry == null) {
                return null;
            }
            return f(entryFloorEntry);
        }

        @Override // java.util.NavigableMap
        public K floorKey(K k) {
            return j().floorKey(k);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> headMap(K k, boolean z) {
            return new e(j().headMap(k, z));
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> higherEntry(K k) {
            Map.Entry<K, Collection<V>> entryHigherEntry = j().higherEntry(k);
            if (entryHigherEntry == null) {
                return null;
            }
            return f(entryHigherEntry);
        }

        @Override // java.util.NavigableMap
        public K higherKey(K k) {
            return j().higherKey(k);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.g.h
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public NavigableSet<K> h() {
            return new f(j());
        }

        @Override // com.google.common.collect.g.h, java.util.SortedMap, java.util.NavigableMap
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public NavigableMap<K, Collection<V>> headMap(K k) {
            return headMap(k, false);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> lastEntry() {
            Map.Entry<K, Collection<V>> entryLastEntry = j().lastEntry();
            if (entryLastEntry == null) {
                return null;
            }
            return f(entryLastEntry);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> lowerEntry(K k) {
            Map.Entry<K, Collection<V>> entryLowerEntry = j().lowerEntry(k);
            if (entryLowerEntry == null) {
                return null;
            }
            return f(entryLowerEntry);
        }

        @Override // java.util.NavigableMap
        public K lowerKey(K k) {
            return j().lowerKey(k);
        }

        @Override // com.google.common.collect.g.h, com.google.common.collect.g.b, com.google.common.collect.Maps.o0, java.util.AbstractMap, java.util.Map, java.util.SortedMap
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public NavigableSet<K> keySet() {
            return (NavigableSet) super.keySet();
        }

        Map.Entry<K, Collection<V>> n(Iterator<Map.Entry<K, Collection<V>>> it) {
            if (!it.hasNext()) {
                return null;
            }
            Map.Entry<K, Collection<V>> next = it.next();
            Collection<V> collectionU = g.this.u();
            collectionU.addAll(next.getValue());
            it.remove();
            return Maps.immutableEntry(next.getKey(), g.this.E(collectionU));
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return i();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.g.h
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public NavigableMap<K, Collection<V>> j() {
            return (NavigableMap) super.j();
        }

        @Override // com.google.common.collect.g.h, java.util.SortedMap, java.util.NavigableMap
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public NavigableMap<K, Collection<V>> subMap(K k, K k2) {
            return subMap(k, true, k2, false);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> pollFirstEntry() {
            return n(entrySet().iterator());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, Collection<V>> pollLastEntry() {
            return n(descendingMap().entrySet().iterator());
        }

        @Override // com.google.common.collect.g.h, java.util.SortedMap, java.util.NavigableMap
        /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
        public NavigableMap<K, Collection<V>> tailMap(K k) {
            return tailMap(k, true);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> subMap(K k, boolean z, K k2, boolean z2) {
            return new e(j().subMap(k, z, k2, z2));
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, Collection<V>> tailMap(K k, boolean z) {
            return new e(j().tailMap(k, z));
        }
    }

    /* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
    class f extends g<K, V>.i implements NavigableSet<K> {
        f(NavigableMap<K, Collection<V>> navigableMap) {
            super(navigableMap);
        }

        @Override // java.util.NavigableSet
        public K ceiling(K k) {
            return j().ceilingKey(k);
        }

        @Override // java.util.NavigableSet
        public Iterator<K> descendingIterator() {
            return descendingSet().iterator();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> descendingSet() {
            return new f(j().descendingMap());
        }

        @Override // java.util.NavigableSet
        public K floor(K k) {
            return j().floorKey(k);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> headSet(K k, boolean z) {
            return new f(j().headMap(k, z));
        }

        @Override // java.util.NavigableSet
        public K higher(K k) {
            return j().higherKey(k);
        }

        @Override // com.google.common.collect.g.i, java.util.SortedSet, java.util.NavigableSet
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public NavigableSet<K> headSet(K k) {
            return headSet(k, false);
        }

        @Override // java.util.NavigableSet
        public K lower(K k) {
            return j().lowerKey(k);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.g.i
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public NavigableMap<K, Collection<V>> j() {
            return (NavigableMap) super.j();
        }

        @Override // com.google.common.collect.g.i, java.util.SortedSet, java.util.NavigableSet
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public NavigableSet<K> subSet(K k, K k2) {
            return subSet(k, true, k2, false);
        }

        @Override // java.util.NavigableSet
        public K pollFirst() {
            return (K) Iterators.k(iterator());
        }

        @Override // java.util.NavigableSet
        public K pollLast() {
            return (K) Iterators.k(descendingIterator());
        }

        @Override // com.google.common.collect.g.i, java.util.SortedSet, java.util.NavigableSet
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public NavigableSet<K> tailSet(K k) {
            return tailSet(k, true);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> subSet(K k, boolean z, K k2, boolean z2) {
            return new f(j().subMap(k, z, k2, z2));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> tailSet(K k, boolean z) {
            return new f(j().tailMap(k, z));
        }
    }

    /* JADX INFO: renamed from: com.google.common.collect.g$g, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
    private class C0255g extends g<K, V>.k implements RandomAccess {
        C0255g(g gVar, K k, List<V> list, g<K, V>.j jVar) {
            super(k, list, jVar);
        }
    }

    /* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
    private class h extends g<K, V>.b implements SortedMap<K, Collection<V>> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        SortedSet<K> f3755f;

        h(SortedMap<K, Collection<V>> sortedMap) {
            super(sortedMap);
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return j().comparator();
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            return j().firstKey();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.o0
        public SortedSet<K> h() {
            return new i(j());
        }

        public SortedMap<K, Collection<V>> headMap(K k) {
            return new h(j().headMap(k));
        }

        @Override // com.google.common.collect.g.b, com.google.common.collect.Maps.o0, java.util.AbstractMap, java.util.Map, java.util.SortedMap
        /* JADX INFO: renamed from: i */
        public SortedSet<K> keySet() {
            SortedSet<K> sortedSet = this.f3755f;
            if (sortedSet != null) {
                return sortedSet;
            }
            SortedSet<K> sortedSetH = h();
            this.f3755f = sortedSetH;
            return sortedSetH;
        }

        SortedMap<K, Collection<V>> j() {
            return (SortedMap) this.f3750d;
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            return j().lastKey();
        }

        public SortedMap<K, Collection<V>> subMap(K k, K k2) {
            return new h(j().subMap(k, k2));
        }

        public SortedMap<K, Collection<V>> tailMap(K k) {
            return new h(j().tailMap(k));
        }
    }

    /* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
    private class i extends g<K, V>.d implements SortedSet<K> {
        i(SortedMap<K, Collection<V>> sortedMap) {
            super(sortedMap);
        }

        @Override // java.util.SortedSet
        public Comparator<? super K> comparator() {
            return j().comparator();
        }

        @Override // java.util.SortedSet
        public K first() {
            return j().firstKey();
        }

        public SortedSet<K> headSet(K k) {
            return new i(j().headMap(k));
        }

        SortedMap<K, Collection<V>> j() {
            return (SortedMap) super.j();
        }

        @Override // java.util.SortedSet
        public K last() {
            return j().lastKey();
        }

        public SortedSet<K> subSet(K k, K k2) {
            return new i(j().subMap(k, k2));
        }

        public SortedSet<K> tailSet(K k) {
            return new i(j().tailMap(k));
        }
    }

    /* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
    class j extends AbstractCollection<V> {
        final K a;
        Collection<V> b;
        final g<K, V>.j c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final Collection<V> f3757d;

        /* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
        class a implements Iterator<V> {
            final Iterator<V> a;
            final Collection<V> b;

            a() {
                Collection<V> collection = j.this.b;
                this.b = collection;
                this.a = g.B(collection);
            }

            a(Iterator<V> it) {
                this.b = j.this.b;
                this.a = it;
            }

            Iterator<V> b() {
                c();
                return this.a;
            }

            void c() {
                j.this.i();
                if (j.this.b != this.b) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                c();
                return this.a.hasNext();
            }

            @Override // java.util.Iterator
            public V next() {
                c();
                return this.a.next();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.a.remove();
                g.p(g.this);
                j.this.j();
            }
        }

        j(K k, Collection<V> collection, g<K, V>.j jVar) {
            this.a = k;
            this.b = collection;
            this.c = jVar;
            this.f3757d = jVar == null ? null : jVar.g();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean add(V v) {
            i();
            boolean zIsEmpty = this.b.isEmpty();
            boolean zAdd = this.b.add(v);
            if (zAdd) {
                g.n(g.this);
                if (zIsEmpty) {
                    e();
                }
            }
            return zAdd;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zAddAll = this.b.addAll(collection);
            if (zAddAll) {
                g.q(g.this, this.b.size() - size);
                if (size == 0) {
                    e();
                }
            }
            return zAddAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            int size = size();
            if (size == 0) {
                return;
            }
            this.b.clear();
            g.r(g.this, size);
            j();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            i();
            return this.b.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            i();
            return this.b.containsAll(collection);
        }

        void e() {
            g<K, V>.j jVar = this.c;
            if (jVar != null) {
                jVar.e();
            } else {
                g.this.f3748d.put(this.a, this.b);
            }
        }

        @Override // java.util.Collection
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            i();
            return this.b.equals(obj);
        }

        g<K, V>.j f() {
            return this.c;
        }

        Collection<V> g() {
            return this.b;
        }

        K h() {
            return this.a;
        }

        @Override // java.util.Collection
        public int hashCode() {
            i();
            return this.b.hashCode();
        }

        void i() {
            Collection<V> collection;
            g<K, V>.j jVar = this.c;
            if (jVar != null) {
                jVar.i();
                if (this.c.g() != this.f3757d) {
                    throw new ConcurrentModificationException();
                }
            } else {
                if (!this.b.isEmpty() || (collection = (Collection) g.this.f3748d.get(this.a)) == null) {
                    return;
                }
                this.b = collection;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            i();
            return new a();
        }

        void j() {
            g<K, V>.j jVar = this.c;
            if (jVar != null) {
                jVar.j();
            } else if (this.b.isEmpty()) {
                g.this.f3748d.remove(this.a);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            i();
            boolean zRemove = this.b.remove(obj);
            if (zRemove) {
                g.p(g.this);
                j();
            }
            return zRemove;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zRemoveAll = this.b.removeAll(collection);
            if (zRemoveAll) {
                g.q(g.this, this.b.size() - size);
                j();
            }
            return zRemoveAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            Preconditions.checkNotNull(collection);
            int size = size();
            boolean zRetainAll = this.b.retainAll(collection);
            if (zRetainAll) {
                g.q(g.this, this.b.size() - size);
                j();
            }
            return zRetainAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            i();
            return this.b.size();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            i();
            return this.b.toString();
        }
    }

    /* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
    class k extends g<K, V>.j implements List<V> {

        /* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
        private class a extends g<K, V>.j.a implements ListIterator<V> {
            a() {
                super();
            }

            public a(int i) {
                super(k.this.l().listIterator(i));
            }

            private ListIterator<V> d() {
                return (ListIterator) b();
            }

            @Override // java.util.ListIterator
            public void add(V v) {
                boolean zIsEmpty = k.this.isEmpty();
                d().add(v);
                g.n(g.this);
                if (zIsEmpty) {
                    k.this.e();
                }
            }

            @Override // java.util.ListIterator
            public boolean hasPrevious() {
                return d().hasPrevious();
            }

            @Override // java.util.ListIterator
            public int nextIndex() {
                return d().nextIndex();
            }

            @Override // java.util.ListIterator
            public V previous() {
                return d().previous();
            }

            @Override // java.util.ListIterator
            public int previousIndex() {
                return d().previousIndex();
            }

            @Override // java.util.ListIterator
            public void set(V v) {
                d().set(v);
            }
        }

        k(K k, List<V> list, g<K, V>.j jVar) {
            super(k, list, jVar);
        }

        @Override // java.util.List
        public void add(int i, V v) {
            i();
            boolean zIsEmpty = g().isEmpty();
            l().add(i, v);
            g.n(g.this);
            if (zIsEmpty) {
                e();
            }
        }

        @Override // java.util.List
        public boolean addAll(int i, Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zAddAll = l().addAll(i, collection);
            if (zAddAll) {
                g.q(g.this, g().size() - size);
                if (size == 0) {
                    e();
                }
            }
            return zAddAll;
        }

        @Override // java.util.List
        public V get(int i) {
            i();
            return l().get(i);
        }

        @Override // java.util.List
        public int indexOf(Object obj) {
            i();
            return l().indexOf(obj);
        }

        List<V> l() {
            return (List) g();
        }

        @Override // java.util.List
        public int lastIndexOf(Object obj) {
            i();
            return l().lastIndexOf(obj);
        }

        @Override // java.util.List
        public ListIterator<V> listIterator() {
            i();
            return new a();
        }

        @Override // java.util.List
        public ListIterator<V> listIterator(int i) {
            i();
            return new a(i);
        }

        @Override // java.util.List
        public V remove(int i) {
            i();
            V vRemove = l().remove(i);
            g.p(g.this);
            j();
            return vRemove;
        }

        @Override // java.util.List
        public V set(int i, V v) {
            i();
            return l().set(i, v);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.List
        public List<V> subList(int i, int i2) {
            i();
            return g.this.G(h(), l().subList(i, i2), f() == null ? this : f());
        }
    }

    /* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
    class l extends g<K, V>.n implements NavigableSet<V> {
        l(K k, NavigableSet<V> navigableSet, g<K, V>.j jVar) {
            super(k, navigableSet, jVar);
        }

        private NavigableSet<V> o(NavigableSet<V> navigableSet) {
            return new l(this.a, navigableSet, f() == null ? this : f());
        }

        @Override // java.util.NavigableSet
        public V ceiling(V v) {
            return l().ceiling(v);
        }

        @Override // java.util.NavigableSet
        public Iterator<V> descendingIterator() {
            return new j.a(l().descendingIterator());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<V> descendingSet() {
            return o(l().descendingSet());
        }

        @Override // java.util.NavigableSet
        public V floor(V v) {
            return l().floor(v);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<V> headSet(V v, boolean z) {
            return o(l().headSet(v, z));
        }

        @Override // java.util.NavigableSet
        public V higher(V v) {
            return l().higher(v);
        }

        @Override // java.util.NavigableSet
        public V lower(V v) {
            return l().lower(v);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.g.n
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public NavigableSet<V> l() {
            return (NavigableSet) super.l();
        }

        @Override // java.util.NavigableSet
        public V pollFirst() {
            return (V) Iterators.k(iterator());
        }

        @Override // java.util.NavigableSet
        public V pollLast() {
            return (V) Iterators.k(descendingIterator());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<V> subSet(V v, boolean z, V v2, boolean z2) {
            return o(l().subSet(v, z, v2, z2));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<V> tailSet(V v, boolean z) {
            return o(l().tailSet(v, z));
        }
    }

    /* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
    class m extends g<K, V>.j implements Set<V> {
        m(K k, Set<V> set) {
            super(k, set, null);
        }

        @Override // com.google.common.collect.g.j, java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zD = Sets.d((Set) this.b, collection);
            if (zD) {
                g.q(g.this, this.b.size() - size);
                j();
            }
            return zD;
        }
    }

    /* JADX INFO: compiled from: AbstractMapBasedMultimap.java */
    class n extends g<K, V>.j implements SortedSet<V> {
        n(K k, SortedSet<V> sortedSet, g<K, V>.j jVar) {
            super(k, sortedSet, jVar);
        }

        @Override // java.util.SortedSet
        public Comparator<? super V> comparator() {
            return l().comparator();
        }

        @Override // java.util.SortedSet
        public V first() {
            i();
            return l().first();
        }

        @Override // java.util.SortedSet
        public SortedSet<V> headSet(V v) {
            i();
            return new n(h(), l().headSet(v), f() == null ? this : f());
        }

        SortedSet<V> l() {
            return (SortedSet) g();
        }

        @Override // java.util.SortedSet
        public V last() {
            i();
            return l().last();
        }

        @Override // java.util.SortedSet
        public SortedSet<V> subSet(V v, V v2) {
            i();
            return new n(h(), l().subSet(v, v2), f() == null ? this : f());
        }

        @Override // java.util.SortedSet
        public SortedSet<V> tailSet(V v) {
            i();
            return new n(h(), l().tailSet(v), f() == null ? this : f());
        }
    }

    protected g(Map<K, Collection<V>> map) {
        Preconditions.checkArgument(map.isEmpty());
        this.f3748d = map;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> Iterator<E> B(Collection<E> collection) {
        return collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C(Object obj) {
        Collection collection = (Collection) Maps.D(this.f3748d, obj);
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            this.f3749e -= size;
        }
    }

    static /* synthetic */ int n(g gVar) {
        int i2 = gVar.f3749e;
        gVar.f3749e = i2 + 1;
        return i2;
    }

    static /* synthetic */ int p(g gVar) {
        int i2 = gVar.f3749e;
        gVar.f3749e = i2 - 1;
        return i2;
    }

    static /* synthetic */ int q(g gVar, int i2) {
        int i3 = gVar.f3749e + i2;
        gVar.f3749e = i3;
        return i3;
    }

    static /* synthetic */ int r(g gVar, int i2) {
        int i3 = gVar.f3749e - i2;
        gVar.f3749e = i3;
        return i3;
    }

    final void D(Map<K, Collection<V>> map) {
        this.f3748d = map;
        this.f3749e = 0;
        for (Collection<V> collection : map.values()) {
            Preconditions.checkArgument(!collection.isEmpty());
            this.f3749e += collection.size();
        }
    }

    abstract <E> Collection<E> E(Collection<E> collection);

    abstract Collection<V> F(K k2, Collection<V> collection);

    final List<V> G(K k2, List<V> list, g<K, V>.j jVar) {
        return list instanceof RandomAccess ? new C0255g(this, k2, list, jVar) : new k(k2, list, jVar);
    }

    @Override // com.google.common.collect.b2, com.google.common.collect.z1
    public Collection<V> a(Object obj) {
        Collection<V> collectionRemove = this.f3748d.remove(obj);
        if (collectionRemove == null) {
            return z();
        }
        Collection collectionU = u();
        collectionU.addAll(collectionRemove);
        this.f3749e -= collectionRemove.size();
        collectionRemove.clear();
        return (Collection<V>) E(collectionU);
    }

    @Override // com.google.common.collect.j
    Map<K, Collection<V>> c() {
        return new b(this.f3748d);
    }

    @Override // com.google.common.collect.b2
    public void clear() {
        Iterator<Collection<V>> it = this.f3748d.values().iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
        this.f3748d.clear();
        this.f3749e = 0;
    }

    @Override // com.google.common.collect.b2
    public boolean containsKey(Object obj) {
        return this.f3748d.containsKey(obj);
    }

    @Override // com.google.common.collect.j
    Collection<Map.Entry<K, V>> d() {
        return this instanceof z2 ? new j.b(this) : new j.a();
    }

    @Override // com.google.common.collect.j, com.google.common.collect.b2
    public Collection<Map.Entry<K, V>> f() {
        return super.f();
    }

    @Override // com.google.common.collect.j
    Set<K> g() {
        return new d(this.f3748d);
    }

    @Override // com.google.common.collect.b2, com.google.common.collect.z1
    public Collection<V> get(K k2) {
        Collection<V> collectionV = this.f3748d.get(k2);
        if (collectionV == null) {
            collectionV = v(k2);
        }
        return F(k2, collectionV);
    }

    @Override // com.google.common.collect.j
    Iterator<Map.Entry<K, V>> h() {
        return new a(this);
    }

    @Override // com.google.common.collect.j, com.google.common.collect.b2
    public boolean put(K k2, V v) {
        Collection<V> collection = this.f3748d.get(k2);
        if (collection != null) {
            if (!collection.add(v)) {
                return false;
            }
            this.f3749e++;
            return true;
        }
        Collection<V> collectionV = v(k2);
        if (!collectionV.add(v)) {
            throw new AssertionError("New Collection violated the Collection spec");
        }
        this.f3749e++;
        this.f3748d.put(k2, collectionV);
        return true;
    }

    @Override // com.google.common.collect.b2
    public int size() {
        return this.f3749e;
    }

    Map<K, Collection<V>> t() {
        return this.f3748d;
    }

    abstract Collection<V> u();

    Collection<V> v(K k2) {
        return u();
    }

    final Map<K, Collection<V>> w() {
        Map<K, Collection<V>> map = this.f3748d;
        return map instanceof NavigableMap ? new e((NavigableMap) this.f3748d) : map instanceof SortedMap ? new h((SortedMap) this.f3748d) : new b(this.f3748d);
    }

    final Set<K> x() {
        Map<K, Collection<V>> map = this.f3748d;
        return map instanceof NavigableMap ? new f((NavigableMap) this.f3748d) : map instanceof SortedMap ? new i((SortedMap) this.f3748d) : new d(this.f3748d);
    }

    Collection<V> z() {
        return (Collection<V>) E(u());
    }
}
