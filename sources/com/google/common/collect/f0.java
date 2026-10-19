package com.google.common.collect;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableTable;
import com.google.common.collect.l3;
import java.lang.reflect.Array;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: DenseImmutableTable.java */
/* JADX INFO: loaded from: classes3.dex */
final class f0<R, C, V> extends u2<R, C, V> {
    private final ImmutableMap<R, Integer> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ImmutableMap<C, Integer> f3731d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ImmutableMap<R, ImmutableMap<C, V>> f3732e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ImmutableMap<C, ImmutableMap<R, V>> f3733f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int[] f3734g;
    private final int[] h;
    private final V[][] i;
    private final int[] j;
    private final int[] k;

    /* JADX INFO: compiled from: DenseImmutableTable.java */
    private final class b extends d<R, V> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f3735f;

        b(int i) {
            super(f0.this.h[i]);
            this.f3735f = i;
        }

        @Override // com.google.common.collect.ImmutableMap
        boolean j() {
            return true;
        }

        @Override // com.google.common.collect.f0.d
        V r(int i) {
            return (V) f0.this.i[i][this.f3735f];
        }

        @Override // com.google.common.collect.f0.d
        ImmutableMap<R, Integer> t() {
            return f0.this.c;
        }
    }

    /* JADX INFO: compiled from: DenseImmutableTable.java */
    private final class c extends d<C, ImmutableMap<R, V>> {
        private c() {
            super(f0.this.h.length);
        }

        @Override // com.google.common.collect.ImmutableMap
        boolean j() {
            return false;
        }

        @Override // com.google.common.collect.f0.d
        ImmutableMap<C, Integer> t() {
            return f0.this.f3731d;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.f0.d
        /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
        public ImmutableMap<R, V> r(int i) {
            return new b(i);
        }
    }

    /* JADX INFO: compiled from: DenseImmutableTable.java */
    private static abstract class d<K, V> extends ImmutableMap.c<K, V> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f3738e;

        /* JADX INFO: compiled from: DenseImmutableTable.java */
        class a extends AbstractIterator<Map.Entry<K, V>> {
            private int c = -1;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private final int f3739d;

            a() {
                this.f3739d = d.this.t().size();
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.collect.AbstractIterator
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public Map.Entry<K, V> b() {
                int i = this.c;
                while (true) {
                    this.c = i + 1;
                    int i2 = this.c;
                    if (i2 >= this.f3739d) {
                        return c();
                    }
                    Object objR = d.this.r(i2);
                    if (objR != null) {
                        return Maps.immutableEntry(d.this.q(this.c), objR);
                    }
                    i = this.c;
                }
            }
        }

        d(int i) {
            this.f3738e = i;
        }

        private boolean s() {
            return this.f3738e == t().size();
        }

        @Override // com.google.common.collect.ImmutableMap.c, com.google.common.collect.ImmutableMap
        ImmutableSet<K> d() {
            return s() ? t().keySet() : super.d();
        }

        @Override // com.google.common.collect.ImmutableMap, java.util.Map
        public V get(Object obj) {
            Integer num = t().get(obj);
            if (num == null) {
                return null;
            }
            return r(num.intValue());
        }

        @Override // com.google.common.collect.ImmutableMap.c
        o3<Map.Entry<K, V>> p() {
            return new a();
        }

        K q(int i) {
            return t().keySet().e().get(i);
        }

        abstract V r(int i);

        @Override // java.util.Map
        public int size() {
            return this.f3738e;
        }

        abstract ImmutableMap<K, Integer> t();
    }

    /* JADX INFO: compiled from: DenseImmutableTable.java */
    private final class e extends d<C, V> {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final int f3741f;

        e(int i) {
            super(f0.this.f3734g[i]);
            this.f3741f = i;
        }

        @Override // com.google.common.collect.ImmutableMap
        boolean j() {
            return true;
        }

        @Override // com.google.common.collect.f0.d
        V r(int i) {
            return (V) f0.this.i[this.f3741f][i];
        }

        @Override // com.google.common.collect.f0.d
        ImmutableMap<C, Integer> t() {
            return f0.this.f3731d;
        }
    }

    /* JADX INFO: compiled from: DenseImmutableTable.java */
    private final class f extends d<R, ImmutableMap<C, V>> {
        private f() {
            super(f0.this.f3734g.length);
        }

        @Override // com.google.common.collect.ImmutableMap
        boolean j() {
            return false;
        }

        @Override // com.google.common.collect.f0.d
        ImmutableMap<R, Integer> t() {
            return f0.this.c;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.f0.d
        /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
        public ImmutableMap<C, V> r(int i) {
            return new e(i);
        }
    }

    f0(ImmutableList<l3.a<R, C, V>> immutableList, ImmutableSet<R> immutableSet, ImmutableSet<C> immutableSet2) {
        this.i = (V[][]) ((Object[][]) Array.newInstance((Class<?>) Object.class, immutableSet.size(), immutableSet2.size()));
        ImmutableMap<R, Integer> immutableMapR = Maps.r(immutableSet);
        this.c = immutableMapR;
        ImmutableMap<C, Integer> immutableMapR2 = Maps.r(immutableSet2);
        this.f3731d = immutableMapR2;
        this.f3734g = new int[immutableMapR.size()];
        this.h = new int[immutableMapR2.size()];
        int[] iArr = new int[immutableList.size()];
        int[] iArr2 = new int[immutableList.size()];
        for (int i = 0; i < immutableList.size(); i++) {
            l3.a<R, C, V> aVar = immutableList.get(i);
            R rC = aVar.c();
            C cD = aVar.d();
            Integer num = this.c.get(rC);
            Objects.requireNonNull(num);
            int iIntValue = num.intValue();
            Integer num2 = this.f3731d.get(cD);
            Objects.requireNonNull(num2);
            int iIntValue2 = num2.intValue();
            E(rC, cD, this.i[iIntValue][iIntValue2], aVar.getValue());
            this.i[iIntValue][iIntValue2] = aVar.getValue();
            int[] iArr3 = this.f3734g;
            iArr3[iIntValue] = iArr3[iIntValue] + 1;
            int[] iArr4 = this.h;
            iArr4[iIntValue2] = iArr4[iIntValue2] + 1;
            iArr[i] = iIntValue;
            iArr2[i] = iIntValue2;
        }
        this.j = iArr;
        this.k = iArr2;
        this.f3732e = new f();
        this.f3733f = new c();
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.l3
    /* JADX INFO: renamed from: C */
    public ImmutableMap<R, Map<C, V>> j() {
        return ImmutableMap.copyOf((Map) this.f3732e);
    }

    @Override // com.google.common.collect.u2
    l3.a<R, C, V> I(int i) {
        int i2 = this.j[i];
        int i3 = this.k[i];
        R r = h().e().get(i2);
        C c2 = z().e().get(i3);
        V v = this.i[i2][i3];
        Objects.requireNonNull(v);
        return ImmutableTable.q(r, c2, v);
    }

    @Override // com.google.common.collect.u2
    V J(int i) {
        V v = this.i[this.j[i]][this.k[i]];
        Objects.requireNonNull(v);
        return v;
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.s
    public V g(Object obj, Object obj2) {
        Integer num = this.c.get(obj);
        Integer num2 = this.f3731d.get(obj2);
        if (num == null || num2 == null) {
            return null;
        }
        return this.i[num.intValue()][num2.intValue()];
    }

    @Override // com.google.common.collect.l3
    public int size() {
        return this.j.length;
    }

    @Override // com.google.common.collect.ImmutableTable, com.google.common.collect.l3
    /* JADX INFO: renamed from: u */
    public ImmutableMap<C, Map<R, V>> n() {
        return ImmutableMap.copyOf((Map) this.f3733f);
    }

    @Override // com.google.common.collect.ImmutableTable
    ImmutableTable.b y() {
        return ImmutableTable.b.a(this, this.j, this.k);
    }
}
