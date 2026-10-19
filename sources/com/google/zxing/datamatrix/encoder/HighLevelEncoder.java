package com.google.zxing.datamatrix.encoder;

import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public final class HighLevelEncoder {
    private HighLevelEncoder() {
    }

    private static int a(float[] fArr, int[] iArr, int i, byte[] bArr) {
        for (int i2 = 0; i2 < 6; i2++) {
            int iCeil = (int) Math.ceil(fArr[i2]);
            iArr[i2] = iCeil;
            if (i > iCeil) {
                Arrays.fill(bArr, (byte) 0);
                i = iCeil;
            }
            if (i == iCeil) {
                bArr[i2] = (byte) (bArr[i2] + 1);
            }
        }
        return i;
    }

    private static int b(byte[] bArr) {
        int i = 0;
        for (int i2 = 0; i2 < 6; i2++) {
            i += bArr[i2];
        }
        return i;
    }

    static void c(char c) {
        String hexString = Integer.toHexString(c);
        throw new IllegalArgumentException("Illegal character: " + c + " (0x" + ("0000".substring(0, 4 - hexString.length()) + hexString) + ')');
    }

    static boolean d(char c) {
        return c >= '0' && c <= '9';
    }

    public static int determineConsecutiveDigitCount(CharSequence charSequence, int i) {
        int length = charSequence.length();
        int i2 = i;
        while (i2 < length && d(charSequence.charAt(i2))) {
            i2++;
        }
        return i2 - i;
    }

    static boolean e(char c) {
        return c >= 128 && c <= 255;
    }

    public static String encodeHighLevel(String str) {
        return encodeHighLevel(str, SymbolShapeHint.FORCE_NONE, null, null, false);
    }

    public static String encodeHighLevel(String str, SymbolShapeHint symbolShapeHint, com.google.zxing.b bVar, com.google.zxing.b bVar2) {
        return encodeHighLevel(str, symbolShapeHint, bVar, bVar2, false);
    }

    public static String encodeHighLevel(String str, SymbolShapeHint symbolShapeHint, com.google.zxing.b bVar, com.google.zxing.b bVar2, boolean z) {
        c cVar = new c();
        int iE = 0;
        g[] gVarArr = {new a(), cVar, new i(), new j(), new f(), new b()};
        h hVar = new h(str);
        hVar.n(symbolShapeHint);
        hVar.l(bVar, bVar2);
        if (str.startsWith("[)>\u001e05\u001d") && str.endsWith("\u001e\u0004")) {
            hVar.r((char) 236);
            hVar.m(2);
            hVar.f4362f += 7;
        } else if (str.startsWith("[)>\u001e06\u001d") && str.endsWith("\u001e\u0004")) {
            hVar.r((char) 237);
            hVar.m(2);
            hVar.f4362f += 7;
        }
        if (z) {
            cVar.d(hVar);
            iE = hVar.e();
            hVar.j();
        }
        while (hVar.i()) {
            gVarArr[iE].a(hVar);
            if (hVar.e() >= 0) {
                iE = hVar.e();
                hVar.j();
            }
        }
        int iA = hVar.a();
        hVar.p();
        int iA2 = hVar.g().a();
        if (iA < iA2 && iE != 0 && iE != 5 && iE != 4) {
            hVar.r((char) 254);
        }
        StringBuilder sbB = hVar.b();
        if (sbB.length() < iA2) {
            sbB.append((char) 129);
        }
        while (sbB.length() < iA2) {
            sbB.append(p(sbB.length() + 1));
        }
        return hVar.b().toString();
    }

    static boolean f(char c) {
        return c == ' ' || (c >= '0' && c <= '9') || (c >= 'A' && c <= 'Z');
    }

    static boolean g(char c) {
        return c >= ' ' && c <= '^';
    }

    static boolean h(char c) {
        return c == ' ' || (c >= '0' && c <= '9') || (c >= 'a' && c <= 'z');
    }

    static boolean i(char c) {
        return k(c) || c == ' ' || (c >= '0' && c <= '9') || (c >= 'A' && c <= 'Z');
    }

    private static boolean j(char c) {
        return false;
    }

    private static boolean k(char c) {
        return c == '\r' || c == '*' || c == '>';
    }

    static int l(CharSequence charSequence, int i, int i2) {
        int iM = m(charSequence, i, i2);
        if (i2 == 3 && iM == 3) {
            int iMin = Math.min(i + 3, charSequence.length());
            while (i < iMin) {
                if (!i(charSequence.charAt(i))) {
                    return 0;
                }
                i++;
            }
        } else if (i2 == 4 && iM == 4) {
            int iMin2 = Math.min(i + 4, charSequence.length());
            while (i < iMin2) {
                if (!g(charSequence.charAt(i))) {
                    return 0;
                }
                i++;
            }
        }
        return iM;
    }

    static int m(CharSequence charSequence, int i, int i2) {
        float[] fArr;
        char c;
        if (i >= charSequence.length()) {
            return i2;
        }
        if (i2 == 0) {
            fArr = new float[]{0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.25f};
        } else {
            fArr = new float[]{1.0f, 2.0f, 2.0f, 2.0f, 2.0f, 2.25f};
            fArr[i2] = 0.0f;
        }
        byte[] bArr = new byte[6];
        int[] iArr = new int[6];
        byte b = 0;
        int i3 = 0;
        while (true) {
            int i4 = i + i3;
            if (i4 == charSequence.length()) {
                Arrays.fill(bArr, b);
                Arrays.fill(iArr, (int) b);
                int iA = a(fArr, iArr, Integer.MAX_VALUE, bArr);
                int iB = b(bArr);
                if (iArr[b] == iA) {
                    return b;
                }
                if (iB == 1) {
                    if (bArr[5] > 0) {
                        return 5;
                    }
                    if (bArr[4] > 0) {
                        return 4;
                    }
                    if (bArr[2] > 0) {
                        return 2;
                    }
                    if (bArr[3] > 0) {
                        return 3;
                    }
                }
                return 1;
            }
            char cCharAt = charSequence.charAt(i4);
            i3++;
            if (d(cCharAt)) {
                fArr[b] = fArr[b] + 0.5f;
            } else if (e(cCharAt)) {
                fArr[b] = (float) Math.ceil(fArr[b]);
                fArr[b] = fArr[b] + 2.0f;
            } else {
                fArr[b] = (float) Math.ceil(fArr[b]);
                fArr[b] = fArr[b] + 1.0f;
            }
            if (f(cCharAt)) {
                fArr[1] = fArr[1] + 0.6666667f;
            } else if (e(cCharAt)) {
                fArr[1] = fArr[1] + 2.6666667f;
            } else {
                fArr[1] = fArr[1] + 1.3333334f;
            }
            if (h(cCharAt)) {
                fArr[2] = fArr[2] + 0.6666667f;
            } else if (e(cCharAt)) {
                fArr[2] = fArr[2] + 2.6666667f;
            } else {
                fArr[2] = fArr[2] + 1.3333334f;
            }
            if (i(cCharAt)) {
                fArr[3] = fArr[3] + 0.6666667f;
            } else if (e(cCharAt)) {
                fArr[3] = fArr[3] + 4.3333335f;
            } else {
                fArr[3] = fArr[3] + 3.3333333f;
            }
            if (g(cCharAt)) {
                fArr[4] = fArr[4] + 0.75f;
            } else if (e(cCharAt)) {
                fArr[4] = fArr[4] + 4.25f;
            } else {
                fArr[4] = fArr[4] + 3.25f;
            }
            if (j(cCharAt)) {
                c = 5;
                fArr[5] = fArr[5] + 4.0f;
            } else {
                c = 5;
                fArr[5] = fArr[5] + 1.0f;
            }
            if (i3 >= 4) {
                Arrays.fill(bArr, b);
                Arrays.fill(iArr, (int) b);
                a(fArr, iArr, Integer.MAX_VALUE, bArr);
                if (iArr[b] < o(iArr[c], iArr[1], iArr[2], iArr[3], iArr[4])) {
                    return b;
                }
                if (iArr[c] < iArr[b] || iArr[c] + 1 < n(iArr[1], iArr[2], iArr[3], iArr[4])) {
                    return 5;
                }
                if (iArr[4] + 1 < o(iArr[c], iArr[1], iArr[2], iArr[3], iArr[0])) {
                    return 4;
                }
                if (iArr[2] + 1 < o(iArr[c], iArr[1], iArr[4], iArr[3], iArr[0])) {
                    return 2;
                }
                if (iArr[3] + 1 < o(iArr[c], iArr[1], iArr[4], iArr[2], iArr[0])) {
                    return 3;
                }
                if (iArr[1] + 1 >= n(iArr[0], iArr[c], iArr[4], iArr[2])) {
                    continue;
                } else {
                    if (iArr[1] < iArr[3]) {
                        return 1;
                    }
                    if (iArr[1] == iArr[3]) {
                        for (int i5 = i + i3 + 1; i5 < charSequence.length(); i5++) {
                            char cCharAt2 = charSequence.charAt(i5);
                            if (k(cCharAt2)) {
                                return 3;
                            }
                            if (!i(cCharAt2)) {
                                break;
                            }
                        }
                        return 1;
                    }
                }
            }
            b = 0;
        }
    }

    private static int n(int i, int i2, int i3, int i4) {
        return Math.min(i, Math.min(i2, Math.min(i3, i4)));
    }

    private static int o(int i, int i2, int i3, int i4, int i5) {
        return Math.min(n(i, i2, i3, i4), i5);
    }

    private static char p(int i) {
        int i2 = ((i * 149) % 253) + 1 + 129;
        if (i2 > 254) {
            i2 -= 254;
        }
        return (char) i2;
    }
}
