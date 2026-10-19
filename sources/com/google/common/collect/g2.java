package com.google.common.collect;

import java.util.Arrays;

/* JADX INFO: compiled from: ObjectCountLinkedHashMap.java */
/* JADX INFO: loaded from: classes3.dex */
class g2<K> extends f2<K> {
    transient long[] i;
    private transient int j;
    private transient int k;

    g2(int i) {
        this(i, 1.0f);
    }

    g2(int i, float f2) {
        super(i, f2);
    }

    private int E(int i) {
        return (int) (this.i[i] >>> 32);
    }

    private int F(int i) {
        return (int) this.i[i];
    }

    private void G(int i, int i2) {
        long[] jArr = this.i;
        jArr[i] = (jArr[i] & 4294967295L) | (((long) i2) << 32);
    }

    private void H(int i, int i2) {
        if (i == -2) {
            this.j = i2;
        } else {
            I(i, i2);
        }
        if (i2 == -2) {
            this.k = i;
        } else {
            G(i2, i);
        }
    }

    private void I(int i, int i2) {
        long[] jArr = this.i;
        jArr[i] = (jArr[i] & (-4294967296L)) | (((long) i2) & 4294967295L);
    }

    @Override // com.google.common.collect.f2
    public void a() {
        super.a();
        this.j = -2;
        this.k = -2;
    }

    @Override // com.google.common.collect.f2
    int e() {
        int i = this.j;
        if (i == -2) {
            return -1;
        }
        return i;
    }

    @Override // com.google.common.collect.f2
    void n(int i, float f2) {
        super.n(i, f2);
        this.j = -2;
        this.k = -2;
        long[] jArr = new long[i];
        this.i = jArr;
        Arrays.fill(jArr, -1L);
    }

    @Override // com.google.common.collect.f2
    void o(int i, K k, int i2, int i3) {
        super.o(i, k, i2, i3);
        H(this.k, i);
        H(i, -2);
    }

    @Override // com.google.common.collect.f2
    void p(int i) {
        int iC = C() - 1;
        H(E(i), F(i));
        if (i < iC) {
            H(E(iC), i);
            H(i, F(iC));
        }
        super.p(i);
    }

    @Override // com.google.common.collect.f2
    int s(int i) {
        int iF = F(i);
        if (iF == -2) {
            return -1;
        }
        return iF;
    }

    @Override // com.google.common.collect.f2
    int t(int i, int i2) {
        return i == C() ? i2 : i;
    }

    @Override // com.google.common.collect.f2
    void y(int i) {
        super.y(i);
        long[] jArr = this.i;
        int length = jArr.length;
        long[] jArrCopyOf = Arrays.copyOf(jArr, i);
        this.i = jArrCopyOf;
        Arrays.fill(jArrCopyOf, length, i, -1L);
    }
}
