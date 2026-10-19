package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.base.Predicates;
import com.google.common.collect.ImmutableListMultimap;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import com.google.common.collect.g;
import com.google.common.collect.j;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes3.dex */
public final class Multimaps {

    static final class a<K, V> extends Maps.o0<K, Collection<V>> {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final b2<K, V> f3671d;

        /* JADX INFO: renamed from: com.google.common.collect.Multimaps$a$a, reason: collision with other inner class name */
        class C0246a extends Maps.p<K, Collection<V>> {

            /* JADX INFO: renamed from: com.google.common.collect.Multimaps$a$a$a, reason: collision with other inner class name */
            class C0247a implements com.google.common.base.f<K, Collection<V>> {
                C0247a() {
                }

                @Override // com.google.common.base.f
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public Collection<V> apply(K k) {
                    return a.this.f3671d.get(k);
                }
            }

            C0246a() {
            }

            @Override // com.google.common.collect.Maps.p
            Map<K, Collection<V>> i() {
                return a.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, Collection<V>>> iterator() {
                return Maps.h(a.this.f3671d.keySet(), new C0247a());
            }

            @Override // com.google.common.collect.Maps.p, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (!contains(obj)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Objects.requireNonNull(entry);
                a.this.h(entry.getKey());
                return true;
            }
        }

        a(b2<K, V> b2Var) {
            this.f3671d = (b2) Preconditions.checkNotNull(b2Var);
        }

        @Override // com.google.common.collect.Maps.o0
        protected Set<Map.Entry<K, Collection<V>>> a() {
            return new C0246a();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            this.f3671d.clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return this.f3671d.containsKey(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Collection<V> get(Object obj) {
            if (containsKey(obj)) {
                return this.f3671d.get(obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public Collection<V> remove(Object obj) {
            if (containsKey(obj)) {
                return this.f3671d.a(obj);
            }
            return null;
        }

        void h(Object obj) {
            this.f3671d.keySet().remove(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            return this.f3671d.isEmpty();
        }

        @Override // com.google.common.collect.Maps.o0, java.util.AbstractMap, java.util.Map, java.util.SortedMap
        public Set<K> keySet() {
            return this.f3671d.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f3671d.keySet().size();
        }
    }

    private static class b<K, V> extends com.google.common.collect.f<K, V> {
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        transient com.google.common.base.m<? extends List<V>> f3672f;

        b(Map<K, Collection<V>> map, com.google.common.base.m<? extends List<V>> mVar) {
            super(map);
            this.f3672f = (com.google.common.base.m) Preconditions.checkNotNull(mVar);
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            this.f3672f = (com.google.common.base.m) objectInputStream.readObject();
            D((Map) objectInputStream.readObject());
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.f3672f);
            objectOutputStream.writeObject(t());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.g
        /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
        public List<V> u() {
            return this.f3672f.get();
        }

        @Override // com.google.common.collect.g, com.google.common.collect.j
        Map<K, Collection<V>> c() {
            return w();
        }

        @Override // com.google.common.collect.g, com.google.common.collect.j
        Set<K> g() {
            return x();
        }
    }

    private static class c<K, V> extends com.google.common.collect.g<K, V> {
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        transient com.google.common.base.m<? extends Collection<V>> f3673f;

        c(Map<K, Collection<V>> map, com.google.common.base.m<? extends Collection<V>> mVar) {
            super(map);
            this.f3673f = (com.google.common.base.m) Preconditions.checkNotNull(mVar);
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            this.f3673f = (com.google.common.base.m) objectInputStream.readObject();
            D((Map) objectInputStream.readObject());
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.f3673f);
            objectOutputStream.writeObject(t());
        }

        @Override // com.google.common.collect.g
        <E> Collection<E> E(Collection<E> collection) {
            return collection instanceof NavigableSet ? Sets.unmodifiableNavigableSet((NavigableSet) collection) : collection instanceof SortedSet ? Collections.unmodifiableSortedSet((SortedSet) collection) : collection instanceof Set ? Collections.unmodifiableSet((Set) collection) : collection instanceof List ? Collections.unmodifiableList((List) collection) : Collections.unmodifiableCollection(collection);
        }

        @Override // com.google.common.collect.g
        Collection<V> F(K k, Collection<V> collection) {
            return collection instanceof List ? G(k, (List) collection, null) : collection instanceof NavigableSet ? new g.l(k, (NavigableSet) collection, null) : collection instanceof SortedSet ? new g.n(k, (SortedSet) collection, null) : collection instanceof Set ? new g.m(k, (Set) collection) : new g.j(k, collection, null);
        }

        @Override // com.google.common.collect.g, com.google.common.collect.j
        Map<K, Collection<V>> c() {
            return w();
        }

        @Override // com.google.common.collect.g, com.google.common.collect.j
        Set<K> g() {
            return x();
        }

        @Override // com.google.common.collect.g
        protected Collection<V> u() {
            return this.f3673f.get();
        }
    }

    private static class d<K, V> extends o<K, V> {
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        transient com.google.common.base.m<? extends Set<V>> f3674f;

        d(Map<K, Collection<V>> map, com.google.common.base.m<? extends Set<V>> mVar) {
            super(map);
            this.f3674f = (com.google.common.base.m) Preconditions.checkNotNull(mVar);
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            this.f3674f = (com.google.common.base.m) objectInputStream.readObject();
            D((Map) objectInputStream.readObject());
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.f3674f);
            objectOutputStream.writeObject(t());
        }

        @Override // com.google.common.collect.o, com.google.common.collect.g
        <E> Collection<E> E(Collection<E> collection) {
            return collection instanceof NavigableSet ? Sets.unmodifiableNavigableSet((NavigableSet) collection) : collection instanceof SortedSet ? Collections.unmodifiableSortedSet((SortedSet) collection) : Collections.unmodifiableSet((Set) collection);
        }

        @Override // com.google.common.collect.o, com.google.common.collect.g
        Collection<V> F(K k, Collection<V> collection) {
            return collection instanceof NavigableSet ? new g.l(k, (NavigableSet) collection, null) : collection instanceof SortedSet ? new g.n(k, (SortedSet) collection, null) : new g.m(k, (Set) collection);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.g
        /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
        public Set<V> u() {
            return this.f3674f.get();
        }

        @Override // com.google.common.collect.g, com.google.common.collect.j
        Map<K, Collection<V>> c() {
            return w();
        }

        @Override // com.google.common.collect.g, com.google.common.collect.j
        Set<K> g() {
            return x();
        }
    }

    private static class e<K, V> extends r<K, V> {
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        transient com.google.common.base.m<? extends SortedSet<V>> f3675f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        transient Comparator<? super V> f3676g;

        e(Map<K, Collection<V>> map, com.google.common.base.m<? extends SortedSet<V>> mVar) {
            super(map);
            this.f3675f = (com.google.common.base.m) Preconditions.checkNotNull(mVar);
            this.f3676g = mVar.get().comparator();
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            com.google.common.base.m<? extends SortedSet<V>> mVar = (com.google.common.base.m) objectInputStream.readObject();
            this.f3675f = mVar;
            this.f3676g = mVar.get().comparator();
            D((Map) objectInputStream.readObject());
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.f3675f);
            objectOutputStream.writeObject(t());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.g
        /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
        public SortedSet<V> u() {
            return this.f3675f.get();
        }

        @Override // com.google.common.collect.g, com.google.common.collect.j
        Map<K, Collection<V>> c() {
            return w();
        }

        @Override // com.google.common.collect.g, com.google.common.collect.j
        Set<K> g() {
            return x();
        }
    }

    static abstract class f<K, V> extends AbstractCollection<Map.Entry<K, V>> {
        f() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            e().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return e().A(entry.getKey(), entry.getValue());
        }

        abstract b2<K, V> e();

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return e().remove(entry.getKey(), entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return e().size();
        }
    }

    private static class g<K, V> extends com.google.common.collect.j<K, V> implements z2<K, V>, Serializable {
        private static final long serialVersionUID = 7845222491160860175L;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final Map<K, V> f3677d;

        class a extends Sets.j<V> {
            final /* synthetic */ Object a;

            /* JADX INFO: renamed from: com.google.common.collect.Multimaps$g$a$a, reason: collision with other inner class name */
            class C0248a implements Iterator<V> {
                int a;

                C0248a() {
                }

                @Override // java.util.Iterator
                public boolean hasNext() {
                    if (this.a == 0) {
                        a aVar = a.this;
                        if (g.this.f3677d.containsKey(aVar.a)) {
                            return true;
                        }
                    }
                    return false;
                }

                @Override // java.util.Iterator
                public V next() {
                    if (!hasNext()) {
                        throw new NoSuchElementException();
                    }
                    this.a++;
                    a aVar = a.this;
                    return (V) e2.a(g.this.f3677d.get(aVar.a));
                }

                @Override // java.util.Iterator
                public void remove() {
                    z.e(this.a == 1);
                    this.a = -1;
                    a aVar = a.this;
                    g.this.f3677d.remove(aVar.a);
                }
            }

            a(Object obj) {
                this.a = obj;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<V> iterator() {
                return new C0248a();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return g.this.f3677d.containsKey(this.a) ? 1 : 0;
            }
        }

        g(Map<K, V> map) {
            this.f3677d = (Map) Preconditions.checkNotNull(map);
        }

        @Override // com.google.common.collect.j, com.google.common.collect.b2
        public boolean A(Object obj, Object obj2) {
            return this.f3677d.entrySet().contains(Maps.immutableEntry(obj, obj2));
        }

        @Override // com.google.common.collect.b2, com.google.common.collect.z1
        public Set<V> a(Object obj) {
            HashSet hashSet = new HashSet(2);
            if (!this.f3677d.containsKey(obj)) {
                return hashSet;
            }
            hashSet.add(this.f3677d.remove(obj));
            return hashSet;
        }

        @Override // com.google.common.collect.j
        Map<K, Collection<V>> c() {
            return new a(this);
        }

        @Override // com.google.common.collect.b2
        public void clear() {
            this.f3677d.clear();
        }

        @Override // com.google.common.collect.b2
        public boolean containsKey(Object obj) {
            return this.f3677d.containsKey(obj);
        }

        @Override // com.google.common.collect.j
        Collection<Map.Entry<K, V>> d() {
            throw new AssertionError("unreachable");
        }

        @Override // com.google.common.collect.j, com.google.common.collect.b2
        public Set<Map.Entry<K, V>> f() {
            return this.f3677d.entrySet();
        }

        @Override // com.google.common.collect.j
        Set<K> g() {
            return this.f3677d.keySet();
        }

        @Override // com.google.common.collect.b2, com.google.common.collect.z1
        public Set<V> get(K k) {
            return new a(k);
        }

        @Override // com.google.common.collect.j
        Iterator<Map.Entry<K, V>> h() {
            return this.f3677d.entrySet().iterator();
        }

        @Override // com.google.common.collect.j, com.google.common.collect.b2
        public int hashCode() {
            return this.f3677d.hashCode();
        }

        @Override // com.google.common.collect.j, com.google.common.collect.b2
        public boolean put(K k, V v) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.j, com.google.common.collect.b2
        public boolean remove(Object obj, Object obj2) {
            return this.f3677d.entrySet().remove(Maps.immutableEntry(obj, obj2));
        }

        @Override // com.google.common.collect.b2
        public int size() {
            return this.f3677d.size();
        }
    }

    private static final class h<K, V1, V2> extends i<K, V1, V2> implements z1<K, V2> {
        h(z1<K, V1> z1Var, Maps.q<? super K, ? super V1, V2> qVar) {
            super(z1Var, qVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.Multimaps.i, com.google.common.collect.b2, com.google.common.collect.z1
        public List<V2> a(Object obj) {
            return k(obj, this.f3678d.a(obj));
        }

        @Override // com.google.common.collect.Multimaps.i, com.google.common.collect.b2, com.google.common.collect.z1
        public List<V2> get(K k) {
            return k(k, this.f3678d.get(k));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Multimaps.i
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public List<V2> k(K k, Collection<V1> collection) {
            return Lists.transform((List) collection, Maps.i(this.f3679e, k));
        }
    }

    private static class i<K, V1, V2> extends com.google.common.collect.j<K, V2> {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final b2<K, V1> f3678d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final Maps.q<? super K, ? super V1, V2> f3679e;

        class a implements Maps.q<K, Collection<V1>, Collection<V2>> {
            a() {
            }

            @Override // com.google.common.collect.Maps.q
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public Collection<V2> a(K k, Collection<V1> collection) {
                return i.this.k(k, collection);
            }
        }

        i(b2<K, V1> b2Var, Maps.q<? super K, ? super V1, V2> qVar) {
            this.f3678d = (b2) Preconditions.checkNotNull(b2Var);
            this.f3679e = (Maps.q) Preconditions.checkNotNull(qVar);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.b2, com.google.common.collect.z1
        public Collection<V2> a(Object obj) {
            return k(obj, this.f3678d.a(obj));
        }

        @Override // com.google.common.collect.j
        Map<K, Collection<V2>> c() {
            return Maps.transformEntries(this.f3678d.e(), new a());
        }

        @Override // com.google.common.collect.b2
        public void clear() {
            this.f3678d.clear();
        }

        @Override // com.google.common.collect.b2
        public boolean containsKey(Object obj) {
            return this.f3678d.containsKey(obj);
        }

        @Override // com.google.common.collect.j
        Collection<Map.Entry<K, V2>> d() {
            return new j.a();
        }

        @Override // com.google.common.collect.j
        Set<K> g() {
            return this.f3678d.keySet();
        }

        @Override // com.google.common.collect.b2, com.google.common.collect.z1
        public Collection<V2> get(K k) {
            return k(k, this.f3678d.get(k));
        }

        @Override // com.google.common.collect.j
        Iterator<Map.Entry<K, V2>> h() {
            return Iterators.transform(this.f3678d.f().iterator(), Maps.f(this.f3679e));
        }

        @Override // com.google.common.collect.j, com.google.common.collect.b2
        public boolean isEmpty() {
            return this.f3678d.isEmpty();
        }

        Collection<V2> k(K k, Collection<V1> collection) {
            com.google.common.base.f fVarI = Maps.i(this.f3679e, k);
            return collection instanceof List ? Lists.transform((List) collection, fVarI) : Collections2.transform(collection, fVarI);
        }

        @Override // com.google.common.collect.j, com.google.common.collect.b2
        public boolean put(K k, V2 v2) {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.j, com.google.common.collect.b2
        public boolean remove(Object obj, Object obj2) {
            return get(obj).remove(obj2);
        }

        @Override // com.google.common.collect.b2
        public int size() {
            return this.f3678d.size();
        }
    }

    private static class j<K, V> extends k<K, V> implements z1<K, V> {
        private static final long serialVersionUID = 0;

        j(z1<K, V> z1Var) {
            super(z1Var);
        }

        @Override // com.google.common.collect.Multimaps.k, com.google.common.collect.a1
        /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public z1<K, V> C() {
            return (z1) super.C();
        }

        @Override // com.google.common.collect.Multimaps.k, com.google.common.collect.b2, com.google.common.collect.z1
        public List<V> a(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Multimaps.k, com.google.common.collect.b2, com.google.common.collect.z1
        public List<V> get(K k) {
            return Collections.unmodifiableList(B().get((Object) k));
        }
    }

    private static class k<K, V> extends a1<K, V> implements Serializable {
        private static final long serialVersionUID = 0;
        final b2<K, V> a;
        transient Collection<Map.Entry<K, V>> b;
        transient Set<K> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        transient Map<K, Collection<V>> f3680d;

        class a implements com.google.common.base.f<Collection<V>, Collection<V>> {
            a(k kVar) {
            }

            @Override // com.google.common.base.f
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Collection<V> apply(Collection<V> collection) {
                return Multimaps.g(collection);
            }
        }

        k(b2<K, V> b2Var) {
            this.a = (b2) Preconditions.checkNotNull(b2Var);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.d1
        public b2<K, V> C() {
            return this.a;
        }

        public Collection<V> a(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.b2
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.b2, com.google.common.collect.z1
        public Map<K, Collection<V>> e() {
            Map<K, Collection<V>> map = this.f3680d;
            if (map != null) {
                return map;
            }
            Map<K, Collection<V>> mapUnmodifiableMap = Collections.unmodifiableMap(Maps.transformValues(this.a.e(), new a(this)));
            this.f3680d = mapUnmodifiableMap;
            return mapUnmodifiableMap;
        }

        @Override // com.google.common.collect.b2
        public Collection<Map.Entry<K, V>> f() {
            Collection<Map.Entry<K, V>> collection = this.b;
            if (collection != null) {
                return collection;
            }
            Collection<Map.Entry<K, V>> collectionF = Multimaps.f(this.a.f());
            this.b = collectionF;
            return collectionF;
        }

        public Collection<V> get(K k) {
            return Multimaps.g(this.a.get(k));
        }

        @Override // com.google.common.collect.b2
        public Set<K> keySet() {
            Set<K> set = this.c;
            if (set != null) {
                return set;
            }
            Set<K> setUnmodifiableSet = Collections.unmodifiableSet(this.a.keySet());
            this.c = setUnmodifiableSet;
            return setUnmodifiableSet;
        }

        @Override // com.google.common.collect.b2
        public boolean put(K k, V v) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.b2
        public boolean remove(Object obj, Object obj2) {
            throw new UnsupportedOperationException();
        }
    }

    private static class l<K, V> extends k<K, V> implements z2<K, V> {
        private static final long serialVersionUID = 0;

        l(z2<K, V> z2Var) {
            super(z2Var);
        }

        @Override // com.google.common.collect.Multimaps.k, com.google.common.collect.a1
        /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
        public z2<K, V> C() {
            return (z2) super.C();
        }

        @Override // com.google.common.collect.Multimaps.k, com.google.common.collect.b2, com.google.common.collect.z1
        public Set<V> a(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Multimaps.k, com.google.common.collect.b2
        public Set<Map.Entry<K, V>> f() {
            return Maps.I(C().f());
        }

        @Override // com.google.common.collect.Multimaps.k, com.google.common.collect.b2, com.google.common.collect.z1
        public Set<V> get(K k) {
            return Collections.unmodifiableSet(C().get((Object) k));
        }
    }

    private static class m<K, V> extends l<K, V> implements g3<K, V> {
        private static final long serialVersionUID = 0;

        m(g3<K, V> g3Var) {
            super(g3Var);
        }

        @Override // com.google.common.collect.Multimaps.l
        /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
        public g3<K, V> C() {
            return (g3) super.C();
        }

        @Override // com.google.common.collect.Multimaps.l, com.google.common.collect.Multimaps.k, com.google.common.collect.b2, com.google.common.collect.z1
        public SortedSet<V> a(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Multimaps.l, com.google.common.collect.Multimaps.k, com.google.common.collect.b2, com.google.common.collect.z1
        public SortedSet<V> get(K k) {
            return Collections.unmodifiableSortedSet(C().get((Object) k));
        }
    }

    private Multimaps() {
    }

    public static <K, V> Map<K, Collection<V>> asMap(b2<K, V> b2Var) {
        return b2Var.e();
    }

    public static <K, V> Map<K, SortedSet<V>> asMap(g3<K, V> g3Var) {
        return g3Var.e();
    }

    public static <K, V> Map<K, List<V>> asMap(z1<K, V> z1Var) {
        return z1Var.e();
    }

    public static <K, V> Map<K, Set<V>> asMap(z2<K, V> z2Var) {
        return z2Var.e();
    }

    static boolean c(b2<?, ?> b2Var, Object obj) {
        if (obj == b2Var) {
            return true;
        }
        if (obj instanceof b2) {
            return b2Var.e().equals(((b2) obj).e());
        }
        return false;
    }

    private static <K, V> b2<K, V> d(s0<K, V> s0Var, com.google.common.base.k<? super Map.Entry<K, V>> kVar) {
        return new n0(s0Var.i(), Predicates.and(s0Var.y(), kVar));
    }

    private static <K, V> z2<K, V> e(t0<K, V> t0Var, com.google.common.base.k<? super Map.Entry<K, V>> kVar) {
        return new o0(t0Var.i(), Predicates.and(t0Var.y(), kVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> Collection<Map.Entry<K, V>> f(Collection<Map.Entry<K, V>> collection) {
        return collection instanceof Set ? Maps.I((Set) collection) : new Maps.j0(Collections.unmodifiableCollection(collection));
    }

    public static <K, V> b2<K, V> filterEntries(b2<K, V> b2Var, com.google.common.base.k<? super Map.Entry<K, V>> kVar) {
        Preconditions.checkNotNull(kVar);
        return b2Var instanceof z2 ? filterEntries((z2) b2Var, (com.google.common.base.k) kVar) : b2Var instanceof s0 ? d((s0) b2Var, kVar) : new n0((b2) Preconditions.checkNotNull(b2Var), kVar);
    }

    public static <K, V> z2<K, V> filterEntries(z2<K, V> z2Var, com.google.common.base.k<? super Map.Entry<K, V>> kVar) {
        Preconditions.checkNotNull(kVar);
        return z2Var instanceof t0 ? e((t0) z2Var, kVar) : new o0((z2) Preconditions.checkNotNull(z2Var), kVar);
    }

    public static <K, V> b2<K, V> filterKeys(b2<K, V> b2Var, com.google.common.base.k<? super K> kVar) {
        if (b2Var instanceof z2) {
            return filterKeys((z2) b2Var, (com.google.common.base.k) kVar);
        }
        if (b2Var instanceof z1) {
            return filterKeys((z1) b2Var, (com.google.common.base.k) kVar);
        }
        if (!(b2Var instanceof q0)) {
            return b2Var instanceof s0 ? d((s0) b2Var, Maps.v(kVar)) : new q0(b2Var, kVar);
        }
        q0 q0Var = (q0) b2Var;
        return new q0(q0Var.f3826d, Predicates.and(q0Var.f3827e, kVar));
    }

    public static <K, V> z1<K, V> filterKeys(z1<K, V> z1Var, com.google.common.base.k<? super K> kVar) {
        if (!(z1Var instanceof p0)) {
            return new p0(z1Var, kVar);
        }
        p0 p0Var = (p0) z1Var;
        return new p0(p0Var.i(), Predicates.and(p0Var.f3827e, kVar));
    }

    public static <K, V> z2<K, V> filterKeys(z2<K, V> z2Var, com.google.common.base.k<? super K> kVar) {
        if (!(z2Var instanceof r0)) {
            return z2Var instanceof t0 ? e((t0) z2Var, Maps.v(kVar)) : new r0(z2Var, kVar);
        }
        r0 r0Var = (r0) z2Var;
        return new r0(r0Var.i(), Predicates.and(r0Var.f3827e, kVar));
    }

    public static <K, V> b2<K, V> filterValues(b2<K, V> b2Var, com.google.common.base.k<? super V> kVar) {
        return filterEntries(b2Var, Maps.N(kVar));
    }

    public static <K, V> z2<K, V> filterValues(z2<K, V> z2Var, com.google.common.base.k<? super V> kVar) {
        return filterEntries((z2) z2Var, Maps.N(kVar));
    }

    public static <K, V> z2<K, V> forMap(Map<K, V> map) {
        return new g(map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <V> Collection<V> g(Collection<V> collection) {
        return collection instanceof SortedSet ? Collections.unmodifiableSortedSet((SortedSet) collection) : collection instanceof Set ? Collections.unmodifiableSet((Set) collection) : collection instanceof List ? Collections.unmodifiableList((List) collection) : Collections.unmodifiableCollection(collection);
    }

    public static <K, V> ImmutableListMultimap<K, V> index(Iterable<V> iterable, com.google.common.base.f<? super V, K> fVar) {
        return index(iterable.iterator(), fVar);
    }

    public static <K, V> ImmutableListMultimap<K, V> index(Iterator<V> it, com.google.common.base.f<? super V, K> fVar) {
        Preconditions.checkNotNull(fVar);
        ImmutableListMultimap.a aVarBuilder = ImmutableListMultimap.builder();
        while (it.hasNext()) {
            V next = it.next();
            Preconditions.checkNotNull(next, it);
            aVarBuilder.c(fVar.apply(next), next);
        }
        return aVarBuilder.f();
    }

    public static <K, V, M extends b2<K, V>> M invertFrom(b2<? extends V, ? extends K> b2Var, M m2) {
        Preconditions.checkNotNull(m2);
        for (Map.Entry<? extends V, ? extends K> entry : b2Var.f()) {
            m2.put(entry.getValue(), entry.getKey());
        }
        return m2;
    }

    public static <K, V> z1<K, V> newListMultimap(Map<K, Collection<V>> map, com.google.common.base.m<? extends List<V>> mVar) {
        return new b(map, mVar);
    }

    public static <K, V> b2<K, V> newMultimap(Map<K, Collection<V>> map, com.google.common.base.m<? extends Collection<V>> mVar) {
        return new c(map, mVar);
    }

    public static <K, V> z2<K, V> newSetMultimap(Map<K, Collection<V>> map, com.google.common.base.m<? extends Set<V>> mVar) {
        return new d(map, mVar);
    }

    public static <K, V> g3<K, V> newSortedSetMultimap(Map<K, Collection<V>> map, com.google.common.base.m<? extends SortedSet<V>> mVar) {
        return new e(map, mVar);
    }

    public static <K, V> z1<K, V> synchronizedListMultimap(z1<K, V> z1Var) {
        return k3.k(z1Var, null);
    }

    public static <K, V> b2<K, V> synchronizedMultimap(b2<K, V> b2Var) {
        return k3.m(b2Var, null);
    }

    public static <K, V> z2<K, V> synchronizedSetMultimap(z2<K, V> z2Var) {
        return k3.u(z2Var, null);
    }

    public static <K, V> g3<K, V> synchronizedSortedSetMultimap(g3<K, V> g3Var) {
        return k3.x(g3Var, null);
    }

    public static <K, V1, V2> b2<K, V2> transformEntries(b2<K, V1> b2Var, Maps.q<? super K, ? super V1, V2> qVar) {
        return new i(b2Var, qVar);
    }

    public static <K, V1, V2> z1<K, V2> transformEntries(z1<K, V1> z1Var, Maps.q<? super K, ? super V1, V2> qVar) {
        return new h(z1Var, qVar);
    }

    public static <K, V1, V2> b2<K, V2> transformValues(b2<K, V1> b2Var, com.google.common.base.f<? super V1, V2> fVar) {
        Preconditions.checkNotNull(fVar);
        return transformEntries(b2Var, Maps.g(fVar));
    }

    public static <K, V1, V2> z1<K, V2> transformValues(z1<K, V1> z1Var, com.google.common.base.f<? super V1, V2> fVar) {
        Preconditions.checkNotNull(fVar);
        return transformEntries((z1) z1Var, Maps.g(fVar));
    }

    @Deprecated
    public static <K, V> z1<K, V> unmodifiableListMultimap(ImmutableListMultimap<K, V> immutableListMultimap) {
        return (z1) Preconditions.checkNotNull(immutableListMultimap);
    }

    public static <K, V> z1<K, V> unmodifiableListMultimap(z1<K, V> z1Var) {
        return ((z1Var instanceof j) || (z1Var instanceof ImmutableListMultimap)) ? z1Var : new j(z1Var);
    }

    @Deprecated
    public static <K, V> b2<K, V> unmodifiableMultimap(ImmutableMultimap<K, V> immutableMultimap) {
        return (b2) Preconditions.checkNotNull(immutableMultimap);
    }

    public static <K, V> b2<K, V> unmodifiableMultimap(b2<K, V> b2Var) {
        return ((b2Var instanceof k) || (b2Var instanceof ImmutableMultimap)) ? b2Var : new k(b2Var);
    }

    @Deprecated
    public static <K, V> z2<K, V> unmodifiableSetMultimap(ImmutableSetMultimap<K, V> immutableSetMultimap) {
        return (z2) Preconditions.checkNotNull(immutableSetMultimap);
    }

    public static <K, V> z2<K, V> unmodifiableSetMultimap(z2<K, V> z2Var) {
        return ((z2Var instanceof l) || (z2Var instanceof ImmutableSetMultimap)) ? z2Var : new l(z2Var);
    }

    public static <K, V> g3<K, V> unmodifiableSortedSetMultimap(g3<K, V> g3Var) {
        return g3Var instanceof m ? g3Var : new m(g3Var);
    }
}
