package com.google.common.hash;

import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import com.google.common.primitives.UnsignedBytes;
import java.io.Serializable;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: Murmur3_32HashFunction.java */
/* JADX INFO: loaded from: classes3.dex */
final class u extends c implements Serializable {
    static final l a = new u(0, false);
    static final l b = new u(0, true);
    static final l c = new u(Hashing.a, true);
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f3894d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f3895e;

    /* JADX INFO: compiled from: Murmur3_32HashFunction.java */
    private static final class a extends d {
        private int a;
        private long b;
        private int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f3896d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f3897e = false;

        a(int i) {
            this.a = i;
        }

        private void i(int i, long j) {
            long j2 = this.b;
            int i2 = this.c;
            long j3 = ((j & 4294967295L) << i2) | j2;
            this.b = j3;
            int i3 = i2 + (i * 8);
            this.c = i3;
            this.f3896d += i;
            if (i3 >= 32) {
                this.a = u.v(this.a, u.w((int) j3));
                this.b >>>= 32;
                this.c -= 32;
            }
        }

        @Override // com.google.common.hash.v
        public m b(byte b) {
            i(1, b & 255);
            return this;
        }

        @Override // com.google.common.hash.v
        public m d(byte[] bArr, int i, int i2) {
            Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
            int i3 = 0;
            while (true) {
                int i4 = i3 + 4;
                if (i4 > i2) {
                    break;
                }
                i(4, u.u(bArr, i3 + i));
                i3 = i4;
            }
            while (i3 < i2) {
                b(bArr[i + i3]);
                i3++;
            }
            return this;
        }

        @Override // com.google.common.hash.d, com.google.common.hash.v
        public m e(CharSequence charSequence, Charset charset) {
            if (!com.google.common.base.b.c.equals(charset)) {
                return super.e(charSequence, charset);
            }
            int length = charSequence.length();
            int i = 0;
            while (true) {
                int i2 = i + 4;
                if (i2 > length) {
                    break;
                }
                char cCharAt = charSequence.charAt(i);
                char cCharAt2 = charSequence.charAt(i + 1);
                char cCharAt3 = charSequence.charAt(i + 2);
                char cCharAt4 = charSequence.charAt(i + 3);
                if (cCharAt >= 128 || cCharAt2 >= 128 || cCharAt3 >= 128 || cCharAt4 >= 128) {
                    break;
                }
                i(4, (cCharAt2 << '\b') | cCharAt | (cCharAt3 << 16) | (cCharAt4 << 24));
                i = i2;
            }
            while (i < length) {
                char cCharAt5 = charSequence.charAt(i);
                if (cCharAt5 < 128) {
                    i(1, cCharAt5);
                } else if (cCharAt5 < 2048) {
                    i(2, u.r(cCharAt5));
                } else if (cCharAt5 < 55296 || cCharAt5 > 57343) {
                    i(3, u.q(cCharAt5));
                } else {
                    int iCodePointAt = Character.codePointAt(charSequence, i);
                    if (iCodePointAt == cCharAt5) {
                        a(charSequence.subSequence(i, length).toString().getBytes(charset));
                        return this;
                    }
                    i++;
                    i(4, u.s(iCodePointAt));
                }
                i++;
            }
            return this;
        }

        @Override // com.google.common.hash.m
        public HashCode g() {
            Preconditions.checkState(!this.f3897e);
            this.f3897e = true;
            int iW = this.a ^ u.w((int) this.b);
            this.a = iW;
            return u.t(iW, this.f3896d);
        }

        @Override // com.google.common.hash.d
        public m h(char c) {
            i(2, c);
            return this;
        }

        @Override // com.google.common.hash.d, com.google.common.hash.v
        public m putInt(int i) {
            i(4, i);
            return this;
        }

        @Override // com.google.common.hash.d, com.google.common.hash.v
        public m putLong(long j) {
            i(4, (int) j);
            i(4, j >>> 32);
            return this;
        }
    }

    u(int i, boolean z) {
        this.f3894d = i;
        this.f3895e = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long q(char c2) {
        return ((long) (c2 >>> '\f')) | 224 | ((long) ((((c2 >>> 6) & 63) | 128) << 8)) | ((long) (((c2 & '?') | 128) << 16));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long r(char c2) {
        return ((long) (c2 >>> 6)) | 192 | ((long) (((c2 & '?') | 128) << 8));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long s(int i) {
        return ((long) (i >>> 18)) | 240 | ((((long) ((i >>> 12) & 63)) | 128) << 8) | ((((long) ((i >>> 6) & 63)) | 128) << 16) | ((((long) (i & 63)) | 128) << 24);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static HashCode t(int i, int i2) {
        int i3 = i ^ i2;
        int i4 = (i3 ^ (i3 >>> 16)) * (-2048144789);
        int i5 = (i4 ^ (i4 >>> 13)) * (-1028477387);
        return HashCode.fromInt(i5 ^ (i5 >>> 16));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int u(byte[] bArr, int i) {
        return Ints.fromBytes(bArr[i + 3], bArr[i + 2], bArr[i + 1], bArr[i]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int v(int i, int i2) {
        return (Integer.rotateLeft(i ^ i2, 13) * 5) - 430675100;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int w(int i) {
        return Integer.rotateLeft(i * (-862048943), 15) * 461845907;
    }

    @Override // com.google.common.hash.l
    public int c() {
        return 32;
    }

    @Override // com.google.common.hash.l
    public m e() {
        return new a(this.f3894d);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof u)) {
            return false;
        }
        u uVar = (u) obj;
        return this.f3894d == uVar.f3894d && this.f3895e == uVar.f3895e;
    }

    @Override // com.google.common.hash.c, com.google.common.hash.l
    public HashCode g(long j) {
        int i = (int) (j >>> 32);
        return t(v(v(this.f3894d, w((int) j)), w(i)), 8);
    }

    @Override // com.google.common.hash.c, com.google.common.hash.l
    public HashCode h(byte[] bArr, int i, int i2) {
        Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
        int iV = this.f3894d;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int i5 = i4 + 4;
            if (i5 > i2) {
                break;
            }
            iV = v(iV, w(u(bArr, i4 + i)));
            i4 = i5;
        }
        int i6 = i4;
        int i7 = 0;
        while (i6 < i2) {
            i3 ^= UnsignedBytes.toInt(bArr[i + i6]) << i7;
            i6++;
            i7 += 8;
        }
        return t(w(i3) ^ iV, i2);
    }

    public int hashCode() {
        return u.class.hashCode() ^ this.f3894d;
    }

    public String toString() {
        int i = this.f3894d;
        StringBuilder sb = new StringBuilder(31);
        sb.append("Hashing.murmur3_32(");
        sb.append(i);
        sb.append(")");
        return sb.toString();
    }
}
