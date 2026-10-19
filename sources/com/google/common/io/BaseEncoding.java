package com.google.common.io;

import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.math.IntMath;
import com.json.b4;
import java.io.IOException;
import java.math.RoundingMode;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public abstract class BaseEncoding {
    private static final BaseEncoding a;
    private static final BaseEncoding b;
    private static final BaseEncoding c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final BaseEncoding f3908d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final BaseEncoding f3909e;

    private static final class a {
        private final String a;
        private final char[] b;
        final int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final int f3910d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final int f3911e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final int f3912f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final byte[] f3913g;
        private final boolean[] h;

        a(String str, char[] cArr) {
            this.a = (String) Preconditions.checkNotNull(str);
            this.b = (char[]) Preconditions.checkNotNull(cArr);
            try {
                int iLog2 = IntMath.log2(cArr.length, RoundingMode.UNNECESSARY);
                this.f3910d = iLog2;
                int iMin = Math.min(8, Integer.lowestOneBit(iLog2));
                try {
                    this.f3911e = 8 / iMin;
                    this.f3912f = iLog2 / iMin;
                    this.c = cArr.length - 1;
                    byte[] bArr = new byte[128];
                    Arrays.fill(bArr, (byte) -1);
                    for (int i = 0; i < cArr.length; i++) {
                        char c = cArr[i];
                        Preconditions.checkArgument(c < 128, "Non-ASCII character: %s", c);
                        Preconditions.checkArgument(bArr[c] == -1, "Duplicate character: %s", c);
                        bArr[c] = (byte) i;
                    }
                    this.f3913g = bArr;
                    boolean[] zArr = new boolean[this.f3911e];
                    for (int i2 = 0; i2 < this.f3912f; i2++) {
                        zArr[IntMath.divide(i2 * 8, this.f3910d, RoundingMode.CEILING)] = true;
                    }
                    this.h = zArr;
                } catch (ArithmeticException e2) {
                    String str2 = new String(cArr);
                    throw new IllegalArgumentException(str2.length() != 0 ? "Illegal alphabet ".concat(str2) : new String("Illegal alphabet "), e2);
                }
            } catch (ArithmeticException e3) {
                int length = cArr.length;
                StringBuilder sb = new StringBuilder(35);
                sb.append("Illegal alphabet length ");
                sb.append(length);
                throw new IllegalArgumentException(sb.toString(), e3);
            }
        }

        char b(int i) {
            return this.b[i];
        }

        public boolean c(char c) {
            byte[] bArr = this.f3913g;
            return c < bArr.length && bArr[c] != -1;
        }

        public boolean equals(Object obj) {
            if (obj instanceof a) {
                return Arrays.equals(this.b, ((a) obj).b);
            }
            return false;
        }

        public int hashCode() {
            return Arrays.hashCode(this.b);
        }

        public String toString() {
            return this.a;
        }
    }

    static final class b extends d {
        final char[] h;

        private b(a aVar) {
            super(aVar, null);
            this.h = new char[512];
            Preconditions.checkArgument(aVar.b.length == 16);
            for (int i = 0; i < 256; i++) {
                this.h[i] = aVar.b(i >>> 4);
                this.h[i | 256] = aVar.b(i & 15);
            }
        }

        b(String str, String str2) {
            this(new a(str, str2.toCharArray()));
        }

        @Override // com.google.common.io.BaseEncoding.d, com.google.common.io.BaseEncoding
        void b(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            Preconditions.checkNotNull(appendable);
            Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
            for (int i3 = 0; i3 < i2; i3++) {
                int i4 = bArr[i + i3] & 255;
                appendable.append(this.h[i4]);
                appendable.append(this.h[i4 | 256]);
            }
        }
    }

    static final class c extends d {
        private c(a aVar, Character ch) {
            super(aVar, ch);
            Preconditions.checkArgument(aVar.b.length == 64);
        }

        c(String str, String str2, Character ch) {
            this(new a(str, str2.toCharArray()), ch);
        }

        @Override // com.google.common.io.BaseEncoding.d, com.google.common.io.BaseEncoding
        void b(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            Preconditions.checkNotNull(appendable);
            int i3 = i + i2;
            Preconditions.checkPositionIndexes(i, i3, bArr.length);
            while (i2 >= 3) {
                int i4 = i + 1;
                int i5 = i4 + 1;
                int i6 = ((bArr[i] & 255) << 16) | ((bArr[i4] & 255) << 8) | (bArr[i5] & 255);
                appendable.append(this.f3914f.b(i6 >>> 18));
                appendable.append(this.f3914f.b((i6 >>> 12) & 63));
                appendable.append(this.f3914f.b((i6 >>> 6) & 63));
                appendable.append(this.f3914f.b(i6 & 63));
                i2 -= 3;
                i = i5 + 1;
            }
            if (i < i3) {
                d(appendable, bArr, i, i3 - i);
            }
        }
    }

    static class d extends BaseEncoding {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final a f3914f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final Character f3915g;

        d(a aVar, Character ch) {
            this.f3914f = (a) Preconditions.checkNotNull(aVar);
            Preconditions.checkArgument(ch == null || !aVar.c(ch.charValue()), "Padding character %s was already in alphabet", ch);
            this.f3915g = ch;
        }

        d(String str, String str2, Character ch) {
            this(new a(str, str2.toCharArray()), ch);
        }

        @Override // com.google.common.io.BaseEncoding
        void b(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            Preconditions.checkNotNull(appendable);
            Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
            int i3 = 0;
            while (i3 < i2) {
                d(appendable, bArr, i + i3, Math.min(this.f3914f.f3912f, i2 - i3));
                i3 += this.f3914f.f3912f;
            }
        }

        @Override // com.google.common.io.BaseEncoding
        int c(int i) {
            a aVar = this.f3914f;
            return aVar.f3911e * IntMath.divide(i, aVar.f3912f, RoundingMode.CEILING);
        }

        void d(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            Preconditions.checkNotNull(appendable);
            Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
            int i3 = 0;
            Preconditions.checkArgument(i2 <= this.f3914f.f3912f);
            long j = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                j = (j | ((long) (bArr[i + i4] & 255))) << 8;
            }
            int i5 = ((i2 + 1) * 8) - this.f3914f.f3910d;
            while (i3 < i2 * 8) {
                a aVar = this.f3914f;
                appendable.append(aVar.b(((int) (j >>> (i5 - i3))) & aVar.c));
                i3 += this.f3914f.f3910d;
            }
            if (this.f3915g != null) {
                while (i3 < this.f3914f.f3912f * 8) {
                    appendable.append(this.f3915g.charValue());
                    i3 += this.f3914f.f3910d;
                }
            }
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.f3914f.equals(dVar.f3914f) && Objects.equal(this.f3915g, dVar.f3915g);
        }

        public int hashCode() {
            return this.f3914f.hashCode() ^ Objects.hashCode(this.f3915g);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("BaseEncoding.");
            sb.append(this.f3914f.toString());
            if (8 % this.f3914f.f3910d != 0) {
                if (this.f3915g == null) {
                    sb.append(".omitPadding()");
                } else {
                    sb.append(".withPadChar('");
                    sb.append(this.f3915g);
                    sb.append("')");
                }
            }
            return sb.toString();
        }
    }

    static {
        Character chValueOf = Character.valueOf(b4.R);
        a = new c("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", chValueOf);
        b = new c("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", chValueOf);
        c = new d("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", chValueOf);
        f3908d = new d("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV", chValueOf);
        f3909e = new b("base16()", "0123456789ABCDEF");
    }

    BaseEncoding() {
    }

    public static BaseEncoding base16() {
        return f3909e;
    }

    public static BaseEncoding base32() {
        return c;
    }

    public static BaseEncoding base32Hex() {
        return f3908d;
    }

    public static BaseEncoding base64() {
        return a;
    }

    public static BaseEncoding base64Url() {
        return b;
    }

    public final String a(byte[] bArr, int i, int i2) {
        Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
        StringBuilder sb = new StringBuilder(c(i2));
        try {
            b(sb, bArr, i, i2);
            return sb.toString();
        } catch (IOException e2) {
            throw new AssertionError(e2);
        }
    }

    abstract void b(Appendable appendable, byte[] bArr, int i, int i2) throws IOException;

    abstract int c(int i);
}
