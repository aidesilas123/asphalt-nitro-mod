package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: RegularImmutableMap.java */
/* JADX INFO: loaded from: classes3.dex */
final class p2<K, V> extends ImmutableMap<K, V> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static final ImmutableMap<Object, Object> f3815e = new p2(null, new Object[0], 0);
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final transient Object f3816f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final transient Object[] f3817g;
    private final transient int h;

    /* JADX INFO: compiled from: RegularImmutableMap.java */
    static class a<K, V> extends ImmutableSet<Map.Entry<K, V>> {
        private final transient ImmutableMap<K, V> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final transient Object[] f3818d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final transient int f3819e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final transient int f3820f;

        /* JADX INFO: renamed from: com.google.common.collect.p2$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: RegularImmutableMap.java */
        class C0262a extends ImmutableList<Map.Entry<K, V>> {
            C0262a() {
            }

            @Override // java.util.List
            /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
            public Map.Entry<K, V> get(int i) {
                Preconditions.checkElementIndex(i, a.this.f3820f);
                int i2 = i * 2;
                Object obj = a.this.f3818d[a.this.f3819e + i2];
                Objects.requireNonNull(obj);
                Object obj2 = a.this.f3818d[i2 + (a.this.f3819e ^ 1)];
                Objects.requireNonNull(obj2);
                return new AbstractMap.SimpleImmutableEntry(obj, obj2);
            }

            @Override // com.google.common.collect.n1
            public boolean j() {
                return true;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
            public int size() {
                return a.this.f3820f;
            }
        }

        a(ImmutableMap<K, V> immutableMap, Object[] objArr, int i, int i2) {
            this.c = immutableMap;
            this.f3818d = objArr;
            this.f3819e = i;
            this.f3820f = i2;
        }

        @Override // com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            return value != null && value.equals(this.c.get(key));
        }

        @Override // com.google.common.collect.n1
        int f(Object[] objArr, int i) {
            return e().f(objArr, i);
        }

        @Override // com.google.common.collect.n1
        boolean j() {
            return true;
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        /* JADX INFO: renamed from: n */
        public o3<Map.Entry<K, V>> iterator() {
            return e().iterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f3820f;
        }

        @Override // com.google.common.collect.ImmutableSet
        ImmutableList<Map.Entry<K, V>> y() {
            return new C0262a();
        }
    }

    /* JADX INFO: compiled from: RegularImmutableMap.java */
    static final class b<K> extends ImmutableSet<K> {
        private final transient ImmutableMap<K, ?> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final transient ImmutableList<K> f3821d;

        b(ImmutableMap<K, ?> immutableMap, ImmutableList<K> immutableList) {
            this.c = immutableMap;
            this.f3821d = immutableList;
        }

        @Override // com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return this.c.get(obj) != null;
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.n1
        public ImmutableList<K> e() {
            return this.f3821d;
        }

        @Override // com.google.common.collect.n1
        int f(Object[] objArr, int i) {
            return e().f(objArr, i);
        }

        @Override // com.google.common.collect.n1
        boolean j() {
            return true;
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        /* JADX INFO: renamed from: n */
        public o3<K> iterator() {
            return e().iterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.c.size();
        }
    }

    /* JADX INFO: compiled from: RegularImmutableMap.java */
    static final class c extends ImmutableList<Object> {
        private final transient Object[] c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final transient int f3822d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final transient int f3823e;

        c(Object[] objArr, int i, int i2) {
            this.c = objArr;
            this.f3822d = i;
            this.f3823e = i2;
        }

        @Override // java.util.List
        public Object get(int i) {
            Preconditions.checkElementIndex(i, this.f3823e);
            Object obj = this.c[(i * 2) + this.f3822d];
            Objects.requireNonNull(obj);
            return obj;
        }

        @Override // com.google.common.collect.n1
        boolean j() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f3823e;
        }
    }

    private p2(Object obj, Object[] objArr, int i) {
        this.f3816f = obj;
        this.f3817g = objArr;
        this.h = i;
    }

    static <K, V> p2<K, V> p(int i, Object[] objArr) {
        return q(i, objArr, null);
    }

    static <K, V> p2<K, V> q(int i, Object[] objArr, ImmutableMap.b<K, V> bVar) {
        if (i == 0) {
            return (p2) f3815e;
        }
        if (i == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            Object obj2 = objArr[1];
            Objects.requireNonNull(obj2);
            z.a(obj, obj2);
            return new p2<>(null, objArr, 1);
        }
        Preconditions.checkPositionIndex(i, objArr.length >> 1);
        Object objR = r(objArr, i, ImmutableSet.v(i), 0);
        if (objR instanceof Object[]) {
            Object[] objArr2 = (Object[]) objR;
            ImmutableMap.b.a aVar = (ImmutableMap.b.a) objArr2[2];
            if (bVar == null) {
                throw aVar.a();
            }
            bVar.f3583e = aVar;
            Object obj3 = objArr2[0];
            int iIntValue = ((Integer) objArr2[1]).intValue();
            objArr = Arrays.copyOf(objArr, iIntValue * 2);
            objR = obj3;
            i = iIntValue;
        }
        return new p2<>(objR, objArr, i);
    }

    private static Object r(Object[] objArr, int i, int i2, int i3) {
        ImmutableMap.b.a aVar = null;
        if (i == 1) {
            Object obj = objArr[i3];
            Objects.requireNonNull(obj);
            Object obj2 = objArr[i3 ^ 1];
            Objects.requireNonNull(obj2);
            z.a(obj, obj2);
            return null;
        }
        int i4 = i2 - 1;
        int i5 = -1;
        if (i2 <= 128) {
            byte[] bArr = new byte[i2];
            Arrays.fill(bArr, (byte) -1);
            int i6 = 0;
            for (int i7 = 0; i7 < i; i7++) {
                int i8 = (i7 * 2) + i3;
                int i9 = (i6 * 2) + i3;
                Object obj3 = objArr[i8];
                Objects.requireNonNull(obj3);
                Object obj4 = objArr[i8 ^ 1];
                Objects.requireNonNull(obj4);
                z.a(obj3, obj4);
                int iC = l1.c(obj3.hashCode());
                while (true) {
                    int i10 = iC & i4;
                    int i11 = bArr[i10] & 255;
                    if (i11 == 255) {
                        bArr[i10] = (byte) i9;
                        if (i6 < i7) {
                            objArr[i9] = obj3;
                            objArr[i9 ^ 1] = obj4;
                        }
                        i6++;
                    } else {
                        if (obj3.equals(objArr[i11])) {
                            int i12 = i11 ^ 1;
                            Object obj5 = objArr[i12];
                            Objects.requireNonNull(obj5);
                            aVar = new ImmutableMap.b.a(obj3, obj4, obj5);
                            objArr[i12] = obj4;
                            break;
                        }
                        iC = i10 + 1;
                    }
                }
            }
            return i6 == i ? bArr : new Object[]{bArr, Integer.valueOf(i6), aVar};
        }
        if (i2 <= 32768) {
            short[] sArr = new short[i2];
            Arrays.fill(sArr, (short) -1);
            int i13 = 0;
            for (int i14 = 0; i14 < i; i14++) {
                int i15 = (i14 * 2) + i3;
                int i16 = (i13 * 2) + i3;
                Object obj6 = objArr[i15];
                Objects.requireNonNull(obj6);
                Object obj7 = objArr[i15 ^ 1];
                Objects.requireNonNull(obj7);
                z.a(obj6, obj7);
                int iC2 = l1.c(obj6.hashCode());
                while (true) {
                    int i17 = iC2 & i4;
                    int i18 = sArr[i17] & 65535;
                    if (i18 == 65535) {
                        sArr[i17] = (short) i16;
                        if (i13 < i14) {
                            objArr[i16] = obj6;
                            objArr[i16 ^ 1] = obj7;
                        }
                        i13++;
                    } else {
                        if (obj6.equals(objArr[i18])) {
                            int i19 = i18 ^ 1;
                            Object obj8 = objArr[i19];
                            Objects.requireNonNull(obj8);
                            aVar = new ImmutableMap.b.a(obj6, obj7, obj8);
                            objArr[i19] = obj7;
                            break;
                        }
                        iC2 = i17 + 1;
                    }
                }
            }
            return i13 == i ? sArr : new Object[]{sArr, Integer.valueOf(i13), aVar};
        }
        int[] iArr = new int[i2];
        Arrays.fill(iArr, -1);
        int i20 = 0;
        int i21 = 0;
        while (i20 < i) {
            int i22 = (i20 * 2) + i3;
            int i23 = (i21 * 2) + i3;
            Object obj9 = objArr[i22];
            Objects.requireNonNull(obj9);
            Object obj10 = objArr[i22 ^ 1];
            Objects.requireNonNull(obj10);
            z.a(obj9, obj10);
            int iC3 = l1.c(obj9.hashCode());
            while (true) {
                int i24 = iC3 & i4;
                int i25 = iArr[i24];
                if (i25 == i5) {
                    iArr[i24] = i23;
                    if (i21 < i20) {
                        objArr[i23] = obj9;
                        objArr[i23 ^ 1] = obj10;
                    }
                    i21++;
                } else {
                    if (obj9.equals(objArr[i25])) {
                        int i26 = i25 ^ 1;
                        Object obj11 = objArr[i26];
                        Objects.requireNonNull(obj11);
                        aVar = new ImmutableMap.b.a(obj9, obj10, obj11);
                        objArr[i26] = obj10;
                        break;
                    }
                    iC3 = i24 + 1;
                    i5 = -1;
                }
            }
            i20++;
            i5 = -1;
        }
        return i21 == i ? iArr : new Object[]{iArr, Integer.valueOf(i21), aVar};
    }

    static Object s(Object[] objArr, int i, int i2, int i3) {
        Object objR = r(objArr, i, i2, i3);
        if (objR instanceof Object[]) {
            throw ((ImmutableMap.b.a) ((Object[]) objR)[2]).a();
        }
        return objR;
    }

    static Object t(Object obj, Object[] objArr, int i, int i2, Object obj2) {
        if (obj2 == null) {
            return null;
        }
        if (i == 1) {
            Object obj3 = objArr[i2];
            Objects.requireNonNull(obj3);
            if (!obj3.equals(obj2)) {
                return null;
            }
            Object obj4 = objArr[i2 ^ 1];
            Objects.requireNonNull(obj4);
            return obj4;
        }
        if (obj == null) {
            return null;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            int length = bArr.length - 1;
            int iC = l1.c(obj2.hashCode());
            while (true) {
                int i3 = iC & length;
                int i4 = bArr[i3] & 255;
                if (i4 == 255) {
                    return null;
                }
                if (obj2.equals(objArr[i4])) {
                    return objArr[i4 ^ 1];
                }
                iC = i3 + 1;
            }
        } else if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            int length2 = sArr.length - 1;
            int iC2 = l1.c(obj2.hashCode());
            while (true) {
                int i5 = iC2 & length2;
                int i6 = sArr[i5] & 65535;
                if (i6 == 65535) {
                    return null;
                }
                if (obj2.equals(objArr[i6])) {
                    return objArr[i6 ^ 1];
                }
                iC2 = i5 + 1;
            }
        } else {
            int[] iArr = (int[]) obj;
            int length3 = iArr.length - 1;
            int iC3 = l1.c(obj2.hashCode());
            while (true) {
                int i7 = iC3 & length3;
                int i8 = iArr[i7];
                if (i8 == -1) {
                    return null;
                }
                if (obj2.equals(objArr[i8])) {
                    return objArr[i8 ^ 1];
                }
                iC3 = i7 + 1;
            }
        }
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<Map.Entry<K, V>> c() {
        return new a(this, this.f3817g, 0, this.h);
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<K> d() {
        return new b(this, new c(this.f3817g, 0, this.h));
    }

    @Override // com.google.common.collect.ImmutableMap
    n1<V> e() {
        return new c(this.f3817g, 1, this.h);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    public V get(Object obj) {
        V v = (V) t(this.f3816f, this.f3817g, this.h, 0, obj);
        if (v == null) {
            return null;
        }
        return v;
    }

    @Override // com.google.common.collect.ImmutableMap
    boolean j() {
        return false;
    }

    @Override // java.util.Map
    public int size() {
        return this.h;
    }
}
