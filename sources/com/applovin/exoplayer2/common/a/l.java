package com.applovin.exoplayer2.common.a;

import com.applovin.exoplayer2.common.base.Objects;
import com.applovin.exoplayer2.common.base.Preconditions;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: loaded from: classes.dex */
class l<K, V> extends AbstractMap<K, V> implements Serializable {
    private transient int oW;

    @MonotonicNonNullDecl
    private transient int[] pG;

    @MonotonicNonNullDecl
    transient long[] pH;

    @MonotonicNonNullDecl
    transient Object[] pI;

    @MonotonicNonNullDecl
    transient Object[] pJ;
    transient float pK;
    transient int pL;
    private transient int pM;

    @MonotonicNonNullDecl
    private transient Set<K> pN;

    @MonotonicNonNullDecl
    private transient Set<Map.Entry<K, V>> pO;

    @MonotonicNonNullDecl
    private transient Collection<V> pP;

    class a extends AbstractSet<Map.Entry<K, V>> {
        a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            l.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int iIndexOf = l.this.indexOf(entry.getKey());
            return iIndexOf != -1 && Objects.equal(l.this.pJ[iIndexOf], entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return l.this.fL();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@NullableDecl Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int iIndexOf = l.this.indexOf(entry.getKey());
            if (iIndexOf == -1 || !Objects.equal(l.this.pJ[iIndexOf], entry.getValue())) {
                return false;
            }
            l.this.ba(iIndexOf);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return l.this.oW;
        }
    }

    private abstract class b<T> implements Iterator<T> {
        int pR;
        int pS;
        int pT;

        private b() {
            this.pR = l.this.pL;
            this.pS = l.this.fJ();
            this.pT = -1;
        }

        private void fN() {
            if (l.this.pL != this.pR) {
                throw new ConcurrentModificationException();
            }
        }

        abstract T bd(int i);

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.pS >= 0;
        }

        @Override // java.util.Iterator
        public T next() {
            fN();
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            int i = this.pS;
            this.pT = i;
            T tBd = bd(i);
            this.pS = l.this.bc(this.pS);
            return tBd;
        }

        @Override // java.util.Iterator
        public void remove() {
            fN();
            j.I(this.pT >= 0);
            this.pR++;
            l.this.ba(this.pT);
            this.pS = l.this.q(this.pS, this.pT);
            this.pT = -1;
        }
    }

    class c extends AbstractSet<K> {
        c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            l.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return l.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return l.this.fK();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@NullableDecl Object obj) {
            int iIndexOf = l.this.indexOf(obj);
            if (iIndexOf == -1) {
                return false;
            }
            l.this.ba(iIndexOf);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return l.this.oW;
        }
    }

    final class d extends com.applovin.exoplayer2.common.a.e<K, V> {
        private int pU;

        @NullableDecl
        private final K pn;

        d(int i) {
            this.pn = (K) l.this.pI[i];
            this.pU = i;
        }

        private void fO() {
            int i = this.pU;
            if (i == -1 || i >= l.this.size() || !Objects.equal(this.pn, l.this.pI[this.pU])) {
                this.pU = l.this.indexOf(this.pn);
            }
        }

        @Override // com.applovin.exoplayer2.common.a.e, java.util.Map.Entry
        public K getKey() {
            return this.pn;
        }

        @Override // com.applovin.exoplayer2.common.a.e, java.util.Map.Entry
        public V getValue() {
            fO();
            int i = this.pU;
            if (i == -1) {
                return null;
            }
            return (V) l.this.pJ[i];
        }

        @Override // com.applovin.exoplayer2.common.a.e, java.util.Map.Entry
        public V setValue(V v) {
            fO();
            int i = this.pU;
            if (i == -1) {
                l.this.put(this.pn, v);
                return null;
            }
            Object[] objArr = l.this.pJ;
            V v2 = (V) objArr[i];
            objArr[i] = v;
            return v2;
        }
    }

    class e extends AbstractCollection<V> {
        e() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            l.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return l.this.fM();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return l.this.oW;
        }
    }

    l() {
        a(3, 1.0f);
    }

    l(int i) {
        this(i, 1.0f);
    }

    l(int i, float f2) {
        a(i, f2);
    }

    @NullableDecl
    private V a(@NullableDecl Object obj, int i) {
        int iFI = fI() & i;
        int i2 = this.pG[iFI];
        if (i2 == -1) {
            return null;
        }
        int i3 = -1;
        while (true) {
            if (ab(this.pH[i2]) == i && Objects.equal(obj, this.pI[i2])) {
                V v = (V) this.pJ[i2];
                if (i3 == -1) {
                    this.pG[iFI] = ac(this.pH[i2]);
                } else {
                    long[] jArr = this.pH;
                    jArr[i3] = b(jArr[i3], ac(jArr[i2]));
                }
                bb(i2);
                this.oW--;
                this.pL++;
                return v;
            }
            int iAc = ac(this.pH[i2]);
            if (iAc == -1) {
                return null;
            }
            i3 = i2;
            i2 = iAc;
        }
    }

    public static <K, V> l<K, V> aT(int i) {
        return new l<>(i);
    }

    private static int[] aU(int i) {
        int[] iArr = new int[i];
        Arrays.fill(iArr, -1);
        return iArr;
    }

    private static long[] aV(int i) {
        long[] jArr = new long[i];
        Arrays.fill(jArr, -1L);
        return jArr;
    }

    private void aX(int i) {
        int length = this.pH.length;
        if (i > length) {
            int iMax = Math.max(1, length >>> 1) + length;
            if (iMax < 0) {
                iMax = Integer.MAX_VALUE;
            }
            if (iMax != length) {
                aY(iMax);
            }
        }
    }

    private void aZ(int i) {
        if (this.pG.length >= 1073741824) {
            this.pM = Integer.MAX_VALUE;
            return;
        }
        int i2 = ((int) (i * this.pK)) + 1;
        int[] iArrAU = aU(i);
        long[] jArr = this.pH;
        int length = iArrAU.length - 1;
        for (int i3 = 0; i3 < this.oW; i3++) {
            int iAb = ab(jArr[i3]);
            int i4 = iAb & length;
            int i5 = iArrAU[i4];
            iArrAU[i4] = i3;
            jArr[i3] = (((long) iAb) << 32) | (((long) i5) & 4294967295L);
        }
        this.pM = i2;
        this.pG = iArrAU;
    }

    private static int ab(long j) {
        return (int) (j >>> 32);
    }

    private static int ac(long j) {
        return (int) j;
    }

    private static long b(long j, int i) {
        return (j & (-4294967296L)) | (((long) i) & 4294967295L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public V ba(int i) {
        return a(this.pI[i], ab(this.pH[i]));
    }

    public static <K, V> l<K, V> fH() {
        return new l<>();
    }

    private int fI() {
        return this.pG.length - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int indexOf(@NullableDecl Object obj) {
        int iS = p.s(obj);
        int iAc = this.pG[fI() & iS];
        while (iAc != -1) {
            long j = this.pH[iAc];
            if (ab(j) == iS && Objects.equal(obj, this.pI[iAc])) {
                return iAc;
            }
            iAc = ac(j);
        }
        return -1;
    }

    void a(int i, float f2) {
        Preconditions.checkArgument(i >= 0, "Initial capacity must be non-negative");
        Preconditions.checkArgument(f2 > 0.0f, "Illegal load factor");
        int iA = p.a(i, f2);
        this.pG = aU(iA);
        this.pK = f2;
        this.pI = new Object[i];
        this.pJ = new Object[i];
        this.pH = aV(i);
        this.pM = Math.max(1, (int) (iA * f2));
    }

    void a(int i, @NullableDecl K k, @NullableDecl V v, int i2) {
        this.pH[i] = (((long) i2) << 32) | 4294967295L;
        this.pI[i] = k;
        this.pJ[i] = v;
    }

    void aW(int i) {
    }

    void aY(int i) {
        this.pI = Arrays.copyOf(this.pI, i);
        this.pJ = Arrays.copyOf(this.pJ, i);
        long[] jArr = this.pH;
        int length = jArr.length;
        long[] jArrCopyOf = Arrays.copyOf(jArr, i);
        if (i > length) {
            Arrays.fill(jArrCopyOf, length, i, -1L);
        }
        this.pH = jArrCopyOf;
    }

    void bb(int i) {
        int size = size() - 1;
        if (i >= size) {
            this.pI[i] = null;
            this.pJ[i] = null;
            this.pH[i] = -1;
            return;
        }
        Object[] objArr = this.pI;
        objArr[i] = objArr[size];
        Object[] objArr2 = this.pJ;
        objArr2[i] = objArr2[size];
        objArr[size] = null;
        objArr2[size] = null;
        long[] jArr = this.pH;
        long j = jArr[size];
        jArr[i] = j;
        jArr[size] = -1;
        int iAb = ab(j) & fI();
        int[] iArr = this.pG;
        int i2 = iArr[iAb];
        if (i2 == size) {
            iArr[iAb] = i;
            return;
        }
        while (true) {
            long j2 = this.pH[i2];
            int iAc = ac(j2);
            if (iAc == size) {
                this.pH[i2] = b(j2, i);
                return;
            }
            i2 = iAc;
        }
    }

    int bc(int i) {
        int i2 = i + 1;
        if (i2 < this.oW) {
            return i2;
        }
        return -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.pL++;
        Arrays.fill(this.pI, 0, this.oW, (Object) null);
        Arrays.fill(this.pJ, 0, this.oW, (Object) null);
        Arrays.fill(this.pG, -1);
        Arrays.fill(this.pH, -1L);
        this.oW = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(@NullableDecl Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(@NullableDecl Object obj) {
        for (int i = 0; i < this.oW; i++) {
            if (Objects.equal(obj, this.pJ[i])) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.pO;
        if (set != null) {
            return set;
        }
        Set<Map.Entry<K, V>> setFn = fn();
        this.pO = setFn;
        return setFn;
    }

    int fJ() {
        return isEmpty() ? -1 : 0;
    }

    Iterator<K> fK() {
        return new l<K, V>.b<K>() { // from class: com.applovin.exoplayer2.common.a.l.1
            @Override // com.applovin.exoplayer2.common.a.l.b
            K bd(int i) {
                return (K) l.this.pI[i];
            }
        };
    }

    Iterator<Map.Entry<K, V>> fL() {
        return new l<K, V>.b<Map.Entry<K, V>>() { // from class: com.applovin.exoplayer2.common.a.l.2
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.applovin.exoplayer2.common.a.l.b
            /* JADX INFO: renamed from: be, reason: merged with bridge method [inline-methods] */
            public Map.Entry<K, V> bd(int i) {
                return new d(i);
            }
        };
    }

    Iterator<V> fM() {
        return new l<K, V>.b<V>() { // from class: com.applovin.exoplayer2.common.a.l.3
            @Override // com.applovin.exoplayer2.common.a.l.b
            V bd(int i) {
                return (V) l.this.pJ[i];
            }
        };
    }

    Set<K> fe() {
        return new c();
    }

    Collection<V> fg() {
        return new e();
    }

    Set<Map.Entry<K, V>> fn() {
        return new a();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(@NullableDecl Object obj) {
        int iIndexOf = indexOf(obj);
        aW(iIndexOf);
        if (iIndexOf == -1) {
            return null;
        }
        return (V) this.pJ[iIndexOf];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        return this.oW == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.pN;
        if (set != null) {
            return set;
        }
        Set<K> setFe = fe();
        this.pN = setFe;
        return setFe;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @NullableDecl
    public V put(@NullableDecl K k, @NullableDecl V v) {
        long[] jArr = this.pH;
        Object[] objArr = this.pI;
        Object[] objArr2 = this.pJ;
        int iS = p.s(k);
        int iFI = fI() & iS;
        int i = this.oW;
        int[] iArr = this.pG;
        int i2 = iArr[iFI];
        if (i2 == -1) {
            iArr[iFI] = i;
        } else {
            while (true) {
                long j = jArr[i2];
                if (ab(j) == iS && Objects.equal(k, objArr[i2])) {
                    V v2 = (V) objArr2[i2];
                    objArr2[i2] = v;
                    aW(i2);
                    return v2;
                }
                int iAc = ac(j);
                if (iAc == -1) {
                    jArr[i2] = b(j, i);
                    break;
                }
                i2 = iAc;
            }
        }
        if (i == Integer.MAX_VALUE) {
            throw new IllegalStateException("Cannot contain more than Integer.MAX_VALUE elements!");
        }
        int i3 = i + 1;
        aX(i3);
        a(i, k, v, iS);
        this.oW = i3;
        if (i >= this.pM) {
            aZ(this.pG.length * 2);
        }
        this.pL++;
        return null;
    }

    int q(int i, int i2) {
        return i - 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @NullableDecl
    public V remove(@NullableDecl Object obj) {
        return a(obj, p.s(obj));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.oW;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.pP;
        if (collection != null) {
            return collection;
        }
        Collection<V> collectionFg = fg();
        this.pP = collectionFg;
        return collectionFg;
    }
}
