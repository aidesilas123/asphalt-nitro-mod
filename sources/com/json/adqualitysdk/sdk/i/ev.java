package com.json.adqualitysdk.sdk.i;

import android.view.ViewConfiguration;

/* JADX INFO: loaded from: classes4.dex */
public final class ev extends en {
    private static int[] j = {-276268167, -713268844, 1715757120, 1003742320, 2097261049, 1843555279, 2008061364, 422454296, -445531772, 1156411375, 681112710, -1396611221, 1903646822, -1270443112, 1997461556, -2112905454, -373189921, 1311074875};
    private static int k = 0;
    private static int l = 1;

    public ev(dx dxVar, dx dxVar2, Cdo cdo) {
        super(dxVar, dxVar2, cdo);
    }

    private static String g(int[] iArr, int i) {
        String str;
        synchronized (b.f33) {
            char[] cArr = new char[4];
            char[] cArr2 = new char[iArr.length << 1];
            int[] iArr2 = (int[]) j.clone();
            b.f34 = 0;
            while (true) {
                int i2 = b.f34;
                if (i2 < iArr.length) {
                    cArr[0] = (char) (iArr[i2] >> 16);
                    cArr[1] = (char) iArr[i2];
                    cArr[2] = (char) (iArr[i2 + 1] >> 16);
                    cArr[3] = (char) iArr[i2 + 1];
                    b.f31 = (cArr[0] << 16) + cArr[1];
                    b.f32 = (cArr[2] << 16) + cArr[3];
                    b.m390(iArr2);
                    for (int i3 = 0; i3 < 16; i3++) {
                        int i4 = b.f31 ^ iArr2[i3];
                        b.f31 = i4;
                        b.f32 = b.m391(i4) ^ b.f32;
                        int i5 = b.f31;
                        b.f31 = b.f32;
                        b.f32 = i5;
                    }
                    int i6 = b.f31;
                    b.f31 = b.f32;
                    b.f32 = i6;
                    b.f32 = i6 ^ iArr2[16];
                    b.f31 ^= iArr2[17];
                    int i7 = b.f32;
                    int i8 = b.f31;
                    cArr[0] = (char) (i8 >>> 16);
                    cArr[1] = (char) i8;
                    int i9 = b.f32;
                    cArr[2] = (char) (i9 >>> 16);
                    cArr[3] = (char) i9;
                    b.m390(iArr2);
                    int i10 = b.f34;
                    cArr2[i10 << 1] = cArr[0];
                    cArr2[(i10 << 1) + 1] = cArr[1];
                    cArr2[(i10 << 1) + 2] = cArr[2];
                    cArr2[(i10 << 1) + 3] = cArr[3];
                    b.f34 = i10 + 2;
                } else {
                    str = new String(cArr2, 0, i);
                }
            }
        }
        return str;
    }

    @Override // com.json.adqualitysdk.sdk.i.en
    final boolean d(Object obj, Object obj2) {
        int i = k;
        int i2 = i + 29;
        l = i2 % 128;
        if (!(i2 % 2 != 0)) {
            throw null;
        }
        if (obj == obj2) {
            return false;
        }
        int i3 = i + 115;
        l = i3 % 128;
        if (i3 % 2 != 0) {
            return true;
        }
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.en
    final boolean e(int i) {
        int i2 = l + 83;
        int i3 = i2 % 128;
        k = i3;
        int i4 = i2 % 2;
        if ((i != 0 ? 'K' : (char) 22) == 22) {
            return false;
        }
        int i5 = i3 + 45;
        l = i5 % 128;
        if ((i5 % 2 == 0 ? 'C' : (char) 22) != 'C') {
            return true;
        }
        int i6 = 24 / 0;
        return true;
    }

    @Override // com.json.adqualitysdk.sdk.i.en
    final boolean f(String str, String str2) {
        int i = l + 59;
        k = i % 128;
        int i2 = i % 2;
        if (!(str.equals(str2))) {
            int i3 = l + 19;
            k = i3 % 128;
            int i4 = i3 % 2;
            return true;
        }
        int i5 = k + 75;
        l = i5 % 128;
        if (i5 % 2 == 0) {
            throw null;
        }
        return false;
    }

    @Override // com.json.adqualitysdk.sdk.i.ed
    /* JADX INFO: renamed from: ﾇ */
    public final String mo709() {
        int i = l + 93;
        k = i % 128;
        String strIntern = (i % 2 != 0 ? g(new int[]{1358163282, 149961068}, (ViewConfiguration.getScrollBarFadeDuration() >> 48) * 2) : g(new int[]{1358163282, 149961068}, (ViewConfiguration.getScrollBarFadeDuration() >> 16) + 2)).intern();
        int i2 = k + 7;
        l = i2 % 128;
        if ((i2 % 2 == 0 ? '(' : '5') == '5') {
            return strIntern;
        }
        throw null;
    }
}
