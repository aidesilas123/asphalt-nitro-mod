package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.Maps;
import java.io.Serializable;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes3.dex */
public class TreeBasedTable<R, C, V> extends i3<R, C, V> {
    private static final long serialVersionUID = 0;
    private final Comparator<? super C> h;

    class a extends AbstractIterator<C> {
        C c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Iterator f3712d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ Comparator f3713e;

        a(TreeBasedTable treeBasedTable, Iterator it, Comparator comparator) {
            this.f3712d = it;
            this.f3713e = comparator;
        }

        @Override // com.google.common.collect.AbstractIterator
        protected C b() {
            while (this.f3712d.hasNext()) {
                C c = (C) this.f3712d.next();
                C c2 = this.c;
                if (!(c2 != null && this.f3713e.compare(c, c2) == 0)) {
                    this.c = c;
                    return c;
                }
            }
            this.c = null;
            return c();
        }
    }

    private static class b<C, V> implements com.google.common.base.m<TreeMap<C, V>>, Serializable {
        private static final long serialVersionUID = 0;
        final Comparator<? super C> a;

        b(Comparator<? super C> comparator) {
            this.a = comparator;
        }

        @Override // com.google.common.base.m
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public TreeMap<C, V> get() {
            return new TreeMap<>(this.a);
        }
    }

    private class c extends j3<R, C, V>.g implements SortedMap<C, V> {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final C f3714d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final C f3715e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        transient SortedMap<C, V> f3716f;

        c(TreeBasedTable treeBasedTable, R r) {
            this(r, null, null);
        }

        c(R r, C c, C c2) {
            super(r);
            this.f3714d = c;
            this.f3715e = c2;
            Preconditions.checkArgument(c == null || c2 == null || f(c, c2) <= 0);
        }

        @Override // com.google.common.collect.j3.g
        void c() {
            k();
            SortedMap<C, V> sortedMap = this.f3716f;
            if (sortedMap == null || !sortedMap.isEmpty()) {
                return;
            }
            TreeBasedTable.this.c.remove(this.a);
            this.f3716f = null;
            this.b = null;
        }

        @Override // java.util.SortedMap
        public Comparator<? super C> comparator() {
            return TreeBasedTable.this.J();
        }

        @Override // com.google.common.collect.j3.g, java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return j(obj) && super.containsKey(obj);
        }

        int f(Object obj, Object obj2) {
            return comparator().compare(obj, obj2);
        }

        @Override // java.util.SortedMap
        public C firstKey() {
            d();
            Map<C, V> map = this.b;
            if (map != null) {
                return (C) ((SortedMap) map).firstKey();
            }
            throw new NoSuchElementException();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.j3.g
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public SortedMap<C, V> b() {
            k();
            SortedMap<C, V> sortedMapTailMap = this.f3716f;
            if (sortedMapTailMap == null) {
                return null;
            }
            C c = this.f3714d;
            if (c != null) {
                sortedMapTailMap = sortedMapTailMap.tailMap(c);
            }
            C c2 = this.f3715e;
            return c2 != null ? sortedMapTailMap.headMap(c2) : sortedMapTailMap;
        }

        @Override // java.util.SortedMap
        public SortedMap<C, V> headMap(C c) {
            Preconditions.checkArgument(j(Preconditions.checkNotNull(c)));
            return new c(this.a, this.f3714d, c);
        }

        @Override // java.util.AbstractMap, java.util.Map, java.util.SortedMap
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public SortedSet<C> keySet() {
            return new Maps.d0(this);
        }

        boolean j(Object obj) {
            C c;
            C c2;
            return obj != null && ((c = this.f3714d) == null || f(c, obj) <= 0) && ((c2 = this.f3715e) == null || f(c2, obj) > 0);
        }

        void k() {
            SortedMap<C, V> sortedMap = this.f3716f;
            if (sortedMap == null || (sortedMap.isEmpty() && TreeBasedTable.this.c.containsKey(this.a))) {
                this.f3716f = (SortedMap) TreeBasedTable.this.c.get(this.a);
            }
        }

        @Override // java.util.SortedMap
        public C lastKey() {
            d();
            Map<C, V> map = this.b;
            if (map != null) {
                return (C) ((SortedMap) map).lastKey();
            }
            throw new NoSuchElementException();
        }

        @Override // com.google.common.collect.j3.g, java.util.AbstractMap, java.util.Map
        public V put(C c, V v) {
            Preconditions.checkArgument(j(Preconditions.checkNotNull(c)));
            return (V) super.put(c, v);
        }

        @Override // java.util.SortedMap
        public SortedMap<C, V> subMap(C c, C c2) {
            Preconditions.checkArgument(j(Preconditions.checkNotNull(c)) && j(Preconditions.checkNotNull(c2)));
            return new c(this.a, c, c2);
        }

        @Override // java.util.SortedMap
        public SortedMap<C, V> tailMap(C c) {
            Preconditions.checkArgument(j(Preconditions.checkNotNull(c)));
            return new c(this.a, c, this.f3715e);
        }
    }

    TreeBasedTable(Comparator<? super R> comparator, Comparator<? super C> comparator2) {
        super(new TreeMap(comparator), new b(comparator2));
        this.h = comparator2;
    }

    public static <R extends Comparable, C extends Comparable, V> TreeBasedTable<R, C, V> create() {
        return new TreeBasedTable<>(Ordering.natural(), Ordering.natural());
    }

    public static <R, C, V> TreeBasedTable<R, C, V> create(TreeBasedTable<R, C, ? extends V> treeBasedTable) {
        TreeBasedTable<R, C, V> treeBasedTable2 = new TreeBasedTable<>(treeBasedTable.M(), treeBasedTable.J());
        treeBasedTable2.k(treeBasedTable);
        return treeBasedTable2;
    }

    public static <R, C, V> TreeBasedTable<R, C, V> create(Comparator<? super R> comparator, Comparator<? super C> comparator2) {
        Preconditions.checkNotNull(comparator);
        Preconditions.checkNotNull(comparator2);
        return new TreeBasedTable<>(comparator, comparator2);
    }

    @Override // com.google.common.collect.j3
    public /* bridge */ /* synthetic */ Object C(Object obj, Object obj2) {
        return super.C(obj, obj2);
    }

    @Deprecated
    public Comparator<? super C> J() {
        return this.h;
    }

    @Override // com.google.common.collect.j3
    /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
    public SortedMap<C, V> F(R r) {
        return new c(this, r);
    }

    @Deprecated
    public Comparator<? super R> M() {
        Comparator<? super R> comparator = h().comparator();
        Objects.requireNonNull(comparator);
        return comparator;
    }

    @Override // com.google.common.collect.j3, com.google.common.collect.s, com.google.common.collect.l3
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // com.google.common.collect.j3, com.google.common.collect.s, com.google.common.collect.l3
    public /* bridge */ /* synthetic */ boolean containsValue(Object obj) {
        return super.containsValue(obj);
    }

    @Override // com.google.common.collect.j3, com.google.common.collect.s
    public /* bridge */ /* synthetic */ boolean d(Object obj, Object obj2) {
        return super.d(obj, obj2);
    }

    @Override // com.google.common.collect.s, com.google.common.collect.l3
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.j3, com.google.common.collect.s
    public /* bridge */ /* synthetic */ Object g(Object obj, Object obj2) {
        return super.g(obj, obj2);
    }

    @Override // com.google.common.collect.i3, com.google.common.collect.j3, com.google.common.collect.l3
    public SortedSet<R> h() {
        return super.h();
    }

    @Override // com.google.common.collect.s, com.google.common.collect.l3
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.i3, com.google.common.collect.j3, com.google.common.collect.l3
    public SortedMap<R, Map<C, V>> j() {
        return super.j();
    }

    @Override // com.google.common.collect.s
    public /* bridge */ /* synthetic */ void k(l3 l3Var) {
        super.k(l3Var);
    }

    @Override // com.google.common.collect.j3, com.google.common.collect.l3
    public /* bridge */ /* synthetic */ Map n() {
        return super.n();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.j3
    public /* bridge */ /* synthetic */ Map s(Object obj) {
        return super.s(obj);
    }

    @Override // com.google.common.collect.j3, com.google.common.collect.l3
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // com.google.common.collect.j3, com.google.common.collect.s, com.google.common.collect.l3
    public /* bridge */ /* synthetic */ Set t() {
        return super.t();
    }

    @Override // com.google.common.collect.s
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.j3
    public /* bridge */ /* synthetic */ boolean u(Object obj) {
        return super.u(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.j3, com.google.common.collect.s, com.google.common.collect.l3
    public /* bridge */ /* synthetic */ Object v(Object obj, Object obj2, Object obj3) {
        return super.v(obj, obj2, obj3);
    }

    @Override // com.google.common.collect.j3, com.google.common.collect.s, com.google.common.collect.l3
    public /* bridge */ /* synthetic */ Collection values() {
        return super.values();
    }

    @Override // com.google.common.collect.j3
    public /* bridge */ /* synthetic */ boolean x(Object obj) {
        return super.x(obj);
    }

    @Override // com.google.common.collect.j3
    Iterator<C> y() {
        Comparator<? super C> comparatorJ = J();
        return new a(this, Iterators.mergeSorted(Iterables.transform(this.c.values(), new com.google.common.base.f() { // from class: com.google.common.collect.c
            @Override // com.google.common.base.f
            public final Object apply(Object obj) {
                return ((Map) obj).keySet().iterator();
            }
        }), comparatorJ), comparatorJ);
    }

    @Override // com.google.common.collect.j3, com.google.common.collect.l3
    public /* bridge */ /* synthetic */ Set z() {
        return super.z();
    }
}
