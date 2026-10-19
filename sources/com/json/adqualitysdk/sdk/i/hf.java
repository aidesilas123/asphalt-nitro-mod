package com.json.adqualitysdk.sdk.i;

/* JADX INFO: loaded from: classes4.dex */
public enum hf {
    a(-1),
    b(0),
    c(1),
    f5723d(2),
    f5724e(3),
    f5725f(4),
    f5726g(5),
    h(6),
    i(7);

    private static int[] k = null;
    private static int l = 0;
    private static int m = 1;
    private final int n;

    static {
        e();
        int i2 = l + 105;
        m = i2 % 128;
        if ((i2 % 2 == 0 ? '9' : 'C') != 'C') {
            int i3 = 63 / 0;
        }
    }

    hf(int i2) {
        this.n = i2;
    }

    static void e() {
        k = new int[]{-283737500, -1076843822, -492725827, -2023752013, -157696853, -1964420641, 1103206760, 897826278, -1555145556, 262301784, -322026414, -454048075, -954525382, 78215561, -2110203253, 295132281, 1435828122, -1798223686};
    }

    private static String f(int[] iArr, int i2) {
        String str;
        synchronized (b.f33) {
            char[] cArr = new char[4];
            char[] cArr2 = new char[iArr.length << 1];
            int[] iArr2 = (int[]) k.clone();
            b.f34 = 0;
            while (true) {
                int i3 = b.f34;
                if (i3 < iArr.length) {
                    cArr[0] = (char) (iArr[i3] >> 16);
                    cArr[1] = (char) iArr[i3];
                    cArr[2] = (char) (iArr[i3 + 1] >> 16);
                    cArr[3] = (char) iArr[i3 + 1];
                    b.f31 = (cArr[0] << 16) + cArr[1];
                    b.f32 = (cArr[2] << 16) + cArr[3];
                    b.m390(iArr2);
                    for (int i4 = 0; i4 < 16; i4++) {
                        int i5 = b.f31 ^ iArr2[i4];
                        b.f31 = i5;
                        b.f32 = b.m391(i5) ^ b.f32;
                        int i6 = b.f31;
                        b.f31 = b.f32;
                        b.f32 = i6;
                    }
                    int i7 = b.f31;
                    b.f31 = b.f32;
                    b.f32 = i7;
                    b.f32 = i7 ^ iArr2[16];
                    b.f31 ^= iArr2[17];
                    int i8 = b.f32;
                    int i9 = b.f31;
                    cArr[0] = (char) (i9 >>> 16);
                    cArr[1] = (char) i9;
                    int i10 = b.f32;
                    cArr[2] = (char) (i10 >>> 16);
                    cArr[3] = (char) i10;
                    b.m390(iArr2);
                    int i11 = b.f34;
                    cArr2[i11 << 1] = cArr[0];
                    cArr2[(i11 << 1) + 1] = cArr[1];
                    cArr2[(i11 << 1) + 2] = cArr[2];
                    cArr2[(i11 << 1) + 3] = cArr[3];
                    b.f34 = i11 + 2;
                } else {
                    str = new String(cArr2, 0, i2);
                }
            }
        }
        return str;
    }

    public static hf valueOf(String str) {
        int i2 = l + 33;
        m = i2 % 128;
        if (i2 % 2 == 0) {
            Enum.valueOf(hf.class, str);
            throw null;
        }
        hf hfVar = (hf) Enum.valueOf(hf.class, str);
        int i3 = l + 5;
        m = i3 % 128;
        int i4 = i3 % 2;
        return hfVar;
    }

    /* JADX INFO: renamed from: values, reason: to resolve conflict with enum method */
    public static hf[] valuesCustom() {
        int i2 = l + 37;
        m = i2 % 128;
        int i3 = i2 % 2;
        hf[] hfVarArr = (hf[]) values().clone();
        int i4 = l + 51;
        m = i4 % 128;
        int i5 = i4 % 2;
        return hfVarArr;
    }

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static hf m722(int i2) {
        int i3 = l + 81;
        int i4 = i3 % 128;
        m = i4;
        if (i3 % 2 == 0) {
            throw null;
        }
        switch (i2) {
            case -1:
                hf hfVar = a;
                int i5 = i4 + 35;
                l = i5 % 128;
                int i6 = i5 % 2;
                return hfVar;
            case 0:
                return b;
            case 1:
                return c;
            case 2:
                return f5723d;
            case 3:
                return f5724e;
            case 4:
                return f5725f;
            case 5:
                return f5726g;
            case 6:
                hf hfVar2 = h;
                int i7 = i4 + 67;
                l = i7 % 128;
                int i8 = i7 % 2;
                return hfVar2;
            case 7:
                return i;
            default:
                return null;
        }
    }

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final int m723() {
        int i2 = m + 97;
        int i3 = i2 % 128;
        l = i3;
        int i4 = i2 % 2;
        int i5 = this.n;
        int i6 = i3 + 21;
        m = i6 % 128;
        if ((i6 % 2 == 0 ? '?' : 'G') == 'G') {
            return i5;
        }
        int i7 = 65 / 0;
        return i5;
    }
}
