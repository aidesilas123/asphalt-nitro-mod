package com.json.adqualitysdk.sdk.i;

import android.graphics.Color;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes4.dex */
public final class er extends ei {
    private static char[] n = {137, 138};
    private static int o = 77;
    private static boolean p = true;
    private static boolean q = true;
    private static int r = 0;
    private static int s = 1;

    public er(dx dxVar, dx dxVar2, Cdo cdo) {
        super(dxVar, dxVar2, cdo);
    }

    private static String h(int[] iArr, String str, int i, String str2) throws UnsupportedEncodingException {
        Object bytes = str2;
        if (str2 != null) {
            bytes = str2.getBytes("ISO-8859-1");
        }
        byte[] bArr = (byte[]) bytes;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (k.f131) {
            char[] cArr2 = n;
            int i2 = o;
            if (q) {
                int length = bArr.length;
                k.f129 = length;
                char[] cArr3 = new char[length];
                k.f130 = 0;
                while (k.f130 < k.f129) {
                    int i3 = k.f130;
                    int i4 = k.f129 - 1;
                    int i5 = k.f130;
                    cArr3[i3] = (char) (cArr2[bArr[i4 - i5] + i] - i2);
                    k.f130 = i5 + 1;
                }
                return new String(cArr3);
            }
            if (p) {
                int length2 = cArr.length;
                k.f129 = length2;
                char[] cArr4 = new char[length2];
                k.f130 = 0;
                while (k.f130 < k.f129) {
                    int i6 = k.f130;
                    int i7 = k.f129 - 1;
                    int i8 = k.f130;
                    cArr4[i6] = (char) (cArr2[cArr[i7 - i8] - i] - i2);
                    k.f130 = i8 + 1;
                }
                return new String(cArr4);
            }
            int length3 = iArr.length;
            k.f129 = length3;
            char[] cArr5 = new char[length3];
            k.f130 = 0;
            while (k.f130 < k.f129) {
                int i9 = k.f130;
                int i10 = k.f129 - 1;
                int i11 = k.f130;
                cArr5[i9] = (char) (cArr2[iArr[i10 - i11] - i] - i2);
                k.f130 = i11 + 1;
            }
            return new String(cArr5);
        }
    }

    @Override // com.json.adqualitysdk.sdk.i.en
    final boolean e(int i) {
        int i2 = r + 93;
        int i3 = i2 % 128;
        s = i3;
        if (i2 % 2 == 0) {
            throw null;
        }
        if ((i <= 0 ? '#' : '7') != '#') {
            return false;
        }
        int i4 = i3 + 31;
        r = i4 % 128;
        int i5 = i4 % 2;
        return true;
    }

    @Override // com.json.adqualitysdk.sdk.i.ed
    /* JADX INFO: renamed from: ﾇ */
    public final String mo709() {
        int i = s + 97;
        r = i % 128;
        return h(null, null, i % 2 != 0 ? Color.green(1) + 124 : Color.green(0) + 127, "\u0082\u0081").intern();
    }
}
