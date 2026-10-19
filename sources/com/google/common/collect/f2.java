package com.google.common.collect;

import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.Multisets;
import com.google.common.collect.c2;
import java.util.Arrays;

/* JADX INFO: compiled from: ObjectCountHashMap.java */
/* JADX INFO: loaded from: classes3.dex */
class f2<K> {
    transient Object[] a;
    transient int[] b;
    transient int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    transient int f3744d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private transient int[] f3745e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    transient long[] f3746f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private transient float f3747g;
    private transient int h;

    /* JADX INFO: compiled from: ObjectCountHashMap.java */
    class a extends Multisets.f<K> {
        final K a;
        int b;

        a(int i) {
            this.a = (K) f2.this.a[i];
            this.b = i;
        }

        @Override // com.google.common.collect.c2.a
        public K c() {
            return this.a;
        }

        void d() {
            int i = this.b;
            if (i == -1 || i >= f2.this.C() || !Objects.equal(this.a, f2.this.a[this.b])) {
                this.b = f2.this.m(this.a);
            }
        }

        @Override // com.google.common.collect.c2.a
        public int getCount() {
            d();
            int i = this.b;
            if (i == -1) {
                return 0;
            }
            return f2.this.b[i];
        }
    }

    f2() {
        n(3, 1.0f);
    }

    f2(int i) {
        this(i, 1.0f);
    }

    f2(int i, float f2) {
        n(i, f2);
    }

    f2(f2<? extends K> f2Var) {
        n(f2Var.C(), 1.0f);
        int iE = f2Var.e();
        while (iE != -1) {
            u(f2Var.i(iE), f2Var.k(iE));
            iE = f2Var.s(iE);
        }
    }

    private void A(int i) {
        if (this.f3745e.length >= 1073741824) {
            this.h = Integer.MAX_VALUE;
            return;
        }
        int i2 = ((int) (i * this.f3747g)) + 1;
        int[] iArrR = r(i);
        long[] jArr = this.f3746f;
        int length = iArrR.length - 1;
        for (int i3 = 0; i3 < this.c; i3++) {
            int iH = h(jArr[i3]);
            int i4 = iH & length;
            int i5 = iArrR[i4];
            iArrR[i4] = i3;
            jArr[i3] = (((long) iH) << 32) | (((long) i5) & 4294967295L);
        }
        this.h = i2;
        this.f3745e = iArrR;
    }

    private static long D(long j, int i) {
        return (j & (-4294967296L)) | (((long) i) & 4294967295L);
    }

    static <K> f2<K> b() {
        return new f2<>();
    }

    static <K> f2<K> c(int i) {
        return new f2<>(i);
    }

    private static int h(long j) {
        return (int) (j >>> 32);
    }

    private static int j(long j) {
        return (int) j;
    }

    private int l() {
        return this.f3745e.length - 1;
    }

    private static long[] q(int i) {
        long[] jArr = new long[i];
        Arrays.fill(jArr, -1L);
        return jArr;
    }

    private static int[] r(int i) {
        int[] iArr = new int[i];
        Arrays.fill(iArr, -1);
        return iArr;
    }

    private int w(Object obj, int i) {
        int iL = l() & i;
        int i2 = this.f3745e[iL];
        if (i2 == -1) {
            return 0;
        }
        int i3 = -1;
        while (true) {
            if (h(this.f3746f[i2]) == i && Objects.equal(obj, this.a[i2])) {
                int i4 = this.b[i2];
                if (i3 == -1) {
                    this.f3745e[iL] = j(this.f3746f[i2]);
                } else {
                    long[] jArr = this.f3746f;
                    jArr[i3] = D(jArr[i3], j(jArr[i2]));
                }
                p(i2);
                this.c--;
                this.f3744d++;
                return i4;
            }
            int iJ = j(this.f3746f[i2]);
            if (iJ == -1) {
                return 0;
            }
            i3 = i2;
            i2 = iJ;
        }
    }

    private void z(int i) {
        int length = this.f3746f.length;
        if (i > length) {
            int iMax = Math.max(1, length >>> 1) + length;
            if (iMax < 0) {
                iMax = Integer.MAX_VALUE;
            }
            if (iMax != length) {
                y(iMax);
            }
        }
    }

    void B(int i, int i2) {
        Preconditions.checkElementIndex(i, this.c);
        this.b[i] = i2;
    }

    int C() {
        return this.c;
    }

    public void a() {
        this.f3744d++;
        Arrays.fill(this.a, 0, this.c, (Object) null);
        Arrays.fill(this.b, 0, this.c, 0);
        Arrays.fill(this.f3745e, -1);
        Arrays.fill(this.f3746f, -1L);
        this.c = 0;
    }

    void d(int i) {
        if (i > this.f3746f.length) {
            y(i);
        }
        if (i >= this.h) {
            A(Math.max(2, Integer.highestOneBit(i - 1) << 1));
        }
    }

    int e() {
        return this.c == 0 ? -1 : 0;
    }

    public int f(Object obj) {
        int iM = m(obj);
        if (iM == -1) {
            return 0;
        }
        return this.b[iM];
    }

    c2.a<K> g(int i) {
        Preconditions.checkElementIndex(i, this.c);
        return new a(i);
    }

    K i(int i) {
        Preconditions.checkElementIndex(i, this.c);
        return (K) this.a[i];
    }

    int k(int i) {
        Preconditions.checkElementIndex(i, this.c);
        return this.b[i];
    }

    int m(Object obj) {
        int iD = l1.d(obj);
        int iJ = this.f3745e[l() & iD];
        while (iJ != -1) {
            long j = this.f3746f[iJ];
            if (h(j) == iD && Objects.equal(obj, this.a[iJ])) {
                return iJ;
            }
            iJ = j(j);
        }
        return -1;
    }

    void n(int i, float f2) {
        Preconditions.checkArgument(i >= 0, "Initial capacity must be non-negative");
        Preconditions.checkArgument(f2 > 0.0f, "Illegal load factor");
        int iA = l1.a(i, f2);
        this.f3745e = r(iA);
        this.f3747g = f2;
        this.a = new Object[i];
        this.b = new int[i];
        this.f3746f = q(i);
        this.h = Math.max(1, (int) (iA * f2));
    }

    void o(int i, K k, int i2, int i3) {
        this.f3746f[i] = (((long) i3) << 32) | 4294967295L;
        this.a[i] = k;
        this.b[i] = i2;
    }

    void p(int i) {
        int iC = C() - 1;
        if (i >= iC) {
            this.a[i] = null;
            this.b[i] = 0;
            this.f3746f[i] = -1;
            return;
        }
        Object[] objArr = this.a;
        objArr[i] = objArr[iC];
        int[] iArr = this.b;
        iArr[i] = iArr[iC];
        objArr[iC] = null;
        iArr[iC] = 0;
        long[] jArr = this.f3746f;
        long j = jArr[iC];
        jArr[i] = j;
        jArr[iC] = -1;
        int iH = h(j) & l();
        int[] iArr2 = this.f3745e;
        int i2 = iArr2[iH];
        if (i2 == iC) {
            iArr2[iH] = i;
            return;
        }
        while (true) {
            long j2 = this.f3746f[i2];
            int iJ = j(j2);
            if (iJ == iC) {
                this.f3746f[i2] = D(j2, i);
                return;
            }
            i2 = iJ;
        }
    }

    int s(int i) {
        int i2 = i + 1;
        if (i2 < this.c) {
            return i2;
        }
        return -1;
    }

    int t(int i, int i2) {
        return i - 1;
    }

    public int u(K k, int i) {
        z.d(i, "count");
        long[] jArr = this.f3746f;
        Object[] objArr = this.a;
        int[] iArr = this.b;
        int iD = l1.d(k);
        int iL = l() & iD;
        int i2 = this.c;
        int[] iArr2 = this.f3745e;
        int i3 = iArr2[iL];
        if (i3 == -1) {
            iArr2[iL] = i2;
        } else {
            while (true) {
                long j = jArr[i3];
                if (h(j) == iD && Objects.equal(k, objArr[i3])) {
                    int i4 = iArr[i3];
                    iArr[i3] = i;
                    return i4;
                }
                int iJ = j(j);
                if (iJ == -1) {
                    jArr[i3] = D(j, i2);
                    break;
                }
                i3 = iJ;
            }
        }
        if (i2 == Integer.MAX_VALUE) {
            throw new IllegalStateException("Cannot contain more than Integer.MAX_VALUE elements!");
        }
        int i5 = i2 + 1;
        z(i5);
        o(i2, k, i, iD);
        this.c = i5;
        if (i2 >= this.h) {
            A(this.f3745e.length * 2);
        }
        this.f3744d++;
        return 0;
    }

    public int v(Object obj) {
        return w(obj, l1.d(obj));
    }

    int x(int i) {
        return w(this.a[i], h(this.f3746f[i]));
    }

    void y(int i) {
        this.a = Arrays.copyOf(this.a, i);
        this.b = Arrays.copyOf(this.b, i);
        long[] jArr = this.f3746f;
        int length = jArr.length;
        long[] jArrCopyOf = Arrays.copyOf(jArr, i);
        if (i > length) {
            Arrays.fill(jArrCopyOf, length, i, -1L);
        }
        this.f3746f = jArrCopyOf;
    }
}
