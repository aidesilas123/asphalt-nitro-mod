package com.google.common.collect;

import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.Maps;
import com.google.common.collect.Tables;
import com.google.common.collect.l3;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class ArrayTable<R, C, V> extends s<R, C, V> implements Serializable {
    private static final long serialVersionUID = 0;
    private final ImmutableList<R> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ImmutableList<C> f3536d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ImmutableMap<R, Integer> f3537e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ImmutableMap<C, Integer> f3538f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final V[][] f3539g;
    private transient ArrayTable<R, C, V>.f h;
    private transient ArrayTable<R, C, V>.h i;

    class a extends com.google.common.collect.e<l3.a<R, C, V>> {
        a(int i) {
            super(i);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.e
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public l3.a<R, C, V> a(int i) {
            return ArrayTable.this.B(i);
        }
    }

    class b extends Tables.b<R, C, V> {
        final int a;
        final int b;
        final /* synthetic */ int c;

        b(int i) {
            this.c = i;
            this.a = i / ArrayTable.this.f3536d.size();
            this.b = i % ArrayTable.this.f3536d.size();
        }

        @Override // com.google.common.collect.l3.a
        public R c() {
            return (R) ArrayTable.this.c.get(this.a);
        }

        @Override // com.google.common.collect.l3.a
        public C d() {
            return (C) ArrayTable.this.f3536d.get(this.b);
        }

        @Override // com.google.common.collect.l3.a
        public V getValue() {
            return (V) ArrayTable.this.x(this.a, this.b);
        }
    }

    class c extends com.google.common.collect.e<V> {
        c(int i) {
            super(i);
        }

        @Override // com.google.common.collect.e
        protected V a(int i) {
            return (V) ArrayTable.this.C(i);
        }
    }

    private static abstract class d<K, V> extends Maps.x<K, V> {
        private final ImmutableMap<K, Integer> a;

        class a extends i<K, V> {
            final /* synthetic */ int a;

            a(int i) {
                this.a = i;
            }

            @Override // com.google.common.collect.i, java.util.Map.Entry
            public K getKey() {
                return (K) d.this.c(this.a);
            }

            @Override // com.google.common.collect.i, java.util.Map.Entry
            public V getValue() {
                return (V) d.this.e(this.a);
            }

            @Override // com.google.common.collect.i, java.util.Map.Entry
            public V setValue(V v) {
                return (V) d.this.f(this.a, v);
            }
        }

        class b extends com.google.common.collect.e<Map.Entry<K, V>> {
            b(int i) {
                super(i);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.e
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public Map.Entry<K, V> a(int i) {
                return d.this.b(i);
            }
        }

        private d(ImmutableMap<K, Integer> immutableMap) {
            this.a = immutableMap;
        }

        /* synthetic */ d(ImmutableMap immutableMap, a aVar) {
            this(immutableMap);
        }

        @Override // com.google.common.collect.Maps.x
        Iterator<Map.Entry<K, V>> a() {
            return new b(size());
        }

        Map.Entry<K, V> b(int i) {
            Preconditions.checkElementIndex(i, size());
            return new a(i);
        }

        K c(int i) {
            return this.a.keySet().e().get(i);
        }

        @Override // com.google.common.collect.Maps.x, java.util.AbstractMap, java.util.Map
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return this.a.containsKey(obj);
        }

        abstract String d();

        abstract V e(int i);

        abstract V f(int i, V v);

        @Override // java.util.AbstractMap, java.util.Map
        public V get(Object obj) {
            Integer num = this.a.get(obj);
            if (num == null) {
                return null;
            }
            return e(num.intValue());
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean isEmpty() {
            return this.a.isEmpty();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            return this.a.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V put(K k, V v) {
            Integer num = this.a.get(k);
            if (num != null) {
                return f(num.intValue(), v);
            }
            String strD = d();
            String strValueOf = String.valueOf(k);
            String strValueOf2 = String.valueOf(this.a.keySet());
            StringBuilder sb = new StringBuilder(String.valueOf(strD).length() + 9 + strValueOf.length() + strValueOf2.length());
            sb.append(strD);
            sb.append(" ");
            sb.append(strValueOf);
            sb.append(" not in ");
            sb.append(strValueOf2);
            throw new IllegalArgumentException(sb.toString());
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.a.size();
        }
    }

    private class e extends d<R, V> {
        final int b;

        e(int i) {
            super(ArrayTable.this.f3537e, null);
            this.b = i;
        }

        @Override // com.google.common.collect.ArrayTable.d
        String d() {
            return "Row";
        }

        @Override // com.google.common.collect.ArrayTable.d
        V e(int i) {
            return (V) ArrayTable.this.x(i, this.b);
        }

        @Override // com.google.common.collect.ArrayTable.d
        V f(int i, V v) {
            return (V) ArrayTable.this.E(i, this.b, v);
        }
    }

    private class f extends d<C, Map<R, V>> {
        private f() {
            super(ArrayTable.this.f3538f, null);
        }

        /* synthetic */ f(ArrayTable arrayTable, a aVar) {
            this();
        }

        @Override // com.google.common.collect.ArrayTable.d
        String d() {
            return "Column";
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ArrayTable.d
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public Map<R, V> e(int i) {
            return new e(i);
        }

        @Override // com.google.common.collect.ArrayTable.d, java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public Map<R, V> put(C c, Map<R, V> map) {
            throw new UnsupportedOperationException();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ArrayTable.d
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public Map<R, V> f(int i, Map<R, V> map) {
            throw new UnsupportedOperationException();
        }
    }

    private class g extends d<C, V> {
        final int b;

        g(int i) {
            super(ArrayTable.this.f3538f, null);
            this.b = i;
        }

        @Override // com.google.common.collect.ArrayTable.d
        String d() {
            return "Column";
        }

        @Override // com.google.common.collect.ArrayTable.d
        V e(int i) {
            return (V) ArrayTable.this.x(this.b, i);
        }

        @Override // com.google.common.collect.ArrayTable.d
        V f(int i, V v) {
            return (V) ArrayTable.this.E(this.b, i, v);
        }
    }

    private class h extends d<R, Map<C, V>> {
        private h() {
            super(ArrayTable.this.f3537e, null);
        }

        /* synthetic */ h(ArrayTable arrayTable, a aVar) {
            this();
        }

        @Override // com.google.common.collect.ArrayTable.d
        String d() {
            return "Row";
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ArrayTable.d
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public Map<C, V> e(int i) {
            return new g(i);
        }

        @Override // com.google.common.collect.ArrayTable.d, java.util.AbstractMap, java.util.Map
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public Map<C, V> put(R r, Map<C, V> map) {
            throw new UnsupportedOperationException();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.ArrayTable.d
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public Map<C, V> f(int i, Map<C, V> map) {
            throw new UnsupportedOperationException();
        }
    }

    private ArrayTable(ArrayTable<R, C, V> arrayTable) {
        ImmutableList<R> immutableList = arrayTable.c;
        this.c = immutableList;
        ImmutableList<C> immutableList2 = arrayTable.f3536d;
        this.f3536d = immutableList2;
        this.f3537e = arrayTable.f3537e;
        this.f3538f = arrayTable.f3538f;
        V[][] vArr = (V[][]) ((Object[][]) Array.newInstance((Class<?>) Object.class, immutableList.size(), immutableList2.size()));
        this.f3539g = vArr;
        for (int i = 0; i < this.c.size(); i++) {
            V[][] vArr2 = arrayTable.f3539g;
            System.arraycopy(vArr2[i], 0, vArr[i], 0, vArr2[i].length);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ArrayTable(l3<R, C, ? extends V> l3Var) {
        this(l3Var.h(), l3Var.z());
        k(l3Var);
    }

    private ArrayTable(Iterable<? extends R> iterable, Iterable<? extends C> iterable2) {
        ImmutableList<R> immutableListCopyOf = ImmutableList.copyOf(iterable);
        this.c = immutableListCopyOf;
        ImmutableList<C> immutableListCopyOf2 = ImmutableList.copyOf(iterable2);
        this.f3536d = immutableListCopyOf2;
        Preconditions.checkArgument(immutableListCopyOf.isEmpty() == immutableListCopyOf2.isEmpty());
        this.f3537e = Maps.r(immutableListCopyOf);
        this.f3538f = Maps.r(immutableListCopyOf2);
        this.f3539g = (V[][]) ((Object[][]) Array.newInstance((Class<?>) Object.class, immutableListCopyOf.size(), immutableListCopyOf2.size()));
        A();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public l3.a<R, C, V> B(int i) {
        return new b(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public V C(int i) {
        return x(i / this.f3536d.size(), i % this.f3536d.size());
    }

    public static <R, C, V> ArrayTable<R, C, V> create(l3<R, C, ? extends V> l3Var) {
        return l3Var instanceof ArrayTable ? new ArrayTable<>((ArrayTable) l3Var) : new ArrayTable<>(l3Var);
    }

    public static <R, C, V> ArrayTable<R, C, V> create(Iterable<? extends R> iterable, Iterable<? extends C> iterable2) {
        return new ArrayTable<>(iterable, iterable2);
    }

    public void A() {
        for (V[] vArr : this.f3539g) {
            Arrays.fill(vArr, (Object) null);
        }
    }

    @Override // com.google.common.collect.l3
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public ImmutableSet<R> h() {
        return this.f3537e.keySet();
    }

    public V E(int i, int i2, V v) {
        Preconditions.checkElementIndex(i, this.c.size());
        Preconditions.checkElementIndex(i2, this.f3536d.size());
        V[][] vArr = this.f3539g;
        V v2 = vArr[i][i2];
        vArr[i][i2] = v;
        return v2;
    }

    @Override // com.google.common.collect.s
    Iterator<l3.a<R, C, V>> c() {
        return new a(size());
    }

    @Override // com.google.common.collect.s, com.google.common.collect.l3
    @Deprecated
    public void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.s, com.google.common.collect.l3
    public boolean containsValue(Object obj) {
        for (V[] vArr : this.f3539g) {
            for (V v : vArr) {
                if (Objects.equal(obj, v)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.google.common.collect.s, com.google.common.collect.l3
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.s, com.google.common.collect.l3
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.l3
    public Map<R, Map<C, V>> j() {
        ArrayTable<R, C, V>.h hVar = this.i;
        if (hVar != null) {
            return hVar;
        }
        ArrayTable<R, C, V>.h hVar2 = new h(this, null);
        this.i = hVar2;
        return hVar2;
    }

    @Override // com.google.common.collect.s
    public void k(l3<? extends R, ? extends C, ? extends V> l3Var) {
        super.k(l3Var);
    }

    @Override // com.google.common.collect.s
    Iterator<V> m() {
        return new c(size());
    }

    @Override // com.google.common.collect.l3
    public Map<C, Map<R, V>> n() {
        ArrayTable<R, C, V>.f fVar = this.h;
        if (fVar != null) {
            return fVar;
        }
        ArrayTable<R, C, V>.f fVar2 = new f(this, null);
        this.h = fVar2;
        return fVar2;
    }

    @Override // com.google.common.collect.l3
    public int size() {
        return this.c.size() * this.f3536d.size();
    }

    @Override // com.google.common.collect.s, com.google.common.collect.l3
    public Set<l3.a<R, C, V>> t() {
        return super.t();
    }

    @Override // com.google.common.collect.s
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    @Override // com.google.common.collect.s, com.google.common.collect.l3
    public V v(R r, C c2, V v) {
        Preconditions.checkNotNull(r);
        Preconditions.checkNotNull(c2);
        Integer num = this.f3537e.get(r);
        Preconditions.checkArgument(num != null, "Row %s not in %s", r, this.c);
        Integer num2 = this.f3538f.get(c2);
        Preconditions.checkArgument(num2 != null, "Column %s not in %s", c2, this.f3536d);
        return E(num.intValue(), num2.intValue(), v);
    }

    @Override // com.google.common.collect.s, com.google.common.collect.l3
    public Collection<V> values() {
        return super.values();
    }

    public V x(int i, int i2) {
        Preconditions.checkElementIndex(i, this.c.size());
        Preconditions.checkElementIndex(i2, this.f3536d.size());
        return this.f3539g[i][i2];
    }

    @Override // com.google.common.collect.l3
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public ImmutableSet<C> z() {
        return this.f3538f.keySet();
    }
}
