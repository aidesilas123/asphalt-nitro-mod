package com.json;

import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes2.dex */
public final class c9 {
    private static final byte[] a = {-128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    private b b;
    private b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int[] f6065d = new int[16];

    private class b {
        private boolean a;
        private int[] b;
        private long c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private byte[] f6066d;

        private b() {
            this.a = true;
            this.b = new int[4];
            this.f6066d = new byte[64];
            b();
        }

        static /* synthetic */ long a(b bVar, long j) {
            long j2 = bVar.c + j;
            bVar.c = j2;
            return j2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void b() {
            int[] iArr = this.b;
            iArr[0] = 1732584193;
            iArr[1] = -271733879;
            iArr[2] = -1732584194;
            iArr[3] = 271733878;
            this.c = 0L;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void j(b bVar) {
            byte[] bArr = bVar.f6066d;
            byte[] bArr2 = this.f6066d;
            System.arraycopy(bArr, 0, bArr2, 0, bArr2.length);
            int[] iArr = bVar.b;
            int[] iArr2 = this.b;
            System.arraycopy(iArr, 0, iArr2, 0, iArr2.length);
            this.a = bVar.a;
            this.c = bVar.c;
        }
    }

    c9() {
        this.b = new b();
        this.c = new b();
        c();
    }

    private static int a(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        int i8 = i + ((i3 & i2) | (i4 & (~i2))) + i5 + i7;
        return ((i8 >>> (32 - i6)) | (i8 << i6)) + i2;
    }

    public static String a(String str) {
        c9 c9Var = new c9();
        c9Var.b(str);
        return c9Var.b();
    }

    private static String c(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer(bArr.length * 2);
        for (byte b2 : bArr) {
            int i = b2 & 255;
            if (i < 16) {
                stringBuffer.append("0");
            }
            stringBuffer.append(Integer.toHexString(i));
        }
        return stringBuffer.toString();
    }

    private void d(b bVar, byte[] bArr, int i, int i2) {
        int i3 = 0;
        this.c.a = false;
        if (i2 + i > bArr.length) {
            i2 = bArr.length - i;
        }
        int i4 = ((int) (bVar.c >>> 3)) & 63;
        b.a(bVar, i2 << 3);
        int i5 = 64 - i4;
        if (i2 >= i5) {
            System.arraycopy(bArr, i, bVar.f6066d, i4, i5);
            e(bVar, h(bVar.f6066d, 64, 0));
            while (i5 + 63 < i2) {
                e(bVar, h(bArr, 64, i5));
                i5 += 64;
            }
            i3 = i5;
            i4 = 0;
        }
        if (i3 < i2) {
            for (int i6 = i3; i6 < i2; i6++) {
                bVar.f6066d[(i4 + i6) - i3] = bArr[i6 + i];
            }
        }
    }

    private static void e(b bVar, int[] iArr) {
        int i = bVar.b[0];
        int i2 = bVar.b[1];
        int i3 = bVar.b[2];
        int i4 = bVar.b[3];
        int iA = a(i, i2, i3, i4, iArr[0], 7, -680876936);
        int iA2 = a(i4, iA, i2, i3, iArr[1], 12, -389564586);
        int iA3 = a(i3, iA2, iA, i2, iArr[2], 17, 606105819);
        int iA4 = a(i2, iA3, iA2, iA, iArr[3], 22, -1044525330);
        int iA5 = a(iA, iA4, iA3, iA2, iArr[4], 7, -176418897);
        int iA6 = a(iA2, iA5, iA4, iA3, iArr[5], 12, 1200080426);
        int iA7 = a(iA3, iA6, iA5, iA4, iArr[6], 17, -1473231341);
        int iA8 = a(iA4, iA7, iA6, iA5, iArr[7], 22, -45705983);
        int iA9 = a(iA5, iA8, iA7, iA6, iArr[8], 7, 1770035416);
        int iA10 = a(iA6, iA9, iA8, iA7, iArr[9], 12, -1958414417);
        int iA11 = a(iA7, iA10, iA9, iA8, iArr[10], 17, -42063);
        int iA12 = a(iA8, iA11, iA10, iA9, iArr[11], 22, -1990404162);
        int iA13 = a(iA9, iA12, iA11, iA10, iArr[12], 7, 1804603682);
        int iA14 = a(iA10, iA13, iA12, iA11, iArr[13], 12, -40341101);
        int iA15 = a(iA11, iA14, iA13, iA12, iArr[14], 17, -1502002290);
        int iA16 = a(iA12, iA15, iA14, iA13, iArr[15], 22, 1236535329);
        int i5 = i(iA13, iA16, iA15, iA14, iArr[1], 5, -165796510);
        int i6 = i(iA14, i5, iA16, iA15, iArr[6], 9, -1069501632);
        int i7 = i(iA15, i6, i5, iA16, iArr[11], 14, 643717713);
        int i8 = i(iA16, i7, i6, i5, iArr[0], 20, -373897302);
        int i9 = i(i5, i8, i7, i6, iArr[5], 5, -701558691);
        int i10 = i(i6, i9, i8, i7, iArr[10], 9, 38016083);
        int i11 = i(i7, i10, i9, i8, iArr[15], 14, -660478335);
        int i12 = i(i8, i11, i10, i9, iArr[4], 20, -405537848);
        int i13 = i(i9, i12, i11, i10, iArr[9], 5, 568446438);
        int i14 = i(i10, i13, i12, i11, iArr[14], 9, -1019803690);
        int i15 = i(i11, i14, i13, i12, iArr[3], 14, -187363961);
        int i16 = i(i12, i15, i14, i13, iArr[8], 20, 1163531501);
        int i17 = i(i13, i16, i15, i14, iArr[13], 5, -1444681467);
        int i18 = i(i14, i17, i16, i15, iArr[2], 9, -51403784);
        int i19 = i(i15, i18, i17, i16, iArr[7], 14, 1735328473);
        int i20 = i(i16, i19, i18, i17, iArr[12], 20, -1926607734);
        int iJ = j(i17, i20, i19, i18, iArr[5], 4, -378558);
        int iJ2 = j(i18, iJ, i20, i19, iArr[8], 11, -2022574463);
        int iJ3 = j(i19, iJ2, iJ, i20, iArr[11], 16, 1839030562);
        int iJ4 = j(i20, iJ3, iJ2, iJ, iArr[14], 23, -35309556);
        int iJ5 = j(iJ, iJ4, iJ3, iJ2, iArr[1], 4, -1530992060);
        int iJ6 = j(iJ2, iJ5, iJ4, iJ3, iArr[4], 11, 1272893353);
        int iJ7 = j(iJ3, iJ6, iJ5, iJ4, iArr[7], 16, -155497632);
        int iJ8 = j(iJ4, iJ7, iJ6, iJ5, iArr[10], 23, -1094730640);
        int iJ9 = j(iJ5, iJ8, iJ7, iJ6, iArr[13], 4, 681279174);
        int iJ10 = j(iJ6, iJ9, iJ8, iJ7, iArr[0], 11, -358537222);
        int iJ11 = j(iJ7, iJ10, iJ9, iJ8, iArr[3], 16, -722521979);
        int iJ12 = j(iJ8, iJ11, iJ10, iJ9, iArr[6], 23, 76029189);
        int iJ13 = j(iJ9, iJ12, iJ11, iJ10, iArr[9], 4, -640364487);
        int iJ14 = j(iJ10, iJ13, iJ12, iJ11, iArr[12], 11, -421815835);
        int iJ15 = j(iJ11, iJ14, iJ13, iJ12, iArr[15], 16, 530742520);
        int iJ16 = j(iJ12, iJ15, iJ14, iJ13, iArr[2], 23, -995338651);
        int iK = k(iJ13, iJ16, iJ15, iJ14, iArr[0], 6, -198630844);
        int iK2 = k(iJ14, iK, iJ16, iJ15, iArr[7], 10, 1126891415);
        int iK3 = k(iJ15, iK2, iK, iJ16, iArr[14], 15, -1416354905);
        int iK4 = k(iJ16, iK3, iK2, iK, iArr[5], 21, -57434055);
        int iK5 = k(iK, iK4, iK3, iK2, iArr[12], 6, 1700485571);
        int iK6 = k(iK2, iK5, iK4, iK3, iArr[3], 10, -1894986606);
        int iK7 = k(iK3, iK6, iK5, iK4, iArr[10], 15, -1051523);
        int iK8 = k(iK4, iK7, iK6, iK5, iArr[1], 21, -2054922799);
        int iK9 = k(iK5, iK8, iK7, iK6, iArr[8], 6, 1873313359);
        int iK10 = k(iK6, iK9, iK8, iK7, iArr[15], 10, -30611744);
        int iK11 = k(iK7, iK10, iK9, iK8, iArr[6], 15, -1560198380);
        int iK12 = k(iK8, iK11, iK10, iK9, iArr[13], 21, 1309151649);
        int iK13 = k(iK9, iK12, iK11, iK10, iArr[4], 6, -145523070);
        int iK14 = k(iK10, iK13, iK12, iK11, iArr[11], 10, -1120210379);
        int iK15 = k(iK11, iK14, iK13, iK12, iArr[2], 15, 718787259);
        int iK16 = k(iK12, iK15, iK14, iK13, iArr[9], 21, -343485551);
        int[] iArr2 = bVar.b;
        iArr2[0] = iArr2[0] + iK13;
        int[] iArr3 = bVar.b;
        iArr3[1] = iArr3[1] + iK16;
        int[] iArr4 = bVar.b;
        iArr4[2] = iArr4[2] + iK15;
        int[] iArr5 = bVar.b;
        iArr5[3] = iArr5[3] + iK14;
    }

    private static byte[] f(long j) {
        return new byte[]{(byte) (j & 255), (byte) ((j >>> 8) & 255), (byte) ((j >>> 16) & 255), (byte) ((j >>> 24) & 255), (byte) ((j >>> 32) & 255), (byte) ((j >>> 40) & 255), (byte) ((j >>> 48) & 255), (byte) ((j >>> 56) & 255)};
    }

    private static byte[] g(int[] iArr, int i) {
        byte[] bArr = new byte[i];
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3 += 4) {
            int i4 = iArr[i2];
            bArr[i3] = (byte) (i4 & 255);
            bArr[i3 + 1] = (byte) ((i4 >>> 8) & 255);
            bArr[i3 + 2] = (byte) ((i4 >>> 16) & 255);
            bArr[i3 + 3] = (byte) ((i4 >>> 24) & 255);
            i2++;
        }
        return bArr;
    }

    private int[] h(byte[] bArr, int i, int i2) {
        int i3 = 0;
        for (int i4 = 0; i4 < i; i4 += 4) {
            this.f6065d[i3] = (bArr[i4 + i2] & 255) | ((bArr[(i4 + 1) + i2] & 255) << 8) | ((bArr[(i4 + 2) + i2] & 255) << 16) | ((bArr[(i4 + 3) + i2] & 255) << 24);
            i3++;
        }
        return this.f6065d;
    }

    private static int i(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        int i8 = i + ((i3 & (~i4)) | (i2 & i4)) + i5 + i7;
        return ((i8 >>> (32 - i6)) | (i8 << i6)) + i2;
    }

    private static int j(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        int i8 = i + ((i3 ^ i2) ^ i4) + i5 + i7;
        return ((i8 >>> (32 - i6)) | (i8 << i6)) + i2;
    }

    private static int k(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        int i8 = i + (i3 ^ ((~i4) | i2)) + i5 + i7;
        return ((i8 >>> (32 - i6)) | (i8 << i6)) + i2;
    }

    public void a(byte b2) {
        a(new byte[]{b2}, 1);
    }

    public void a(String str, String str2) throws UnsupportedEncodingException {
        b(str.getBytes(str2));
    }

    public void a(byte[] bArr, int i) {
        b(bArr, 0, i);
    }

    public byte[] a() {
        if (!this.c.a) {
            this.c.j(this.b);
            long j = this.c.c;
            int i = (int) ((j >>> 3) & 63);
            d(this.c, a, 0, i < 56 ? 56 - i : 120 - i);
            d(this.c, f(j), 0, 8);
            this.c.a = true;
        }
        return g(this.c.b, 16);
    }

    public String b() {
        return c(a());
    }

    public void b(String str) {
        b(str.getBytes());
    }

    public void b(byte[] bArr) {
        b(bArr, 0, bArr.length);
    }

    public void b(byte[] bArr, int i, int i2) {
        d(this.b, bArr, i, i2);
    }

    public void c() {
        this.b.b();
        this.c.a = false;
    }

    public String toString() {
        return b();
    }
}
