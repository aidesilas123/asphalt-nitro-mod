package com.google.common.hash;

import com.google.common.base.Preconditions;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: compiled from: AbstractStreamingHasher.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class f extends d {
    private final ByteBuffer a;
    private final int b;
    private final int c;

    protected f(int i) {
        this(i, i);
    }

    protected f(int i, int i2) {
        Preconditions.checkArgument(i2 % i == 0);
        this.a = ByteBuffer.allocate(i2 + 7).order(ByteOrder.LITTLE_ENDIAN);
        this.b = i2;
        this.c = i;
    }

    private void j() {
        o.b(this.a);
        while (this.a.remaining() >= this.c) {
            l(this.a);
        }
        this.a.compact();
    }

    private void k() {
        if (this.a.remaining() < 8) {
            j();
        }
    }

    private m n(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() <= this.a.remaining()) {
            this.a.put(byteBuffer);
            k();
            return this;
        }
        int iPosition = this.b - this.a.position();
        for (int i = 0; i < iPosition; i++) {
            this.a.put(byteBuffer.get());
        }
        j();
        while (byteBuffer.remaining() >= this.c) {
            l(byteBuffer);
        }
        this.a.put(byteBuffer);
        return this;
    }

    @Override // com.google.common.hash.v
    public final m b(byte b) {
        this.a.put(b);
        k();
        return this;
    }

    @Override // com.google.common.hash.v
    public final m d(byte[] bArr, int i, int i2) {
        return n(ByteBuffer.wrap(bArr, i, i2).order(ByteOrder.LITTLE_ENDIAN));
    }

    @Override // com.google.common.hash.m
    public final HashCode g() {
        j();
        o.b(this.a);
        if (this.a.remaining() > 0) {
            m(this.a);
            ByteBuffer byteBuffer = this.a;
            o.c(byteBuffer, byteBuffer.limit());
        }
        return i();
    }

    @Override // com.google.common.hash.d
    public final m h(char c) {
        this.a.putChar(c);
        k();
        return this;
    }

    protected abstract HashCode i();

    protected abstract void l(ByteBuffer byteBuffer);

    protected abstract void m(ByteBuffer byteBuffer);

    @Override // com.google.common.hash.d, com.google.common.hash.v
    public final m putInt(int i) {
        this.a.putInt(i);
        k();
        return this;
    }

    @Override // com.google.common.hash.d, com.google.common.hash.v
    public final m putLong(long j) {
        this.a.putLong(j);
        k();
        return this;
    }
}
