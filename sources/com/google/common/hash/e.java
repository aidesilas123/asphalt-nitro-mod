package com.google.common.hash;

import com.google.common.base.Preconditions;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: compiled from: AbstractNonStreamingHashFunction.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class e extends c {

    /* JADX INFO: compiled from: AbstractNonStreamingHashFunction.java */
    private final class a extends d {
        final b a;

        a(int i) {
            this.a = new b(i);
        }

        @Override // com.google.common.hash.v
        public m b(byte b) {
            this.a.write(b);
            return this;
        }

        @Override // com.google.common.hash.v
        public m d(byte[] bArr, int i, int i2) {
            this.a.write(bArr, i, i2);
            return this;
        }

        @Override // com.google.common.hash.m
        public HashCode g() {
            return e.this.h(this.a.d(), 0, this.a.e());
        }
    }

    /* JADX INFO: compiled from: AbstractNonStreamingHashFunction.java */
    private static final class b extends ByteArrayOutputStream {
        b(int i) {
            super(i);
        }

        byte[] d() {
            return ((ByteArrayOutputStream) this).buf;
        }

        int e() {
            return ((ByteArrayOutputStream) this).count;
        }
    }

    e() {
    }

    @Override // com.google.common.hash.c, com.google.common.hash.l
    public m d(int i) {
        Preconditions.checkArgument(i >= 0);
        return new a(i);
    }

    @Override // com.google.common.hash.l
    public m e() {
        return d(32);
    }

    @Override // com.google.common.hash.c, com.google.common.hash.l
    public HashCode g(long j) {
        return a(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(j).array());
    }
}
