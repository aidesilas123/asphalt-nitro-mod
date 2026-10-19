package com.mbridge.msdk.foundation.tools;

import com.applovin.exoplayer2.common.base.Ascii;
import com.json.b4;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: SameMVEncoder.java */
/* JADX INFO: loaded from: classes4.dex */
public final class ab {
    private static Map<Character, Character> a;
    private static final char[] b;
    private static char[] c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final byte[] f7207d;

    static {
        char[] cArr = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};
        b = cArr;
        HashMap map = new HashMap();
        a = map;
        map.put('A', 'v');
        a.put('B', 'S');
        a.put('C', 'o');
        a.put('D', 'a');
        a.put('E', 'j');
        a.put('F', 'c');
        a.put('G', '7');
        a.put('H', 'd');
        a.put('I', 'R');
        a.put('J', 'z');
        a.put('K', 'p');
        a.put('L', 'W');
        a.put('M', 'i');
        a.put('N', 'f');
        a.put('O', 'G');
        a.put('P', 'y');
        a.put('Q', 'N');
        a.put('R', 'x');
        a.put('S', 'Z');
        a.put('T', 'n');
        a.put('U', 'V');
        a.put('V', '5');
        a.put('W', 'k');
        a.put('X', '+');
        a.put('Y', 'D');
        a.put('Z', 'H');
        a.put('a', 'L');
        a.put('b', 'Y');
        a.put('c', 'h');
        a.put('d', 'J');
        a.put('e', '4');
        a.put('f', '6');
        a.put('g', 'l');
        a.put('h', 't');
        a.put('i', '0');
        a.put('j', 'U');
        a.put('k', '3');
        a.put('l', 'Q');
        a.put('m', 'r');
        a.put('n', 'g');
        a.put('o', 'E');
        a.put('p', 'u');
        a.put('q', 'q');
        a.put('r', '8');
        a.put('s', 's');
        a.put('t', 'w');
        a.put('u', '/');
        a.put('v', 'X');
        a.put('w', 'M');
        a.put('x', 'e');
        a.put('y', 'B');
        a.put('z', 'A');
        a.put('0', 'T');
        a.put('1', '2');
        a.put('2', 'F');
        a.put('3', 'b');
        a.put('4', '9');
        a.put('5', 'P');
        a.put('6', '1');
        a.put('7', 'O');
        a.put('8', 'I');
        a.put('9', 'K');
        a.put('+', 'm');
        a.put('/', 'C');
        c = new char[cArr.length];
        int i = 0;
        int i2 = 0;
        while (true) {
            char[] cArr2 = b;
            if (i2 >= cArr2.length) {
                break;
            }
            c[i2] = a.get(Character.valueOf(cArr2[i2])).charValue();
            i2++;
        }
        f7207d = new byte[128];
        int i3 = 0;
        while (true) {
            byte[] bArr = f7207d;
            if (i3 >= bArr.length) {
                break;
            }
            bArr[i3] = Ascii.DEL;
            i3++;
        }
        while (true) {
            char[] cArr3 = c;
            if (i >= cArr3.length) {
                return;
            }
            f7207d[cArr3[i]] = (byte) i;
            i++;
        }
    }

    private static int a(char[] cArr, byte[] bArr, int i) {
        try {
            char c2 = cArr[3] == '=' ? (char) 2 : (char) 3;
            if (cArr[2] == '=') {
                c2 = 1;
            }
            byte[] bArr2 = f7207d;
            byte b2 = bArr2[cArr[0]];
            byte b3 = bArr2[cArr[1]];
            byte b4 = bArr2[cArr[2]];
            byte b5 = bArr2[cArr[3]];
            if (c2 == 1) {
                bArr[i] = (byte) (((b2 << 2) & 252) | (3 & (b3 >> 4)));
                return 1;
            }
            if (c2 == 2) {
                bArr[i] = (byte) ((3 & (b3 >> 4)) | ((b2 << 2) & 252));
                bArr[i + 1] = (byte) (((b3 << 4) & PsExtractor.VIDEO_STREAM_MASK) | ((b4 >> 2) & 15));
                return 2;
            }
            if (c2 != 3) {
                throw new RuntimeException("Internal Error");
            }
            int i2 = i + 1;
            bArr[i] = (byte) (((b2 << 2) & 252) | ((b3 >> 4) & 3));
            bArr[i2] = (byte) (((b3 << 4) & PsExtractor.VIDEO_STREAM_MASK) | ((b4 >> 2) & 15));
            bArr[i2 + 1] = (byte) ((b5 & 63) | ((b4 << 6) & PsExtractor.AUDIO_STREAM));
            return 3;
        } catch (Exception unused) {
            return 0;
        }
    }

    public static String a(String str) {
        byte[] bArrC = c(str);
        if (bArrC == null || bArrC.length <= 0) {
            return null;
        }
        return new String(bArrC);
    }

    private static String a(byte[] bArr, int i, int i2) {
        if (i2 <= 0) {
            return "";
        }
        try {
            char[] cArr = new char[((i2 / 3) << 2) + 4];
            int i3 = 0;
            while (i2 >= 3) {
                int i4 = ((bArr[i] & 255) << 16) + ((bArr[i + 1] & 255) << 8) + (bArr[i + 2] & 255);
                int i5 = i3 + 1;
                char[] cArr2 = c;
                cArr[i3] = cArr2[i4 >> 18];
                int i6 = i5 + 1;
                cArr[i5] = cArr2[(i4 >> 12) & 63];
                int i7 = i6 + 1;
                cArr[i6] = cArr2[(i4 >> 6) & 63];
                i3 = i7 + 1;
                cArr[i7] = cArr2[i4 & 63];
                i += 3;
                i2 -= 3;
            }
            if (i2 == 1) {
                int i8 = bArr[i] & 255;
                int i9 = i3 + 1;
                char[] cArr3 = c;
                cArr[i3] = cArr3[i8 >> 2];
                int i10 = i9 + 1;
                cArr[i9] = cArr3[(i8 << 4) & 63];
                int i11 = i10 + 1;
                cArr[i10] = b4.R;
                i3 = i11 + 1;
                cArr[i11] = b4.R;
            } else if (i2 == 2) {
                int i12 = ((bArr[i] & 255) << 8) + (bArr[i + 1] & 255);
                int i13 = i3 + 1;
                char[] cArr4 = c;
                cArr[i3] = cArr4[i12 >> 10];
                int i14 = i13 + 1;
                cArr[i13] = cArr4[(i12 >> 4) & 63];
                int i15 = i14 + 1;
                cArr[i14] = cArr4[(i12 << 2) & 63];
                i3 = i15 + 1;
                cArr[i15] = b4.R;
            }
            return new String(cArr, 0, i3);
        } catch (Exception unused) {
            return null;
        }
    }

    public static String b(String str) {
        byte[] bytes = str.getBytes();
        return a(bytes, 0, bytes.length);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x003d A[Catch: Exception -> 0x005b, TryCatch #0 {Exception -> 0x005b, blocks: (B:2:0x0000, B:5:0x0009, B:7:0x0019, B:9:0x001d, B:13:0x002c, B:15:0x0032, B:17:0x0037, B:23:0x004c, B:19:0x003d, B:21:0x0044, B:10:0x0023, B:27:0x0055), top: B:31:0x0000 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static byte[] c(java.lang.String r13) {
        /*
            int r0 = r13.length()     // Catch: java.lang.Exception -> L5b
            r1 = 259(0x103, float:3.63E-43)
            if (r0 >= r1) goto L9
            r1 = r0
        L9:
            char[] r1 = new char[r1]     // Catch: java.lang.Exception -> L5b
            int r2 = r0 >> 2
            int r2 = r2 * 3
            int r2 = r2 + 3
            byte[] r3 = new byte[r2]     // Catch: java.lang.Exception -> L5b
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
        L17:
            if (r5 >= r0) goto L52
            int r8 = r5 + 256
            if (r8 > r0) goto L23
            r13.getChars(r5, r8, r1, r7)     // Catch: java.lang.Exception -> L5b
            int r5 = r7 + 256
            goto L29
        L23:
            r13.getChars(r5, r0, r1, r7)     // Catch: java.lang.Exception -> L5b
            int r5 = r0 - r5
            int r5 = r5 + r7
        L29:
            r9 = r7
        L2a:
            if (r7 >= r5) goto L4f
            char r10 = r1[r7]     // Catch: java.lang.Exception -> L5b
            r11 = 61
            if (r10 == r11) goto L3d
            byte[] r11 = com.mbridge.msdk.foundation.tools.ab.f7207d     // Catch: java.lang.Exception -> L5b
            int r12 = r11.length     // Catch: java.lang.Exception -> L5b
            if (r10 >= r12) goto L4c
            r11 = r11[r10]     // Catch: java.lang.Exception -> L5b
            r12 = 127(0x7f, float:1.78E-43)
            if (r11 == r12) goto L4c
        L3d:
            int r11 = r9 + 1
            r1[r9] = r10     // Catch: java.lang.Exception -> L5b
            r9 = 4
            if (r11 != r9) goto L4b
            int r9 = a(r1, r3, r6)     // Catch: java.lang.Exception -> L5b
            int r6 = r6 + r9
            r9 = 0
            goto L4c
        L4b:
            r9 = r11
        L4c:
            int r7 = r7 + 1
            goto L2a
        L4f:
            r5 = r8
            r7 = r9
            goto L17
        L52:
            if (r6 != r2) goto L55
            return r3
        L55:
            byte[] r13 = new byte[r6]     // Catch: java.lang.Exception -> L5b
            java.lang.System.arraycopy(r3, r4, r13, r4, r6)     // Catch: java.lang.Exception -> L5b
            return r13
        L5b:
            r13 = 0
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.tools.ab.c(java.lang.String):byte[]");
    }
}
