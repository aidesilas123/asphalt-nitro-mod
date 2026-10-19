package com.google.common.hash;

import com.google.common.base.Preconditions;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: compiled from: AbstractByteHasher.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class a extends d {
    private final ByteBuffer a = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN);

    a() {
    }

    private m i(int i) {
        try {
            l(this.a.array(), 0, i);
            return this;
        } finally {
            o.a(this.a);
        }
    }

    @Override // com.google.common.hash.d, com.google.common.hash.v
    public m a(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        k(bArr);
        return this;
    }

    @Override // com.google.common.hash.v
    public m b(byte b) {
        j(b);
        return this;
    }

    @Override // com.google.common.hash.v
    public m d(byte[] bArr, int i, int i2) {
        Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
        l(bArr, i, i2);
        return this;
    }

    @Override // com.google.common.hash.d
    public m h(char c) {
        this.a.putChar(c);
        return i(2);
    }

    protected abstract void j(byte b);

    protected void k(byte[] bArr) {
        l(bArr, 0, bArr.length);
    }

    protected abstract void l(byte[] bArr, int i, int i2);

    @Override // com.google.common.hash.d, com.google.common.hash.v
    public m putInt(int i) {
        this.a.putInt(i);
        return i(4);
    }

    @Override // com.google.common.hash.d, com.google.common.hash.v
    public m putLong(long j) {
        this.a.putLong(j);
        return i(8);
    }
}
