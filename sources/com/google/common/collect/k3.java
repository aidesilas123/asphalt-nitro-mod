package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.l3;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Queue;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

/* JADX INFO: compiled from: Synchronized.java */
/* JADX INFO: loaded from: classes3.dex */
final class k3 {

    /* JADX INFO: compiled from: Synchronized.java */
    private static class b<K, V> extends k<K, Collection<V>> {
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        transient Set<Map.Entry<K, Collection<V>>> f3793f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        transient Collection<Collection<V>> f3794g;

        b(Map<K, Collection<V>> map, Object obj) {
            super(map, obj);
        }

        @Override // com.google.common.collect.k3.k, java.util.Map
        public boolean containsValue(Object obj) {
            return values().contains(obj);
        }

        @Override // com.google.common.collect.k3.k, java.util.Map
        public Set<Map.Entry<K, Collection<V>>> entrySet() {
            Set<Map.Entry<K, Collection<V>>> set;
            synchronized (this.b) {
                if (this.f3793f == null) {
                    this.f3793f = new c(C().entrySet(), this.b);
                }
                set = this.f3793f;
            }
            return set;
        }

        @Override // com.google.common.collect.k3.k, java.util.Map
        public Collection<V> get(Object obj) {
            Collection<V> collectionZ;
            synchronized (this.b) {
                Collection collection = (Collection) super.get(obj);
                collectionZ = collection == null ? null : k3.z(collection, this.b);
            }
            return collectionZ;
        }

        @Override // com.google.common.collect.k3.k, java.util.Map
        public Collection<Collection<V>> values() {
            Collection<Collection<V>> collection;
            synchronized (this.b) {
                if (this.f3794g == null) {
                    this.f3794g = new d(C().values(), this.b);
                }
                collection = this.f3794g;
            }
            return collection;
        }
    }

    /* JADX INFO: compiled from: Synchronized.java */
    private static class c<K, V> extends r<Map.Entry<K, Collection<V>>> {
        private static final long serialVersionUID = 0;

        /* JADX INFO: compiled from: Synchronized.java */
        class a extends m3<Map.Entry<K, Collection<V>>, Map.Entry<K, Collection<V>>> {

            /* JADX INFO: renamed from: com.google.common.collect.k3$c$a$a, reason: collision with other inner class name */
            /* JADX INFO: compiled from: Synchronized.java */
            class C0259a extends z0<K, Collection<V>> {
                final /* synthetic */ Map.Entry a;

                C0259a(Map.Entry entry) {
                    this.a = entry;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.common.collect.d1
                /* JADX INFO: renamed from: C */
                public Map.Entry<K, Collection<V>> P() {
                    return this.a;
                }

                @Override // com.google.common.collect.z0, java.util.Map.Entry
                /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
                public Collection<V> getValue() {
                    return k3.z((Collection) this.a.getValue(), c.this.b);
                }
            }

            a(Iterator it) {
                super(it);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.m3
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public Map.Entry<K, Collection<V>> a(Map.Entry<K, Collection<V>> entry) {
                return new C0259a(entry);
            }
        }

        c(Set<Map.Entry<K, Collection<V>>> set, Object obj) {
            super(set, obj);
        }

        @Override // com.google.common.collect.k3.f, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            boolean zK;
            synchronized (this.b) {
                zK = Maps.k(C(), obj);
            }
            return zK;
        }

        @Override // com.google.common.collect.k3.f, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            boolean zB;
            synchronized (this.b) {
                zB = Collections2.b(C(), collection);
            }
            return zB;
        }

        @Override // com.google.common.collect.k3.r, java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            boolean zA;
            if (obj == this) {
                return true;
            }
            synchronized (this.b) {
                zA = Sets.a(C(), obj);
            }
            return zA;
        }

        @Override // com.google.common.collect.k3.f, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, Collection<V>>> iterator() {
            return new a(super.iterator());
        }

        @Override // com.google.common.collect.k3.f, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            boolean zX;
            synchronized (this.b) {
                zX = Maps.x(C(), obj);
            }
            return zX;
        }

        @Override // com.google.common.collect.k3.f, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            boolean zRemoveAll;
            synchronized (this.b) {
                zRemoveAll = Iterators.removeAll(C().iterator(), collection);
            }
            return zRemoveAll;
        }

        @Override // com.google.common.collect.k3.f, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            boolean zRetainAll;
            synchronized (this.b) {
                zRetainAll = Iterators.retainAll(C().iterator(), collection);
            }
            return zRetainAll;
        }

        @Override // com.google.common.collect.k3.f, java.util.Collection, java.util.Set
        public Object[] toArray() {
            Object[] objArrE;
            synchronized (this.b) {
                objArrE = ObjectArrays.e(C());
            }
            return objArrE;
        }

        @Override // com.google.common.collect.k3.f, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            T[] tArr2;
            synchronized (this.b) {
                tArr2 = (T[]) ObjectArrays.f(C(), tArr);
            }
            return tArr2;
        }
    }

    /* JADX INFO: compiled from: Synchronized.java */
    private static class d<V> extends f<Collection<V>> {
        private static final long serialVersionUID = 0;

        /* JADX INFO: compiled from: Synchronized.java */
        class a extends m3<Collection<V>, Collection<V>> {
            a(Iterator it) {
                super(it);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.m3
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public Collection<V> a(Collection<V> collection) {
                return k3.z(collection, d.this.b);
            }
        }

        d(Collection<Collection<V>> collection, Object obj) {
            super(collection, obj);
        }

        @Override // com.google.common.collect.k3.f, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Collection<V>> iterator() {
            return new a(super.iterator());
        }
    }

    /* JADX INFO: compiled from: Synchronized.java */
    static class e<K, V> extends k<K, V> implements com.google.common.collect.w<K, V>, Serializable {
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private transient Set<V> f3795f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private transient com.google.common.collect.w<V, K> f3796g;

        private e(com.google.common.collect.w<K, V> wVar, Object obj, com.google.common.collect.w<V, K> wVar2) {
            super(wVar, obj);
            this.f3796g = wVar2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.k3.k
        /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
        public com.google.common.collect.w<K, V> C() {
            return (com.google.common.collect.w) super.C();
        }

        @Override // com.google.common.collect.w
        public com.google.common.collect.w<V, K> M() {
            com.google.common.collect.w<V, K> wVar;
            synchronized (this.b) {
                if (this.f3796g == null) {
                    this.f3796g = new e(B().M(), this.b, this);
                }
                wVar = this.f3796g;
            }
            return wVar;
        }

        @Override // com.google.common.collect.k3.k, java.util.Map
        public Set<V> values() {
            Set<V> set;
            synchronized (this.b) {
                if (this.f3795f == null) {
                    this.f3795f = k3.t(B().values(), this.b);
                }
                set = this.f3795f;
            }
            return set;
        }
    }

    /* JADX INFO: compiled from: Synchronized.java */
    static class f<E> extends o implements Collection<E> {
        private static final long serialVersionUID = 0;

        private f(Collection<E> collection, Object obj) {
            super(collection, obj);
        }

        /* JADX INFO: renamed from: B */
        Collection<E> C() {
            return (Collection) super.r();
        }

        @Override // java.util.Collection
        public boolean add(E e2) {
            boolean zAdd;
            synchronized (this.b) {
                zAdd = C().add(e2);
            }
            return zAdd;
        }

        @Override // java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            boolean zAddAll;
            synchronized (this.b) {
                zAddAll = C().addAll(collection);
            }
            return zAddAll;
        }

        @Override // java.util.Collection
        public void clear() {
            synchronized (this.b) {
                C().clear();
            }
        }

        public boolean contains(Object obj) {
            boolean zContains;
            synchronized (this.b) {
                zContains = C().contains(obj);
            }
            return zContains;
        }

        public boolean containsAll(Collection<?> collection) {
            boolean zContainsAll;
            synchronized (this.b) {
                zContainsAll = C().containsAll(collection);
            }
            return zContainsAll;
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            boolean zIsEmpty;
            synchronized (this.b) {
                zIsEmpty = C().isEmpty();
            }
            return zIsEmpty;
        }

        public Iterator<E> iterator() {
            return C().iterator();
        }

        public boolean remove(Object obj) {
            boolean zRemove;
            synchronized (this.b) {
                zRemove = C().remove(obj);
            }
            return zRemove;
        }

        public boolean removeAll(Collection<?> collection) {
            boolean zRemoveAll;
            synchronized (this.b) {
                zRemoveAll = C().removeAll(collection);
            }
            return zRemoveAll;
        }

        public boolean retainAll(Collection<?> collection) {
            boolean zRetainAll;
            synchronized (this.b) {
                zRetainAll = C().retainAll(collection);
            }
            return zRetainAll;
        }

        @Override // java.util.Collection
        public int size() {
            int size;
            synchronized (this.b) {
                size = C().size();
            }
            return size;
        }

        public Object[] toArray() {
            Object[] array;
            synchronized (this.b) {
                array = C().toArray();
            }
            return array;
        }

        public <T> T[] toArray(T[] tArr) {
            T[] tArr2;
            synchronized (this.b) {
                tArr2 = (T[]) C().toArray(tArr);
            }
            return tArr2;
        }
    }

    /* JADX INFO: compiled from: Synchronized.java */
    private static final class g<E> extends p<E> implements Deque<E> {
        private static final long serialVersionUID = 0;

        g(Deque<E> deque, Object obj) {
            super(deque, obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.k3.p
        /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public Deque<E> C() {
            return (Deque) super.C();
        }

        @Override // java.util.Deque
        public void addFirst(E e2) {
            synchronized (this.b) {
                B().addFirst(e2);
            }
        }

        @Override // java.util.Deque
        public void addLast(E e2) {
            synchronized (this.b) {
                B().addLast(e2);
            }
        }

        @Override // java.util.Deque
        public Iterator<E> descendingIterator() {
            Iterator<E> itDescendingIterator;
            synchronized (this.b) {
                itDescendingIterator = B().descendingIterator();
            }
            return itDescendingIterator;
        }

        @Override // java.util.Deque
        public E getFirst() {
            E first;
            synchronized (this.b) {
                first = B().getFirst();
            }
            return first;
        }

        @Override // java.util.Deque
        public E getLast() {
            E last;
            synchronized (this.b) {
                last = B().getLast();
            }
            return last;
        }

        @Override // java.util.Deque
        public boolean offerFirst(E e2) {
            boolean zOfferFirst;
            synchronized (this.b) {
                zOfferFirst = B().offerFirst(e2);
            }
            return zOfferFirst;
        }

        @Override // java.util.Deque
        public boolean offerLast(E e2) {
            boolean zOfferLast;
            synchronized (this.b) {
                zOfferLast = B().offerLast(e2);
            }
            return zOfferLast;
        }

        @Override // java.util.Deque
        public E peekFirst() {
            E ePeekFirst;
            synchronized (this.b) {
                ePeekFirst = B().peekFirst();
            }
            return ePeekFirst;
        }

        @Override // java.util.Deque
        public E peekLast() {
            E ePeekLast;
            synchronized (this.b) {
                ePeekLast = B().peekLast();
            }
            return ePeekLast;
        }

        @Override // java.util.Deque
        public E pollFirst() {
            E ePollFirst;
            synchronized (this.b) {
                ePollFirst = B().pollFirst();
            }
            return ePollFirst;
        }

        @Override // java.util.Deque
        public E pollLast() {
            E ePollLast;
            synchronized (this.b) {
                ePollLast = B().pollLast();
            }
            return ePollLast;
        }

        @Override // java.util.Deque
        public E pop() {
            E ePop;
            synchronized (this.b) {
                ePop = B().pop();
            }
            return ePop;
        }

        @Override // java.util.Deque
        public void push(E e2) {
            synchronized (this.b) {
                B().push(e2);
            }
        }

        @Override // java.util.Deque
        public E removeFirst() {
            E eRemoveFirst;
            synchronized (this.b) {
                eRemoveFirst = B().removeFirst();
            }
            return eRemoveFirst;
        }

        @Override // java.util.Deque
        public boolean removeFirstOccurrence(Object obj) {
            boolean zRemoveFirstOccurrence;
            synchronized (this.b) {
                zRemoveFirstOccurrence = B().removeFirstOccurrence(obj);
            }
            return zRemoveFirstOccurrence;
        }

        @Override // java.util.Deque
        public E removeLast() {
            E eRemoveLast;
            synchronized (this.b) {
                eRemoveLast = B().removeLast();
            }
            return eRemoveLast;
        }

        @Override // java.util.Deque
        public boolean removeLastOccurrence(Object obj) {
            boolean zRemoveLastOccurrence;
            synchronized (this.b) {
                zRemoveLastOccurrence = B().removeLastOccurrence(obj);
            }
            return zRemoveLastOccurrence;
        }
    }

    /* JADX INFO: compiled from: Synchronized.java */
    private static class h<K, V> extends o implements Map.Entry<K, V> {
        private static final long serialVersionUID = 0;

        h(Map.Entry<K, V> entry, Object obj) {
            super(entry, obj);
        }

        Map.Entry<K, V> B() {
            return (Map.Entry) super.r();
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            boolean zEquals;
            synchronized (this.b) {
                zEquals = B().equals(obj);
            }
            return zEquals;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            K key;
            synchronized (this.b) {
                key = B().getKey();
            }
            return key;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            V value;
            synchronized (this.b) {
                value = B().getValue();
            }
            return value;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            int iHashCode;
            synchronized (this.b) {
                iHashCode = B().hashCode();
            }
            return iHashCode;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V value;
            synchronized (this.b) {
                value = B().setValue(v);
            }
            return value;
        }
    }

    /* JADX INFO: compiled from: Synchronized.java */
    private static class i<E> extends f<E> implements List<E> {
        private static final long serialVersionUID = 0;

        i(List<E> list, Object obj) {
            super(list, obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.k3.f
        public List<E> C() {
            return (List) super.C();
        }

        @Override // java.util.List
        public void add(int i, E e2) {
            synchronized (this.b) {
                C().add(i, e2);
            }
        }

        @Override // java.util.List
        public boolean addAll(int i, Collection<? extends E> collection) {
            boolean zAddAll;
            synchronized (this.b) {
                zAddAll = C().addAll(i, collection);
            }
            return zAddAll;
        }

        @Override // java.util.Collection, java.util.List
        public boolean equals(Object obj) {
            boolean zEquals;
            if (obj == this) {
                return true;
            }
            synchronized (this.b) {
                zEquals = C().equals(obj);
            }
            return zEquals;
        }

        @Override // java.util.List
        public E get(int i) {
            E e2;
            synchronized (this.b) {
                e2 = C().get(i);
            }
            return e2;
        }

        @Override // java.util.Collection, java.util.List
        public int hashCode() {
            int iHashCode;
            synchronized (this.b) {
                iHashCode = C().hashCode();
            }
            return iHashCode;
        }

        @Override // java.util.List
        public int indexOf(Object obj) {
            int iIndexOf;
            synchronized (this.b) {
                iIndexOf = C().indexOf(obj);
            }
            return iIndexOf;
        }

        @Override // java.util.List
        public int lastIndexOf(Object obj) {
            int iLastIndexOf;
            synchronized (this.b) {
                iLastIndexOf = C().lastIndexOf(obj);
            }
            return iLastIndexOf;
        }

        @Override // java.util.List
        public ListIterator<E> listIterator() {
            return C().listIterator();
        }

        @Override // java.util.List
        public ListIterator<E> listIterator(int i) {
            return C().listIterator(i);
        }

        @Override // java.util.List
        public E remove(int i) {
            E eRemove;
            synchronized (this.b) {
                eRemove = C().remove(i);
            }
            return eRemove;
        }

        @Override // java.util.List
        public E set(int i, E e2) {
            E e3;
            synchronized (this.b) {
                e3 = C().set(i, e2);
            }
            return e3;
        }

        @Override // java.util.List
        public List<E> subList(int i, int i2) {
            List<E> listJ;
            synchronized (this.b) {
                listJ = k3.j(C().subList(i, i2), this.b);
            }
            return listJ;
        }
    }

    /* JADX INFO: compiled from: Synchronized.java */
    private static class j<K, V> extends l<K, V> implements z1<K, V> {
        private static final long serialVersionUID = 0;

        j(z1<K, V> z1Var, Object obj) {
            super(z1Var, obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.k3.l
        /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
        public z1<K, V> B() {
            return (z1) super.B();
        }

        @Override // com.google.common.collect.k3.l, com.google.common.collect.b2, com.google.common.collect.z1
        public List<V> a(Object obj) {
            List<V> listA;
            synchronized (this.b) {
                listA = B().a(obj);
            }
            return listA;
        }

        @Override // com.google.common.collect.k3.l, com.google.common.collect.b2, com.google.common.collect.z1
        public List<V> get(K k) {
            List<V> listJ;
            synchronized (this.b) {
                listJ = k3.j(B().get((Object) k), this.b);
            }
            return listJ;
        }
    }

    /* JADX INFO: compiled from: Synchronized.java */
    private static class k<K, V> extends o implements Map<K, V> {
        private static final long serialVersionUID = 0;
        transient Set<K> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        transient Collection<V> f3797d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        transient Set<Map.Entry<K, V>> f3798e;

        k(Map<K, V> map, Object obj) {
            super(map, obj);
        }

        /* JADX INFO: renamed from: B */
        Map<K, V> C() {
            return (Map) super.r();
        }

        @Override // java.util.Map
        public void clear() {
            synchronized (this.b) {
                C().clear();
            }
        }

        @Override // java.util.Map
        public boolean containsKey(Object obj) {
            boolean zContainsKey;
            synchronized (this.b) {
                zContainsKey = C().containsKey(obj);
            }
            return zContainsKey;
        }

        public boolean containsValue(Object obj) {
            boolean zContainsValue;
            synchronized (this.b) {
                zContainsValue = C().containsValue(obj);
            }
            return zContainsValue;
        }

        public Set<Map.Entry<K, V>> entrySet() {
            Set<Map.Entry<K, V>> set;
            synchronized (this.b) {
                if (this.f3798e == null) {
                    this.f3798e = k3.t(C().entrySet(), this.b);
                }
                set = this.f3798e;
            }
            return set;
        }

        @Override // java.util.Map
        public boolean equals(Object obj) {
            boolean zEquals;
            if (obj == this) {
                return true;
            }
            synchronized (this.b) {
                zEquals = C().equals(obj);
            }
            return zEquals;
        }

        public V get(Object obj) {
            V v;
            synchronized (this.b) {
                v = C().get(obj);
            }
            return v;
        }

        @Override // java.util.Map
        public int hashCode() {
            int iHashCode;
            synchronized (this.b) {
                iHashCode = C().hashCode();
            }
            return iHashCode;
        }

        @Override // java.util.Map
        public boolean isEmpty() {
            boolean zIsEmpty;
            synchronized (this.b) {
                zIsEmpty = C().isEmpty();
            }
            return zIsEmpty;
        }

        @Override // java.util.Map
        public Set<K> keySet() {
            Set<K> set;
            synchronized (this.b) {
                if (this.c == null) {
                    this.c = k3.t(C().keySet(), this.b);
                }
                set = this.c;
            }
            return set;
        }

        @Override // java.util.Map
        public V put(K k, V v) {
            V vPut;
            synchronized (this.b) {
                vPut = C().put(k, v);
            }
            return vPut;
        }

        @Override // java.util.Map
        public void putAll(Map<? extends K, ? extends V> map) {
            synchronized (this.b) {
                C().putAll(map);
            }
        }

        @Override // java.util.Map
        public V remove(Object obj) {
            V vRemove;
            synchronized (this.b) {
                vRemove = C().remove(obj);
            }
            return vRemove;
        }

        @Override // java.util.Map
        public int size() {
            int size;
            synchronized (this.b) {
                size = C().size();
            }
            return size;
        }

        public Collection<V> values() {
            Collection<V> collection;
            synchronized (this.b) {
                if (this.f3797d == null) {
                    this.f3797d = k3.h(C().values(), this.b);
                }
                collection = this.f3797d;
            }
            return collection;
        }
    }

    /* JADX INFO: compiled from: Synchronized.java */
    private static class l<K, V> extends o implements b2<K, V> {
        private static final long serialVersionUID = 0;
        transient Set<K> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        transient Collection<Map.Entry<K, V>> f3799d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        transient Map<K, Collection<V>> f3800e;

        l(b2<K, V> b2Var, Object obj) {
            super(b2Var, obj);
        }

        @Override // com.google.common.collect.b2
        public boolean A(Object obj, Object obj2) {
            boolean zA;
            synchronized (this.b) {
                zA = B().A(obj, obj2);
            }
            return zA;
        }

        b2<K, V> B() {
            return (b2) super.r();
        }

        public Collection<V> a(Object obj) {
            Collection<V> collectionA;
            synchronized (this.b) {
                collectionA = B().a(obj);
            }
            return collectionA;
        }

        @Override // com.google.common.collect.b2
        public void clear() {
            synchronized (this.b) {
                B().clear();
            }
        }

        @Override // com.google.common.collect.b2
        public boolean containsKey(Object obj) {
            boolean zContainsKey;
            synchronized (this.b) {
                zContainsKey = B().containsKey(obj);
            }
            return zContainsKey;
        }

        @Override // com.google.common.collect.b2, com.google.common.collect.z1
        public Map<K, Collection<V>> e() {
            Map<K, Collection<V>> map;
            synchronized (this.b) {
                if (this.f3800e == null) {
                    this.f3800e = new b(B().e(), this.b);
                }
                map = this.f3800e;
            }
            return map;
        }

        @Override // com.google.common.collect.b2
        public boolean equals(Object obj) {
            boolean zEquals;
            if (obj == this) {
                return true;
            }
            synchronized (this.b) {
                zEquals = B().equals(obj);
            }
            return zEquals;
        }

        @Override // com.google.common.collect.b2
        public Collection<Map.Entry<K, V>> f() {
            Collection<Map.Entry<K, V>> collection;
            synchronized (this.b) {
                if (this.f3799d == null) {
                    this.f3799d = k3.z(B().f(), this.b);
                }
                collection = this.f3799d;
            }
            return collection;
        }

        public Collection<V> get(K k) {
            Collection<V> collectionZ;
            synchronized (this.b) {
                collectionZ = k3.z(B().get(k), this.b);
            }
            return collectionZ;
        }

        @Override // com.google.common.collect.b2
        public int hashCode() {
            int iHashCode;
            synchronized (this.b) {
                iHashCode = B().hashCode();
            }
            return iHashCode;
        }

        @Override // com.google.common.collect.b2
        public boolean isEmpty() {
            boolean zIsEmpty;
            synchronized (this.b) {
                zIsEmpty = B().isEmpty();
            }
            return zIsEmpty;
        }

        @Override // com.google.common.collect.b2
        public Set<K> keySet() {
            Set<K> set;
            synchronized (this.b) {
                if (this.c == null) {
                    this.c = k3.A(B().keySet(), this.b);
                }
                set = this.c;
            }
            return set;
        }

        @Override // com.google.common.collect.b2
        public boolean put(K k, V v) {
            boolean zPut;
            synchronized (this.b) {
                zPut = B().put(k, v);
            }
            return zPut;
        }

        @Override // com.google.common.collect.b2
        public boolean remove(Object obj, Object obj2) {
            boolean zRemove;
            synchronized (this.b) {
                zRemove = B().remove(obj, obj2);
            }
            return zRemove;
        }

        @Override // com.google.common.collect.b2
        public int size() {
            int size;
            synchronized (this.b) {
                size = B().size();
            }
            return size;
        }
    }

    /* JADX INFO: compiled from: Synchronized.java */
    static class m<K, V> extends t<K, V> implements NavigableMap<K, V> {
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        transient NavigableSet<K> f3801f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        transient NavigableMap<K, V> f3802g;
        transient NavigableSet<K> h;

        m(NavigableMap<K, V> navigableMap, Object obj) {
            super(navigableMap, obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.k3.t
        /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public NavigableMap<K, V> C() {
            return (NavigableMap) super.C();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> ceilingEntry(K k) {
            Map.Entry<K, V> entryR;
            synchronized (this.b) {
                entryR = k3.r(B().ceilingEntry(k), this.b);
            }
            return entryR;
        }

        @Override // java.util.NavigableMap
        public K ceilingKey(K k) {
            K kCeilingKey;
            synchronized (this.b) {
                kCeilingKey = B().ceilingKey(k);
            }
            return kCeilingKey;
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            synchronized (this.b) {
                NavigableSet<K> navigableSet = this.f3801f;
                if (navigableSet != null) {
                    return navigableSet;
                }
                NavigableSet<K> navigableSetQ = k3.q(B().descendingKeySet(), this.b);
                this.f3801f = navigableSetQ;
                return navigableSetQ;
            }
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> descendingMap() {
            synchronized (this.b) {
                NavigableMap<K, V> navigableMap = this.f3802g;
                if (navigableMap != null) {
                    return navigableMap;
                }
                NavigableMap<K, V> navigableMapO = k3.o(B().descendingMap(), this.b);
                this.f3802g = navigableMapO;
                return navigableMapO;
            }
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> firstEntry() {
            Map.Entry<K, V> entryR;
            synchronized (this.b) {
                entryR = k3.r(B().firstEntry(), this.b);
            }
            return entryR;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> floorEntry(K k) {
            Map.Entry<K, V> entryR;
            synchronized (this.b) {
                entryR = k3.r(B().floorEntry(k), this.b);
            }
            return entryR;
        }

        @Override // java.util.NavigableMap
        public K floorKey(K k) {
            K kFloorKey;
            synchronized (this.b) {
                kFloorKey = B().floorKey(k);
            }
            return kFloorKey;
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> headMap(K k, boolean z) {
            NavigableMap<K, V> navigableMapO;
            synchronized (this.b) {
                navigableMapO = k3.o(B().headMap(k, z), this.b);
            }
            return navigableMapO;
        }

        @Override // com.google.common.collect.k3.t, java.util.SortedMap, java.util.NavigableMap
        public SortedMap<K, V> headMap(K k) {
            return headMap(k, false);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> higherEntry(K k) {
            Map.Entry<K, V> entryR;
            synchronized (this.b) {
                entryR = k3.r(B().higherEntry(k), this.b);
            }
            return entryR;
        }

        @Override // java.util.NavigableMap
        public K higherKey(K k) {
            K kHigherKey;
            synchronized (this.b) {
                kHigherKey = B().higherKey(k);
            }
            return kHigherKey;
        }

        @Override // com.google.common.collect.k3.k, java.util.Map
        public Set<K> keySet() {
            return navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lastEntry() {
            Map.Entry<K, V> entryR;
            synchronized (this.b) {
                entryR = k3.r(B().lastEntry(), this.b);
            }
            return entryR;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lowerEntry(K k) {
            Map.Entry<K, V> entryR;
            synchronized (this.b) {
                entryR = k3.r(B().lowerEntry(k), this.b);
            }
            return entryR;
        }

        @Override // java.util.NavigableMap
        public K lowerKey(K k) {
            K kLowerKey;
            synchronized (this.b) {
                kLowerKey = B().lowerKey(k);
            }
            return kLowerKey;
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            synchronized (this.b) {
                NavigableSet<K> navigableSet = this.h;
                if (navigableSet != null) {
                    return navigableSet;
                }
                NavigableSet<K> navigableSetQ = k3.q(B().navigableKeySet(), this.b);
                this.h = navigableSetQ;
                return navigableSetQ;
            }
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> pollFirstEntry() {
            Map.Entry<K, V> entryR;
            synchronized (this.b) {
                entryR = k3.r(B().pollFirstEntry(), this.b);
            }
            return entryR;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> pollLastEntry() {
            Map.Entry<K, V> entryR;
            synchronized (this.b) {
                entryR = k3.r(B().pollLastEntry(), this.b);
            }
            return entryR;
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> subMap(K k, boolean z, K k2, boolean z2) {
            NavigableMap<K, V> navigableMapO;
            synchronized (this.b) {
                navigableMapO = k3.o(B().subMap(k, z, k2, z2), this.b);
            }
            return navigableMapO;
        }

        @Override // com.google.common.collect.k3.t, java.util.SortedMap, java.util.NavigableMap
        public SortedMap<K, V> subMap(K k, K k2) {
            return subMap(k, true, k2, false);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> tailMap(K k, boolean z) {
            NavigableMap<K, V> navigableMapO;
            synchronized (this.b) {
                navigableMapO = k3.o(B().tailMap(k, z), this.b);
            }
            return navigableMapO;
        }

        @Override // com.google.common.collect.k3.t, java.util.SortedMap, java.util.NavigableMap
        public SortedMap<K, V> tailMap(K k) {
            return tailMap(k, true);
        }
    }

    /* JADX INFO: compiled from: Synchronized.java */
    static class n<E> extends u<E> implements NavigableSet<E> {
        private static final long serialVersionUID = 0;
        transient NavigableSet<E> c;

        n(NavigableSet<E> navigableSet, Object obj) {
            super(navigableSet, obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.k3.u
        /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public NavigableSet<E> C() {
            return (NavigableSet) super.C();
        }

        @Override // java.util.NavigableSet
        public E ceiling(E e2) {
            E eCeiling;
            synchronized (this.b) {
                eCeiling = C().ceiling(e2);
            }
            return eCeiling;
        }

        @Override // java.util.NavigableSet
        public Iterator<E> descendingIterator() {
            return C().descendingIterator();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            synchronized (this.b) {
                NavigableSet<E> navigableSet = this.c;
                if (navigableSet != null) {
                    return navigableSet;
                }
                NavigableSet<E> navigableSetQ = k3.q(C().descendingSet(), this.b);
                this.c = navigableSetQ;
                return navigableSetQ;
            }
        }

        @Override // java.util.NavigableSet
        public E floor(E e2) {
            E eFloor;
            synchronized (this.b) {
                eFloor = C().floor(e2);
            }
            return eFloor;
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> headSet(E e2, boolean z) {
            NavigableSet<E> navigableSetQ;
            synchronized (this.b) {
                navigableSetQ = k3.q(C().headSet(e2, z), this.b);
            }
            return navigableSetQ;
        }

        @Override // com.google.common.collect.k3.u, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<E> headSet(E e2) {
            return headSet(e2, false);
        }

        @Override // java.util.NavigableSet
        public E higher(E e2) {
            E eHigher;
            synchronized (this.b) {
                eHigher = C().higher(e2);
            }
            return eHigher;
        }

        @Override // java.util.NavigableSet
        public E lower(E e2) {
            E eLower;
            synchronized (this.b) {
                eLower = C().lower(e2);
            }
            return eLower;
        }

        @Override // java.util.NavigableSet
        public E pollFirst() {
            E ePollFirst;
            synchronized (this.b) {
                ePollFirst = C().pollFirst();
            }
            return ePollFirst;
        }

        @Override // java.util.NavigableSet
        public E pollLast() {
            E ePollLast;
            synchronized (this.b) {
                ePollLast = C().pollLast();
            }
            return ePollLast;
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> subSet(E e2, boolean z, E e3, boolean z2) {
            NavigableSet<E> navigableSetQ;
            synchronized (this.b) {
                navigableSetQ = k3.q(C().subSet(e2, z, e3, z2), this.b);
            }
            return navigableSetQ;
        }

        @Override // com.google.common.collect.k3.u, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<E> subSet(E e2, E e3) {
            return subSet(e2, true, e3, false);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> tailSet(E e2, boolean z) {
            NavigableSet<E> navigableSetQ;
            synchronized (this.b) {
                navigableSetQ = k3.q(C().tailSet(e2, z), this.b);
            }
            return navigableSetQ;
        }

        @Override // com.google.common.collect.k3.u, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<E> tailSet(E e2) {
            return tailSet(e2, true);
        }
    }

    /* JADX INFO: compiled from: Synchronized.java */
    static class o implements Serializable {
        private static final long serialVersionUID = 0;
        final Object a;
        final Object b;

        o(Object obj, Object obj2) {
            this.a = Preconditions.checkNotNull(obj);
            this.b = obj2 == null ? this : obj2;
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            synchronized (this.b) {
                objectOutputStream.defaultWriteObject();
            }
        }

        Object r() {
            return this.a;
        }

        public String toString() {
            String string;
            synchronized (this.b) {
                string = this.a.toString();
            }
            return string;
        }
    }

    /* JADX INFO: compiled from: Synchronized.java */
    private static class p<E> extends f<E> implements Queue<E> {
        private static final long serialVersionUID = 0;

        p(Queue<E> queue, Object obj) {
            super(queue, obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.k3.f
        public Queue<E> C() {
            return (Queue) super.C();
        }

        @Override // java.util.Queue
        public E element() {
            E eElement;
            synchronized (this.b) {
                eElement = C().element();
            }
            return eElement;
        }

        @Override // java.util.Queue
        public boolean offer(E e2) {
            boolean zOffer;
            synchronized (this.b) {
                zOffer = C().offer(e2);
            }
            return zOffer;
        }

        @Override // java.util.Queue
        public E peek() {
            E ePeek;
            synchronized (this.b) {
                ePeek = C().peek();
            }
            return ePeek;
        }

        @Override // java.util.Queue
        public E poll() {
            E ePoll;
            synchronized (this.b) {
                ePoll = C().poll();
            }
            return ePoll;
        }

        @Override // java.util.Queue
        public E remove() {
            E eRemove;
            synchronized (this.b) {
                eRemove = C().remove();
            }
            return eRemove;
        }
    }

    /* JADX INFO: compiled from: Synchronized.java */
    private static class q<E> extends i<E> implements RandomAccess {
        private static final long serialVersionUID = 0;

        q(List<E> list, Object obj) {
            super(list, obj);
        }
    }

    /* JADX INFO: compiled from: Synchronized.java */
    static class r<E> extends f<E> implements Set<E> {
        private static final long serialVersionUID = 0;

        r(Set<E> set, Object obj) {
            super(set, obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.k3.f
        public Set<E> C() {
            return (Set) super.C();
        }

        public boolean equals(Object obj) {
            boolean zEquals;
            if (obj == this) {
                return true;
            }
            synchronized (this.b) {
                zEquals = C().equals(obj);
            }
            return zEquals;
        }

        @Override // java.util.Collection, java.util.Set
        public int hashCode() {
            int iHashCode;
            synchronized (this.b) {
                iHashCode = C().hashCode();
            }
            return iHashCode;
        }
    }

    /* JADX INFO: compiled from: Synchronized.java */
    private static class s<K, V> extends l<K, V> implements z2<K, V> {
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        transient Set<Map.Entry<K, V>> f3803f;

        s(z2<K, V> z2Var, Object obj) {
            super(z2Var, obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.k3.l
        /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
        public z2<K, V> B() {
            return (z2) super.B();
        }

        @Override // com.google.common.collect.k3.l, com.google.common.collect.b2, com.google.common.collect.z1
        public Set<V> a(Object obj) {
            Set<V> setA;
            synchronized (this.b) {
                setA = B().a(obj);
            }
            return setA;
        }

        @Override // com.google.common.collect.k3.l, com.google.common.collect.b2
        public Set<Map.Entry<K, V>> f() {
            Set<Map.Entry<K, V>> set;
            synchronized (this.b) {
                if (this.f3803f == null) {
                    this.f3803f = k3.t(B().f(), this.b);
                }
                set = this.f3803f;
            }
            return set;
        }

        @Override // com.google.common.collect.k3.l, com.google.common.collect.b2, com.google.common.collect.z1
        public Set<V> get(K k) {
            Set<V> setT;
            synchronized (this.b) {
                setT = k3.t(B().get((Object) k), this.b);
            }
            return setT;
        }
    }

    /* JADX INFO: compiled from: Synchronized.java */
    static class t<K, V> extends k<K, V> implements SortedMap<K, V> {
        private static final long serialVersionUID = 0;

        t(SortedMap<K, V> sortedMap, Object obj) {
            super(sortedMap, obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.k3.k
        public SortedMap<K, V> C() {
            return (SortedMap) super.C();
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            Comparator<? super K> comparator;
            synchronized (this.b) {
                comparator = C().comparator();
            }
            return comparator;
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            K kFirstKey;
            synchronized (this.b) {
                kFirstKey = C().firstKey();
            }
            return kFirstKey;
        }

        public SortedMap<K, V> headMap(K k) {
            SortedMap<K, V> sortedMapV;
            synchronized (this.b) {
                sortedMapV = k3.v(C().headMap(k), this.b);
            }
            return sortedMapV;
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            K kLastKey;
            synchronized (this.b) {
                kLastKey = C().lastKey();
            }
            return kLastKey;
        }

        public SortedMap<K, V> subMap(K k, K k2) {
            SortedMap<K, V> sortedMapV;
            synchronized (this.b) {
                sortedMapV = k3.v(C().subMap(k, k2), this.b);
            }
            return sortedMapV;
        }

        public SortedMap<K, V> tailMap(K k) {
            SortedMap<K, V> sortedMapV;
            synchronized (this.b) {
                sortedMapV = k3.v(C().tailMap(k), this.b);
            }
            return sortedMapV;
        }
    }

    /* JADX INFO: compiled from: Synchronized.java */
    static class u<E> extends r<E> implements SortedSet<E> {
        private static final long serialVersionUID = 0;

        u(SortedSet<E> sortedSet, Object obj) {
            super(sortedSet, obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.k3.r
        /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
        public SortedSet<E> C() {
            return (SortedSet) super.C();
        }

        @Override // java.util.SortedSet
        public Comparator<? super E> comparator() {
            Comparator<? super E> comparator;
            synchronized (this.b) {
                comparator = C().comparator();
            }
            return comparator;
        }

        @Override // java.util.SortedSet
        public E first() {
            E eFirst;
            synchronized (this.b) {
                eFirst = C().first();
            }
            return eFirst;
        }

        public SortedSet<E> headSet(E e2) {
            SortedSet<E> sortedSetW;
            synchronized (this.b) {
                sortedSetW = k3.w(C().headSet(e2), this.b);
            }
            return sortedSetW;
        }

        @Override // java.util.SortedSet
        public E last() {
            E eLast;
            synchronized (this.b) {
                eLast = C().last();
            }
            return eLast;
        }

        public SortedSet<E> subSet(E e2, E e3) {
            SortedSet<E> sortedSetW;
            synchronized (this.b) {
                sortedSetW = k3.w(C().subSet(e2, e3), this.b);
            }
            return sortedSetW;
        }

        public SortedSet<E> tailSet(E e2) {
            SortedSet<E> sortedSetW;
            synchronized (this.b) {
                sortedSetW = k3.w(C().tailSet(e2), this.b);
            }
            return sortedSetW;
        }
    }

    /* JADX INFO: compiled from: Synchronized.java */
    private static class v<K, V> extends s<K, V> implements g3<K, V> {
        private static final long serialVersionUID = 0;

        v(g3<K, V> g3Var, Object obj) {
            super(g3Var, obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.k3.s
        /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
        public g3<K, V> B() {
            return (g3) super.B();
        }

        @Override // com.google.common.collect.k3.s, com.google.common.collect.k3.l, com.google.common.collect.b2, com.google.common.collect.z1
        public SortedSet<V> a(Object obj) {
            SortedSet<V> sortedSetA;
            synchronized (this.b) {
                sortedSetA = B().a(obj);
            }
            return sortedSetA;
        }

        @Override // com.google.common.collect.k3.s, com.google.common.collect.k3.l, com.google.common.collect.b2, com.google.common.collect.z1
        public SortedSet<V> get(K k) {
            SortedSet<V> sortedSetW;
            synchronized (this.b) {
                sortedSetW = k3.w(B().get((Object) k), this.b);
            }
            return sortedSetW;
        }
    }

    /* JADX INFO: compiled from: Synchronized.java */
    private static final class w<R, C, V> extends o implements l3<R, C, V> {

        /* JADX INFO: compiled from: Synchronized.java */
        class a implements com.google.common.base.f<Map<C, V>, Map<C, V>> {
            a() {
            }

            @Override // com.google.common.base.f
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Map<C, V> apply(Map<C, V> map) {
                return k3.l(map, w.this.b);
            }
        }

        /* JADX INFO: compiled from: Synchronized.java */
        class b implements com.google.common.base.f<Map<R, V>, Map<R, V>> {
            b() {
            }

            @Override // com.google.common.base.f
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Map<R, V> apply(Map<R, V> map) {
                return k3.l(map, w.this.b);
            }
        }

        w(l3<R, C, V> l3Var, Object obj) {
            super(l3Var, obj);
        }

        l3<R, C, V> B() {
            return (l3) super.r();
        }

        @Override // com.google.common.collect.l3
        public void clear() {
            synchronized (this.b) {
                B().clear();
            }
        }

        @Override // com.google.common.collect.l3
        public boolean containsValue(Object obj) {
            boolean zContainsValue;
            synchronized (this.b) {
                zContainsValue = B().containsValue(obj);
            }
            return zContainsValue;
        }

        @Override // com.google.common.collect.l3
        public boolean equals(Object obj) {
            boolean zEquals;
            if (this == obj) {
                return true;
            }
            synchronized (this.b) {
                zEquals = B().equals(obj);
            }
            return zEquals;
        }

        @Override // com.google.common.collect.l3
        public Set<R> h() {
            Set<R> setT;
            synchronized (this.b) {
                setT = k3.t(B().h(), this.b);
            }
            return setT;
        }

        @Override // com.google.common.collect.l3
        public int hashCode() {
            int iHashCode;
            synchronized (this.b) {
                iHashCode = B().hashCode();
            }
            return iHashCode;
        }

        @Override // com.google.common.collect.l3
        public Map<R, Map<C, V>> j() {
            Map<R, Map<C, V>> mapL;
            synchronized (this.b) {
                mapL = k3.l(Maps.transformValues(B().j(), new a()), this.b);
            }
            return mapL;
        }

        @Override // com.google.common.collect.l3
        public Map<C, Map<R, V>> n() {
            Map<C, Map<R, V>> mapL;
            synchronized (this.b) {
                mapL = k3.l(Maps.transformValues(B().n(), new b()), this.b);
            }
            return mapL;
        }

        @Override // com.google.common.collect.l3
        public int size() {
            int size;
            synchronized (this.b) {
                size = B().size();
            }
            return size;
        }

        @Override // com.google.common.collect.l3
        public Set<l3.a<R, C, V>> t() {
            Set<l3.a<R, C, V>> setT;
            synchronized (this.b) {
                setT = k3.t(B().t(), this.b);
            }
            return setT;
        }

        @Override // com.google.common.collect.l3
        public V v(R r, C c, V v) {
            V v2;
            synchronized (this.b) {
                v2 = B().v(r, c, v);
            }
            return v2;
        }

        @Override // com.google.common.collect.l3
        public Collection<V> values() {
            Collection<V> collectionH;
            synchronized (this.b) {
                collectionH = k3.h(B().values(), this.b);
            }
            return collectionH;
        }

        @Override // com.google.common.collect.l3
        public Set<C> z() {
            Set<C> setT;
            synchronized (this.b) {
                setT = k3.t(B().z(), this.b);
            }
            return setT;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> Set<E> A(Set<E> set, Object obj) {
        return set instanceof SortedSet ? w((SortedSet) set, obj) : t(set, obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static <K, V> com.google.common.collect.w<K, V> g(com.google.common.collect.w<K, V> wVar, Object obj) {
        return ((wVar instanceof e) || (wVar instanceof ImmutableBiMap)) ? wVar : new e(wVar, obj, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> Collection<E> h(Collection<E> collection, Object obj) {
        return new f(collection, obj);
    }

    static <E> Deque<E> i(Deque<E> deque, Object obj) {
        return new g(deque, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> List<E> j(List<E> list, Object obj) {
        return list instanceof RandomAccess ? new q(list, obj) : new i(list, obj);
    }

    static <K, V> z1<K, V> k(z1<K, V> z1Var, Object obj) {
        return ((z1Var instanceof j) || (z1Var instanceof com.google.common.collect.v)) ? z1Var : new j(z1Var, obj);
    }

    static <K, V> Map<K, V> l(Map<K, V> map, Object obj) {
        return new k(map, obj);
    }

    static <K, V> b2<K, V> m(b2<K, V> b2Var, Object obj) {
        return ((b2Var instanceof l) || (b2Var instanceof com.google.common.collect.v)) ? b2Var : new l(b2Var, obj);
    }

    static <K, V> NavigableMap<K, V> n(NavigableMap<K, V> navigableMap) {
        return o(navigableMap, null);
    }

    static <K, V> NavigableMap<K, V> o(NavigableMap<K, V> navigableMap, Object obj) {
        return new m(navigableMap, obj);
    }

    static <E> NavigableSet<E> p(NavigableSet<E> navigableSet) {
        return q(navigableSet, null);
    }

    static <E> NavigableSet<E> q(NavigableSet<E> navigableSet, Object obj) {
        return new n(navigableSet, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> Map.Entry<K, V> r(Map.Entry<K, V> entry, Object obj) {
        if (entry == null) {
            return null;
        }
        return new h(entry, obj);
    }

    static <E> Queue<E> s(Queue<E> queue, Object obj) {
        return queue instanceof p ? queue : new p(queue, obj);
    }

    static <E> Set<E> t(Set<E> set, Object obj) {
        return new r(set, obj);
    }

    static <K, V> z2<K, V> u(z2<K, V> z2Var, Object obj) {
        return ((z2Var instanceof s) || (z2Var instanceof com.google.common.collect.v)) ? z2Var : new s(z2Var, obj);
    }

    static <K, V> SortedMap<K, V> v(SortedMap<K, V> sortedMap, Object obj) {
        return new t(sortedMap, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> SortedSet<E> w(SortedSet<E> sortedSet, Object obj) {
        return new u(sortedSet, obj);
    }

    static <K, V> g3<K, V> x(g3<K, V> g3Var, Object obj) {
        return g3Var instanceof v ? g3Var : new v(g3Var, obj);
    }

    static <R, C, V> l3<R, C, V> y(l3<R, C, V> l3Var, Object obj) {
        return new w(l3Var, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> Collection<E> z(Collection<E> collection, Object obj) {
        return collection instanceof SortedSet ? w((SortedSet) collection, obj) : collection instanceof Set ? t((Set) collection, obj) : collection instanceof List ? j((List) collection, obj) : h(collection, obj);
    }
}
