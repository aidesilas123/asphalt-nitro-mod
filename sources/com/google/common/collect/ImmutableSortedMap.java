package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.n1;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.Objects;
import java.util.SortedMap;

/* JADX INFO: loaded from: classes3.dex */
public final class ImmutableSortedMap<K, V> extends ImmutableSortedMapFauxverideShim<K, V> implements NavigableMap<K, V> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Comparator<Comparable> f3591e = Ordering.natural();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final ImmutableSortedMap<Comparable, Object> f3592f = new ImmutableSortedMap<>(ImmutableSortedSet.F(Ordering.natural()), ImmutableList.of());
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final transient t2<K> f3593g;
    private final transient ImmutableList<V> h;
    private transient ImmutableSortedMap<K, V> i;

    class a implements Comparator<Map.Entry<K, V>> {
        final /* synthetic */ Comparator a;

        a(Comparator comparator) {
            this.a = comparator;
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(Map.Entry<K, V> entry, Map.Entry<K, V> entry2) {
            Objects.requireNonNull(entry);
            Objects.requireNonNull(entry2);
            return this.a.compare(entry.getKey(), entry2.getKey());
        }
    }

    class b extends r1<K, V> {

        class a extends ImmutableList<Map.Entry<K, V>> {
            a() {
            }

            @Override // java.util.List
            /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
            public Map.Entry<K, V> get(int i) {
                return new AbstractMap.SimpleImmutableEntry(ImmutableSortedMap.this.f3593g.e().get(i), ImmutableSortedMap.this.h.get(i));
            }

            @Override // com.google.common.collect.n1
            boolean j() {
                return true;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return ImmutableSortedMap.this.size();
            }
        }

        b() {
        }

        @Override // com.google.common.collect.r1
        ImmutableMap<K, V> B() {
            return ImmutableSortedMap.this;
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        /* JADX INFO: renamed from: n */
        public o3<Map.Entry<K, V>> iterator() {
            return e().iterator();
        }

        @Override // com.google.common.collect.ImmutableSet
        ImmutableList<Map.Entry<K, V>> y() {
            return new a();
        }
    }

    public static class c<K, V> extends ImmutableMap.b<K, V> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private transient Object[] f3594f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private transient Object[] f3595g;
        private final Comparator<? super K> h;

        public c(Comparator<? super K> comparator) {
            this(comparator, 4);
        }

        private c(Comparator<? super K> comparator, int i) {
            this.h = (Comparator) Preconditions.checkNotNull(comparator);
            this.f3594f = new Object[i];
            this.f3595g = new Object[i];
        }

        private void e(int i) {
            Object[] objArr = this.f3594f;
            if (i > objArr.length) {
                int iE = n1.b.e(objArr.length, i);
                this.f3594f = Arrays.copyOf(this.f3594f, iE);
                this.f3595g = Arrays.copyOf(this.f3595g, iE);
            }
        }

        @Override // com.google.common.collect.ImmutableMap.b
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public ImmutableSortedMap<K, V> a() {
            return d();
        }

        @Override // com.google.common.collect.ImmutableMap.b
        @Deprecated
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public final ImmutableSortedMap<K, V> c() {
            throw new UnsupportedOperationException("ImmutableSortedMap.Builder does not yet implement buildKeepingLast()");
        }

        @Override // com.google.common.collect.ImmutableMap.b
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public ImmutableSortedMap<K, V> d() {
            int i = this.c;
            if (i == 0) {
                return ImmutableSortedMap.v(this.h);
            }
            if (i == 1) {
                Comparator<? super K> comparator = this.h;
                Object obj = this.f3594f[0];
                Objects.requireNonNull(obj);
                Object obj2 = this.f3595g[0];
                Objects.requireNonNull(obj2);
                return ImmutableSortedMap.F(comparator, obj, obj2);
            }
            Object[] objArrCopyOf = Arrays.copyOf(this.f3594f, i);
            Arrays.sort(objArrCopyOf, this.h);
            Object[] objArr = new Object[this.c];
            for (int i2 = 0; i2 < this.c; i2++) {
                if (i2 > 0) {
                    int i3 = i2 - 1;
                    if (this.h.compare(objArrCopyOf[i3], objArrCopyOf[i2]) == 0) {
                        String strValueOf = String.valueOf(objArrCopyOf[i3]);
                        String strValueOf2 = String.valueOf(objArrCopyOf[i2]);
                        StringBuilder sb = new StringBuilder(strValueOf.length() + 57 + strValueOf2.length());
                        sb.append("keys required to be distinct but compared as equal: ");
                        sb.append(strValueOf);
                        sb.append(" and ");
                        sb.append(strValueOf2);
                        throw new IllegalArgumentException(sb.toString());
                    }
                }
                Object obj3 = this.f3594f[i2];
                Objects.requireNonNull(obj3);
                int iBinarySearch = Arrays.binarySearch(objArrCopyOf, obj3, this.h);
                Object obj4 = this.f3595g[i2];
                Objects.requireNonNull(obj4);
                objArr[iBinarySearch] = obj4;
            }
            return new ImmutableSortedMap<>(new t2(ImmutableList.r(objArrCopyOf), this.h), ImmutableList.r(objArr));
        }

        @Override // com.google.common.collect.ImmutableMap.b
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public c<K, V> g(K k, V v) {
            e(this.c + 1);
            z.a(k, v);
            Object[] objArr = this.f3594f;
            int i = this.c;
            objArr[i] = k;
            this.f3595g[i] = v;
            this.c = i + 1;
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.b
        /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
        public c<K, V> h(Map.Entry<? extends K, ? extends V> entry) {
            super.h(entry);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMap.b
        /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
        public c<K, V> i(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            super.i(iterable);
            return this;
        }
    }

    private static class d<K, V> extends ImmutableMap.d<K, V> {
        private static final long serialVersionUID = 0;
        private final Comparator<? super K> c;

        d(ImmutableSortedMap<K, V> immutableSortedMap) {
            super(immutableSortedMap);
            this.c = immutableSortedMap.comparator();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ImmutableMap.d
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public c<K, V> d(int i) {
            return new c<>(this.c);
        }
    }

    ImmutableSortedMap(t2<K> t2Var, ImmutableList<V> immutableList) {
        this(t2Var, immutableList, null);
    }

    ImmutableSortedMap(t2<K> t2Var, ImmutableList<V> immutableList, ImmutableSortedMap<K, V> immutableSortedMap) {
        this.f3593g = t2Var;
        this.h = immutableList;
        this.i = immutableSortedMap;
    }

    private ImmutableSortedMap<K, V> A(int i, int i2) {
        return (i == 0 && i2 == size()) ? this : i == i2 ? v(comparator()) : new ImmutableSortedMap<>(this.f3593g.W(i, i2), this.h.subList(i, i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <K, V> ImmutableSortedMap<K, V> F(Comparator<? super K> comparator, K k, V v) {
        return new ImmutableSortedMap<>(new t2(ImmutableList.of(k), (Comparator) Preconditions.checkNotNull(comparator)), ImmutableList.of(v));
    }

    public static <K, V> ImmutableSortedMap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return copyOf(iterable, (Ordering) f3591e);
    }

    public static <K, V> ImmutableSortedMap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable, Comparator<? super K> comparator) {
        return w((Comparator) Preconditions.checkNotNull(comparator), false, iterable);
    }

    public static <K, V> ImmutableSortedMap<K, V> copyOf(Map<? extends K, ? extends V> map) {
        return s(map, (Ordering) f3591e);
    }

    public static <K, V> ImmutableSortedMap<K, V> copyOf(Map<? extends K, ? extends V> map, Comparator<? super K> comparator) {
        return s(map, (Comparator) Preconditions.checkNotNull(comparator));
    }

    public static <K, V> ImmutableSortedMap<K, V> copyOfSorted(SortedMap<K, ? extends V> sortedMap) {
        Comparator<? super K> comparator = sortedMap.comparator();
        if (comparator == null) {
            comparator = f3591e;
        }
        if (sortedMap instanceof ImmutableSortedMap) {
            ImmutableSortedMap<K, V> immutableSortedMap = (ImmutableSortedMap) sortedMap;
            if (!immutableSortedMap.j()) {
                return immutableSortedMap;
            }
        }
        return w(comparator, true, sortedMap.entrySet());
    }

    public static <K extends Comparable<?>, V> c<K, V> naturalOrder() {
        return new c<>(Ordering.natural());
    }

    public static <K, V> ImmutableSortedMap<K, V> of() {
        return (ImmutableSortedMap<K, V>) f3592f;
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj) {
        return F(Ordering.natural(), comparable, obj);
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj, Comparable comparable2, Object obj2) {
        return z(ImmutableMap.f(comparable, obj), ImmutableMap.f(comparable2, obj2));
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3) {
        return z(ImmutableMap.f(comparable, obj), ImmutableMap.f(comparable2, obj2), ImmutableMap.f(comparable3, obj3));
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3, Comparable comparable4, Object obj4) {
        return z(ImmutableMap.f(comparable, obj), ImmutableMap.f(comparable2, obj2), ImmutableMap.f(comparable3, obj3), ImmutableMap.f(comparable4, obj4));
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3, Comparable comparable4, Object obj4, Comparable comparable5, Object obj5) {
        return z(ImmutableMap.f(comparable, obj), ImmutableMap.f(comparable2, obj2), ImmutableMap.f(comparable3, obj3), ImmutableMap.f(comparable4, obj4), ImmutableMap.f(comparable5, obj5));
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3, Comparable comparable4, Object obj4, Comparable comparable5, Object obj5, Comparable comparable6, Object obj6) {
        return z(ImmutableMap.f(comparable, obj), ImmutableMap.f(comparable2, obj2), ImmutableMap.f(comparable3, obj3), ImmutableMap.f(comparable4, obj4), ImmutableMap.f(comparable5, obj5), ImmutableMap.f(comparable6, obj6));
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3, Comparable comparable4, Object obj4, Comparable comparable5, Object obj5, Comparable comparable6, Object obj6, Comparable comparable7, Object obj7) {
        return z(ImmutableMap.f(comparable, obj), ImmutableMap.f(comparable2, obj2), ImmutableMap.f(comparable3, obj3), ImmutableMap.f(comparable4, obj4), ImmutableMap.f(comparable5, obj5), ImmutableMap.f(comparable6, obj6), ImmutableMap.f(comparable7, obj7));
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3, Comparable comparable4, Object obj4, Comparable comparable5, Object obj5, Comparable comparable6, Object obj6, Comparable comparable7, Object obj7, Comparable comparable8, Object obj8) {
        return z(ImmutableMap.f(comparable, obj), ImmutableMap.f(comparable2, obj2), ImmutableMap.f(comparable3, obj3), ImmutableMap.f(comparable4, obj4), ImmutableMap.f(comparable5, obj5), ImmutableMap.f(comparable6, obj6), ImmutableMap.f(comparable7, obj7), ImmutableMap.f(comparable8, obj8));
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3, Comparable comparable4, Object obj4, Comparable comparable5, Object obj5, Comparable comparable6, Object obj6, Comparable comparable7, Object obj7, Comparable comparable8, Object obj8, Comparable comparable9, Object obj9) {
        return z(ImmutableMap.f(comparable, obj), ImmutableMap.f(comparable2, obj2), ImmutableMap.f(comparable3, obj3), ImmutableMap.f(comparable4, obj4), ImmutableMap.f(comparable5, obj5), ImmutableMap.f(comparable6, obj6), ImmutableMap.f(comparable7, obj7), ImmutableMap.f(comparable8, obj8), ImmutableMap.f(comparable9, obj9));
    }

    /* JADX WARN: Incorrect types in method signature: <K::Ljava/lang/Comparable<-TK;>;V:Ljava/lang/Object;>(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)Lcom/google/common/collect/ImmutableSortedMap<TK;TV;>; */
    public static ImmutableSortedMap of(Comparable comparable, Object obj, Comparable comparable2, Object obj2, Comparable comparable3, Object obj3, Comparable comparable4, Object obj4, Comparable comparable5, Object obj5, Comparable comparable6, Object obj6, Comparable comparable7, Object obj7, Comparable comparable8, Object obj8, Comparable comparable9, Object obj9, Comparable comparable10, Object obj10) {
        return z(ImmutableMap.f(comparable, obj), ImmutableMap.f(comparable2, obj2), ImmutableMap.f(comparable3, obj3), ImmutableMap.f(comparable4, obj4), ImmutableMap.f(comparable5, obj5), ImmutableMap.f(comparable6, obj6), ImmutableMap.f(comparable7, obj7), ImmutableMap.f(comparable8, obj8), ImmutableMap.f(comparable9, obj9), ImmutableMap.f(comparable10, obj10));
    }

    public static <K, V> c<K, V> orderedBy(Comparator<K> comparator) {
        return new c<>(comparator);
    }

    public static <K extends Comparable<?>, V> c<K, V> reverseOrder() {
        return new c<>(Ordering.natural().f());
    }

    private static <K, V> ImmutableSortedMap<K, V> s(Map<? extends K, ? extends V> map, Comparator<? super K> comparator) {
        boolean zEquals = false;
        if (map instanceof SortedMap) {
            Comparator<? super K> comparator2 = ((SortedMap) map).comparator();
            if (comparator2 != null) {
                zEquals = comparator.equals(comparator2);
            } else if (comparator == f3591e) {
                zEquals = true;
            }
        }
        if (zEquals && (map instanceof ImmutableSortedMap)) {
            ImmutableSortedMap<K, V> immutableSortedMap = (ImmutableSortedMap) map;
            if (!immutableSortedMap.j()) {
                return immutableSortedMap;
            }
        }
        return w(comparator, zEquals, map.entrySet());
    }

    static <K, V> ImmutableSortedMap<K, V> v(Comparator<? super K> comparator) {
        return Ordering.natural().equals(comparator) ? of() : new ImmutableSortedMap<>(ImmutableSortedSet.F(comparator), ImmutableList.of());
    }

    private static <K, V> ImmutableSortedMap<K, V> w(Comparator<? super K> comparator, boolean z, Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        Map.Entry[] entryArr = (Map.Entry[]) Iterables.g(iterable, ImmutableMap.a);
        return y(comparator, z, entryArr, entryArr.length);
    }

    private static <K, V> ImmutableSortedMap<K, V> y(Comparator<? super K> comparator, boolean z, Map.Entry<K, V>[] entryArr, int i) {
        if (i == 0) {
            return v(comparator);
        }
        if (i == 1) {
            Map.Entry<K, V> entry = entryArr[0];
            Objects.requireNonNull(entry);
            Map.Entry<K, V> entry2 = entry;
            return F(comparator, entry2.getKey(), entry2.getValue());
        }
        Object[] objArr = new Object[i];
        Object[] objArr2 = new Object[i];
        if (z) {
            for (int i2 = 0; i2 < i; i2++) {
                Map.Entry<K, V> entry3 = entryArr[i2];
                Objects.requireNonNull(entry3);
                Map.Entry<K, V> entry4 = entry3;
                K key = entry4.getKey();
                V value = entry4.getValue();
                z.a(key, value);
                objArr[i2] = key;
                objArr2[i2] = value;
            }
        } else {
            Arrays.sort(entryArr, 0, i, new a(comparator));
            Map.Entry<K, V> entry5 = entryArr[0];
            Objects.requireNonNull(entry5);
            Map.Entry<K, V> entry6 = entry5;
            Object key2 = entry6.getKey();
            objArr[0] = key2;
            objArr2[0] = entry6.getValue();
            z.a(objArr[0], objArr2[0]);
            int i3 = 1;
            while (i3 < i) {
                Map.Entry<K, V> entry7 = entryArr[i3 - 1];
                Objects.requireNonNull(entry7);
                Map.Entry<K, V> entry8 = entry7;
                Map.Entry<K, V> entry9 = entryArr[i3];
                Objects.requireNonNull(entry9);
                Map.Entry<K, V> entry10 = entry9;
                Object key3 = entry10.getKey();
                V value2 = entry10.getValue();
                z.a(key3, value2);
                objArr[i3] = key3;
                objArr2[i3] = value2;
                ImmutableMap.a(comparator.compare(key2, key3) != 0, "key", entry8, entry10);
                i3++;
                key2 = key3;
            }
        }
        return new ImmutableSortedMap<>(new t2(ImmutableList.r(objArr), comparator), ImmutableList.r(objArr2));
    }

    private static <K extends Comparable<? super K>, V> ImmutableSortedMap<K, V> z(Map.Entry<K, V>... entryArr) {
        return y(Ordering.natural(), false, entryArr, entryArr.length);
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public ImmutableSortedMap<K, V> headMap(K k) {
        return headMap(k, false);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // java.util.NavigableMap
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public ImmutableSortedMap<K, V> headMap(K k, boolean z) {
        return A(0, this.f3593g.X((K) Preconditions.checkNotNull(k), z));
    }

    @Override // com.google.common.collect.ImmutableMap
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public ImmutableSortedSet<K> keySet() {
        return this.f3593g;
    }

    @Override // java.util.NavigableMap
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public ImmutableSortedSet<K> navigableKeySet() {
        return this.f3593g;
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public ImmutableSortedMap<K, V> subMap(K k, K k2) {
        return subMap(k, true, k2, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.NavigableMap
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public ImmutableSortedMap<K, V> subMap(K k, boolean z, K k2, boolean z2) {
        Preconditions.checkNotNull(k);
        Preconditions.checkNotNull(k2);
        Preconditions.checkArgument(comparator().compare(k, k2) <= 0, "expected fromKey <= toKey but %s > %s", k, k2);
        return headMap(k2, z2).tailMap(k, z);
    }

    @Override // java.util.NavigableMap, java.util.SortedMap
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public ImmutableSortedMap<K, V> tailMap(K k) {
        return tailMap(k, true);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // java.util.NavigableMap
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public ImmutableSortedMap<K, V> tailMap(K k, boolean z) {
        return A(this.f3593g.Y((K) Preconditions.checkNotNull(k), z), size());
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<Map.Entry<K, V>> c() {
        return isEmpty() ? ImmutableSet.of() : new b();
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> ceilingEntry(K k) {
        return tailMap(k, true).firstEntry();
    }

    @Override // java.util.NavigableMap
    public K ceilingKey(K k) {
        return (K) Maps.u(ceilingEntry(k));
    }

    @Override // java.util.SortedMap
    public Comparator<? super K> comparator() {
        return keySet().comparator();
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<K> d() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.ImmutableMap
    n1<V> e() {
        throw new AssertionError("should never be called");
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> firstEntry() {
        if (isEmpty()) {
            return null;
        }
        return entrySet().e().get(0);
    }

    @Override // java.util.SortedMap
    public K firstKey() {
        return keySet().first();
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> floorEntry(K k) {
        return headMap(k, true).lastEntry();
    }

    @Override // java.util.NavigableMap
    public K floorKey(K k) {
        return (K) Maps.u(floorEntry(k));
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public V get(Object obj) {
        int iIndexOf = this.f3593g.indexOf(obj);
        if (iIndexOf == -1) {
            return null;
        }
        return this.h.get(iIndexOf);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    /* JADX INFO: renamed from: h */
    public ImmutableSet<Map.Entry<K, V>> entrySet() {
        return super.entrySet();
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> higherEntry(K k) {
        return tailMap(k, false).firstEntry();
    }

    @Override // java.util.NavigableMap
    public K higherKey(K k) {
        return (K) Maps.u(higherEntry(k));
    }

    @Override // com.google.common.collect.ImmutableMap
    boolean j() {
        return this.f3593g.j() || this.h.j();
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> lastEntry() {
        if (isEmpty()) {
            return null;
        }
        return entrySet().e().get(size() - 1);
    }

    @Override // java.util.SortedMap
    public K lastKey() {
        return keySet().last();
    }

    @Override // java.util.NavigableMap
    public Map.Entry<K, V> lowerEntry(K k) {
        return headMap(k, false).lastEntry();
    }

    @Override // java.util.NavigableMap
    public K lowerKey(K k) {
        return (K) Maps.u(lowerEntry(k));
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    /* JADX INFO: renamed from: n */
    public n1<V> values() {
        return this.h;
    }

    @Override // java.util.NavigableMap
    @Deprecated
    public final Map.Entry<K, V> pollFirstEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.NavigableMap
    @Deprecated
    public final Map.Entry<K, V> pollLastEntry() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public int size() {
        return this.h.size();
    }

    @Override // java.util.NavigableMap
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public ImmutableSortedSet<K> descendingKeySet() {
        return this.f3593g.descendingSet();
    }

    @Override // java.util.NavigableMap
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public ImmutableSortedMap<K, V> descendingMap() {
        ImmutableSortedMap<K, V> immutableSortedMap = this.i;
        return immutableSortedMap == null ? isEmpty() ? v(Ordering.from(comparator()).f()) : new ImmutableSortedMap<>((t2) this.f3593g.descendingSet(), this.h.z(), this) : immutableSortedMap;
    }

    @Override // com.google.common.collect.ImmutableMap
    Object writeReplace() {
        return new d(this);
    }
}
