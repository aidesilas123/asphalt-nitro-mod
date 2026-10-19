package com.google.common.hash;

import com.google.common.base.Preconditions;

/* JADX INFO: compiled from: AbstractHashFunction.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class c implements l {
    c() {
    }

    public HashCode a(byte[] bArr) {
        return h(bArr, 0, bArr.length);
    }

    @Override // com.google.common.hash.l
    public m d(int i) {
        Preconditions.checkArgument(i >= 0, "expectedInputSize must be >= 0 but was %s", i);
        return e();
    }

    @Override // com.google.common.hash.l
    public <T> HashCode f(T t, k<? super T> kVar) {
        return e().f(t, kVar).g();
    }

    @Override // com.google.common.hash.l
    public HashCode g(long j) {
        return d(8).putLong(j).g();
    }

    @Override // com.google.common.hash.l
    public HashCode h(byte[] bArr, int i, int i2) {
        Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
        return d(i2).d(bArr, i, i2).g();
    }
}
