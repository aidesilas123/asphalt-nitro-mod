package com.google.common.hash;

import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.nio.ByteBuffer;

/* JADX INFO: compiled from: SipHashFunction.java */
/* JADX INFO: loaded from: classes3.dex */
final class w extends c implements Serializable {
    static final l a = new w(2, 4, 506097522914230528L, 1084818905618843912L);
    private static final long serialVersionUID = 0;
    private final int b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f3898d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f3899e;

    /* JADX INFO: compiled from: SipHashFunction.java */
    private static final class a extends f {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f3900d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final int f3901e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f3902f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private long f3903g;
        private long h;
        private long i;
        private long j;
        private long k;

        a(int i, int i2, long j, long j2) {
            super(8);
            this.f3902f = 8317987319222330741L;
            this.f3903g = 7237128888997146477L;
            this.h = 7816392313619706465L;
            this.i = 8387220255154660723L;
            this.j = 0L;
            this.k = 0L;
            this.f3900d = i;
            this.f3901e = i2;
            this.f3902f = 8317987319222330741L ^ j;
            this.f3903g = 7237128888997146477L ^ j2;
            this.h = 7816392313619706465L ^ j;
            this.i = 8387220255154660723L ^ j2;
        }

        private void o(long j) {
            this.i ^= j;
            p(this.f3900d);
            this.f3902f = j ^ this.f3902f;
        }

        private void p(int i) {
            for (int i2 = 0; i2 < i; i2++) {
                long j = this.f3902f;
                long j2 = this.f3903g;
                this.f3902f = j + j2;
                this.h += this.i;
                this.f3903g = Long.rotateLeft(j2, 13);
                long jRotateLeft = Long.rotateLeft(this.i, 16);
                this.i = jRotateLeft;
                long j3 = this.f3903g;
                long j4 = this.f3902f;
                this.f3903g = j3 ^ j4;
                this.i = jRotateLeft ^ this.h;
                long jRotateLeft2 = Long.rotateLeft(j4, 32);
                this.f3902f = jRotateLeft2;
                long j5 = this.h;
                long j6 = this.f3903g;
                this.h = j5 + j6;
                this.f3902f = jRotateLeft2 + this.i;
                this.f3903g = Long.rotateLeft(j6, 17);
                long jRotateLeft3 = Long.rotateLeft(this.i, 21);
                this.i = jRotateLeft3;
                long j7 = this.f3903g;
                long j8 = this.h;
                this.f3903g = j7 ^ j8;
                this.i = jRotateLeft3 ^ this.f3902f;
                this.h = Long.rotateLeft(j8, 32);
            }
        }

        @Override // com.google.common.hash.f
        protected HashCode i() {
            long j = this.k ^ (this.j << 56);
            this.k = j;
            o(j);
            this.h ^= 255;
            p(this.f3901e);
            return HashCode.fromLong(((this.f3902f ^ this.f3903g) ^ this.h) ^ this.i);
        }

        @Override // com.google.common.hash.f
        protected void l(ByteBuffer byteBuffer) {
            this.j += 8;
            o(byteBuffer.getLong());
        }

        @Override // com.google.common.hash.f
        protected void m(ByteBuffer byteBuffer) {
            this.j += (long) byteBuffer.remaining();
            int i = 0;
            while (byteBuffer.hasRemaining()) {
                this.k ^= (((long) byteBuffer.get()) & 255) << i;
                i += 8;
            }
        }
    }

    w(int i, int i2, long j, long j2) {
        Preconditions.checkArgument(i > 0, "The number of SipRound iterations (c=%s) during Compression must be positive.", i);
        Preconditions.checkArgument(i2 > 0, "The number of SipRound iterations (d=%s) during Finalization must be positive.", i2);
        this.b = i;
        this.c = i2;
        this.f3898d = j;
        this.f3899e = j2;
    }

    @Override // com.google.common.hash.l
    public int c() {
        return 64;
    }

    @Override // com.google.common.hash.l
    public m e() {
        return new a(this.b, this.c, this.f3898d, this.f3899e);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof w)) {
            return false;
        }
        w wVar = (w) obj;
        return this.b == wVar.b && this.c == wVar.c && this.f3898d == wVar.f3898d && this.f3899e == wVar.f3899e;
    }

    public int hashCode() {
        return (int) ((((long) ((w.class.hashCode() ^ this.b) ^ this.c)) ^ this.f3898d) ^ this.f3899e);
    }

    public String toString() {
        int i = this.b;
        int i2 = this.c;
        long j = this.f3898d;
        long j2 = this.f3899e;
        StringBuilder sb = new StringBuilder(81);
        sb.append("Hashing.sipHash");
        sb.append(i);
        sb.append(i2);
        sb.append("(");
        sb.append(j);
        sb.append(", ");
        sb.append(j2);
        sb.append(")");
        return sb.toString();
    }
}
