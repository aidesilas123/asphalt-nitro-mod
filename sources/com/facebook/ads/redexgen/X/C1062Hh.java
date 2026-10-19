package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import java.nio.charset.Charset;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Hh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1062Hh {
    public static byte[] A03;
    public static String[] A04 = {"oSbtVRwphkTFlAHrFUFfvlQVewHH9uZD", "ke9406sA8vEe4ogcratlCLLRCygX4Y6v", "LkVrMYKeL4j", "rD3J2lWEcQES1OY4rXh7UnGCqOy7njew", "qJRaOB7ViewD6", "qa5huEKLFbsop1eqm4Yriado9DIEiYjV", "GSl3McmMnOZYTOuxGBg0tC3pnH", "ySC3qX4TjccxO5mLdOZ"};
    public byte[] A00;
    public int A01;
    public int A02;

    static {
        A01();
    }

    public C1062Hh() {
    }

    public C1062Hh(int i) {
        this.A00 = new byte[i];
        this.A01 = i;
    }

    public C1062Hh(byte[] bArr) {
        this.A00 = bArr;
        this.A01 = bArr.length;
    }

    public C1062Hh(byte[] bArr, int i) {
        this.A00 = bArr;
        this.A01 = i;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = bArrCopyOfRange[i4];
            String[] strArr = A04;
            if (strArr[6].length() == strArr[4].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A04;
            strArr2[5] = "EdmI6fYX5kJGCYPfpqvG1yUufp2PCRFX";
            strArr2[3] = "bDUsxAC2PGUD72vhZpZ7z8M6PcC6y0P6";
            bArrCopyOfRange[i4] = (byte) ((b - i3) - 116);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{50, 87, 95, 74, 85, 82, 77, 9, 62, 61, 47, Ascii.SYN, 33, 9, 92, 78, 90, 94, 78, 87, 76, 78, 9, 76, 88, 87, 93, 82, 87, 94, 74, 93, 82, 88, 87, 9, 75, 98, 93, 78, 35, 9, 41, 78, 86, 65, 76, 73, 68, 0, 53, 52, 38, Ascii.CR, Ascii.CAN, 0, 83, 69, 81, 85, 69, 78, 67, 69, 0, 70, 73, 82, 83, 84, 0, 66, 89, 84, 69, Ascii.SUB, 0, -35, -8, -7, -87, -21, -14, -3, -87, -9, -8, -3, -87, 3, -18, -5, -8, -61, -87, -32, -33, -47, -72, -61};
    }

    public final char A02() {
        byte[] bArr = this.A00;
        int i = this.A02;
        return (char) ((bArr[i + 1] & 255) | ((bArr[i] & 255) << 8));
    }

    public final double A03() {
        return Double.longBitsToDouble(A0L());
    }

    public final int A04() {
        return this.A01 - this.A02;
    }

    public final int A05() {
        byte[] bArr = this.A00;
        if (bArr == null) {
            return 0;
        }
        return bArr.length;
    }

    public final int A06() {
        return this.A02;
    }

    public final int A07() {
        return this.A01;
    }

    public final int A08() {
        byte[] bArr = this.A00;
        int i = this.A02;
        int i2 = i + 1;
        this.A02 = i2;
        int i3 = (bArr[i] & 255) << 24;
        int i4 = i2 + 1;
        this.A02 = i4;
        int i5 = i3 | ((bArr[i2] & 255) << 16);
        int i6 = i4 + 1;
        this.A02 = i6;
        int i7 = i5 | ((bArr[i4] & 255) << 8);
        this.A02 = i6 + 1;
        return (bArr[i6] & 255) | i7;
    }

    public final int A09() {
        byte[] bArr = this.A00;
        int i = this.A02;
        int i2 = i + 1;
        this.A02 = i2;
        int i3 = ((bArr[i] & 255) << 24) >> 8;
        int i4 = i2 + 1;
        this.A02 = i4;
        int i5 = i3 | ((bArr[i2] & 255) << 8);
        this.A02 = i4 + 1;
        return (bArr[i4] & 255) | i5;
    }

    public final int A0A() {
        byte[] bArr = this.A00;
        int i = this.A02;
        int i2 = i + 1;
        this.A02 = i2;
        int i3 = bArr[i] & 255;
        int i4 = i2 + 1;
        this.A02 = i4;
        int i5 = i3 | ((bArr[i2] & 255) << 8);
        int i6 = i4 + 1;
        this.A02 = i6;
        int i7 = i5 | ((bArr[i4] & 255) << 16);
        this.A02 = i6 + 1;
        return ((bArr[i6] & 255) << 24) | i7;
    }

    public final int A0B() {
        int iA0A = A0A();
        if (iA0A >= 0) {
            return iA0A;
        }
        throw new IllegalStateException(A00(77, 18, 21) + iA0A);
    }

    public final int A0C() {
        byte[] bArr = this.A00;
        int i = this.A02;
        int i2 = i + 1;
        this.A02 = i2;
        int i3 = bArr[i] & 255;
        this.A02 = i2 + 1;
        return ((bArr[i2] & 255) << 8) | i3;
    }

    public final int A0D() {
        return (A0E() << 21) | (A0E() << 14) | (A0E() << 7) | A0E();
    }

    public final int A0E() {
        byte[] bArr = this.A00;
        int i = this.A02;
        this.A02 = i + 1;
        return bArr[i] & 255;
    }

    public final int A0F() {
        byte[] bArr = this.A00;
        int i = this.A02;
        int i2 = i + 1;
        this.A02 = i2;
        int i3 = (bArr[i] & 255) << 8;
        int i4 = i2 + 1;
        this.A02 = i4;
        int i5 = (bArr[i2] & 255) | i3;
        this.A02 = i4 + 2;
        return i5;
    }

    public final int A0G() {
        byte[] bArr = this.A00;
        int i = this.A02;
        int i2 = i + 1;
        this.A02 = i2;
        int i3 = (bArr[i] & 255) << 16;
        int i4 = i2 + 1;
        this.A02 = i4;
        int i5 = i3 | ((bArr[i2] & 255) << 8);
        this.A02 = i4 + 1;
        return (bArr[i4] & 255) | i5;
    }

    public final int A0H() {
        int iA08 = A08();
        if (iA08 >= 0) {
            return iA08;
        }
        throw new IllegalStateException(A00(77, 18, 21) + iA08);
    }

    public final int A0I() {
        byte[] bArr = this.A00;
        int i = this.A02;
        int i2 = i + 1;
        this.A02 = i2;
        int i3 = (bArr[i] & 255) << 8;
        this.A02 = i2 + 1;
        return (bArr[i2] & 255) | i3;
    }

    public final long A0J() {
        byte[] bArr = this.A00;
        int i = this.A02;
        int i2 = i + 1;
        this.A02 = i2;
        long j = ((long) bArr[i]) & 255;
        int i3 = i2 + 1;
        this.A02 = i3;
        long j2 = j | ((((long) bArr[i2]) & 255) << 8);
        int i4 = i3 + 1;
        this.A02 = i4;
        long j3 = j2 | ((((long) bArr[i3]) & 255) << 16);
        int i5 = i4 + 1;
        this.A02 = i5;
        long j4 = j3 | ((((long) bArr[i4]) & 255) << 24);
        int i6 = i5 + 1;
        this.A02 = i6;
        long j5 = j4 | ((((long) bArr[i5]) & 255) << 32);
        int i7 = i6 + 1;
        this.A02 = i7;
        long j6 = j5 | ((((long) bArr[i6]) & 255) << 40);
        int i8 = i7 + 1;
        this.A02 = i8;
        long j7 = j6 | ((((long) bArr[i7]) & 255) << 48);
        this.A02 = i8 + 1;
        return ((((long) bArr[i8]) & 255) << 56) | j7;
    }

    public final long A0K() {
        byte[] bArr = this.A00;
        int i = this.A02;
        int i2 = i + 1;
        this.A02 = i2;
        long j = ((long) bArr[i]) & 255;
        int i3 = i2 + 1;
        this.A02 = i3;
        long j2 = j | ((((long) bArr[i2]) & 255) << 8);
        int i4 = i3 + 1;
        this.A02 = i4;
        long j3 = j2 | ((((long) bArr[i3]) & 255) << 16);
        this.A02 = i4 + 1;
        return ((((long) bArr[i4]) & 255) << 24) | j3;
    }

    public final long A0L() {
        byte[] bArr = this.A00;
        int i = this.A02;
        int i2 = i + 1;
        this.A02 = i2;
        long j = (((long) bArr[i]) & 255) << 56;
        int i3 = i2 + 1;
        this.A02 = i3;
        long j2 = j | ((((long) bArr[i2]) & 255) << 48);
        int i4 = i3 + 1;
        this.A02 = i4;
        long j3 = j2 | ((((long) bArr[i3]) & 255) << 40);
        int i5 = i4 + 1;
        this.A02 = i5;
        long j4 = j3 | ((((long) bArr[i4]) & 255) << 32);
        int i6 = i5 + 1;
        this.A02 = i6;
        long j5 = j4 | ((((long) bArr[i5]) & 255) << 24);
        int i7 = i6 + 1;
        this.A02 = i7;
        long j6 = j5 | ((((long) bArr[i6]) & 255) << 16);
        int i8 = i7 + 1;
        this.A02 = i8;
        long j7 = j6 | ((((long) bArr[i7]) & 255) << 8);
        this.A02 = i8 + 1;
        return (((long) bArr[i8]) & 255) | j7;
    }

    public final long A0M() {
        byte[] bArr = this.A00;
        int i = this.A02;
        int i2 = i + 1;
        this.A02 = i2;
        long j = (((long) bArr[i]) & 255) << 24;
        int i3 = i2 + 1;
        this.A02 = i3;
        long j2 = j | ((((long) bArr[i2]) & 255) << 16);
        int i4 = i3 + 1;
        this.A02 = i4;
        long j3 = j2 | ((((long) bArr[i3]) & 255) << 8);
        this.A02 = i4 + 1;
        return (((long) bArr[i4]) & 255) | j3;
    }

    public final long A0N() {
        long jA0L = A0L();
        if (jA0L >= 0) {
            return jA0L;
        }
        throw new IllegalStateException(A00(77, 18, 21) + jA0L);
    }

    public final long A0O() {
        int i = 0;
        long j = this.A00[this.A02];
        int i2 = 7;
        while (true) {
            if (i2 < 0) {
                break;
            }
            if ((((long) (1 << i2)) & j) != 0) {
                i2--;
            } else if (i2 < 6) {
                j &= (long) ((1 << i2) - 1);
                i = 7 - i2;
            } else if (i2 == 7) {
                i = 1;
            }
        }
        if (i == 0) {
            throw new NumberFormatException(A00(42, 35, 108) + j);
        }
        for (int i3 = 1; i3 < i; i3++) {
            byte[] bArr = this.A00;
            int i4 = this.A02;
            if (A04[2].length() != 11) {
                throw new RuntimeException();
            }
            A04[2] = "bgE5KGMxqsO";
            byte b = bArr[i4 + i3];
            if ((b & 192) != 128) {
                throw new NumberFormatException(A00(0, 42, 117) + j);
            }
            j = (j << 6) | ((long) (b & 63));
        }
        this.A02 += i;
        return j;
    }

    public final String A0P() {
        if (A04() == 0) {
            return null;
        }
        int i = this.A02;
        while (i < this.A01 && !C1078Hx.A0d(this.A00[i])) {
            i++;
        }
        int i2 = this.A02;
        if (i - i2 >= 3) {
            byte[] bArr = this.A00;
            if (bArr[i2] == -17 && bArr[i2 + 1] == -69 && bArr[i2 + 2] == -65) {
                this.A02 = i2 + 3;
            }
        }
        byte[] bArr2 = this.A00;
        int i3 = this.A02;
        String strA0R = C1078Hx.A0R(bArr2, i3, i - i3);
        this.A02 = i;
        int i4 = this.A01;
        if (i == i4) {
            return strA0R;
        }
        byte[] bArr3 = this.A00;
        if (bArr3[i] == 13) {
            int i5 = i + 1;
            this.A02 = i5;
            if (i5 == i4) {
                return strA0R;
            }
        }
        int i6 = this.A02;
        if (A04[0].charAt(27) == 'i') {
            throw new RuntimeException();
        }
        A04[7] = "dK52fOK8jWv7xyi3a3n";
        if (bArr3[i6] == 10) {
            int i7 = i6 + 1;
            if (A04[0].charAt(27) != 'i') {
                String[] strArr = A04;
                strArr[5] = "CzkRNJa9FDUHAtzqy7ViO0FrfGLEXvBM";
                strArr[3] = "L6K2rBVJE7KS5cY2UbZwATPHMS3LrQAX";
                this.A02 = i7;
            } else {
                A04[0] = "fuXjTapUFN2iKU6xFo1uSk4UrCSPBhbp";
                this.A02 = i7;
            }
        }
        return strA0R;
    }

    public final String A0Q() {
        if (A04() == 0) {
            return null;
        }
        int i = this.A02;
        while (i < this.A01 && this.A00[i] != 0) {
            i++;
        }
        byte[] bArr = this.A00;
        int i2 = this.A02;
        String strA0R = C1078Hx.A0R(bArr, i2, i - i2);
        this.A02 = i;
        if (i < this.A01) {
            this.A02 = i + 1;
        }
        return strA0R;
    }

    public final String A0R(int i) {
        if (i == 0) {
            return A00(0, 0, 25);
        }
        int i2 = i;
        int i3 = this.A02;
        int i4 = (i3 + i) - 1;
        if (i4 < this.A01 && this.A00[i4] == 0) {
            i2--;
        }
        String strA0R = C1078Hx.A0R(this.A00, i3, i2);
        String[] strArr = A04;
        if (strArr[6].length() == strArr[4].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A04;
        strArr2[6] = "dyM2aynMSNvMWhKjh5bvH5o1wH";
        strArr2[4] = "u6o51QVZzHu50";
        this.A02 += i;
        return strA0R;
    }

    public final String A0S(int i) {
        return A0T(i, Charset.forName(A00(95, 5, 23)));
    }

    public final String A0T(int i, Charset charset) {
        String str = new String(this.A00, this.A02, i, charset);
        this.A02 += i;
        return str;
    }

    public final short A0U() {
        byte[] bArr = this.A00;
        int i = this.A02;
        int i2 = i + 1;
        this.A02 = i2;
        int i3 = (bArr[i] & 255) << 8;
        this.A02 = i2 + 1;
        return (short) ((bArr[i2] & 255) | i3);
    }

    public final void A0V() {
        this.A02 = 0;
        this.A01 = 0;
    }

    public final void A0W(int i) {
        A0b(A05() < i ? new byte[i] : this.A00, i);
    }

    public final void A0X(int i) {
        HI.A03(i >= 0 && i <= this.A00.length);
        this.A01 = i;
    }

    public final void A0Y(int i) {
        HI.A03(i >= 0 && i <= this.A01);
        this.A02 = i;
    }

    public final void A0Z(int i) {
        A0Y(this.A02 + i);
    }

    public final void A0a(C1061Hg c1061Hg, int i) {
        A0c(c1061Hg.A00, 0, i);
        c1061Hg.A07(0);
    }

    public final void A0b(byte[] bArr, int i) {
        this.A00 = bArr;
        this.A01 = i;
        this.A02 = 0;
    }

    public final void A0c(byte[] bArr, int i, int i2) {
        System.arraycopy(this.A00, this.A02, bArr, i, i2);
        this.A02 += i2;
    }
}
