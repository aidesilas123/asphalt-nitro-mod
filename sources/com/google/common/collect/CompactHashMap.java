package com.google.common.collect;

import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
class CompactHashMap<K, V> extends AbstractMap<K, V> implements Serializable {
    private static final Object a = new Object();
    private transient Object b;
    transient int[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    transient Object[] f3546d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    transient Object[] f3547e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private transient int f3548f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private transient int f3549g;
    private transient Set<K> h;
    private transient Set<Map.Entry<K, V>> i;
    private transient Collection<V> j;

    class a extends CompactHashMap<K, V>.e<K> {
        a() {
            super(CompactHashMap.this, null);
        }

        @Override // com.google.common.collect.CompactHashMap.e
        K c(int i) {
            return (K) CompactHashMap.this.J(i);
        }
    }

    class b extends CompactHashMap<K, V>.e<Map.Entry<K, V>> {
        b() {
            super(CompactHashMap.this, null);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.collect.CompactHashMap.e
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> c(int i) {
            return new g(i);
        }
    }

    class c extends CompactHashMap<K, V>.e<V> {
        c() {
            super(CompactHashMap.this, null);
        }

        @Override // com.google.common.collect.CompactHashMap.e
        V c(int i) {
            return (V) CompactHashMap.this.a0(i);
        }
    }

    class d extends AbstractSet<Map.Entry<K, V>> {
        d() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            CompactHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map<K, V> mapZ = CompactHashMap.this.z();
            if (mapZ != null) {
                return mapZ.entrySet().contains(obj);
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int iG = CompactHashMap.this.G(entry.getKey());
            return iG != -1 && Objects.equal(CompactHashMap.this.a0(iG), entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return CompactHashMap.this.B();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map<K, V> mapZ = CompactHashMap.this.z();
            if (mapZ != null) {
                return mapZ.entrySet().remove(obj);
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (CompactHashMap.this.N()) {
                return false;
            }
            int iE = CompactHashMap.this.E();
            int iF = a0.f(entry.getKey(), entry.getValue(), iE, CompactHashMap.this.R(), CompactHashMap.this.P(), CompactHashMap.this.Q(), CompactHashMap.this.S());
            if (iF == -1) {
                return false;
            }
            CompactHashMap.this.L(iF, iE);
            CompactHashMap.e(CompactHashMap.this);
            CompactHashMap.this.F();
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return CompactHashMap.this.size();
        }
    }

    private abstract class e<T> implements Iterator<T> {
        int a;
        int b;
        int c;

        private e() {
            this.a = CompactHashMap.this.f3548f;
            this.b = CompactHashMap.this.C();
            this.c = -1;
        }

        /* synthetic */ e(CompactHashMap compactHashMap, a aVar) {
            this();
        }

        private void b() {
            if (CompactHashMap.this.f3548f != this.a) {
                throw new ConcurrentModificationException();
            }
        }

        abstract T c(int i);

        void d() {
            this.a += 32;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.b >= 0;
        }

        @Override // java.util.Iterator
        public T next() {
            b();
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            int i = this.b;
            this.c = i;
            T tC = c(i);
            this.b = CompactHashMap.this.D(this.b);
            return tC;
        }

        @Override // java.util.Iterator
        public void remove() {
            b();
            z.e(this.c >= 0);
            d();
            CompactHashMap compactHashMap = CompactHashMap.this;
            compactHashMap.remove(compactHashMap.J(this.c));
            this.b = CompactHashMap.this.r(this.b, this.c);
            this.c = -1;
        }
    }

    class f extends AbstractSet<K> {
        f() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            CompactHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return CompactHashMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return CompactHashMap.this.K();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map<K, V> mapZ = CompactHashMap.this.z();
            return mapZ != null ? mapZ.keySet().remove(obj) : CompactHashMap.this.O(obj) != CompactHashMap.a;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return CompactHashMap.this.size();
        }
    }

    final class g extends i<K, V> {
        private final K a;
        private int b;

        g(int i) {
            this.a = (K) CompactHashMap.this.J(i);
            this.b = i;
        }

        private void c() {
            int i = this.b;
            if (i == -1 || i >= CompactHashMap.this.size() || !Objects.equal(this.a, CompactHashMap.this.J(this.b))) {
                this.b = CompactHashMap.this.G(this.a);
            }
        }

        @Override // com.google.common.collect.i, java.util.Map.Entry
        public K getKey() {
            return this.a;
        }

        @Override // com.google.common.collect.i, java.util.Map.Entry
        public V getValue() {
            Map<K, V> mapZ = CompactHashMap.this.z();
            if (mapZ != null) {
                return (V) e2.a(mapZ.get(this.a));
            }
            c();
            int i = this.b;
            return i == -1 ? (V) e2.b() : (V) CompactHashMap.this.a0(i);
        }

        @Override // com.google.common.collect.i, java.util.Map.Entry
        public V setValue(V v) {
            Map<K, V> mapZ = CompactHashMap.this.z();
            if (mapZ != null) {
                return (V) e2.a(mapZ.put(this.a, v));
            }
            c();
            int i = this.b;
            if (i == -1) {
                CompactHashMap.this.put(this.a, v);
                return (V) e2.b();
            }
            V v2 = (V) CompactHashMap.this.a0(i);
            CompactHashMap.this.Z(this.b, v);
            return v2;
        }
    }

    class h extends AbstractCollection<V> {
        h() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            CompactHashMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return CompactHashMap.this.b0();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return CompactHashMap.this.size();
        }
    }

    CompactHashMap() {
        H(3);
    }

    CompactHashMap(int i) {
        H(i);
    }

    private int A(int i) {
        return P()[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int E() {
        return (1 << (this.f3548f & 31)) - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int G(Object obj) {
        if (N()) {
            return -1;
        }
        int iD = l1.d(obj);
        int iE = E();
        int iH = a0.h(R(), iD & iE);
        if (iH == 0) {
            return -1;
        }
        int iB = a0.b(iD, iE);
        do {
            int i = iH - 1;
            int iA = A(i);
            if (a0.b(iA, iE) == iB && Objects.equal(obj, J(i))) {
                return i;
            }
            iH = a0.c(iA, iE);
        } while (iH != 0);
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public K J(int i) {
        return (K) Q()[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object O(Object obj) {
        if (N()) {
            return a;
        }
        int iE = E();
        int iF = a0.f(obj, null, iE, R(), P(), Q(), null);
        if (iF == -1) {
            return a;
        }
        V vA0 = a0(iF);
        L(iF, iE);
        this.f3549g--;
        F();
        return vA0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int[] P() {
        int[] iArr = this.c;
        java.util.Objects.requireNonNull(iArr);
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object[] Q() {
        Object[] objArr = this.f3546d;
        java.util.Objects.requireNonNull(objArr);
        return objArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object R() {
        Object obj = this.b;
        java.util.Objects.requireNonNull(obj);
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object[] S() {
        Object[] objArr = this.f3547e;
        java.util.Objects.requireNonNull(objArr);
        return objArr;
    }

    private void U(int i) {
        int iMin;
        int length = P().length;
        if (i <= length || (iMin = Math.min(1073741823, (Math.max(1, length >>> 1) + length) | 1)) == length) {
            return;
        }
        T(iMin);
    }

    private int V(int i, int i2, int i3, int i4) {
        Object objA = a0.a(i2);
        int i5 = i2 - 1;
        if (i4 != 0) {
            a0.i(objA, i3 & i5, i4 + 1);
        }
        Object objR = R();
        int[] iArrP = P();
        for (int i6 = 0; i6 <= i; i6++) {
            int iH = a0.h(objR, i6);
            while (iH != 0) {
                int i7 = iH - 1;
                int i8 = iArrP[i7];
                int iB = a0.b(i8, i) | i6;
                int i9 = iB & i5;
                int iH2 = a0.h(objA, i9);
                a0.i(objA, i9, iH);
                iArrP[i7] = a0.d(iB, iH2, i5);
                iH = a0.c(i8, i);
            }
        }
        this.b = objA;
        X(i5);
        return i5;
    }

    private void W(int i, int i2) {
        P()[i] = i2;
    }

    private void X(int i) {
        this.f3548f = a0.d(this.f3548f, 32 - Integer.numberOfLeadingZeros(i), 31);
    }

    private void Y(int i, K k) {
        Q()[i] = k;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Z(int i, V v) {
        S()[i] = v;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public V a0(int i) {
        return (V) S()[i];
    }

    public static <K, V> CompactHashMap<K, V> create() {
        return new CompactHashMap<>();
    }

    public static <K, V> CompactHashMap<K, V> createWithExpectedSize(int i) {
        return new CompactHashMap<>(i);
    }

    static /* synthetic */ int e(CompactHashMap compactHashMap) {
        int i = compactHashMap.f3549g;
        compactHashMap.f3549g = i - 1;
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int i = objectInputStream.readInt();
        if (i < 0) {
            StringBuilder sb = new StringBuilder(25);
            sb.append("Invalid size: ");
            sb.append(i);
            throw new InvalidObjectException(sb.toString());
        }
        H(i);
        for (int i2 = 0; i2 < i; i2++) {
            put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        Iterator<Map.Entry<K, V>> itB = B();
        while (itB.hasNext()) {
            Map.Entry<K, V> next = itB.next();
            objectOutputStream.writeObject(next.getKey());
            objectOutputStream.writeObject(next.getValue());
        }
    }

    Iterator<Map.Entry<K, V>> B() {
        Map<K, V> mapZ = z();
        return mapZ != null ? mapZ.entrySet().iterator() : new b();
    }

    int C() {
        return isEmpty() ? -1 : 0;
    }

    int D(int i) {
        int i2 = i + 1;
        if (i2 < this.f3549g) {
            return i2;
        }
        return -1;
    }

    void F() {
        this.f3548f += 32;
    }

    void H(int i) {
        Preconditions.checkArgument(i >= 0, "Expected size must be >= 0");
        this.f3548f = Ints.constrainToRange(i, 1, 1073741823);
    }

    void I(int i, K k, V v, int i2, int i3) {
        W(i, a0.d(i2, 0, i3));
        Y(i, k);
        Z(i, v);
    }

    Iterator<K> K() {
        Map<K, V> mapZ = z();
        return mapZ != null ? mapZ.keySet().iterator() : new a();
    }

    void L(int i, int i2) {
        Object objR = R();
        int[] iArrP = P();
        Object[] objArrQ = Q();
        Object[] objArrS = S();
        int size = size() - 1;
        if (i >= size) {
            objArrQ[i] = null;
            objArrS[i] = null;
            iArrP[i] = 0;
            return;
        }
        Object obj = objArrQ[size];
        objArrQ[i] = obj;
        objArrS[i] = objArrS[size];
        objArrQ[size] = null;
        objArrS[size] = null;
        iArrP[i] = iArrP[size];
        iArrP[size] = 0;
        int iD = l1.d(obj) & i2;
        int iH = a0.h(objR, iD);
        int i3 = size + 1;
        if (iH == i3) {
            a0.i(objR, iD, i + 1);
            return;
        }
        while (true) {
            int i4 = iH - 1;
            int i5 = iArrP[i4];
            int iC = a0.c(i5, i2);
            if (iC == i3) {
                iArrP[i4] = a0.d(i5, i + 1, i2);
                return;
            }
            iH = iC;
        }
    }

    boolean N() {
        return this.b == null;
    }

    void T(int i) {
        this.c = Arrays.copyOf(P(), i);
        this.f3546d = Arrays.copyOf(Q(), i);
        this.f3547e = Arrays.copyOf(S(), i);
    }

    Iterator<V> b0() {
        Map<K, V> mapZ = z();
        return mapZ != null ? mapZ.values().iterator() : new c();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        if (N()) {
            return;
        }
        F();
        Map<K, V> mapZ = z();
        if (mapZ != null) {
            this.f3548f = Ints.constrainToRange(size(), 3, 1073741823);
            mapZ.clear();
            this.b = null;
            this.f3549g = 0;
            return;
        }
        Arrays.fill(Q(), 0, this.f3549g, (Object) null);
        Arrays.fill(S(), 0, this.f3549g, (Object) null);
        a0.g(R());
        Arrays.fill(P(), 0, this.f3549g, 0);
        this.f3549g = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Map<K, V> mapZ = z();
        return mapZ != null ? mapZ.containsKey(obj) : G(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(Object obj) {
        Map<K, V> mapZ = z();
        if (mapZ != null) {
            return mapZ.containsValue(obj);
        }
        for (int i = 0; i < this.f3549g; i++) {
            if (Objects.equal(obj, a0(i))) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.i;
        if (set != null) {
            return set;
        }
        Set<Map.Entry<K, V>> setU = u();
        this.i = setU;
        return setU;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Map<K, V> mapZ = z();
        if (mapZ != null) {
            return mapZ.get(obj);
        }
        int iG = G(obj);
        if (iG == -1) {
            return null;
        }
        q(iG);
        return a0(iG);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.h;
        if (set != null) {
            return set;
        }
        Set<K> setW = w();
        this.h = setW;
        return setW;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        int iV;
        int i;
        if (N()) {
            s();
        }
        Map<K, V> mapZ = z();
        if (mapZ != null) {
            return mapZ.put(k, v);
        }
        int[] iArrP = P();
        Object[] objArrQ = Q();
        Object[] objArrS = S();
        int i2 = this.f3549g;
        int i3 = i2 + 1;
        int iD = l1.d(k);
        int iE = E();
        int i4 = iD & iE;
        int iH = a0.h(R(), i4);
        if (iH != 0) {
            int iB = a0.b(iD, iE);
            int i5 = 0;
            while (true) {
                int i6 = iH - 1;
                int i7 = iArrP[i6];
                if (a0.b(i7, iE) == iB && Objects.equal(k, objArrQ[i6])) {
                    V v2 = (V) objArrS[i6];
                    objArrS[i6] = v;
                    q(i6);
                    return v2;
                }
                int iC = a0.c(i7, iE);
                i5++;
                if (iC != 0) {
                    iH = iC;
                } else {
                    if (i5 >= 9) {
                        return t().put(k, v);
                    }
                    if (i3 > iE) {
                        iV = V(iE, a0.e(iE), iD, i2);
                    } else {
                        iArrP[i6] = a0.d(i7, i3, iE);
                    }
                }
            }
            i = iE;
        } else if (i3 > iE) {
            iV = V(iE, a0.e(iE), iD, i2);
            i = iV;
        } else {
            a0.i(R(), i4, i3);
            i = iE;
        }
        U(i3);
        I(i2, k, v, iD, i);
        this.f3549g = i3;
        F();
        return null;
    }

    void q(int i) {
    }

    int r(int i, int i2) {
        return i - 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        Map<K, V> mapZ = z();
        if (mapZ != null) {
            return mapZ.remove(obj);
        }
        V v = (V) O(obj);
        if (v == a) {
            return null;
        }
        return v;
    }

    int s() {
        Preconditions.checkState(N(), "Arrays already allocated");
        int i = this.f3548f;
        int iJ = a0.j(i);
        this.b = a0.a(iJ);
        X(iJ - 1);
        this.c = new int[i];
        this.f3546d = new Object[i];
        this.f3547e = new Object[i];
        return i;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        Map<K, V> mapZ = z();
        return mapZ != null ? mapZ.size() : this.f3549g;
    }

    Map<K, V> t() {
        Map<K, V> mapV = v(E() + 1);
        int iC = C();
        while (iC >= 0) {
            mapV.put(J(iC), a0(iC));
            iC = D(iC);
        }
        this.b = mapV;
        this.c = null;
        this.f3546d = null;
        this.f3547e = null;
        F();
        return mapV;
    }

    Set<Map.Entry<K, V>> u() {
        return new d();
    }

    Map<K, V> v(int i) {
        return new LinkedHashMap(i, 1.0f);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.j;
        if (collection != null) {
            return collection;
        }
        Collection<V> collectionY = y();
        this.j = collectionY;
        return collectionY;
    }

    Set<K> w() {
        return new f();
    }

    Collection<V> y() {
        return new h();
    }

    Map<K, V> z() {
        Object obj = this.b;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }
}
