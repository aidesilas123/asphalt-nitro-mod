package com.google.common.hash;

import com.google.common.primitives.UnsignedBytes;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: compiled from: Murmur3_128HashFunction.java */
/* JADX INFO: loaded from: classes3.dex */
final class t extends c implements Serializable {
    static final l a = new t(0);
    static final l b = new t(Hashing.a);
    private static final long serialVersionUID = 0;
    private final int c;

    /* JADX INFO: compiled from: Murmur3_128HashFunction.java */
    private static final class a extends f {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f3891d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f3892e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f3893f;

        a(int i) {
            super(16);
            long j = i;
            this.f3891d = j;
            this.f3892e = j;
            this.f3893f = 0;
        }

        private void o(long j, long j2) {
            long jQ = q(j) ^ this.f3891d;
            this.f3891d = jQ;
            long jRotateLeft = Long.rotateLeft(jQ, 27);
            this.f3891d = jRotateLeft;
            long j3 = this.f3892e;
            long j4 = jRotateLeft + j3;
            this.f3891d = j4;
            this.f3891d = (j4 * 5) + 1390208809;
            long jR = r(j2) ^ j3;
            this.f3892e = jR;
            long jRotateLeft2 = Long.rotateLeft(jR, 31);
            this.f3892e = jRotateLeft2;
            long j5 = jRotateLeft2 + this.f3891d;
            this.f3892e = j5;
            this.f3892e = (j5 * 5) + 944331445;
        }

        private static long p(long j) {
            long j2 = (j ^ (j >>> 33)) * (-49064778989728563L);
            long j3 = (j2 ^ (j2 >>> 33)) * (-4265267296055464877L);
            return j3 ^ (j3 >>> 33);
        }

        private static long q(long j) {
            return Long.rotateLeft(j * (-8663945395140668459L), 31) * 5545529020109919103L;
        }

        private static long r(long j) {
            return Long.rotateLeft(j * 5545529020109919103L, 33) * (-8663945395140668459L);
        }

        @Override // com.google.common.hash.f
        protected HashCode i() {
            long j = this.f3891d;
            int i = this.f3893f;
            long j2 = j ^ ((long) i);
            this.f3891d = j2;
            long j3 = this.f3892e ^ ((long) i);
            this.f3892e = j3;
            long j4 = j2 + j3;
            this.f3891d = j4;
            this.f3892e = j3 + j4;
            this.f3891d = p(j4);
            long jP = p(this.f3892e);
            this.f3892e = jP;
            long j5 = this.f3891d + jP;
            this.f3891d = j5;
            this.f3892e = jP + j5;
            return HashCode.i(ByteBuffer.wrap(new byte[16]).order(ByteOrder.LITTLE_ENDIAN).putLong(this.f3891d).putLong(this.f3892e).array());
        }

        @Override // com.google.common.hash.f
        protected void l(ByteBuffer byteBuffer) {
            o(byteBuffer.getLong(), byteBuffer.getLong());
            this.f3893f += 16;
        }

        @Override // com.google.common.hash.f
        protected void m(ByteBuffer byteBuffer) {
            long j;
            long j2;
            long j3;
            long j4;
            long j5;
            long j6;
            long j7;
            long j8;
            long j9;
            long j10;
            long j11;
            long j12;
            long j13;
            long j14;
            this.f3893f += byteBuffer.remaining();
            long j15 = 0;
            switch (byteBuffer.remaining()) {
                case 1:
                    j = 0;
                    j7 = ((long) UnsignedBytes.toInt(byteBuffer.get(0))) ^ j;
                    this.f3891d ^= q(j7);
                    this.f3892e ^= r(j15);
                    return;
                case 2:
                    j2 = 0;
                    j = j2 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(1))) << 8);
                    j7 = ((long) UnsignedBytes.toInt(byteBuffer.get(0))) ^ j;
                    this.f3891d ^= q(j7);
                    this.f3892e ^= r(j15);
                    return;
                case 3:
                    j3 = 0;
                    j2 = j3 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(2))) << 16);
                    j = j2 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(1))) << 8);
                    j7 = ((long) UnsignedBytes.toInt(byteBuffer.get(0))) ^ j;
                    this.f3891d ^= q(j7);
                    this.f3892e ^= r(j15);
                    return;
                case 4:
                    j4 = 0;
                    j3 = j4 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(3))) << 24);
                    j2 = j3 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(2))) << 16);
                    j = j2 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(1))) << 8);
                    j7 = ((long) UnsignedBytes.toInt(byteBuffer.get(0))) ^ j;
                    this.f3891d ^= q(j7);
                    this.f3892e ^= r(j15);
                    return;
                case 5:
                    j5 = 0;
                    j4 = j5 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(4))) << 32);
                    j3 = j4 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(3))) << 24);
                    j2 = j3 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(2))) << 16);
                    j = j2 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(1))) << 8);
                    j7 = ((long) UnsignedBytes.toInt(byteBuffer.get(0))) ^ j;
                    this.f3891d ^= q(j7);
                    this.f3892e ^= r(j15);
                    return;
                case 6:
                    j6 = 0;
                    j5 = j6 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(5))) << 40);
                    j4 = j5 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(4))) << 32);
                    j3 = j4 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(3))) << 24);
                    j2 = j3 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(2))) << 16);
                    j = j2 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(1))) << 8);
                    j7 = ((long) UnsignedBytes.toInt(byteBuffer.get(0))) ^ j;
                    this.f3891d ^= q(j7);
                    this.f3892e ^= r(j15);
                    return;
                case 7:
                    j6 = (((long) UnsignedBytes.toInt(byteBuffer.get(6))) << 48) ^ 0;
                    j5 = j6 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(5))) << 40);
                    j4 = j5 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(4))) << 32);
                    j3 = j4 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(3))) << 24);
                    j2 = j3 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(2))) << 16);
                    j = j2 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(1))) << 8);
                    j7 = ((long) UnsignedBytes.toInt(byteBuffer.get(0))) ^ j;
                    this.f3891d ^= q(j7);
                    this.f3892e ^= r(j15);
                    return;
                case 8:
                    j8 = 0;
                    j7 = byteBuffer.getLong() ^ 0;
                    j15 = j8;
                    this.f3891d ^= q(j7);
                    this.f3892e ^= r(j15);
                    return;
                case 9:
                    j9 = 0;
                    j8 = j9 ^ ((long) UnsignedBytes.toInt(byteBuffer.get(8)));
                    j7 = byteBuffer.getLong() ^ 0;
                    j15 = j8;
                    this.f3891d ^= q(j7);
                    this.f3892e ^= r(j15);
                    return;
                case 10:
                    j10 = 0;
                    j9 = j10 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(9))) << 8);
                    j8 = j9 ^ ((long) UnsignedBytes.toInt(byteBuffer.get(8)));
                    j7 = byteBuffer.getLong() ^ 0;
                    j15 = j8;
                    this.f3891d ^= q(j7);
                    this.f3892e ^= r(j15);
                    return;
                case 11:
                    j11 = 0;
                    j10 = j11 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(10))) << 16);
                    j9 = j10 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(9))) << 8);
                    j8 = j9 ^ ((long) UnsignedBytes.toInt(byteBuffer.get(8)));
                    j7 = byteBuffer.getLong() ^ 0;
                    j15 = j8;
                    this.f3891d ^= q(j7);
                    this.f3892e ^= r(j15);
                    return;
                case 12:
                    j12 = 0;
                    j11 = j12 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(11))) << 24);
                    j10 = j11 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(10))) << 16);
                    j9 = j10 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(9))) << 8);
                    j8 = j9 ^ ((long) UnsignedBytes.toInt(byteBuffer.get(8)));
                    j7 = byteBuffer.getLong() ^ 0;
                    j15 = j8;
                    this.f3891d ^= q(j7);
                    this.f3892e ^= r(j15);
                    return;
                case 13:
                    j13 = 0;
                    j12 = j13 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(12))) << 32);
                    j11 = j12 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(11))) << 24);
                    j10 = j11 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(10))) << 16);
                    j9 = j10 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(9))) << 8);
                    j8 = j9 ^ ((long) UnsignedBytes.toInt(byteBuffer.get(8)));
                    j7 = byteBuffer.getLong() ^ 0;
                    j15 = j8;
                    this.f3891d ^= q(j7);
                    this.f3892e ^= r(j15);
                    return;
                case 14:
                    j14 = 0;
                    j13 = j14 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(13))) << 40);
                    j12 = j13 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(12))) << 32);
                    j11 = j12 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(11))) << 24);
                    j10 = j11 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(10))) << 16);
                    j9 = j10 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(9))) << 8);
                    j8 = j9 ^ ((long) UnsignedBytes.toInt(byteBuffer.get(8)));
                    j7 = byteBuffer.getLong() ^ 0;
                    j15 = j8;
                    this.f3891d ^= q(j7);
                    this.f3892e ^= r(j15);
                    return;
                case 15:
                    j14 = (((long) UnsignedBytes.toInt(byteBuffer.get(14))) << 48) ^ 0;
                    j13 = j14 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(13))) << 40);
                    j12 = j13 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(12))) << 32);
                    j11 = j12 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(11))) << 24);
                    j10 = j11 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(10))) << 16);
                    j9 = j10 ^ (((long) UnsignedBytes.toInt(byteBuffer.get(9))) << 8);
                    j8 = j9 ^ ((long) UnsignedBytes.toInt(byteBuffer.get(8)));
                    j7 = byteBuffer.getLong() ^ 0;
                    j15 = j8;
                    this.f3891d ^= q(j7);
                    this.f3892e ^= r(j15);
                    return;
                default:
                    throw new AssertionError("Should never get here.");
            }
        }
    }

    t(int i) {
        this.c = i;
    }

    @Override // com.google.common.hash.l
    public int c() {
        return 128;
    }

    @Override // com.google.common.hash.l
    public m e() {
        return new a(this.c);
    }

    public boolean equals(Object obj) {
        return (obj instanceof t) && this.c == ((t) obj).c;
    }

    public int hashCode() {
        return t.class.hashCode() ^ this.c;
    }

    public String toString() {
        int i = this.c;
        StringBuilder sb = new StringBuilder(32);
        sb.append("Hashing.murmur3_128(");
        sb.append(i);
        sb.append(")");
        return sb.toString();
    }
}
