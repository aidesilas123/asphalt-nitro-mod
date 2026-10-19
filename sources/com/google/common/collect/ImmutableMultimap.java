package com.google.common.collect;

import com.google.common.collect.y2;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ImmutableMultimap<K, V> extends v<K, V> implements Serializable {
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final transient ImmutableMap<K, ? extends n1<V>> f3584d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final transient int f3585e;

    class a extends o3<Map.Entry<K, V>> {
        final Iterator<? extends Map.Entry<K, ? extends n1<V>>> a;
        K b = null;
        Iterator<V> c = Iterators.f();

        a() {
            this.a = ImmutableMultimap.this.f3584d.entrySet().iterator();
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            if (!this.c.hasNext()) {
                Map.Entry<K, ? extends n1<V>> next = this.a.next();
                this.b = next.getKey();
                this.c = next.getValue().iterator();
            }
            K k = this.b;
            Objects.requireNonNull(k);
            return Maps.immutableEntry(k, this.c.next());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.c.hasNext() || this.a.hasNext();
        }
    }

    public static class b<K, V> {
        final Map<K, Collection<V>> a = i2.h();
        Comparator<? super K> b;
        Comparator<? super V> c;

        public ImmutableMultimap<K, V> a() {
            Collection collectionEntrySet = this.a.entrySet();
            Comparator<? super K> comparator = this.b;
            if (comparator != null) {
                collectionEntrySet = Ordering.from(comparator).d().a(collectionEntrySet);
            }
            return ImmutableListMultimap.u(collectionEntrySet, this.c);
        }

        Collection<V> b() {
            return new ArrayList();
        }

        public b<K, V> c(K k, V v) {
            z.a(k, v);
            Collection<V> collection = this.a.get(k);
            if (collection == null) {
                Map<K, Collection<V>> map = this.a;
                Collection<V> collectionB = b();
                map.put(k, collectionB);
                collection = collectionB;
            }
            collection.add(v);
            return this;
        }

        public b<K, V> d(Map.Entry<? extends K, ? extends V> entry) {
            return c(entry.getKey(), entry.getValue());
        }

        public b<K, V> e(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            Iterator<? extends Map.Entry<? extends K, ? extends V>> it = iterable.iterator();
            while (it.hasNext()) {
                d(it.next());
            }
            return this;
        }
    }

    private static class c<K, V> extends n1<Map.Entry<K, V>> {
        private static final long serialVersionUID = 0;
        final ImmutableMultimap<K, V> b;

        c(ImmutableMultimap<K, V> immutableMultimap) {
            this.b = immutableMultimap;
        }

        @Override // com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.b.A(entry.getKey(), entry.getValue());
        }

        @Override // com.google.common.collect.n1
        boolean j() {
            return this.b.r();
        }

        @Override // com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        /* JADX INFO: renamed from: n */
        public o3<Map.Entry<K, V>> iterator() {
            return this.b.h();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.b.size();
        }
    }

    static class d {
        static final y2.b<ImmutableMultimap> a = y2.a(ImmutableMultimap.class, "map");
        static final y2.b<ImmutableMultimap> b = y2.a(ImmutableMultimap.class, "size");
    }

    ImmutableMultimap(ImmutableMap<K, ? extends n1<V>> immutableMap, int i) {
        this.f3584d = immutableMap;
        this.f3585e = i;
    }

    public static <K, V> b<K, V> builder() {
        return new b<>();
    }

    public static <K, V> ImmutableMultimap<K, V> copyOf(b2<? extends K, ? extends V> b2Var) {
        if (b2Var instanceof ImmutableMultimap) {
            ImmutableMultimap<K, V> immutableMultimap = (ImmutableMultimap) b2Var;
            if (!immutableMultimap.r()) {
                return immutableMultimap;
            }
        }
        return ImmutableListMultimap.copyOf((b2) b2Var);
    }

    public static <K, V> ImmutableMultimap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return ImmutableListMultimap.copyOf((Iterable) iterable);
    }

    public static <K, V> ImmutableMultimap<K, V> of() {
        return ImmutableListMultimap.of();
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k, V v) {
        return ImmutableListMultimap.of((Object) k, (Object) v);
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k, V v, K k2, V v2) {
        return ImmutableListMultimap.of((Object) k, (Object) v, (Object) k2, (Object) v2);
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k, V v, K k2, V v2, K k3, V v3) {
        return ImmutableListMultimap.of((Object) k, (Object) v, (Object) k2, (Object) v2, (Object) k3, (Object) v3);
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4) {
        return ImmutableListMultimap.of((Object) k, (Object) v, (Object) k2, (Object) v2, (Object) k3, (Object) v3, (Object) k4, (Object) v4);
    }

    public static <K, V> ImmutableMultimap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
        return ImmutableListMultimap.of((Object) k, (Object) v, (Object) k2, (Object) v2, (Object) k3, (Object) v3, (Object) k4, (Object) v4, (Object) k5, (Object) v5);
    }

    @Override // com.google.common.collect.j, com.google.common.collect.b2
    public /* bridge */ /* synthetic */ boolean A(Object obj, Object obj2) {
        return super.A(obj, obj2);
    }

    @Override // com.google.common.collect.j
    Map<K, Collection<V>> c() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.b2
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.b2
    public boolean containsKey(Object obj) {
        return this.f3584d.containsKey(obj);
    }

    @Override // com.google.common.collect.j, com.google.common.collect.b2
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.j
    Set<K> g() {
        throw new AssertionError("unreachable");
    }

    @Override // com.google.common.collect.j, com.google.common.collect.b2
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.j, com.google.common.collect.b2
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // com.google.common.collect.j, com.google.common.collect.b2, com.google.common.collect.z1
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public ImmutableMap<K, Collection<V>> e() {
        return this.f3584d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.j
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public n1<Map.Entry<K, V>> d() {
        return new c(this);
    }

    @Override // com.google.common.collect.j, com.google.common.collect.b2
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public n1<Map.Entry<K, V>> f() {
        return (n1) super.f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.j
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public o3<Map.Entry<K, V>> h() {
        return new a();
    }

    @Override // com.google.common.collect.j, com.google.common.collect.b2
    @Deprecated
    public final boolean put(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.b2, com.google.common.collect.z1
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public abstract n1<V> get(K k);

    boolean r() {
        return this.f3584d.j();
    }

    @Override // com.google.common.collect.j, com.google.common.collect.b2
    @Deprecated
    public final boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.j, com.google.common.collect.b2
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public ImmutableSet<K> keySet() {
        return this.f3584d.keySet();
    }

    @Override // com.google.common.collect.b2
    public int size() {
        return this.f3585e;
    }

    @Override // com.google.common.collect.b2, com.google.common.collect.z1
    @Deprecated
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public n1<V> a(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.j
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }
}
