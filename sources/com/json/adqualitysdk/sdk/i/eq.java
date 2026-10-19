package com.json.adqualitysdk.sdk.i;

import android.view.ViewConfiguration;

/* JADX INFO: loaded from: classes4.dex */
public final class eq extends ei {
    private static int n = 92;
    private static int o = 0;
    private static int p = 1;

    public eq(dx dxVar, dx dxVar2, Cdo cdo) {
        super(dxVar, dxVar2, cdo);
    }

    private static String h(int i, boolean z, int i2, int i3, String str) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (c.f35) {
            char[] cArr2 = new char[i3];
            c.f36 = 0;
            while (true) {
                int i4 = c.f36;
                if (i4 >= i3) {
                    break;
                }
                c.f37 = cArr[i4];
                cArr2[c.f36] = (char) (c.f37 + i);
                int i5 = c.f36;
                cArr2[i5] = (char) (cArr2[i5] - n);
                c.f36 = i5 + 1;
            }
            if (i2 > 0) {
                c.f38 = i2;
                char[] cArr3 = new char[i3];
                System.arraycopy(cArr2, 0, cArr3, 0, i3);
                int i6 = c.f38;
                System.arraycopy(cArr3, 0, cArr2, i3 - i6, i6);
                int i7 = c.f38;
                System.arraycopy(cArr3, i7, cArr2, 0, i3 - i7);
            }
            if (z) {
                char[] cArr4 = new char[i3];
                c.f36 = 0;
                while (true) {
                    int i8 = c.f36;
                    if (i8 >= i3) {
                        break;
                    }
                    cArr4[i8] = cArr2[(i3 - i8) - 1];
                    c.f36 = i8 + 1;
                }
                cArr2 = cArr4;
            }
            str2 = new String(cArr2);
        }
        return str2;
    }

    @Override // com.json.adqualitysdk.sdk.i.en
    final boolean e(int i) {
        int i2 = o;
        int i3 = i2 + 7;
        int i4 = i3 % 128;
        p = i4;
        int i5 = i3 % 2;
        if (i >= 0) {
            int i6 = i2 + 93;
            p = i6 % 128;
            int i7 = i6 % 2;
            return true;
        }
        int i8 = i4 + 13;
        o = i8 % 128;
        if (i8 % 2 == 0) {
            return false;
        }
        throw null;
    }

    @Override // com.json.adqualitysdk.sdk.i.ed
    /* JADX INFO: renamed from: ﾇ */
    public final String mo709() {
        int i = p + 65;
        o = i % 128;
        int i2 = i % 2;
        String strIntern = h((ViewConfiguration.getJumpTapTimeout() >> 16) + 153, false, 2 - (ViewConfiguration.getKeyRepeatDelay() >> 16), (ViewConfiguration.getScrollBarSize() >> 8) + 2, "\u0001\u0000").intern();
        int i3 = p + 97;
        o = i3 % 128;
        if ((i3 % 2 != 0 ? '`' : '.') == '.') {
            return strIntern;
        }
        throw null;
    }
}
