package com.google.common.collect;

import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
class CompactLinkedHashMap<K, V> extends CompactHashMap<K, V> {
    transient long[] k;
    private transient int l;
    private transient int m;
    private final boolean n;

    CompactLinkedHashMap() {
        this(3);
    }

    CompactLinkedHashMap(int i) {
        this(i, false);
    }

    CompactLinkedHashMap(int i, boolean z) {
        super(i);
        this.n = z;
    }

    private int c0(int i) {
        return ((int) (d0(i) >>> 32)) - 1;
    }

    public static <K, V> CompactLinkedHashMap<K, V> create() {
        return new CompactLinkedHashMap<>();
    }

    public static <K, V> CompactLinkedHashMap<K, V> createWithExpectedSize(int i) {
        return new CompactLinkedHashMap<>(i);
    }

    private long d0(int i) {
        return e0()[i];
    }

    private long[] e0() {
        long[] jArr = this.k;
        Objects.requireNonNull(jArr);
        return jArr;
    }

    private void f0(int i, long j) {
        e0()[i] = j;
    }

    private void g0(int i, int i2) {
        f0(i, (d0(i) & 4294967295L) | (((long) (i2 + 1)) << 32));
    }

    private void h0(int i, int i2) {
        if (i == -2) {
            this.l = i2;
        } else {
            i0(i, i2);
        }
        if (i2 == -2) {
            this.m = i;
        } else {
            g0(i2, i);
        }
    }

    private void i0(int i, int i2) {
        f0(i, (d0(i) & (-4294967296L)) | (((long) (i2 + 1)) & 4294967295L));
    }

    @Override // com.google.common.collect.CompactHashMap
    int C() {
        return this.l;
    }

    @Override // com.google.common.collect.CompactHashMap
    int D(int i) {
        return ((int) d0(i)) - 1;
    }

    @Override // com.google.common.collect.CompactHashMap
    void H(int i) {
        super.H(i);
        this.l = -2;
        this.m = -2;
    }

    @Override // com.google.common.collect.CompactHashMap
    void I(int i, K k, V v, int i2, int i3) {
        super.I(i, k, v, i2, i3);
        h0(this.m, i);
        h0(i, -2);
    }

    @Override // com.google.common.collect.CompactHashMap
    void L(int i, int i2) {
        int size = size() - 1;
        super.L(i, i2);
        h0(c0(i), D(i));
        if (i < size) {
            h0(c0(size), i);
            h0(i, D(size));
        }
        f0(size, 0L);
    }

    @Override // com.google.common.collect.CompactHashMap
    void T(int i) {
        super.T(i);
        this.k = Arrays.copyOf(e0(), i);
    }

    @Override // com.google.common.collect.CompactHashMap, java.util.AbstractMap, java.util.Map
    public void clear() {
        if (N()) {
            return;
        }
        this.l = -2;
        this.m = -2;
        long[] jArr = this.k;
        if (jArr != null) {
            Arrays.fill(jArr, 0, size(), 0L);
        }
        super.clear();
    }

    @Override // com.google.common.collect.CompactHashMap
    void q(int i) {
        if (this.n) {
            h0(c0(i), D(i));
            h0(this.m, i);
            h0(i, -2);
            F();
        }
    }

    @Override // com.google.common.collect.CompactHashMap
    int r(int i, int i2) {
        return i >= size() ? i2 : i;
    }

    @Override // com.google.common.collect.CompactHashMap
    int s() {
        int iS = super.s();
        this.k = new long[iS];
        return iS;
    }

    @Override // com.google.common.collect.CompactHashMap
    Map<K, V> t() {
        Map<K, V> mapT = super.t();
        this.k = null;
        return mapT;
    }

    @Override // com.google.common.collect.CompactHashMap
    Map<K, V> v(int i) {
        return new LinkedHashMap(i, 1.0f, this.n);
    }
}
