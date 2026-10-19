package com.google.common.collect;

import com.google.common.base.Converter;
import com.google.common.base.Equivalence;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicates;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Sets;
import com.google.common.collect.a2;
import com.json.b4;
import defpackage.UniversalRequestStoreOuterClass;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Properties;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes3.dex */
public final class Maps {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    private static abstract class EntryFunction implements com.google.common.base.f<Map.Entry<?, ?>, Object> {
        public static final EntryFunction a = new a("KEY", 0);
        public static final EntryFunction b = new b("VALUE", 1);
        private static final /* synthetic */ EntryFunction[] c = e();

        enum a extends EntryFunction {
            a(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.base.f
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public Object apply(Map.Entry<?, ?> entry) {
                return entry.getKey();
            }
        }

        enum b extends EntryFunction {
            b(String str, int i) {
                super(str, i, null);
            }

            @Override // com.google.common.base.f
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public Object apply(Map.Entry<?, ?> entry) {
                return entry.getValue();
            }
        }

        private EntryFunction(String str, int i) {
        }

        /* synthetic */ EntryFunction(String str, int i, d dVar) {
            this(str, i);
        }

        private static /* synthetic */ EntryFunction[] e() {
            return new EntryFunction[]{a, b};
        }

        public static EntryFunction valueOf(String str) {
            return (EntryFunction) Enum.valueOf(EntryFunction.class, str);
        }

        public static EntryFunction[] values() {
            return (EntryFunction[]) c.clone();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [V1, V2] */
    class a<V1, V2> implements com.google.common.base.f<V1, V2> {
        final /* synthetic */ q a;
        final /* synthetic */ Object b;

        a(q qVar, Object obj) {
            this.a = qVar;
            this.b = obj;
        }

        @Override // com.google.common.base.f
        public V2 apply(V1 v1) {
            return (V2) this.a.a(this.b, v1);
        }
    }

    private static final class a0<K, V> extends com.google.common.collect.l<K, V> {
        private final NavigableSet<K> a;
        private final com.google.common.base.f<? super K, V> b;

        a0(NavigableSet<K> navigableSet, com.google.common.base.f<? super K, V> fVar) {
            this.a = (NavigableSet) Preconditions.checkNotNull(navigableSet);
            this.b = (com.google.common.base.f) Preconditions.checkNotNull(fVar);
        }

        @Override // com.google.common.collect.Maps.x
        Iterator<Map.Entry<K, V>> a() {
            return Maps.h(this.a, this.b);
        }

        @Override // com.google.common.collect.l
        Iterator<Map.Entry<K, V>> b() {
            return descendingMap().entrySet().iterator();
        }

        @Override // com.google.common.collect.Maps.x, java.util.AbstractMap, java.util.Map
        public void clear() {
            this.a.clear();
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return this.a.comparator();
        }

        @Override // com.google.common.collect.l, java.util.NavigableMap
        public NavigableMap<K, V> descendingMap() {
            return Maps.asMap((NavigableSet) this.a.descendingSet(), (com.google.common.base.f) this.b);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(Object obj) {
            if (Collections2.f(this.a, obj)) {
                return this.b.apply(obj);
            }
            return null;
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> headMap(K k, boolean z) {
            return Maps.asMap((NavigableSet) this.a.headSet(k, z), (com.google.common.base.f) this.b);
        }

        @Override // com.google.common.collect.l, java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return Maps.y(this.a);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.a.size();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> subMap(K k, boolean z, K k2, boolean z2) {
            return Maps.asMap((NavigableSet) this.a.subSet(k, z, k2, z2), (com.google.common.base.f) this.b);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> tailMap(K k, boolean z) {
            return Maps.asMap((NavigableSet) this.a.tailSet(k, z), (com.google.common.base.f) this.b);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [K, V2] */
    class b<K, V2> extends com.google.common.collect.i<K, V2> {
        final /* synthetic */ Map.Entry a;
        final /* synthetic */ q b;

        b(Map.Entry entry, q qVar) {
            this.a = entry;
            this.b = qVar;
        }

        @Override // com.google.common.collect.i, java.util.Map.Entry
        public K getKey() {
            return (K) this.a.getKey();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.collect.i, java.util.Map.Entry
        public V2 getValue() {
            return (V2) this.b.a(this.a.getKey(), this.a.getValue());
        }
    }

    static class b0<K, V> extends d0<K, V> implements NavigableSet<K> {
        b0(NavigableMap<K, V> navigableMap) {
            super(navigableMap);
        }

        @Override // java.util.NavigableSet
        public K ceiling(K k) {
            return i().ceilingKey(k);
        }

        @Override // java.util.NavigableSet
        public Iterator<K> descendingIterator() {
            return descendingSet().iterator();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> descendingSet() {
            return i().descendingKeySet();
        }

        @Override // java.util.NavigableSet
        public K floor(K k) {
            return i().floorKey(k);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> headSet(K k, boolean z) {
            return i().headMap(k, z).navigableKeySet();
        }

        @Override // com.google.common.collect.Maps.d0, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<K> headSet(K k) {
            return headSet(k, false);
        }

        @Override // java.util.NavigableSet
        public K higher(K k) {
            return i().higherKey(k);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.d0
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public NavigableMap<K, V> j() {
            return (NavigableMap) this.a;
        }

        @Override // java.util.NavigableSet
        public K lower(K k) {
            return i().lowerKey(k);
        }

        @Override // java.util.NavigableSet
        public K pollFirst() {
            return (K) Maps.u(i().pollFirstEntry());
        }

        @Override // java.util.NavigableSet
        public K pollLast() {
            return (K) Maps.u(i().pollLastEntry());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> subSet(K k, boolean z, K k2, boolean z2) {
            return i().subMap(k, z, k2, z2).navigableKeySet();
        }

        @Override // com.google.common.collect.Maps.d0, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<K> subSet(K k, K k2) {
            return subSet(k, true, k2, false);
        }

        @Override // java.util.NavigableSet
        public NavigableSet<K> tailSet(K k, boolean z) {
            return i().tailMap(k, z).navigableKeySet();
        }

        @Override // com.google.common.collect.Maps.d0, java.util.SortedSet, java.util.NavigableSet
        public SortedSet<K> tailSet(K k) {
            return tailSet(k, true);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [K, V1, V2] */
    class c<K, V1, V2> implements com.google.common.base.f<Map.Entry<K, V1>, Map.Entry<K, V2>> {
        final /* synthetic */ q a;

        c(q qVar) {
            this.a = qVar;
        }

        @Override // com.google.common.base.f
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V2> apply(Map.Entry<K, V1> entry) {
            return Maps.F(this.a, entry);
        }
    }

    private static class c0<K, V> extends n<K, V> implements SortedMap<K, V> {
        c0(SortedSet<K> sortedSet, com.google.common.base.f<? super K, V> fVar) {
            super(sortedSet, fVar);
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return d().comparator();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.n
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public SortedSet<K> d() {
            return (SortedSet) super.d();
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            return d().first();
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> headMap(K k) {
            return Maps.asMap((SortedSet) d().headSet(k), (com.google.common.base.f) this.f3659e);
        }

        @Override // com.google.common.collect.Maps.o0, java.util.AbstractMap, java.util.Map, java.util.SortedMap
        public Set<K> keySet() {
            return Maps.A(d());
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            return d().last();
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> subMap(K k, K k2) {
            return Maps.asMap((SortedSet) d().subSet(k, k2), (com.google.common.base.f) this.f3659e);
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> tailMap(K k) {
            return Maps.asMap((SortedSet) d().tailSet(k), (com.google.common.base.f) this.f3659e);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [V, K] */
    class d<K, V> extends m3<Map.Entry<K, V>, K> {
        d(Iterator it) {
            super(it);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.m3
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public K a(Map.Entry<K, V> entry) {
            return entry.getKey();
        }
    }

    static class d0<K, V> extends y<K, V> implements SortedSet<K> {
        d0(SortedMap<K, V> sortedMap) {
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
            return new d0(j().headMap(k));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.y
        public SortedMap<K, V> j() {
            return (SortedMap) super.j();
        }

        @Override // java.util.SortedSet
        public K last() {
            return j().lastKey();
        }

        public SortedSet<K> subSet(K k, K k2) {
            return new d0(j().subMap(k, k2));
        }

        public SortedSet<K> tailSet(K k) {
            return new d0(j().tailMap(k));
        }
    }

    /* JADX INFO: Add missing generic type declarations: [V, K] */
    class e<K, V> extends m3<Map.Entry<K, V>, V> {
        e(Iterator it) {
            super(it);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.m3
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public V a(Map.Entry<K, V> entry) {
            return entry.getValue();
        }
    }

    static class e0<K, V> extends z<K, V> implements d3<K, V> {
        e0(SortedMap<K, V> sortedMap, SortedMap<K, V> sortedMap2, SortedMap<K, V> sortedMap3, SortedMap<K, a2.a<V>> sortedMap4) {
            super(sortedMap, sortedMap2, sortedMap3, sortedMap4);
        }

        @Override // com.google.common.collect.Maps.z, com.google.common.collect.a2
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public SortedMap<K, a2.a<V>> c() {
            return (SortedMap) super.c();
        }

        @Override // com.google.common.collect.Maps.z, com.google.common.collect.a2
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public SortedMap<K, V> d() {
            return (SortedMap) super.d();
        }

        @Override // com.google.common.collect.Maps.z, com.google.common.collect.a2
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public SortedMap<K, V> b() {
            return (SortedMap) super.b();
        }

        @Override // com.google.common.collect.Maps.z, com.google.common.collect.a2
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public SortedMap<K, V> a() {
            return (SortedMap) super.a();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [V, K] */
    class f<K, V> extends m3<K, Map.Entry<K, V>> {
        final /* synthetic */ com.google.common.base.f b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(Iterator it, com.google.common.base.f fVar) {
            super(it);
            this.b = fVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.m3
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> a(K k) {
            return Maps.immutableEntry(k, this.b.apply(k));
        }
    }

    static class f0<K, V1, V2> extends x<K, V2> {
        final Map<K, V1> a;
        final q<? super K, ? super V1, V2> b;

        f0(Map<K, V1> map, q<? super K, ? super V1, V2> qVar) {
            this.a = (Map) Preconditions.checkNotNull(map);
            this.b = (q) Preconditions.checkNotNull(qVar);
        }

        @Override // com.google.common.collect.Maps.x
        Iterator<Map.Entry<K, V2>> a() {
            return Iterators.transform(this.a.entrySet().iterator(), Maps.f(this.b));
        }

        @Override // com.google.common.collect.Maps.x, java.util.AbstractMap, java.util.Map
        public void clear() {
            this.a.clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return this.a.containsKey(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V2 get(Object obj) {
            V1 v1 = this.a.get(obj);
            if (v1 != null || this.a.containsKey(obj)) {
                return this.b.a(obj, (Object) e2.a(v1));
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            return this.a.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V2 remove(Object obj) {
            if (this.a.containsKey(obj)) {
                return this.b.a(obj, (Object) e2.a(this.a.remove(obj)));
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.a.size();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Collection<V2> values() {
            return new n0(this);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    class g<E> extends f1<E> {
        final /* synthetic */ Set a;

        g(Set set) {
            this.a = set;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.u0
        public Set<E> C() {
            return this.a;
        }

        @Override // com.google.common.collect.u0, java.util.Collection, java.util.Queue
        public boolean add(E e2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.u0, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }
    }

    private static class g0<K, V1, V2> extends h0<K, V1, V2> implements NavigableMap<K, V2> {
        g0(NavigableMap<K, V1> navigableMap, q<? super K, ? super V1, V2> qVar) {
            super(navigableMap, qVar);
        }

        private Map.Entry<K, V2> h(Map.Entry<K, V1> entry) {
            if (entry == null) {
                return null;
            }
            return Maps.F(this.b, entry);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.Maps.h0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public NavigableMap<K, V1> b() {
            return (NavigableMap) super.b();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> ceilingEntry(K k) {
            return h(b().ceilingEntry(k));
        }

        @Override // java.util.NavigableMap
        public K ceilingKey(K k) {
            return b().ceilingKey(k);
        }

        @Override // com.google.common.collect.Maps.h0, java.util.SortedMap, java.util.NavigableMap
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public NavigableMap<K, V2> headMap(K k) {
            return headMap(k, false);
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            return b().descendingKeySet();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V2> descendingMap() {
            return Maps.transformEntries((NavigableMap) b().descendingMap(), (q) this.b);
        }

        @Override // com.google.common.collect.Maps.h0, java.util.SortedMap, java.util.NavigableMap
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public NavigableMap<K, V2> subMap(K k, K k2) {
            return subMap(k, true, k2, false);
        }

        @Override // com.google.common.collect.Maps.h0, java.util.SortedMap, java.util.NavigableMap
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public NavigableMap<K, V2> tailMap(K k) {
            return tailMap(k, true);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> firstEntry() {
            return h(b().firstEntry());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> floorEntry(K k) {
            return h(b().floorEntry(k));
        }

        @Override // java.util.NavigableMap
        public K floorKey(K k) {
            return b().floorKey(k);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V2> headMap(K k, boolean z) {
            return Maps.transformEntries((NavigableMap) b().headMap(k, z), (q) this.b);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> higherEntry(K k) {
            return h(b().higherEntry(k));
        }

        @Override // java.util.NavigableMap
        public K higherKey(K k) {
            return b().higherKey(k);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> lastEntry() {
            return h(b().lastEntry());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> lowerEntry(K k) {
            return h(b().lowerEntry(k));
        }

        @Override // java.util.NavigableMap
        public K lowerKey(K k) {
            return b().lowerKey(k);
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return b().navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> pollFirstEntry() {
            return h(b().pollFirstEntry());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V2> pollLastEntry() {
            return h(b().pollLastEntry());
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V2> subMap(K k, boolean z, K k2, boolean z2) {
            return Maps.transformEntries((NavigableMap) b().subMap(k, z, k2, z2), (q) this.b);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V2> tailMap(K k, boolean z) {
            return Maps.transformEntries((NavigableMap) b().tailMap(k, z), (q) this.b);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    class h<E> extends h1<E> {
        final /* synthetic */ SortedSet a;

        h(SortedSet sortedSet) {
            this.a = sortedSet;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.f1
        /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
        public SortedSet<E> P() {
            return this.a;
        }

        @Override // com.google.common.collect.u0, java.util.Collection, java.util.Queue
        public boolean add(E e2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.u0, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.h1, java.util.SortedSet
        public SortedSet<E> headSet(E e2) {
            return Maps.A(super.headSet(e2));
        }

        @Override // com.google.common.collect.h1, java.util.SortedSet
        public SortedSet<E> subSet(E e2, E e3) {
            return Maps.A(super.subSet(e2, e3));
        }

        @Override // com.google.common.collect.h1, java.util.SortedSet
        public SortedSet<E> tailSet(E e2) {
            return Maps.A(super.tailSet(e2));
        }
    }

    static class h0<K, V1, V2> extends f0<K, V1, V2> implements SortedMap<K, V2> {
        h0(SortedMap<K, V1> sortedMap, q<? super K, ? super V1, V2> qVar) {
            super(sortedMap, qVar);
        }

        protected SortedMap<K, V1> b() {
            return (SortedMap) this.a;
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return b().comparator();
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            return b().firstKey();
        }

        public SortedMap<K, V2> headMap(K k) {
            return Maps.transformEntries((SortedMap) b().headMap(k), (q) this.b);
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            return b().lastKey();
        }

        public SortedMap<K, V2> subMap(K k, K k2) {
            return Maps.transformEntries((SortedMap) b().subMap(k, k2), (q) this.b);
        }

        public SortedMap<K, V2> tailMap(K k) {
            return Maps.transformEntries((SortedMap) b().tailMap(k), (q) this.b);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    class i<E> extends c1<E> {
        final /* synthetic */ NavigableSet a;

        i(NavigableSet navigableSet) {
            this.a = navigableSet;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.h1
        /* JADX INFO: renamed from: S, reason: merged with bridge method [inline-methods] */
        public NavigableSet<E> P() {
            return this.a;
        }

        @Override // com.google.common.collect.u0, java.util.Collection, java.util.Queue
        public boolean add(E e2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.u0, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.c1, java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            return Maps.y(super.descendingSet());
        }

        @Override // com.google.common.collect.c1, java.util.NavigableSet
        public NavigableSet<E> headSet(E e2, boolean z) {
            return Maps.y(super.headSet(e2, z));
        }

        @Override // com.google.common.collect.h1, java.util.SortedSet
        public SortedSet<E> headSet(E e2) {
            return Maps.A(super.headSet(e2));
        }

        @Override // com.google.common.collect.c1, java.util.NavigableSet
        public NavigableSet<E> subSet(E e2, boolean z, E e3, boolean z2) {
            return Maps.y(super.subSet(e2, z, e3, z2));
        }

        @Override // com.google.common.collect.h1, java.util.SortedSet
        public SortedSet<E> subSet(E e2, E e3) {
            return Maps.A(super.subSet(e2, e3));
        }

        @Override // com.google.common.collect.c1, java.util.NavigableSet
        public NavigableSet<E> tailSet(E e2, boolean z) {
            return Maps.y(super.tailSet(e2, z));
        }

        @Override // com.google.common.collect.h1, java.util.SortedSet
        public SortedSet<E> tailSet(E e2) {
            return Maps.A(super.tailSet(e2));
        }
    }

    private static class i0<K, V> extends y0<K, V> implements com.google.common.collect.w<K, V>, Serializable {
        private static final long serialVersionUID = 0;
        final Map<K, V> a;
        final com.google.common.collect.w<? extends K, ? extends V> b;
        com.google.common.collect.w<V, K> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        transient Set<V> f3655d;

        i0(com.google.common.collect.w<? extends K, ? extends V> wVar, com.google.common.collect.w<V, K> wVar2) {
            this.a = Collections.unmodifiableMap(wVar);
            this.b = wVar;
            this.c = wVar2;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.d1
        /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
        public Map<K, V> C() {
            return this.a;
        }

        @Override // com.google.common.collect.w
        public com.google.common.collect.w<V, K> M() {
            com.google.common.collect.w<V, K> wVar = this.c;
            if (wVar != null) {
                return wVar;
            }
            i0 i0Var = new i0(this.b.M(), this);
            this.c = i0Var;
            return i0Var;
        }

        @Override // com.google.common.collect.y0, java.util.Map, com.google.common.collect.w
        public Set<V> values() {
            Set<V> set = this.f3655d;
            if (set != null) {
                return set;
            }
            Set<V> setUnmodifiableSet = Collections.unmodifiableSet(this.b.values());
            this.f3655d = setUnmodifiableSet;
            return setUnmodifiableSet;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [V, K] */
    class j<K, V> extends com.google.common.collect.i<K, V> {
        final /* synthetic */ Map.Entry a;

        j(Map.Entry entry) {
            this.a = entry;
        }

        @Override // com.google.common.collect.i, java.util.Map.Entry
        public K getKey() {
            return (K) this.a.getKey();
        }

        @Override // com.google.common.collect.i, java.util.Map.Entry
        public V getValue() {
            return (V) this.a.getValue();
        }
    }

    static class j0<K, V> extends u0<Map.Entry<K, V>> {
        private final Collection<Map.Entry<K, V>> a;

        j0(Collection<Map.Entry<K, V>> collection) {
            this.a = collection;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.d1
        public Collection<Map.Entry<K, V>> C() {
            return this.a;
        }

        @Override // com.google.common.collect.u0, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return Maps.H(this.a.iterator());
        }

        @Override // com.google.common.collect.u0, java.util.Collection
        public Object[] toArray() {
            return G();
        }

        @Override // com.google.common.collect.u0, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) H(tArr);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [V, K] */
    class k<K, V> extends o3<Map.Entry<K, V>> {
        final /* synthetic */ Iterator a;

        k(Iterator it) {
            this.a = it;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            return Maps.G((Map.Entry) this.a.next());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.a.hasNext();
        }
    }

    static class k0<K, V> extends j0<K, V> implements Set<Map.Entry<K, V>> {
        k0(Set<Map.Entry<K, V>> set) {
            super(set);
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

    /* JADX INFO: Add missing generic type declarations: [K, V1, V2] */
    class l<K, V1, V2> implements q<K, V1, V2> {
        final /* synthetic */ com.google.common.base.f a;

        l(com.google.common.base.f fVar) {
            this.a = fVar;
        }

        @Override // com.google.common.collect.Maps.q
        public V2 a(K k, V1 v1) {
            return (V2) this.a.apply(v1);
        }
    }

    static class l0<K, V> extends g1<K, V> implements NavigableMap<K, V>, Serializable {
        private final NavigableMap<K, ? extends V> a;
        private transient l0<K, V> b;

        l0(NavigableMap<K, ? extends V> navigableMap) {
            this.a = navigableMap;
        }

        l0(NavigableMap<K, ? extends V> navigableMap, l0<K, V> l0Var) {
            this.a = navigableMap;
            this.b = l0Var;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.y0
        /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
        public SortedMap<K, V> P() {
            return Collections.unmodifiableSortedMap(this.a);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> ceilingEntry(K k) {
            return Maps.K(this.a.ceilingEntry(k));
        }

        @Override // java.util.NavigableMap
        public K ceilingKey(K k) {
            return this.a.ceilingKey(k);
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> descendingKeySet() {
            return Sets.unmodifiableNavigableSet(this.a.descendingKeySet());
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> descendingMap() {
            l0<K, V> l0Var = this.b;
            if (l0Var != null) {
                return l0Var;
            }
            l0<K, V> l0Var2 = new l0<>(this.a.descendingMap(), this);
            this.b = l0Var2;
            return l0Var2;
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> firstEntry() {
            return Maps.K(this.a.firstEntry());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> floorEntry(K k) {
            return Maps.K(this.a.floorEntry(k));
        }

        @Override // java.util.NavigableMap
        public K floorKey(K k) {
            return this.a.floorKey(k);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> headMap(K k, boolean z) {
            return Maps.unmodifiableNavigableMap(this.a.headMap(k, z));
        }

        @Override // java.util.SortedMap, java.util.NavigableMap
        public SortedMap<K, V> headMap(K k) {
            return headMap(k, false);
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> higherEntry(K k) {
            return Maps.K(this.a.higherEntry(k));
        }

        @Override // java.util.NavigableMap
        public K higherKey(K k) {
            return this.a.higherKey(k);
        }

        @Override // com.google.common.collect.y0, java.util.Map
        public Set<K> keySet() {
            return navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lastEntry() {
            return Maps.K(this.a.lastEntry());
        }

        @Override // java.util.NavigableMap
        public Map.Entry<K, V> lowerEntry(K k) {
            return Maps.K(this.a.lowerEntry(k));
        }

        @Override // java.util.NavigableMap
        public K lowerKey(K k) {
            return this.a.lowerKey(k);
        }

        @Override // java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return Sets.unmodifiableNavigableSet(this.a.navigableKeySet());
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, V> pollFirstEntry() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.NavigableMap
        public final Map.Entry<K, V> pollLastEntry() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> subMap(K k, boolean z, K k2, boolean z2) {
            return Maps.unmodifiableNavigableMap(this.a.subMap(k, z, k2, z2));
        }

        @Override // java.util.SortedMap, java.util.NavigableMap
        public SortedMap<K, V> subMap(K k, K k2) {
            return subMap(k, true, k2, false);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> tailMap(K k, boolean z) {
            return Maps.unmodifiableNavigableMap(this.a.tailMap(k, z));
        }

        @Override // java.util.SortedMap, java.util.NavigableMap
        public SortedMap<K, V> tailMap(K k) {
            return tailMap(k, true);
        }
    }

    private static abstract class m<K, V> extends o0<K, V> {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final Map<K, V> f3656d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final com.google.common.base.k<? super Map.Entry<K, V>> f3657e;

        m(Map<K, V> map, com.google.common.base.k<? super Map.Entry<K, V>> kVar) {
            this.f3656d = map;
            this.f3657e = kVar;
        }

        @Override // com.google.common.collect.Maps.o0
        Collection<V> c() {
            return new w(this, this.f3656d, this.f3657e);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return this.f3656d.containsKey(obj) && d(obj, this.f3656d.get(obj));
        }

        boolean d(Object obj, V v) {
            return this.f3657e.apply(Maps.immutableEntry(obj, v));
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(Object obj) {
            V v = this.f3656d.get(obj);
            if (v == null || !d(obj, v)) {
                return null;
            }
            return v;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            return entrySet().isEmpty();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V put(K k, V v) {
            Preconditions.checkArgument(d(k, v));
            return this.f3656d.put(k, v);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void putAll(Map<? extends K, ? extends V> map) {
            for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
                Preconditions.checkArgument(d(entry.getKey(), entry.getValue()));
            }
            this.f3656d.putAll(map);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(Object obj) {
            if (containsKey(obj)) {
                return this.f3656d.remove(obj);
            }
            return null;
        }
    }

    static class m0<V> implements a2.a<V> {
        private final V a;
        private final V b;

        private m0(V v, V v2) {
            this.a = v;
            this.b = v2;
        }

        static <V> a2.a<V> c(V v, V v2) {
            return new m0(v, v2);
        }

        @Override // com.google.common.collect.a2.a
        public V a() {
            return this.a;
        }

        @Override // com.google.common.collect.a2.a
        public V b() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a2.a)) {
                return false;
            }
            a2.a aVar = (a2.a) obj;
            return Objects.equal(this.a, aVar.a()) && Objects.equal(this.b, aVar.b());
        }

        public int hashCode() {
            return Objects.hashCode(this.a, this.b);
        }

        public String toString() {
            String strValueOf = String.valueOf(this.a);
            String strValueOf2 = String.valueOf(this.b);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 4 + strValueOf2.length());
            sb.append("(");
            sb.append(strValueOf);
            sb.append(", ");
            sb.append(strValueOf2);
            sb.append(")");
            return sb.toString();
        }
    }

    private static class n<K, V> extends o0<K, V> {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Set<K> f3658d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final com.google.common.base.f<? super K, V> f3659e;

        class a extends p<K, V> {
            a() {
            }

            @Override // com.google.common.collect.Maps.p
            Map<K, V> i() {
                return n.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, V>> iterator() {
                return Maps.h(n.this.d(), n.this.f3659e);
            }
        }

        n(Set<K> set, com.google.common.base.f<? super K, V> fVar) {
            this.f3658d = (Set) Preconditions.checkNotNull(set);
            this.f3659e = (com.google.common.base.f) Preconditions.checkNotNull(fVar);
        }

        @Override // com.google.common.collect.Maps.o0
        protected Set<Map.Entry<K, V>> a() {
            return new a();
        }

        @Override // com.google.common.collect.Maps.o0
        /* JADX INFO: renamed from: b */
        public Set<K> h() {
            return Maps.z(d());
        }

        @Override // com.google.common.collect.Maps.o0
        Collection<V> c() {
            return Collections2.transform(this.f3658d, this.f3659e);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            d().clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return d().contains(obj);
        }

        Set<K> d() {
            return this.f3658d;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(Object obj) {
            if (Collections2.f(d(), obj)) {
                return this.f3659e.apply(obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(Object obj) {
            if (d().remove(obj)) {
                return this.f3659e.apply(obj);
            }
            return null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return d().size();
        }
    }

    static class n0<K, V> extends AbstractCollection<V> {
        final Map<K, V> a;

        n0(Map<K, V> map) {
            this.a = (Map) Preconditions.checkNotNull(map);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            e().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return e().containsValue(obj);
        }

        final Map<K, V> e() {
            return this.a;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return e().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return Maps.M(e().entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            try {
                return super.remove(obj);
            } catch (UnsupportedOperationException unused) {
                for (Map.Entry<K, V> entry : e().entrySet()) {
                    if (Objects.equal(obj, entry.getValue())) {
                        e().remove(entry.getKey());
                        return true;
                    }
                }
                return false;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            try {
                return super.removeAll((Collection) Preconditions.checkNotNull(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet hashSetNewHashSet = Sets.newHashSet();
                for (Map.Entry<K, V> entry : e().entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        hashSetNewHashSet.add(entry.getKey());
                    }
                }
                return e().keySet().removeAll(hashSetNewHashSet);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            try {
                return super.retainAll((Collection) Preconditions.checkNotNull(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet hashSetNewHashSet = Sets.newHashSet();
                for (Map.Entry<K, V> entry : e().entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        hashSetNewHashSet.add(entry.getKey());
                    }
                }
                return e().keySet().retainAll(hashSetNewHashSet);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return e().size();
        }
    }

    private static final class o<A, B> extends Converter<A, B> implements Serializable {
        private static final long serialVersionUID = 0;
        private final com.google.common.collect.w<A, B> b;

        o(com.google.common.collect.w<A, B> wVar) {
            this.b = (com.google.common.collect.w) Preconditions.checkNotNull(wVar);
        }

        private static <X, Y> Y e(com.google.common.collect.w<X, Y> wVar, X x) {
            Y y = wVar.get(x);
            Preconditions.checkArgument(y != null, "No non-null mapping present for input: %s", x);
            return y;
        }

        @Override // com.google.common.base.Converter
        protected B c(A a) {
            return (B) e(this.b, a);
        }

        @Override // com.google.common.base.Converter, com.google.common.base.f
        public boolean equals(Object obj) {
            if (obj instanceof o) {
                return this.b.equals(((o) obj).b);
            }
            return false;
        }

        public int hashCode() {
            return this.b.hashCode();
        }

        public String toString() {
            String strValueOf = String.valueOf(this.b);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 18);
            sb.append("Maps.asConverter(");
            sb.append(strValueOf);
            sb.append(")");
            return sb.toString();
        }
    }

    static abstract class o0<K, V> extends AbstractMap<K, V> {
        private transient Set<Map.Entry<K, V>> a;
        private transient Set<K> b;
        private transient Collection<V> c;

        o0() {
        }

        abstract Set<Map.Entry<K, V>> a();

        /* JADX INFO: renamed from: b */
        Set<K> h() {
            return new y(this);
        }

        Collection<V> c() {
            return new n0(this);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            Set<Map.Entry<K, V>> set = this.a;
            if (set != null) {
                return set;
            }
            Set<Map.Entry<K, V>> setA = a();
            this.a = setA;
            return setA;
        }

        @Override // java.util.AbstractMap, java.util.Map, java.util.SortedMap
        public Set<K> keySet() {
            Set<K> set = this.b;
            if (set != null) {
                return set;
            }
            Set<K> setH = h();
            this.b = setH;
            return setH;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Collection<V> values() {
            Collection<V> collection = this.c;
            if (collection != null) {
                return collection;
            }
            Collection<V> collectionC = c();
            this.c = collectionC;
            return collectionC;
        }
    }

    static abstract class p<K, V> extends Sets.j<Map.Entry<K, V>> {
        p() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            i().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object objC = Maps.C(i(), key);
            if (Objects.equal(objC, entry.getValue())) {
                return objC != null || i().containsKey(key);
            }
            return false;
        }

        abstract Map<K, V> i();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return i().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (contains(obj) && (obj instanceof Map.Entry)) {
                return i().keySet().remove(((Map.Entry) obj).getKey());
            }
            return false;
        }

        @Override // com.google.common.collect.Sets.j, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            try {
                return super.removeAll((Collection) Preconditions.checkNotNull(collection));
            } catch (UnsupportedOperationException unused) {
                return Sets.e(this, collection.iterator());
            }
        }

        @Override // com.google.common.collect.Sets.j, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            try {
                return super.retainAll((Collection) Preconditions.checkNotNull(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet hashSetNewHashSetWithExpectedSize = Sets.newHashSetWithExpectedSize(collection.size());
                for (Object obj : collection) {
                    if (contains(obj) && (obj instanceof Map.Entry)) {
                        hashSetNewHashSetWithExpectedSize.add(((Map.Entry) obj).getKey());
                    }
                }
                return i().keySet().retainAll(hashSetNewHashSetWithExpectedSize);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return i().size();
        }
    }

    public interface q<K, V1, V2> {
        V2 a(K k, V1 v1);
    }

    static final class r<K, V> extends s<K, V> implements com.google.common.collect.w<K, V> {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final com.google.common.collect.w<V, K> f3660g;

        class a implements com.google.common.base.k<Map.Entry<V, K>> {
            final /* synthetic */ com.google.common.base.k a;

            a(com.google.common.base.k kVar) {
                this.a = kVar;
            }

            @Override // com.google.common.base.k
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public boolean apply(Map.Entry<V, K> entry) {
                return this.a.apply(Maps.immutableEntry(entry.getValue(), entry.getKey()));
            }
        }

        r(com.google.common.collect.w<K, V> wVar, com.google.common.base.k<? super Map.Entry<K, V>> kVar) {
            super(wVar, kVar);
            this.f3660g = new r(wVar.M(), h(kVar), this);
        }

        private r(com.google.common.collect.w<K, V> wVar, com.google.common.base.k<? super Map.Entry<K, V>> kVar, com.google.common.collect.w<V, K> wVar2) {
            super(wVar, kVar);
            this.f3660g = wVar2;
        }

        private static <K, V> com.google.common.base.k<Map.Entry<V, K>> h(com.google.common.base.k<? super Map.Entry<K, V>> kVar) {
            return new a(kVar);
        }

        @Override // com.google.common.collect.w
        public com.google.common.collect.w<V, K> M() {
            return this.f3660g;
        }

        com.google.common.collect.w<K, V> i() {
            return (com.google.common.collect.w) this.f3656d;
        }

        @Override // com.google.common.collect.Maps.o0, java.util.AbstractMap, java.util.Map
        public Set<V> values() {
            return this.f3660g.keySet();
        }
    }

    static class s<K, V> extends m<K, V> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final Set<Map.Entry<K, V>> f3661f;

        private class a extends f1<Map.Entry<K, V>> {

            /* JADX INFO: renamed from: com.google.common.collect.Maps$s$a$a, reason: collision with other inner class name */
            class C0244a extends m3<Map.Entry<K, V>, Map.Entry<K, V>> {

                /* JADX INFO: renamed from: com.google.common.collect.Maps$s$a$a$a, reason: collision with other inner class name */
                class C0245a extends z0<K, V> {
                    final /* synthetic */ Map.Entry a;

                    C0245a(Map.Entry entry) {
                        this.a = entry;
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // com.google.common.collect.d1
                    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
                    public Map.Entry<K, V> C() {
                        return this.a;
                    }

                    @Override // com.google.common.collect.z0, java.util.Map.Entry
                    public V setValue(V v) {
                        Preconditions.checkArgument(s.this.d(getKey(), v));
                        return (V) super.setValue(v);
                    }
                }

                C0244a(Iterator it) {
                    super(it);
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                @Override // com.google.common.collect.m3
                /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                public Map.Entry<K, V> a(Map.Entry<K, V> entry) {
                    return new C0245a(entry);
                }
            }

            private a() {
            }

            /* synthetic */ a(s sVar, d dVar) {
                this();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.u0
            public Set<Map.Entry<K, V>> C() {
                return s.this.f3661f;
            }

            @Override // com.google.common.collect.u0, java.util.Collection, java.lang.Iterable
            public Iterator<Map.Entry<K, V>> iterator() {
                return new C0244a(s.this.f3661f.iterator());
            }
        }

        class b extends y<K, V> {
            b() {
                super(s.this);
            }

            @Override // com.google.common.collect.Maps.y, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (!s.this.containsKey(obj)) {
                    return false;
                }
                s.this.f3656d.remove(obj);
                return true;
            }

            @Override // com.google.common.collect.Sets.j, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean removeAll(Collection<?> collection) {
                s sVar = s.this;
                return s.e(sVar.f3656d, sVar.f3657e, collection);
            }

            @Override // com.google.common.collect.Sets.j, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                s sVar = s.this;
                return s.f(sVar.f3656d, sVar.f3657e, collection);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public Object[] toArray() {
                return Lists.newArrayList(iterator()).toArray();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public <T> T[] toArray(T[] tArr) {
                return (T[]) Lists.newArrayList(iterator()).toArray(tArr);
            }
        }

        s(Map<K, V> map, com.google.common.base.k<? super Map.Entry<K, V>> kVar) {
            super(map, kVar);
            this.f3661f = Sets.filter(map.entrySet(), this.f3657e);
        }

        static <K, V> boolean e(Map<K, V> map, com.google.common.base.k<? super Map.Entry<K, V>> kVar, Collection<?> collection) {
            Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
            boolean z = false;
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                if (kVar.apply(next) && collection.contains(next.getKey())) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        static <K, V> boolean f(Map<K, V> map, com.google.common.base.k<? super Map.Entry<K, V>> kVar, Collection<?> collection) {
            Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
            boolean z = false;
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                if (kVar.apply(next) && !collection.contains(next.getKey())) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        @Override // com.google.common.collect.Maps.o0
        protected Set<Map.Entry<K, V>> a() {
            return new a(this, null);
        }

        @Override // com.google.common.collect.Maps.o0
        /* JADX INFO: renamed from: b */
        Set<K> h() {
            return new b();
        }
    }

    private static class t<K, V> extends com.google.common.collect.l<K, V> {
        private final NavigableMap<K, V> a;
        private final com.google.common.base.k<? super Map.Entry<K, V>> b;
        private final Map<K, V> c;

        class a extends b0<K, V> {
            a(NavigableMap navigableMap) {
                super(navigableMap);
            }

            @Override // com.google.common.collect.Sets.j, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean removeAll(Collection<?> collection) {
                return s.e(t.this.a, t.this.b, collection);
            }

            @Override // com.google.common.collect.Sets.j, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean retainAll(Collection<?> collection) {
                return s.f(t.this.a, t.this.b, collection);
            }
        }

        t(NavigableMap<K, V> navigableMap, com.google.common.base.k<? super Map.Entry<K, V>> kVar) {
            this.a = (NavigableMap) Preconditions.checkNotNull(navigableMap);
            this.b = kVar;
            this.c = new s(navigableMap, kVar);
        }

        @Override // com.google.common.collect.Maps.x
        Iterator<Map.Entry<K, V>> a() {
            return Iterators.filter(this.a.entrySet().iterator(), this.b);
        }

        @Override // com.google.common.collect.l
        Iterator<Map.Entry<K, V>> b() {
            return Iterators.filter(this.a.descendingMap().entrySet().iterator(), this.b);
        }

        @Override // com.google.common.collect.Maps.x, java.util.AbstractMap, java.util.Map
        public void clear() {
            this.c.clear();
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return this.a.comparator();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return this.c.containsKey(obj);
        }

        @Override // com.google.common.collect.l, java.util.NavigableMap
        public NavigableMap<K, V> descendingMap() {
            return Maps.filterEntries((NavigableMap) this.a.descendingMap(), (com.google.common.base.k) this.b);
        }

        @Override // com.google.common.collect.Maps.x, java.util.AbstractMap, java.util.Map, java.util.SortedMap
        public Set<Map.Entry<K, V>> entrySet() {
            return this.c.entrySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(Object obj) {
            return this.c.get(obj);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> headMap(K k, boolean z) {
            return Maps.filterEntries((NavigableMap) this.a.headMap(k, z), (com.google.common.base.k) this.b);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            return !Iterables.any(this.a.entrySet(), this.b);
        }

        @Override // com.google.common.collect.l, java.util.NavigableMap
        public NavigableSet<K> navigableKeySet() {
            return new a(this);
        }

        @Override // com.google.common.collect.l, java.util.NavigableMap
        public Map.Entry<K, V> pollFirstEntry() {
            return (Map.Entry) Iterables.c(this.a.entrySet(), this.b);
        }

        @Override // com.google.common.collect.l, java.util.NavigableMap
        public Map.Entry<K, V> pollLastEntry() {
            return (Map.Entry) Iterables.c(this.a.descendingMap().entrySet(), this.b);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V put(K k, V v) {
            return this.c.put(k, v);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void putAll(Map<? extends K, ? extends V> map) {
            this.c.putAll(map);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(Object obj) {
            return this.c.remove(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.c.size();
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> subMap(K k, boolean z, K k2, boolean z2) {
            return Maps.filterEntries((NavigableMap) this.a.subMap(k, z, k2, z2), (com.google.common.base.k) this.b);
        }

        @Override // java.util.NavigableMap
        public NavigableMap<K, V> tailMap(K k, boolean z) {
            return Maps.filterEntries((NavigableMap) this.a.tailMap(k, z), (com.google.common.base.k) this.b);
        }

        @Override // java.util.AbstractMap, java.util.Map, java.util.SortedMap
        public Collection<V> values() {
            return new w(this, this.a, this.b);
        }
    }

    private static class u<K, V> extends s<K, V> implements SortedMap<K, V> {

        class a extends s<K, V>.b implements SortedSet<K> {
            a() {
                super();
            }

            @Override // java.util.SortedSet
            public Comparator<? super K> comparator() {
                return u.this.j().comparator();
            }

            @Override // java.util.SortedSet
            public K first() {
                return (K) u.this.firstKey();
            }

            @Override // java.util.SortedSet
            public SortedSet<K> headSet(K k) {
                return (SortedSet) u.this.headMap(k).keySet();
            }

            @Override // java.util.SortedSet
            public K last() {
                return (K) u.this.lastKey();
            }

            @Override // java.util.SortedSet
            public SortedSet<K> subSet(K k, K k2) {
                return (SortedSet) u.this.subMap(k, k2).keySet();
            }

            @Override // java.util.SortedSet
            public SortedSet<K> tailSet(K k) {
                return (SortedSet) u.this.tailMap(k).keySet();
            }
        }

        u(SortedMap<K, V> sortedMap, com.google.common.base.k<? super Map.Entry<K, V>> kVar) {
            super(sortedMap, kVar);
        }

        @Override // java.util.SortedMap
        public Comparator<? super K> comparator() {
            return j().comparator();
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            return keySet().iterator().next();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.Maps.s, com.google.common.collect.Maps.o0
        public SortedSet<K> h() {
            return new a();
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> headMap(K k) {
            return new u(j().headMap(k), this.f3657e);
        }

        @Override // com.google.common.collect.Maps.o0, java.util.AbstractMap, java.util.Map, java.util.SortedMap
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public SortedSet<K> keySet() {
            return (SortedSet) super.keySet();
        }

        SortedMap<K, V> j() {
            return (SortedMap) this.f3656d;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.SortedMap
        public K lastKey() {
            SortedMap<K, V> sortedMapJ = j();
            while (true) {
                K kLastKey = sortedMapJ.lastKey();
                if (d(kLastKey, e2.a(this.f3656d.get(kLastKey)))) {
                    return kLastKey;
                }
                sortedMapJ = j().headMap(kLastKey);
            }
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> subMap(K k, K k2) {
            return new u(j().subMap(k, k2), this.f3657e);
        }

        @Override // java.util.SortedMap
        public SortedMap<K, V> tailMap(K k) {
            return new u(j().tailMap(k), this.f3657e);
        }
    }

    private static class v<K, V> extends m<K, V> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final com.google.common.base.k<? super K> f3662f;

        v(Map<K, V> map, com.google.common.base.k<? super K> kVar, com.google.common.base.k<? super Map.Entry<K, V>> kVar2) {
            super(map, kVar2);
            this.f3662f = kVar;
        }

        @Override // com.google.common.collect.Maps.o0
        protected Set<Map.Entry<K, V>> a() {
            return Sets.filter(this.f3656d.entrySet(), this.f3657e);
        }

        @Override // com.google.common.collect.Maps.o0
        /* JADX INFO: renamed from: b */
        Set<K> h() {
            return Sets.filter(this.f3656d.keySet(), this.f3662f);
        }

        @Override // com.google.common.collect.Maps.m, java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return this.f3656d.containsKey(obj) && this.f3662f.apply(obj);
        }
    }

    private static final class w<K, V> extends n0<K, V> {
        final Map<K, V> b;
        final com.google.common.base.k<? super Map.Entry<K, V>> c;

        w(Map<K, V> map, Map<K, V> map2, com.google.common.base.k<? super Map.Entry<K, V>> kVar) {
            super(map);
            this.b = map2;
            this.c = kVar;
        }

        @Override // com.google.common.collect.Maps.n0, java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            Iterator<Map.Entry<K, V>> it = this.b.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                if (this.c.apply(next) && Objects.equal(next.getValue(), obj)) {
                    it.remove();
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.common.collect.Maps.n0, java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            Iterator<Map.Entry<K, V>> it = this.b.entrySet().iterator();
            boolean z = false;
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                if (this.c.apply(next) && collection.contains(next.getValue())) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        @Override // com.google.common.collect.Maps.n0, java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            Iterator<Map.Entry<K, V>> it = this.b.entrySet().iterator();
            boolean z = false;
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                if (this.c.apply(next) && !collection.contains(next.getValue())) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return Lists.newArrayList(iterator()).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) Lists.newArrayList(iterator()).toArray(tArr);
        }
    }

    static abstract class x<K, V> extends AbstractMap<K, V> {

        class a extends p<K, V> {
            a() {
            }

            @Override // com.google.common.collect.Maps.p
            Map<K, V> i() {
                return x.this;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, V>> iterator() {
                return x.this.a();
            }
        }

        x() {
        }

        abstract Iterator<Map.Entry<K, V>> a();

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            Iterators.c(a());
        }

        @Override // java.util.AbstractMap, java.util.Map, java.util.SortedMap
        public Set<Map.Entry<K, V>> entrySet() {
            return new a();
        }
    }

    static class y<K, V> extends Sets.j<K> {
        final Map<K, V> a;

        y(Map<K, V> map) {
            this.a = (Map) Preconditions.checkNotNull(map);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            j().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return j().containsKey(obj);
        }

        /* JADX INFO: renamed from: i */
        Map<K, V> j() {
            return this.a;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return j().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return Maps.t(j().entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            j().remove(obj);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return j().size();
        }
    }

    static class z<K, V> implements a2<K, V> {
        final Map<K, V> a;
        final Map<K, V> b;
        final Map<K, V> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final Map<K, a2.a<V>> f3663d;

        z(Map<K, V> map, Map<K, V> map2, Map<K, V> map3, Map<K, a2.a<V>> map4) {
            this.a = Maps.J(map);
            this.b = Maps.J(map2);
            this.c = Maps.J(map3);
            this.f3663d = Maps.J(map4);
        }

        @Override // com.google.common.collect.a2
        public Map<K, V> a() {
            return this.b;
        }

        @Override // com.google.common.collect.a2
        public Map<K, V> b() {
            return this.a;
        }

        @Override // com.google.common.collect.a2
        public Map<K, a2.a<V>> c() {
            return this.f3663d;
        }

        @Override // com.google.common.collect.a2
        public Map<K, V> d() {
            return this.c;
        }

        public boolean e() {
            return this.a.isEmpty() && this.b.isEmpty() && this.f3663d.isEmpty();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a2)) {
                return false;
            }
            a2 a2Var = (a2) obj;
            return b().equals(a2Var.b()) && a().equals(a2Var.a()) && d().equals(a2Var.d()) && c().equals(a2Var.c());
        }

        public int hashCode() {
            return Objects.hashCode(b(), a(), d(), c());
        }

        public String toString() {
            if (e()) {
                return "equal";
            }
            StringBuilder sb = new StringBuilder("not equal");
            if (!this.a.isEmpty()) {
                sb.append(": only on left=");
                sb.append(this.a);
            }
            if (!this.b.isEmpty()) {
                sb.append(": only on right=");
                sb.append(this.b);
            }
            if (!this.f3663d.isEmpty()) {
                sb.append(": value differences=");
                sb.append(this.f3663d);
            }
            return sb.toString();
        }
    }

    private Maps() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> SortedSet<E> A(SortedSet<E> sortedSet) {
        return new h(sortedSet);
    }

    static boolean B(Map<?, ?> map, Object obj) {
        Preconditions.checkNotNull(map);
        try {
            return map.containsKey(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    static <V> V C(Map<?, V> map, Object obj) {
        Preconditions.checkNotNull(map);
        try {
            return map.get(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return null;
        }
    }

    static <V> V D(Map<?, V> map, Object obj) {
        Preconditions.checkNotNull(map);
        try {
            return map.remove(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return null;
        }
    }

    static String E(Map<?, ?> map) {
        StringBuilder sbE = Collections2.e(map.size());
        sbE.append('{');
        boolean z2 = true;
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            if (!z2) {
                sbE.append(", ");
            }
            z2 = false;
            sbE.append(entry.getKey());
            sbE.append(b4.R);
            sbE.append(entry.getValue());
        }
        sbE.append('}');
        return sbE.toString();
    }

    static <V2, K, V1> Map.Entry<K, V2> F(q<? super K, ? super V1, V2> qVar, Map.Entry<K, V1> entry) {
        Preconditions.checkNotNull(qVar);
        Preconditions.checkNotNull(entry);
        return new b(entry, qVar);
    }

    static <K, V> Map.Entry<K, V> G(Map.Entry<? extends K, ? extends V> entry) {
        Preconditions.checkNotNull(entry);
        return new j(entry);
    }

    static <K, V> o3<Map.Entry<K, V>> H(Iterator<Map.Entry<K, V>> it) {
        return new k(it);
    }

    static <K, V> Set<Map.Entry<K, V>> I(Set<Map.Entry<K, V>> set) {
        return new k0(Collections.unmodifiableSet(set));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> Map<K, V> J(Map<K, ? extends V> map) {
        return map instanceof SortedMap ? Collections.unmodifiableSortedMap((SortedMap) map) : Collections.unmodifiableMap(map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> Map.Entry<K, V> K(Map.Entry<K, ? extends V> entry) {
        if (entry == null) {
            return null;
        }
        return G(entry);
    }

    static <V> com.google.common.base.f<Map.Entry<?, V>, V> L() {
        return EntryFunction.b;
    }

    static <K, V> Iterator<V> M(Iterator<Map.Entry<K, V>> it) {
        return new e(it);
    }

    static <V> com.google.common.base.k<Map.Entry<?, V>> N(com.google.common.base.k<? super V> kVar) {
        return Predicates.compose(kVar, L());
    }

    public static <A, B> Converter<A, B> asConverter(com.google.common.collect.w<A, B> wVar) {
        return new o(wVar);
    }

    public static <K, V> Map<K, V> asMap(Set<K> set, com.google.common.base.f<? super K, V> fVar) {
        return new n(set, fVar);
    }

    public static <K, V> NavigableMap<K, V> asMap(NavigableSet<K> navigableSet, com.google.common.base.f<? super K, V> fVar) {
        return new a0(navigableSet, fVar);
    }

    public static <K, V> SortedMap<K, V> asMap(SortedSet<K> sortedSet, com.google.common.base.f<? super K, V> fVar) {
        return new c0(sortedSet, fVar);
    }

    public static <K, V> a2<K, V> difference(Map<? extends K, ? extends V> map, Map<? extends K, ? extends V> map2) {
        return map instanceof SortedMap ? difference((SortedMap) map, (Map) map2) : difference(map, map2, Equivalence.equals());
    }

    public static <K, V> a2<K, V> difference(Map<? extends K, ? extends V> map, Map<? extends K, ? extends V> map2, Equivalence<? super V> equivalence) {
        Preconditions.checkNotNull(equivalence);
        LinkedHashMap linkedHashMapNewLinkedHashMap = newLinkedHashMap();
        LinkedHashMap linkedHashMap = new LinkedHashMap(map2);
        LinkedHashMap linkedHashMapNewLinkedHashMap2 = newLinkedHashMap();
        LinkedHashMap linkedHashMapNewLinkedHashMap3 = newLinkedHashMap();
        l(map, map2, equivalence, linkedHashMapNewLinkedHashMap, linkedHashMap, linkedHashMapNewLinkedHashMap2, linkedHashMapNewLinkedHashMap3);
        return new z(linkedHashMapNewLinkedHashMap, linkedHashMap, linkedHashMapNewLinkedHashMap2, linkedHashMapNewLinkedHashMap3);
    }

    public static <K, V> d3<K, V> difference(SortedMap<K, ? extends V> sortedMap, Map<? extends K, ? extends V> map) {
        Preconditions.checkNotNull(sortedMap);
        Preconditions.checkNotNull(map);
        Comparator comparatorW = w(sortedMap.comparator());
        TreeMap treeMapNewTreeMap = newTreeMap(comparatorW);
        TreeMap treeMapNewTreeMap2 = newTreeMap(comparatorW);
        treeMapNewTreeMap2.putAll(map);
        TreeMap treeMapNewTreeMap3 = newTreeMap(comparatorW);
        TreeMap treeMapNewTreeMap4 = newTreeMap(comparatorW);
        l(sortedMap, map, Equivalence.equals(), treeMapNewTreeMap, treeMapNewTreeMap2, treeMapNewTreeMap3, treeMapNewTreeMap4);
        return new e0(treeMapNewTreeMap, treeMapNewTreeMap2, treeMapNewTreeMap3, treeMapNewTreeMap4);
    }

    static <K, V1, V2> com.google.common.base.f<Map.Entry<K, V1>, Map.Entry<K, V2>> f(q<? super K, ? super V1, V2> qVar) {
        Preconditions.checkNotNull(qVar);
        return new c(qVar);
    }

    public static <K, V> com.google.common.collect.w<K, V> filterEntries(com.google.common.collect.w<K, V> wVar, com.google.common.base.k<? super Map.Entry<K, V>> kVar) {
        Preconditions.checkNotNull(wVar);
        Preconditions.checkNotNull(kVar);
        return wVar instanceof r ? n((r) wVar, kVar) : new r(wVar, kVar);
    }

    public static <K, V> Map<K, V> filterEntries(Map<K, V> map, com.google.common.base.k<? super Map.Entry<K, V>> kVar) {
        Preconditions.checkNotNull(kVar);
        return map instanceof m ? o((m) map, kVar) : new s((Map) Preconditions.checkNotNull(map), kVar);
    }

    public static <K, V> NavigableMap<K, V> filterEntries(NavigableMap<K, V> navigableMap, com.google.common.base.k<? super Map.Entry<K, V>> kVar) {
        Preconditions.checkNotNull(kVar);
        return navigableMap instanceof t ? p((t) navigableMap, kVar) : new t((NavigableMap) Preconditions.checkNotNull(navigableMap), kVar);
    }

    public static <K, V> SortedMap<K, V> filterEntries(SortedMap<K, V> sortedMap, com.google.common.base.k<? super Map.Entry<K, V>> kVar) {
        Preconditions.checkNotNull(kVar);
        return sortedMap instanceof u ? q((u) sortedMap, kVar) : new u((SortedMap) Preconditions.checkNotNull(sortedMap), kVar);
    }

    public static <K, V> com.google.common.collect.w<K, V> filterKeys(com.google.common.collect.w<K, V> wVar, com.google.common.base.k<? super K> kVar) {
        Preconditions.checkNotNull(kVar);
        return filterEntries((com.google.common.collect.w) wVar, v(kVar));
    }

    public static <K, V> Map<K, V> filterKeys(Map<K, V> map, com.google.common.base.k<? super K> kVar) {
        Preconditions.checkNotNull(kVar);
        com.google.common.base.k kVarV = v(kVar);
        return map instanceof m ? o((m) map, kVarV) : new v((Map) Preconditions.checkNotNull(map), kVar, kVarV);
    }

    public static <K, V> NavigableMap<K, V> filterKeys(NavigableMap<K, V> navigableMap, com.google.common.base.k<? super K> kVar) {
        return filterEntries((NavigableMap) navigableMap, v(kVar));
    }

    public static <K, V> SortedMap<K, V> filterKeys(SortedMap<K, V> sortedMap, com.google.common.base.k<? super K> kVar) {
        return filterEntries((SortedMap) sortedMap, v(kVar));
    }

    public static <K, V> com.google.common.collect.w<K, V> filterValues(com.google.common.collect.w<K, V> wVar, com.google.common.base.k<? super V> kVar) {
        return filterEntries((com.google.common.collect.w) wVar, N(kVar));
    }

    public static <K, V> Map<K, V> filterValues(Map<K, V> map, com.google.common.base.k<? super V> kVar) {
        return filterEntries(map, N(kVar));
    }

    public static <K, V> NavigableMap<K, V> filterValues(NavigableMap<K, V> navigableMap, com.google.common.base.k<? super V> kVar) {
        return filterEntries((NavigableMap) navigableMap, N(kVar));
    }

    public static <K, V> SortedMap<K, V> filterValues(SortedMap<K, V> sortedMap, com.google.common.base.k<? super V> kVar) {
        return filterEntries((SortedMap) sortedMap, N(kVar));
    }

    public static ImmutableMap<String, String> fromProperties(Properties properties) {
        ImmutableMap.b bVarBuilder = ImmutableMap.builder();
        Enumeration<?> enumerationPropertyNames = properties.propertyNames();
        while (enumerationPropertyNames.hasMoreElements()) {
            Object objNextElement = enumerationPropertyNames.nextElement();
            java.util.Objects.requireNonNull(objNextElement);
            String str = (String) objNextElement;
            String property = properties.getProperty(str);
            java.util.Objects.requireNonNull(property);
            bVarBuilder.g(str, property);
        }
        return bVarBuilder.d();
    }

    static <K, V1, V2> q<K, V1, V2> g(com.google.common.base.f<? super V1, V2> fVar) {
        Preconditions.checkNotNull(fVar);
        return new l(fVar);
    }

    static <K, V> Iterator<Map.Entry<K, V>> h(Set<K> set, com.google.common.base.f<? super K, V> fVar) {
        return new f(set.iterator(), fVar);
    }

    static <K, V1, V2> com.google.common.base.f<V1, V2> i(q<? super K, V1, V2> qVar, K k2) {
        Preconditions.checkNotNull(qVar);
        return new a(qVar, k2);
    }

    public static <K, V> Map.Entry<K, V> immutableEntry(K k2, V v2) {
        return new o1(k2, v2);
    }

    public static <K extends Enum<K>, V> ImmutableMap<K, V> immutableEnumMap(Map<K, ? extends V> map) {
        if (map instanceof p1) {
            return (p1) map;
        }
        Iterator<Map.Entry<K, ? extends V>> it = map.entrySet().iterator();
        if (!it.hasNext()) {
            return ImmutableMap.of();
        }
        Map.Entry<K, ? extends V> next = it.next();
        K key = next.getKey();
        V value = next.getValue();
        com.google.common.collect.z.a(key, value);
        EnumMap enumMap = new EnumMap(key.getDeclaringClass());
        enumMap.put((Enum) key, (Object) value);
        while (it.hasNext()) {
            Map.Entry<K, ? extends V> next2 = it.next();
            K key2 = next2.getKey();
            V value2 = next2.getValue();
            com.google.common.collect.z.a(key2, value2);
            enumMap.put((Enum) key2, (Object) value2);
        }
        return p1.q(enumMap);
    }

    static int j(int i2) {
        if (i2 < 3) {
            com.google.common.collect.z.b(i2, "expectedSize");
            return i2 + 1;
        }
        if (i2 < 1073741824) {
            return (int) ((i2 / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    static <K, V> boolean k(Collection<Map.Entry<K, V>> collection, Object obj) {
        if (obj instanceof Map.Entry) {
            return collection.contains(G((Map.Entry) obj));
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <K, V> void l(Map<? extends K, ? extends V> map, Map<? extends K, ? extends V> map2, Equivalence<? super V> equivalence, Map<K, V> map3, Map<K, V> map4, Map<K, V> map5, Map<K, a2.a<V>> map6) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            K key = entry.getKey();
            V value = entry.getValue();
            if (map2.containsKey(key)) {
                UniversalRequestStoreOuterClass.UniversalRequestStore.a aVar = (Object) e2.a(map4.remove(key));
                if (equivalence.c(value, aVar)) {
                    map5.put(key, value);
                } else {
                    map6.put(key, m0.c(value, aVar));
                }
            } else {
                map3.put(key, value);
            }
        }
    }

    static boolean m(Map<?, ?> map, Object obj) {
        if (map == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return map.entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    private static <K, V> com.google.common.collect.w<K, V> n(r<K, V> rVar, com.google.common.base.k<? super Map.Entry<K, V>> kVar) {
        return new r(rVar.i(), Predicates.and(rVar.f3657e, kVar));
    }

    public static <K, V> ConcurrentMap<K, V> newConcurrentMap() {
        return new ConcurrentHashMap();
    }

    public static <K extends Enum<K>, V> EnumMap<K, V> newEnumMap(Class<K> cls) {
        return new EnumMap<>((Class) Preconditions.checkNotNull(cls));
    }

    public static <K extends Enum<K>, V> EnumMap<K, V> newEnumMap(Map<K, ? extends V> map) {
        return new EnumMap<>(map);
    }

    public static <K, V> HashMap<K, V> newHashMap() {
        return new HashMap<>();
    }

    public static <K, V> HashMap<K, V> newHashMap(Map<? extends K, ? extends V> map) {
        return new HashMap<>(map);
    }

    public static <K, V> HashMap<K, V> newHashMapWithExpectedSize(int i2) {
        return new HashMap<>(j(i2));
    }

    public static <K, V> IdentityHashMap<K, V> newIdentityHashMap() {
        return new IdentityHashMap<>();
    }

    public static <K, V> LinkedHashMap<K, V> newLinkedHashMap() {
        return new LinkedHashMap<>();
    }

    public static <K, V> LinkedHashMap<K, V> newLinkedHashMap(Map<? extends K, ? extends V> map) {
        return new LinkedHashMap<>(map);
    }

    public static <K, V> LinkedHashMap<K, V> newLinkedHashMapWithExpectedSize(int i2) {
        return new LinkedHashMap<>(j(i2));
    }

    public static <K extends Comparable, V> TreeMap<K, V> newTreeMap() {
        return new TreeMap<>();
    }

    public static <C, K extends C, V> TreeMap<K, V> newTreeMap(Comparator<C> comparator) {
        return new TreeMap<>(comparator);
    }

    public static <K, V> TreeMap<K, V> newTreeMap(SortedMap<K, ? extends V> sortedMap) {
        return new TreeMap<>((SortedMap) sortedMap);
    }

    private static <K, V> Map<K, V> o(m<K, V> mVar, com.google.common.base.k<? super Map.Entry<K, V>> kVar) {
        return new s(mVar.f3656d, Predicates.and(mVar.f3657e, kVar));
    }

    private static <K, V> NavigableMap<K, V> p(t<K, V> tVar, com.google.common.base.k<? super Map.Entry<K, V>> kVar) {
        return new t(((t) tVar).a, Predicates.and(((t) tVar).b, kVar));
    }

    private static <K, V> SortedMap<K, V> q(u<K, V> uVar, com.google.common.base.k<? super Map.Entry<K, V>> kVar) {
        return new u(uVar.j(), Predicates.and(uVar.f3657e, kVar));
    }

    static <E> ImmutableMap<E, Integer> r(Collection<E> collection) {
        ImmutableMap.b bVar = new ImmutableMap.b(collection.size());
        Iterator<E> it = collection.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            bVar.g(it.next(), Integer.valueOf(i2));
            i2++;
        }
        return bVar.d();
    }

    static <K> com.google.common.base.f<Map.Entry<K, ?>, K> s() {
        return EntryFunction.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <K extends Comparable<? super K>, V> NavigableMap<K, V> subMap(NavigableMap<K, V> navigableMap, Range<K> range) {
        if (navigableMap.comparator() != null && navigableMap.comparator() != Ordering.natural() && range.f() && range.g()) {
            Preconditions.checkArgument(navigableMap.comparator().compare(range.n(), range.t()) <= 0, "map is using a custom comparator which is inconsistent with the natural ordering.");
        }
        if (range.f() && range.g()) {
            Comparable comparableN = range.n();
            BoundType boundTypeM = range.m();
            BoundType boundType = BoundType.CLOSED;
            return navigableMap.subMap(comparableN, boundTypeM == boundType, range.t(), range.s() == boundType);
        }
        if (range.f()) {
            return navigableMap.tailMap(range.n(), range.m() == BoundType.CLOSED);
        }
        if (range.g()) {
            return navigableMap.headMap(range.t(), range.s() == BoundType.CLOSED);
        }
        return (NavigableMap) Preconditions.checkNotNull(navigableMap);
    }

    public static <K, V> com.google.common.collect.w<K, V> synchronizedBiMap(com.google.common.collect.w<K, V> wVar) {
        return k3.g(wVar, null);
    }

    public static <K, V> NavigableMap<K, V> synchronizedNavigableMap(NavigableMap<K, V> navigableMap) {
        return k3.n(navigableMap);
    }

    static <K, V> Iterator<K> t(Iterator<Map.Entry<K, V>> it) {
        return new d(it);
    }

    public static <K, V> ImmutableMap<K, V> toMap(Iterable<K> iterable, com.google.common.base.f<? super K, V> fVar) {
        return toMap(iterable.iterator(), fVar);
    }

    public static <K, V> ImmutableMap<K, V> toMap(Iterator<K> it, com.google.common.base.f<? super K, V> fVar) {
        Preconditions.checkNotNull(fVar);
        ImmutableMap.b bVarBuilder = ImmutableMap.builder();
        while (it.hasNext()) {
            K next = it.next();
            bVarBuilder.g(next, fVar.apply(next));
        }
        return bVarBuilder.c();
    }

    public static <K, V1, V2> Map<K, V2> transformEntries(Map<K, V1> map, q<? super K, ? super V1, V2> qVar) {
        return new f0(map, qVar);
    }

    public static <K, V1, V2> NavigableMap<K, V2> transformEntries(NavigableMap<K, V1> navigableMap, q<? super K, ? super V1, V2> qVar) {
        return new g0(navigableMap, qVar);
    }

    public static <K, V1, V2> SortedMap<K, V2> transformEntries(SortedMap<K, V1> sortedMap, q<? super K, ? super V1, V2> qVar) {
        return new h0(sortedMap, qVar);
    }

    public static <K, V1, V2> Map<K, V2> transformValues(Map<K, V1> map, com.google.common.base.f<? super V1, V2> fVar) {
        return transformEntries(map, g(fVar));
    }

    public static <K, V1, V2> NavigableMap<K, V2> transformValues(NavigableMap<K, V1> navigableMap, com.google.common.base.f<? super V1, V2> fVar) {
        return transformEntries((NavigableMap) navigableMap, g(fVar));
    }

    public static <K, V1, V2> SortedMap<K, V2> transformValues(SortedMap<K, V1> sortedMap, com.google.common.base.f<? super V1, V2> fVar) {
        return transformEntries((SortedMap) sortedMap, g(fVar));
    }

    static <K> K u(Map.Entry<K, ?> entry) {
        if (entry == null) {
            return null;
        }
        return entry.getKey();
    }

    public static <K, V> ImmutableMap<K, V> uniqueIndex(Iterable<V> iterable, com.google.common.base.f<? super V, K> fVar) {
        return uniqueIndex(iterable.iterator(), fVar);
    }

    public static <K, V> ImmutableMap<K, V> uniqueIndex(Iterator<V> it, com.google.common.base.f<? super V, K> fVar) {
        Preconditions.checkNotNull(fVar);
        ImmutableMap.b bVarBuilder = ImmutableMap.builder();
        while (it.hasNext()) {
            V next = it.next();
            bVarBuilder.g(fVar.apply(next), next);
        }
        try {
            return bVarBuilder.d();
        } catch (IllegalArgumentException e2) {
            throw new IllegalArgumentException(String.valueOf(e2.getMessage()).concat(". To index multiple values under a key, use Multimaps.index."));
        }
    }

    public static <K, V> com.google.common.collect.w<K, V> unmodifiableBiMap(com.google.common.collect.w<? extends K, ? extends V> wVar) {
        return new i0(wVar, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <K, V> NavigableMap<K, V> unmodifiableNavigableMap(NavigableMap<K, ? extends V> navigableMap) {
        Preconditions.checkNotNull(navigableMap);
        return navigableMap instanceof l0 ? navigableMap : new l0(navigableMap);
    }

    static <K> com.google.common.base.k<Map.Entry<K, ?>> v(com.google.common.base.k<? super K> kVar) {
        return Predicates.compose(kVar, s());
    }

    static <E> Comparator<? super E> w(Comparator<? super E> comparator) {
        return comparator != null ? comparator : Ordering.natural();
    }

    static <K, V> boolean x(Collection<Map.Entry<K, V>> collection, Object obj) {
        if (obj instanceof Map.Entry) {
            return collection.remove(G((Map.Entry) obj));
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> NavigableSet<E> y(NavigableSet<E> navigableSet) {
        return new i(navigableSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> Set<E> z(Set<E> set) {
        return new g(set);
    }
}
