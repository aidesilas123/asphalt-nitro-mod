package com.json.adqualitysdk.sdk.i;

import android.os.SystemClock;
import android.view.ViewConfiguration;

/* JADX INFO: loaded from: classes4.dex */
public final class fh extends fr {
    private static char[] a = {'b', 'r', 'e', 'a', 'k', ';', 'c', 'd', 'f'};
    private static char b = 3;
    private static int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f5621d = 1;

    private static String a(byte b2, String str, int i) {
        String str2;
        Object charArray = str;
        if (str != null) {
            charArray = str.toCharArray();
        }
        char[] cArr = (char[]) charArray;
        synchronized (g.f56) {
            char[] cArr2 = a;
            char c2 = b;
            char[] cArr3 = new char[i];
            if (i % 2 != 0) {
                i--;
                cArr3[i] = (char) (cArr[i] - b2);
            }
            if (i > 1) {
                g.f60 = 0;
                while (true) {
                    int i2 = g.f60;
                    if (i2 >= i) {
                        break;
                    }
                    g.f58 = cArr[i2];
                    g.f62 = cArr[g.f60 + 1];
                    if (g.f58 == g.f62) {
                        cArr3[g.f60] = (char) (g.f58 - b2);
                        cArr3[g.f60 + 1] = (char) (g.f62 - b2);
                    } else {
                        g.f59 = g.f58 / c2;
                        g.f55 = g.f58 % c2;
                        g.f61 = g.f62 / c2;
                        g.f57 = g.f62 % c2;
                        if (g.f55 == g.f57) {
                            g.f59 = ((g.f59 + c2) - 1) % c2;
                            g.f61 = ((g.f61 + c2) - 1) % c2;
                            int i3 = (g.f59 * c2) + g.f55;
                            int i4 = (g.f61 * c2) + g.f57;
                            int i5 = g.f60;
                            cArr3[i5] = cArr2[i3];
                            cArr3[i5 + 1] = cArr2[i4];
                        } else if (g.f59 == g.f61) {
                            g.f55 = ((g.f55 + c2) - 1) % c2;
                            g.f57 = ((g.f57 + c2) - 1) % c2;
                            int i6 = (g.f59 * c2) + g.f55;
                            int i7 = (g.f61 * c2) + g.f57;
                            int i8 = g.f60;
                            cArr3[i8] = cArr2[i6];
                            cArr3[i8 + 1] = cArr2[i7];
                        } else {
                            int i9 = (g.f59 * c2) + g.f57;
                            int i10 = (g.f61 * c2) + g.f55;
                            int i11 = g.f60;
                            cArr3[i11] = cArr2[i9];
                            cArr3[i11 + 1] = cArr2[i10];
                        }
                    }
                    g.f60 += 2;
                }
            }
            str2 = new String(cArr3);
        }
        return str2;
    }

    public final String toString() {
        int i = c + 35;
        f5621d = i % 128;
        int i2 = i % 2;
        String strIntern = a((byte) ((ViewConfiguration.getTapTimeout() >> 16) + 19), "\u0001\u0002\u0000\u0005\u0005\u0003", 7 - (SystemClock.currentThreadTimeMillis() > (-1L) ? 1 : (SystemClock.currentThreadTimeMillis() == (-1L) ? 0 : -1))).intern();
        int i3 = f5621d + 105;
        c = i3 % 128;
        if ((i3 % 2 != 0 ? '7' : (char) 7) != '7') {
            return strIntern;
        }
        int i4 = 31 / 0;
        return strIntern;
    }

    @Override // com.json.adqualitysdk.sdk.i.fr
    /* JADX INFO: renamed from: ﾇ */
    public final dp mo714(dr drVar, cj cjVar) {
        dp dpVar = new dp(null);
        dpVar.m671();
        int i = c + 13;
        f5621d = i % 128;
        if (i % 2 != 0) {
            return dpVar;
        }
        throw null;
    }
}
