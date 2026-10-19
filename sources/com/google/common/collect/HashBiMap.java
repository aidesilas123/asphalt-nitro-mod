package com.google.common.collect;

import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.n1;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class HashBiMap<K, V> extends AbstractMap<K, V> implements w<K, V>, Serializable {
    transient K[] a;
    transient V[] b;
    transient int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    transient int f3572d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private transient int[] f3573e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private transient int[] f3574f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private transient int[] f3575g;
    private transient int[] h;
    private transient int i;
    private transient int j;
    private transient int[] k;
    private transient int[] l;
    private transient Set<K> m;
    private transient Set<V> n;
    private transient Set<Map.Entry<K, V>> o;
    private transient w<V, K> p;

    final class a extends i<K, V> {
        final K a;
        int b;

        a(int i) {
            this.a = (K) e2.a(HashBiMap.this.a[i]);
            this.b = i;
        }

        void c() {
            int i = this.b;
            if (i != -1) {
                HashBiMap hashBiMap = HashBiMap.this;
                if (i <= hashBiMap.c && Objects.equal(hashBiMap.a[i], this.a)) {
                    return;
                }
            }
            this.b = HashBiMap.this.p(this.a);
        }

        @Override // com.google.common.collect.i, java.util.Map.Entry
        public K getKey() {
            return this.a;
        }

        @Override // com.google.common.collect.i, java.util.Map.Entry
        public V getValue() {
            c();
            int i = this.b;
            return i == -1 ? (V) e2.b() : (V) e2.a(HashBiMap.this.b[i]);
        }

        @Override // com.google.common.collect.i, java.util.Map.Entry
        public V setValue(V v) {
            c();
            int i = this.b;
            if (i == -1) {
                HashBiMap.this.put(this.a, v);
                return (V) e2.b();
            }
            V v2 = (V) e2.a(HashBiMap.this.b[i]);
            if (Objects.equal(v2, v)) {
                return v;
            }
            HashBiMap.this.H(this.b, v, false);
            return v2;
        }
    }

    static final class b<K, V> extends i<V, K> {
        final HashBiMap<K, V> a;
        final V b;
        int c;

        b(HashBiMap<K, V> hashBiMap, int i) {
            this.a = hashBiMap;
            this.b = (V) e2.a(hashBiMap.b[i]);
            this.c = i;
        }

        private void c() {
            int i = this.c;
            if (i != -1) {
                HashBiMap<K, V> hashBiMap = this.a;
                if (i <= hashBiMap.c && Objects.equal(this.b, hashBiMap.b[i])) {
                    return;
                }
            }
            this.c = this.a.r(this.b);
        }

        @Override // com.google.common.collect.i, java.util.Map.Entry
        public V getKey() {
            return this.b;
        }

        @Override // com.google.common.collect.i, java.util.Map.Entry
        public K getValue() {
            c();
            int i = this.c;
            return i == -1 ? (K) e2.b() : (K) e2.a(this.a.a[i]);
        }

        @Override // com.google.common.collect.i, java.util.Map.Entry
        public K setValue(K k) {
            c();
            int i = this.c;
            if (i == -1) {
                this.a.A(this.b, k, false);
                return (K) e2.b();
            }
            K k2 = (K) e2.a(this.a.a[i]);
            if (Objects.equal(k2, k)) {
                return k;
            }
            this.a.G(this.c, k, false);
            return k2;
        }
    }

    final class c extends h<K, V, Map.Entry<K, V>> {
        c() {
            super(HashBiMap.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            int iP = HashBiMap.this.p(key);
            return iP != -1 && Objects.equal(value, HashBiMap.this.b[iP]);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.HashBiMap.h
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> c(int i) {
            return new a(i);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            int iD = l1.d(key);
            int iQ = HashBiMap.this.q(key, iD);
            if (iQ == -1 || !Objects.equal(value, HashBiMap.this.b[iQ])) {
                return false;
            }
            HashBiMap.this.D(iQ, iD);
            return true;
        }
    }

    static class d<K, V> extends AbstractMap<V, K> implements w<V, K>, Serializable {
        private final HashBiMap<K, V> a;
        private transient Set<Map.Entry<V, K>> b;

        d(HashBiMap<K, V> hashBiMap) {
            this.a = hashBiMap;
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            ((HashBiMap) this.a).p = this;
        }

        @Override // com.google.common.collect.w
        public w<K, V> M() {
            return this.a;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            this.a.clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return this.a.containsValue(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsValue(Object obj) {
            return this.a.containsKey(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<V, K>> entrySet() {
            Set<Map.Entry<V, K>> set = this.b;
            if (set != null) {
                return set;
            }
            e eVar = new e(this.a);
            this.b = eVar;
            return eVar;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public K get(Object obj) {
            return this.a.t(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<V> keySet() {
            return this.a.values();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public K put(V v, K k) {
            return this.a.A(v, k, false);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public K remove(Object obj) {
            return this.a.F(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.a.c;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<K> values() {
            return this.a.keySet();
        }
    }

    static class e<K, V> extends h<K, V, Map.Entry<V, K>> {
        e(HashBiMap<K, V> hashBiMap) {
            super(hashBiMap);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            int iR = this.a.r(key);
            return iR != -1 && Objects.equal(this.a.a[iR], value);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.HashBiMap.h
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Map.Entry<V, K> c(int i) {
            return new b(this.a, i);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            int iD = l1.d(key);
            int iS = this.a.s(key, iD);
            if (iS == -1 || !Objects.equal(this.a.a[iS], value)) {
                return false;
            }
            this.a.E(iS, iD);
            return true;
        }
    }

    final class f extends h<K, V, K> {
        f() {
            super(HashBiMap.this);
        }

        @Override // com.google.common.collect.HashBiMap.h
        K c(int i) {
            return (K) e2.a(HashBiMap.this.a[i]);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return HashBiMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            int iD = l1.d(obj);
            int iQ = HashBiMap.this.q(obj, iD);
            if (iQ == -1) {
                return false;
            }
            HashBiMap.this.D(iQ, iD);
            return true;
        }
    }

    final class g extends h<K, V, V> {
        g() {
            super(HashBiMap.this);
        }

        @Override // com.google.common.collect.HashBiMap.h
        V c(int i) {
            return (V) e2.a(HashBiMap.this.b[i]);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return HashBiMap.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            int iD = l1.d(obj);
            int iS = HashBiMap.this.s(obj, iD);
            if (iS == -1) {
                return false;
            }
            HashBiMap.this.E(iS, iD);
            return true;
        }
    }

    static abstract class h<K, V, T> extends AbstractSet<T> {
        final HashBiMap<K, V> a;

        class a implements Iterator<T> {
            private int a;
            private int b = -1;
            private int c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f3576d;

            a() {
                this.a = ((HashBiMap) h.this.a).i;
                HashBiMap<K, V> hashBiMap = h.this.a;
                this.c = hashBiMap.f3572d;
                this.f3576d = hashBiMap.c;
            }

            private void b() {
                if (h.this.a.f3572d != this.c) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                b();
                return this.a != -2 && this.f3576d > 0;
            }

            @Override // java.util.Iterator
            public T next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                T t = (T) h.this.c(this.a);
                this.b = this.a;
                this.a = ((HashBiMap) h.this.a).l[this.a];
                this.f3576d--;
                return t;
            }

            @Override // java.util.Iterator
            public void remove() {
                b();
                z.e(this.b != -1);
                h.this.a.B(this.b);
                int i = this.a;
                HashBiMap<K, V> hashBiMap = h.this.a;
                if (i == hashBiMap.c) {
                    this.a = this.b;
                }
                this.b = -1;
                this.c = hashBiMap.f3572d;
            }
        }

        h(HashBiMap<K, V> hashBiMap) {
            this.a = hashBiMap;
        }

        abstract T c(int i);

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            this.a.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<T> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.a.c;
        }
    }

    private HashBiMap(int i) {
        u(i);
    }

    private void C(int i, int i2, int i3) {
        Preconditions.checkArgument(i != -1);
        i(i, i2);
        j(i, i3);
        I(this.k[i], this.l[i]);
        y(this.c - 1, i);
        K[] kArr = this.a;
        int i4 = this.c;
        kArr[i4 - 1] = null;
        this.b[i4 - 1] = null;
        this.c = i4 - 1;
        this.f3572d++;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G(int i, K k, boolean z) {
        Preconditions.checkArgument(i != -1);
        int iD = l1.d(k);
        int iQ = q(k, iD);
        int i2 = this.j;
        int i3 = -2;
        if (iQ != -1) {
            if (!z) {
                String strValueOf = String.valueOf(k);
                StringBuilder sb = new StringBuilder(strValueOf.length() + 28);
                sb.append("Key already present in map: ");
                sb.append(strValueOf);
                throw new IllegalArgumentException(sb.toString());
            }
            i2 = this.k[iQ];
            i3 = this.l[iQ];
            D(iQ, iD);
            if (i == this.c) {
                i = iQ;
            }
        }
        if (i2 == i) {
            i2 = this.k[i];
        } else if (i2 == this.c) {
            i2 = iQ;
        }
        if (i3 == i) {
            iQ = this.l[i];
        } else if (i3 != this.c) {
            iQ = i3;
        }
        I(this.k[i], this.l[i]);
        i(i, l1.d(this.a[i]));
        this.a[i] = k;
        v(i, l1.d(k));
        I(i2, i);
        I(i, iQ);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H(int i, V v, boolean z) {
        Preconditions.checkArgument(i != -1);
        int iD = l1.d(v);
        int iS = s(v, iD);
        if (iS != -1) {
            if (!z) {
                String strValueOf = String.valueOf(v);
                StringBuilder sb = new StringBuilder(strValueOf.length() + 30);
                sb.append("Value already present in map: ");
                sb.append(strValueOf);
                throw new IllegalArgumentException(sb.toString());
            }
            E(iS, iD);
            if (i == this.c) {
                i = iS;
            }
        }
        j(i, l1.d(this.b[i]));
        this.b[i] = v;
        w(i, iD);
    }

    private void I(int i, int i2) {
        if (i == -2) {
            this.i = i2;
        } else {
            this.l[i] = i2;
        }
        if (i2 == -2) {
            this.j = i;
        } else {
            this.k[i2] = i;
        }
    }

    public static <K, V> HashBiMap<K, V> create() {
        return create(16);
    }

    public static <K, V> HashBiMap<K, V> create(int i) {
        return new HashBiMap<>(i);
    }

    public static <K, V> HashBiMap<K, V> create(Map<? extends K, ? extends V> map) {
        HashBiMap<K, V> hashBiMapCreate = create(map.size());
        hashBiMapCreate.putAll(map);
        return hashBiMapCreate;
    }

    private int f(int i) {
        return i & (this.f3573e.length - 1);
    }

    private static int[] h(int i) {
        int[] iArr = new int[i];
        Arrays.fill(iArr, -1);
        return iArr;
    }

    private void i(int i, int i2) {
        Preconditions.checkArgument(i != -1);
        int iF = f(i2);
        int[] iArr = this.f3573e;
        if (iArr[iF] == i) {
            int[] iArr2 = this.f3575g;
            iArr[iF] = iArr2[i];
            iArr2[i] = -1;
            return;
        }
        int i3 = iArr[iF];
        int i4 = this.f3575g[i3];
        while (true) {
            int i5 = i4;
            int i6 = i3;
            i3 = i5;
            if (i3 == -1) {
                String strValueOf = String.valueOf(this.a[i]);
                StringBuilder sb = new StringBuilder(strValueOf.length() + 32);
                sb.append("Expected to find entry with key ");
                sb.append(strValueOf);
                throw new AssertionError(sb.toString());
            }
            if (i3 == i) {
                int[] iArr3 = this.f3575g;
                iArr3[i6] = iArr3[i];
                iArr3[i] = -1;
                return;
            }
            i4 = this.f3575g[i3];
        }
    }

    private void j(int i, int i2) {
        Preconditions.checkArgument(i != -1);
        int iF = f(i2);
        int[] iArr = this.f3574f;
        if (iArr[iF] == i) {
            int[] iArr2 = this.h;
            iArr[iF] = iArr2[i];
            iArr2[i] = -1;
            return;
        }
        int i3 = iArr[iF];
        int i4 = this.h[i3];
        while (true) {
            int i5 = i4;
            int i6 = i3;
            i3 = i5;
            if (i3 == -1) {
                String strValueOf = String.valueOf(this.b[i]);
                StringBuilder sb = new StringBuilder(strValueOf.length() + 34);
                sb.append("Expected to find entry with value ");
                sb.append(strValueOf);
                throw new AssertionError(sb.toString());
            }
            if (i3 == i) {
                int[] iArr3 = this.h;
                iArr3[i6] = iArr3[i];
                iArr3[i] = -1;
                return;
            }
            i4 = this.h[i3];
        }
    }

    private void k(int i) {
        int[] iArr = this.f3575g;
        if (iArr.length < i) {
            int iE = n1.b.e(iArr.length, i);
            this.a = (K[]) Arrays.copyOf(this.a, iE);
            this.b = (V[]) Arrays.copyOf(this.b, iE);
            this.f3575g = m(this.f3575g, iE);
            this.h = m(this.h, iE);
            this.k = m(this.k, iE);
            this.l = m(this.l, iE);
        }
        if (this.f3573e.length < i) {
            int iA = l1.a(i, 1.0d);
            this.f3573e = h(iA);
            this.f3574f = h(iA);
            for (int i2 = 0; i2 < this.c; i2++) {
                int iF = f(l1.d(this.a[i2]));
                int[] iArr2 = this.f3575g;
                int[] iArr3 = this.f3573e;
                iArr2[i2] = iArr3[iF];
                iArr3[iF] = i2;
                int iF2 = f(l1.d(this.b[i2]));
                int[] iArr4 = this.h;
                int[] iArr5 = this.f3574f;
                iArr4[i2] = iArr5[iF2];
                iArr5[iF2] = i2;
            }
        }
    }

    private static int[] m(int[] iArr, int i) {
        int length = iArr.length;
        int[] iArrCopyOf = Arrays.copyOf(iArr, i);
        Arrays.fill(iArrCopyOf, length, i, -1);
        return iArrCopyOf;
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int iH = y2.h(objectInputStream);
        u(16);
        y2.c(this, objectInputStream, iH);
    }

    private void v(int i, int i2) {
        Preconditions.checkArgument(i != -1);
        int iF = f(i2);
        int[] iArr = this.f3575g;
        int[] iArr2 = this.f3573e;
        iArr[i] = iArr2[iF];
        iArr2[iF] = i;
    }

    private void w(int i, int i2) {
        Preconditions.checkArgument(i != -1);
        int iF = f(i2);
        int[] iArr = this.h;
        int[] iArr2 = this.f3574f;
        iArr[i] = iArr2[iF];
        iArr2[iF] = i;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        y2.i(this, objectOutputStream);
    }

    private void y(int i, int i2) {
        int i3;
        int i4;
        if (i == i2) {
            return;
        }
        int i5 = this.k[i];
        int i6 = this.l[i];
        I(i5, i2);
        I(i2, i6);
        K[] kArr = this.a;
        K k = kArr[i];
        V[] vArr = this.b;
        V v = vArr[i];
        kArr[i2] = k;
        vArr[i2] = v;
        int iF = f(l1.d(k));
        int[] iArr = this.f3573e;
        if (iArr[iF] == i) {
            iArr[iF] = i2;
        } else {
            int i7 = iArr[iF];
            int i8 = this.f3575g[i7];
            while (true) {
                int i9 = i8;
                i3 = i7;
                i7 = i9;
                if (i7 == i) {
                    break;
                } else {
                    i8 = this.f3575g[i7];
                }
            }
            this.f3575g[i3] = i2;
        }
        int[] iArr2 = this.f3575g;
        iArr2[i2] = iArr2[i];
        iArr2[i] = -1;
        int iF2 = f(l1.d(v));
        int[] iArr3 = this.f3574f;
        if (iArr3[iF2] == i) {
            iArr3[iF2] = i2;
        } else {
            int i10 = iArr3[iF2];
            int i11 = this.h[i10];
            while (true) {
                int i12 = i11;
                i4 = i10;
                i10 = i12;
                if (i10 == i) {
                    break;
                } else {
                    i11 = this.h[i10];
                }
            }
            this.h[i4] = i2;
        }
        int[] iArr4 = this.h;
        iArr4[i2] = iArr4[i];
        iArr4[i] = -1;
    }

    K A(V v, K k, boolean z) {
        int iD = l1.d(v);
        int iS = s(v, iD);
        if (iS != -1) {
            K k2 = this.a[iS];
            if (Objects.equal(k2, k)) {
                return k;
            }
            G(iS, k, z);
            return k2;
        }
        int i = this.j;
        int iD2 = l1.d(k);
        int iQ = q(k, iD2);
        if (!z) {
            Preconditions.checkArgument(iQ == -1, "Key already present: %s", k);
        } else if (iQ != -1) {
            i = this.k[iQ];
            D(iQ, iD2);
        }
        k(this.c + 1);
        K[] kArr = this.a;
        int i2 = this.c;
        kArr[i2] = k;
        this.b[i2] = v;
        v(i2, iD2);
        w(this.c, iD);
        int i3 = i == -2 ? this.i : this.l[i];
        I(i, this.c);
        I(this.c, i3);
        this.c++;
        this.f3572d++;
        return null;
    }

    void B(int i) {
        D(i, l1.d(this.a[i]));
    }

    void D(int i, int i2) {
        C(i, i2, l1.d(this.b[i]));
    }

    void E(int i, int i2) {
        C(i, l1.d(this.a[i]), i2);
    }

    K F(Object obj) {
        int iD = l1.d(obj);
        int iS = s(obj, iD);
        if (iS == -1) {
            return null;
        }
        K k = this.a[iS];
        E(iS, iD);
        return k;
    }

    @Override // com.google.common.collect.w
    public w<V, K> M() {
        w<V, K> wVar = this.p;
        if (wVar != null) {
            return wVar;
        }
        d dVar = new d(this);
        this.p = dVar;
        return dVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        Arrays.fill(this.a, 0, this.c, (Object) null);
        Arrays.fill(this.b, 0, this.c, (Object) null);
        Arrays.fill(this.f3573e, -1);
        Arrays.fill(this.f3574f, -1);
        Arrays.fill(this.f3575g, 0, this.c, -1);
        Arrays.fill(this.h, 0, this.c, -1);
        Arrays.fill(this.k, 0, this.c, -1);
        Arrays.fill(this.l, 0, this.c, -1);
        this.c = 0;
        this.i = -2;
        this.j = -2;
        this.f3572d++;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return p(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(Object obj) {
        return r(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.o;
        if (set != null) {
            return set;
        }
        c cVar = new c();
        this.o = cVar;
        return cVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        int iP = p(obj);
        if (iP == -1) {
            return null;
        }
        return this.b[iP];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.m;
        if (set != null) {
            return set;
        }
        f fVar = new f();
        this.m = fVar;
        return fVar;
    }

    int n(Object obj, int i, int[] iArr, int[] iArr2, Object[] objArr) {
        int i2 = iArr[f(i)];
        while (i2 != -1) {
            if (Objects.equal(objArr[i2], obj)) {
                return i2;
            }
            i2 = iArr2[i2];
        }
        return -1;
    }

    int p(Object obj) {
        return q(obj, l1.d(obj));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        return z(k, v, false);
    }

    int q(Object obj, int i) {
        return n(obj, i, this.f3573e, this.f3575g, this.a);
    }

    int r(Object obj) {
        return s(obj, l1.d(obj));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        int iD = l1.d(obj);
        int iQ = q(obj, iD);
        if (iQ == -1) {
            return null;
        }
        V v = this.b[iQ];
        D(iQ, iD);
        return v;
    }

    int s(Object obj, int i) {
        return n(obj, i, this.f3574f, this.h, this.b);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.c;
    }

    K t(Object obj) {
        int iR = r(obj);
        if (iR == -1) {
            return null;
        }
        return this.a[iR];
    }

    void u(int i) {
        z.b(i, "expectedSize");
        int iA = l1.a(i, 1.0d);
        this.c = 0;
        this.a = (K[]) new Object[i];
        this.b = (V[]) new Object[i];
        this.f3573e = h(iA);
        this.f3574f = h(iA);
        this.f3575g = h(i);
        this.h = h(i);
        this.i = -2;
        this.j = -2;
        this.k = h(i);
        this.l = h(i);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<V> values() {
        Set<V> set = this.n;
        if (set != null) {
            return set;
        }
        g gVar = new g();
        this.n = gVar;
        return gVar;
    }

    V z(K k, V v, boolean z) {
        int iD = l1.d(k);
        int iQ = q(k, iD);
        if (iQ != -1) {
            V v2 = this.b[iQ];
            if (Objects.equal(v2, v)) {
                return v;
            }
            H(iQ, v, z);
            return v2;
        }
        int iD2 = l1.d(v);
        int iS = s(v, iD2);
        if (!z) {
            Preconditions.checkArgument(iS == -1, "Value already present: %s", v);
        } else if (iS != -1) {
            E(iS, iD2);
        }
        k(this.c + 1);
        K[] kArr = this.a;
        int i = this.c;
        kArr[i] = k;
        this.b[i] = v;
        v(i, iD);
        w(this.c, iD2);
        I(this.j, this.c);
        I(this.c, -2);
        this.c++;
        this.f3572d++;
        return null;
    }
}
