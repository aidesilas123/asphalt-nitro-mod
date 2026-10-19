package com.google.common.collect;

import com.google.common.collect.n1;
import com.json.o2;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.SortedMap;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ImmutableMap<K, V> implements Map<K, V>, Serializable {
    static final Map.Entry<?, ?>[] a = new Map.Entry[0];
    private transient ImmutableSet<Map.Entry<K, V>> b;
    private transient ImmutableSet<K> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private transient n1<V> f3581d;

    class a extends o3<K> {
        final /* synthetic */ o3 a;

        a(ImmutableMap immutableMap, o3 o3Var) {
            this.a = o3Var;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.a.hasNext();
        }

        @Override // java.util.Iterator
        public K next() {
            return (K) ((Map.Entry) this.a.next()).getKey();
        }
    }

    public static class b<K, V> {
        Comparator<? super V> a;
        Object[] b;
        int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f3582d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        a f3583e;

        static final class a {
            private final Object a;
            private final Object b;
            private final Object c;

            a(Object obj, Object obj2, Object obj3) {
                this.a = obj;
                this.b = obj2;
                this.c = obj3;
            }

            IllegalArgumentException a() {
                String strValueOf = String.valueOf(this.a);
                String strValueOf2 = String.valueOf(this.b);
                String strValueOf3 = String.valueOf(this.a);
                String strValueOf4 = String.valueOf(this.c);
                StringBuilder sb = new StringBuilder(strValueOf.length() + 39 + strValueOf2.length() + strValueOf3.length() + strValueOf4.length());
                sb.append("Multiple entries with same key: ");
                sb.append(strValueOf);
                sb.append(o2.i.b);
                sb.append(strValueOf2);
                sb.append(" and ");
                sb.append(strValueOf3);
                sb.append(o2.i.b);
                sb.append(strValueOf4);
                return new IllegalArgumentException(sb.toString());
            }
        }

        public b() {
            this(4);
        }

        b(int i) {
            this.b = new Object[i * 2];
            this.c = 0;
            this.f3582d = false;
        }

        private ImmutableMap<K, V> b(boolean z) {
            Object[] objArrF;
            a aVar;
            a aVar2;
            if (z && (aVar2 = this.f3583e) != null) {
                throw aVar2.a();
            }
            int length = this.c;
            if (this.a == null) {
                objArrF = this.b;
            } else {
                if (this.f3582d) {
                    this.b = Arrays.copyOf(this.b, length * 2);
                }
                objArrF = this.b;
                if (!z) {
                    objArrF = f(objArrF, this.c);
                    if (objArrF.length < this.b.length) {
                        length = objArrF.length >>> 1;
                    }
                }
                j(objArrF, length, this.a);
            }
            this.f3582d = true;
            p2 p2VarQ = p2.q(length, objArrF, this);
            if (!z || (aVar = this.f3583e) == null) {
                return p2VarQ;
            }
            throw aVar.a();
        }

        private void e(int i) {
            int i2 = i * 2;
            Object[] objArr = this.b;
            if (i2 > objArr.length) {
                this.b = Arrays.copyOf(objArr, n1.b.e(objArr.length, i2));
                this.f3582d = false;
            }
        }

        private Object[] f(Object[] objArr, int i) {
            HashSet hashSet = new HashSet();
            BitSet bitSet = new BitSet();
            for (int i2 = i - 1; i2 >= 0; i2--) {
                Object obj = objArr[i2 * 2];
                Objects.requireNonNull(obj);
                if (!hashSet.add(obj)) {
                    bitSet.set(i2);
                }
            }
            if (bitSet.isEmpty()) {
                return objArr;
            }
            Object[] objArr2 = new Object[(i - bitSet.cardinality()) * 2];
            int i3 = 0;
            int i4 = 0;
            while (i3 < i * 2) {
                if (bitSet.get(i3 >>> 1)) {
                    i3 += 2;
                } else {
                    int i5 = i4 + 1;
                    int i6 = i3 + 1;
                    Object obj2 = objArr[i3];
                    Objects.requireNonNull(obj2);
                    objArr2[i4] = obj2;
                    i4 = i5 + 1;
                    i3 = i6 + 1;
                    Object obj3 = objArr[i6];
                    Objects.requireNonNull(obj3);
                    objArr2[i5] = obj3;
                }
            }
            return objArr2;
        }

        static <V> void j(Object[] objArr, int i, Comparator<? super V> comparator) {
            Map.Entry[] entryArr = new Map.Entry[i];
            for (int i2 = 0; i2 < i; i2++) {
                int i3 = i2 * 2;
                Object obj = objArr[i3];
                Objects.requireNonNull(obj);
                Object obj2 = objArr[i3 + 1];
                Objects.requireNonNull(obj2);
                entryArr[i2] = new AbstractMap.SimpleImmutableEntry(obj, obj2);
            }
            Arrays.sort(entryArr, 0, i, Ordering.from(comparator).e(Maps.L()));
            for (int i4 = 0; i4 < i; i4++) {
                int i5 = i4 * 2;
                objArr[i5] = entryArr[i4].getKey();
                objArr[i5 + 1] = entryArr[i4].getValue();
            }
        }

        public ImmutableMap<K, V> a() {
            return d();
        }

        public ImmutableMap<K, V> c() {
            return b(false);
        }

        public ImmutableMap<K, V> d() {
            return b(true);
        }

        public b<K, V> g(K k, V v) {
            e(this.c + 1);
            z.a(k, v);
            Object[] objArr = this.b;
            int i = this.c;
            objArr[i * 2] = k;
            objArr[(i * 2) + 1] = v;
            this.c = i + 1;
            return this;
        }

        public b<K, V> h(Map.Entry<? extends K, ? extends V> entry) {
            return g(entry.getKey(), entry.getValue());
        }

        public b<K, V> i(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            if (iterable instanceof Collection) {
                e(this.c + ((Collection) iterable).size());
            }
            Iterator<? extends Map.Entry<? extends K, ? extends V>> it = iterable.iterator();
            while (it.hasNext()) {
                h(it.next());
            }
            return this;
        }
    }

    static abstract class c<K, V> extends ImmutableMap<K, V> {

        class a extends r1<K, V> {
            a() {
            }

            @Override // com.google.common.collect.r1
            ImmutableMap<K, V> B() {
                return c.this;
            }

            @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
            /* JADX INFO: renamed from: n */
            public o3<Map.Entry<K, V>> iterator() {
                return c.this.p();
            }
        }

        c() {
        }

        @Override // com.google.common.collect.ImmutableMap
        ImmutableSet<Map.Entry<K, V>> c() {
            return new a();
        }

        @Override // com.google.common.collect.ImmutableMap
        ImmutableSet<K> d() {
            return new s1(this);
        }

        @Override // com.google.common.collect.ImmutableMap
        n1<V> e() {
            return new t1(this);
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public /* bridge */ /* synthetic */ Set entrySet() {
            return super.entrySet();
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public /* bridge */ /* synthetic */ Set keySet() {
            return super.keySet();
        }

        abstract o3<Map.Entry<K, V>> p();

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public /* bridge */ /* synthetic */ Collection values() {
            return super.values();
        }
    }

    static class d<K, V> implements Serializable {
        private static final long serialVersionUID = 0;
        private final Object a;
        private final Object b;

        d(ImmutableMap<K, V> immutableMap) {
            Object[] objArr = new Object[immutableMap.size()];
            Object[] objArr2 = new Object[immutableMap.size()];
            o3<Map.Entry<K, V>> it = immutableMap.entrySet().iterator();
            int i = 0;
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                objArr[i] = next.getKey();
                objArr2[i] = next.getValue();
                i++;
            }
            this.a = objArr;
            this.b = objArr2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        final Object c() {
            Object[] objArr = (Object[]) this.a;
            Object[] objArr2 = (Object[]) this.b;
            b<K, V> bVarD = d(objArr.length);
            for (int i = 0; i < objArr.length; i++) {
                bVarD.g(objArr[i], objArr2[i]);
            }
            return bVarD.d();
        }

        b<K, V> d(int i) {
            return new b<>(i);
        }

        /* JADX WARN: Multi-variable type inference failed */
        final Object readResolve() {
            Object obj = this.a;
            if (!(obj instanceof ImmutableSet)) {
                return c();
            }
            ImmutableSet immutableSet = (ImmutableSet) obj;
            n1 n1Var = (n1) this.b;
            b<K, V> bVarD = d(immutableSet.size());
            Iterator it = immutableSet.iterator();
            o3 it2 = n1Var.iterator();
            while (it.hasNext()) {
                bVarD.g(it.next(), it2.next());
            }
            return bVarD.d();
        }
    }

    ImmutableMap() {
    }

    static void a(boolean z, String str, Object obj, Object obj2) {
        if (!z) {
            throw b(str, obj, obj2);
        }
    }

    static IllegalArgumentException b(String str, Object obj, Object obj2) {
        String strValueOf = String.valueOf(obj);
        String strValueOf2 = String.valueOf(obj2);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 34 + strValueOf.length() + strValueOf2.length());
        sb.append("Multiple entries with same ");
        sb.append(str);
        sb.append(": ");
        sb.append(strValueOf);
        sb.append(" and ");
        sb.append(strValueOf2);
        return new IllegalArgumentException(sb.toString());
    }

    public static <K, V> b<K, V> builder() {
        return new b<>();
    }

    public static <K, V> b<K, V> builderWithExpectedSize(int i) {
        z.b(i, "expectedSize");
        return new b<>(i);
    }

    public static <K, V> ImmutableMap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        b bVar = new b(iterable instanceof Collection ? ((Collection) iterable).size() : 4);
        bVar.i(iterable);
        return bVar.a();
    }

    public static <K, V> ImmutableMap<K, V> copyOf(Map<? extends K, ? extends V> map) {
        if ((map instanceof ImmutableMap) && !(map instanceof SortedMap)) {
            ImmutableMap<K, V> immutableMap = (ImmutableMap) map;
            if (!immutableMap.j()) {
                return immutableMap;
            }
        }
        return copyOf(map.entrySet());
    }

    static <K, V> Map.Entry<K, V> f(K k, V v) {
        z.a(k, v);
        return new AbstractMap.SimpleImmutableEntry(k, v);
    }

    public static <K, V> ImmutableMap<K, V> of() {
        return (ImmutableMap<K, V>) p2.f3815e;
    }

    public static <K, V> ImmutableMap<K, V> of(K k, V v) {
        z.a(k, v);
        return p2.p(1, new Object[]{k, v});
    }

    public static <K, V> ImmutableMap<K, V> of(K k, V v, K k2, V v2) {
        z.a(k, v);
        z.a(k2, v2);
        return p2.p(2, new Object[]{k, v, k2, v2});
    }

    public static <K, V> ImmutableMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3) {
        z.a(k, v);
        z.a(k2, v2);
        z.a(k3, v3);
        return p2.p(3, new Object[]{k, v, k2, v2, k3, v3});
    }

    public static <K, V> ImmutableMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4) {
        z.a(k, v);
        z.a(k2, v2);
        z.a(k3, v3);
        z.a(k4, v4);
        return p2.p(4, new Object[]{k, v, k2, v2, k3, v3, k4, v4});
    }

    public static <K, V> ImmutableMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
        z.a(k, v);
        z.a(k2, v2);
        z.a(k3, v3);
        z.a(k4, v4);
        z.a(k5, v5);
        return p2.p(5, new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5});
    }

    public static <K, V> ImmutableMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6) {
        z.a(k, v);
        z.a(k2, v2);
        z.a(k3, v3);
        z.a(k4, v4);
        z.a(k5, v5);
        z.a(k6, v6);
        return p2.p(6, new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5, k6, v6});
    }

    public static <K, V> ImmutableMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6, K k7, V v7) {
        z.a(k, v);
        z.a(k2, v2);
        z.a(k3, v3);
        z.a(k4, v4);
        z.a(k5, v5);
        z.a(k6, v6);
        z.a(k7, v7);
        return p2.p(7, new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5, k6, v6, k7, v7});
    }

    public static <K, V> ImmutableMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6, K k7, V v7, K k8, V v8) {
        z.a(k, v);
        z.a(k2, v2);
        z.a(k3, v3);
        z.a(k4, v4);
        z.a(k5, v5);
        z.a(k6, v6);
        z.a(k7, v7);
        z.a(k8, v8);
        return p2.p(8, new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5, k6, v6, k7, v7, k8, v8});
    }

    public static <K, V> ImmutableMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6, K k7, V v7, K k8, V v8, K k9, V v9) {
        z.a(k, v);
        z.a(k2, v2);
        z.a(k3, v3);
        z.a(k4, v4);
        z.a(k5, v5);
        z.a(k6, v6);
        z.a(k7, v7);
        z.a(k8, v8);
        z.a(k9, v9);
        return p2.p(9, new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5, k6, v6, k7, v7, k8, v8, k9, v9});
    }

    public static <K, V> ImmutableMap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5, K k6, V v6, K k7, V v7, K k8, V v8, K k9, V v9, K k10, V v10) {
        z.a(k, v);
        z.a(k2, v2);
        z.a(k3, v3);
        z.a(k4, v4);
        z.a(k5, v5);
        z.a(k6, v6);
        z.a(k7, v7);
        z.a(k8, v8);
        z.a(k9, v9);
        z.a(k10, v10);
        return p2.p(10, new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5, k6, v6, k7, v7, k8, v8, k9, v9, k10, v10});
    }

    @SafeVarargs
    public static <K, V> ImmutableMap<K, V> ofEntries(Map.Entry<? extends K, ? extends V>... entryArr) {
        return copyOf(Arrays.asList(entryArr));
    }

    abstract ImmutableSet<Map.Entry<K, V>> c();

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    abstract ImmutableSet<K> d();

    abstract n1<V> e();

    @Override // java.util.Map
    public boolean equals(Object obj) {
        return Maps.m(this, obj);
    }

    @Override // java.util.Map
    public abstract V get(Object obj);

    @Override // java.util.Map
    public final V getOrDefault(Object obj, V v) {
        V v2 = get(obj);
        return v2 != null ? v2 : v;
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public ImmutableSet<Map.Entry<K, V>> entrySet() {
        ImmutableSet<Map.Entry<K, V>> immutableSet = this.b;
        if (immutableSet != null) {
            return immutableSet;
        }
        ImmutableSet<Map.Entry<K, V>> immutableSetC = c();
        this.b = immutableSetC;
        return immutableSetC;
    }

    @Override // java.util.Map
    public int hashCode() {
        return Sets.b(entrySet());
    }

    boolean i() {
        return false;
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    abstract boolean j();

    o3<K> k() {
        return new a(this, entrySet().iterator());
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public ImmutableSet<K> keySet() {
        ImmutableSet<K> immutableSet = this.c;
        if (immutableSet != null) {
            return immutableSet;
        }
        ImmutableSet<K> immutableSetD = d();
        this.c = immutableSetD;
        return immutableSetD;
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public n1<V> values() {
        n1<V> n1Var = this.f3581d;
        if (n1Var != null) {
            return n1Var;
        }
        n1<V> n1VarE = e();
        this.f3581d = n1VarE;
        return n1VarE;
    }

    @Override // java.util.Map
    @Deprecated
    public final V put(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final V remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        return Maps.E(this);
    }

    Object writeReplace() {
        return new d(this);
    }
}
