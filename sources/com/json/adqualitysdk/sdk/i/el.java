package com.json.adqualitysdk.sdk.i;

import android.os.Process;
import android.view.ViewConfiguration;

/* JADX INFO: loaded from: classes4.dex */
public final class el extends en {
    private static long j = 0;
    private static int k = 0;
    private static char l = 19810;
    private static int m = 0;
    private static int n = 1;

    public el(dx dxVar, dx dxVar2, Cdo cdo) {
        super(dxVar, dxVar2, cdo);
    }

    private static String g(String str, String str2, int i, char c, String str3) {
        String str4;
        Object charArray = str3;
        if (str3 != null) {
            charArray = str3.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        Object charArray2 = str2;
        if (str2 != null) {
            charArray2 = str2.toCharArray();
        }
        char[] cArr2 = (char[]) charArray2;
        Object charArray3 = str;
        if (str != null) {
            charArray3 = str.toCharArray();
        }
        char[] cArr3 = (char[]) charArray3;
        synchronized (j.f124) {
            char[] cArr4 = (char[]) cArr3.clone();
            char[] cArr5 = (char[]) cArr2.clone();
            cArr4[0] = (char) (c ^ cArr4[0]);
            cArr5[2] = (char) (cArr5[2] + ((char) i));
            int length = cArr.length;
            char[] cArr6 = new char[length];
            j.f125 = 0;
            while (true) {
                int i2 = j.f125;
                if (i2 < length) {
                    int i3 = (i2 + 2) % 4;
                    int i4 = (i2 + 3) % 4;
                    char c2 = (char) (((cArr4[i2 % 4] * 32718) + cArr5[i3]) % 65535);
                    j.f126 = c2;
                    cArr5[i4] = (char) (((cArr4[i4] * 32718) + cArr5[i3]) / 65535);
                    cArr4[i4] = c2;
                    int i5 = j.f125;
                    cArr6[i5] = (char) (((((long) (cArr[i5] ^ cArr4[i4])) ^ j) ^ ((long) k)) ^ ((long) l));
                    j.f125 = i5 + 1;
                } else {
                    str4 = new String(cArr6);
                }
            }
        }
        return str4;
    }

    @Override // com.json.adqualitysdk.sdk.i.en
    final boolean d(Object obj, Object obj2) {
        int i = m;
        int i2 = i + 109;
        n = i2 % 128;
        if (i2 % 2 == 0) {
            throw null;
        }
        if (!(obj != obj2)) {
            return true;
        }
        int i3 = i + 91;
        n = i3 % 128;
        int i4 = i3 % 2;
        return false;
    }

    @Override // com.json.adqualitysdk.sdk.i.en
    final boolean e(int i) {
        int i2 = n;
        int i3 = i2 + 91;
        m = i3 % 128;
        if (i3 % 2 != 0) {
            throw null;
        }
        if ((i == 0 ? 'Y' : (char) 23) == 23) {
            return false;
        }
        int i4 = i2 + 11;
        m = i4 % 128;
        if (i4 % 2 == 0) {
            return true;
        }
        int i5 = 92 / 0;
        return true;
    }

    @Override // com.json.adqualitysdk.sdk.i.en
    final boolean f(String str, String str2) {
        int i = n + 19;
        m = i % 128;
        int i2 = i % 2;
        boolean zEquals = str.equals(str2);
        int i3 = m + 69;
        n = i3 % 128;
        int i4 = i3 % 2;
        return zEquals;
    }

    @Override // com.json.adqualitysdk.sdk.i.ed
    /* JADX INFO: renamed from: ﾇ */
    public final String mo709() {
        int gidForName;
        int doubleTapTimeout;
        int i = n + 91;
        m = i % 128;
        if (i % 2 == 0) {
            gidForName = (-1) - Process.getGidForName("");
            doubleTapTimeout = (ViewConfiguration.getDoubleTapTimeout() >> 16) + 4391;
        } else {
            gidForName = (-1) / Process.getGidForName("");
            doubleTapTimeout = 20967 << (ViewConfiguration.getDoubleTapTimeout() / 99);
        }
        return g("籍ꊁ⟪눑", "\u0000\u0000\u0000\u0000", gidForName, (char) doubleTapTimeout, "骴↊").intern();
    }
}
