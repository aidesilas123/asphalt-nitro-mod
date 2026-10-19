package com.google.common.hash;

import com.applovin.exoplayer2.common.base.Ascii;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import com.google.common.primitives.UnsignedInts;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public abstract class HashCode {
    private static final char[] a = "0123456789abcdef".toCharArray();

    private static final class a extends HashCode implements Serializable {
        private static final long serialVersionUID = 0;
        final byte[] b;

        a(byte[] bArr) {
            this.b = (byte[]) Preconditions.checkNotNull(bArr);
        }

        @Override // com.google.common.hash.HashCode
        public byte[] c() {
            return (byte[]) this.b.clone();
        }

        @Override // com.google.common.hash.HashCode
        public int d() {
            byte[] bArr = this.b;
            Preconditions.checkState(bArr.length >= 4, "HashCode#asInt() requires >= 4 bytes (it only has %s bytes).", bArr.length);
            byte[] bArr2 = this.b;
            return ((bArr2[3] & 255) << 24) | (bArr2[0] & 255) | ((bArr2[1] & 255) << 8) | ((bArr2[2] & 255) << 16);
        }

        @Override // com.google.common.hash.HashCode
        public long e() {
            byte[] bArr = this.b;
            Preconditions.checkState(bArr.length >= 8, "HashCode#asLong() requires >= 8 bytes (it only has %s bytes).", bArr.length);
            return k();
        }

        @Override // com.google.common.hash.HashCode
        public int f() {
            return this.b.length * 8;
        }

        @Override // com.google.common.hash.HashCode
        boolean h(HashCode hashCode) {
            if (this.b.length != hashCode.j().length) {
                return false;
            }
            int i = 0;
            boolean z = true;
            while (true) {
                byte[] bArr = this.b;
                if (i >= bArr.length) {
                    return z;
                }
                z &= bArr[i] == hashCode.j()[i];
                i++;
            }
        }

        @Override // com.google.common.hash.HashCode
        byte[] j() {
            return this.b;
        }

        @Override // com.google.common.hash.HashCode
        public long k() {
            long j = this.b[0] & 255;
            for (int i = 1; i < Math.min(this.b.length, 8); i++) {
                j |= (((long) this.b[i]) & 255) << (i * 8);
            }
            return j;
        }

        @Override // com.google.common.hash.HashCode
        void n(byte[] bArr, int i, int i2) {
            System.arraycopy(this.b, 0, bArr, i, i2);
        }
    }

    private static final class b extends HashCode implements Serializable {
        private static final long serialVersionUID = 0;
        final int b;

        b(int i) {
            this.b = i;
        }

        @Override // com.google.common.hash.HashCode
        public byte[] c() {
            int i = this.b;
            return new byte[]{(byte) i, (byte) (i >> 8), (byte) (i >> 16), (byte) (i >> 24)};
        }

        @Override // com.google.common.hash.HashCode
        public int d() {
            return this.b;
        }

        @Override // com.google.common.hash.HashCode
        public long e() {
            throw new IllegalStateException("this HashCode only has 32 bits; cannot create a long");
        }

        @Override // com.google.common.hash.HashCode
        public int f() {
            return 32;
        }

        @Override // com.google.common.hash.HashCode
        boolean h(HashCode hashCode) {
            return this.b == hashCode.d();
        }

        @Override // com.google.common.hash.HashCode
        public long k() {
            return UnsignedInts.toLong(this.b);
        }

        @Override // com.google.common.hash.HashCode
        void n(byte[] bArr, int i, int i2) {
            for (int i3 = 0; i3 < i2; i3++) {
                bArr[i + i3] = (byte) (this.b >> (i3 * 8));
            }
        }
    }

    private static final class c extends HashCode implements Serializable {
        private static final long serialVersionUID = 0;
        final long b;

        c(long j) {
            this.b = j;
        }

        @Override // com.google.common.hash.HashCode
        public byte[] c() {
            return new byte[]{(byte) this.b, (byte) (r2 >> 8), (byte) (r2 >> 16), (byte) (r2 >> 24), (byte) (r2 >> 32), (byte) (r2 >> 40), (byte) (r2 >> 48), (byte) (r2 >> 56)};
        }

        @Override // com.google.common.hash.HashCode
        public int d() {
            return (int) this.b;
        }

        @Override // com.google.common.hash.HashCode
        public long e() {
            return this.b;
        }

        @Override // com.google.common.hash.HashCode
        public int f() {
            return 64;
        }

        @Override // com.google.common.hash.HashCode
        boolean h(HashCode hashCode) {
            return this.b == hashCode.e();
        }

        @Override // com.google.common.hash.HashCode
        public long k() {
            return this.b;
        }

        @Override // com.google.common.hash.HashCode
        void n(byte[] bArr, int i, int i2) {
            for (int i3 = 0; i3 < i2; i3++) {
                bArr[i + i3] = (byte) (this.b >> (i3 * 8));
            }
        }
    }

    HashCode() {
    }

    public static HashCode fromBytes(byte[] bArr) {
        Preconditions.checkArgument(bArr.length >= 1, "A HashCode must contain at least 1 byte.");
        return i((byte[]) bArr.clone());
    }

    public static HashCode fromInt(int i) {
        return new b(i);
    }

    public static HashCode fromLong(long j) {
        return new c(j);
    }

    public static HashCode fromString(String str) {
        Preconditions.checkArgument(str.length() >= 2, "input string (%s) must have at least 2 characters", str);
        Preconditions.checkArgument(str.length() % 2 == 0, "input string (%s) must have an even number of characters", str);
        byte[] bArr = new byte[str.length() / 2];
        for (int i = 0; i < str.length(); i += 2) {
            bArr[i / 2] = (byte) ((g(str.charAt(i)) << 4) + g(str.charAt(i + 1)));
        }
        return i(bArr);
    }

    private static int g(char c2) {
        if (c2 >= '0' && c2 <= '9') {
            return c2 - '0';
        }
        if (c2 >= 'a' && c2 <= 'f') {
            return (c2 - 'a') + 10;
        }
        StringBuilder sb = new StringBuilder(32);
        sb.append("Illegal hexadecimal character: ");
        sb.append(c2);
        throw new IllegalArgumentException(sb.toString());
    }

    static HashCode i(byte[] bArr) {
        return new a(bArr);
    }

    public abstract byte[] c();

    public abstract int d();

    public abstract long e();

    public final boolean equals(Object obj) {
        if (!(obj instanceof HashCode)) {
            return false;
        }
        HashCode hashCode = (HashCode) obj;
        return f() == hashCode.f() && h(hashCode);
    }

    public abstract int f();

    abstract boolean h(HashCode hashCode);

    public final int hashCode() {
        if (f() >= 32) {
            return d();
        }
        byte[] bArrJ = j();
        int i = bArrJ[0] & 255;
        for (int i2 = 1; i2 < bArrJ.length; i2++) {
            i |= (bArrJ[i2] & 255) << (i2 * 8);
        }
        return i;
    }

    byte[] j() {
        return c();
    }

    public abstract long k();

    public int m(byte[] bArr, int i, int i2) {
        int iMin = Ints.min(i2, f() / 8);
        Preconditions.checkPositionIndexes(i, i + iMin, bArr.length);
        n(bArr, i, iMin);
        return iMin;
    }

    abstract void n(byte[] bArr, int i, int i2);

    public final String toString() {
        byte[] bArrJ = j();
        StringBuilder sb = new StringBuilder(bArrJ.length * 2);
        for (byte b2 : bArrJ) {
            char[] cArr = a;
            sb.append(cArr[(b2 >> 4) & 15]);
            sb.append(cArr[b2 & Ascii.SI]);
        }
        return sb.toString();
    }
}
