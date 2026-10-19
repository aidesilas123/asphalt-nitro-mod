package com.tapjoy.internal;

import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.io.EOFException;
import java.net.ProtocolException;

/* JADX INFO: loaded from: classes4.dex */
public final class c3 extends q7 {
    public c3() {
        super(3, String.class);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0041  */
    @Override // com.tapjoy.internal.q7
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int b(java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.String r8 = (java.lang.String) r8
            int r0 = r8.length()
            r1 = 0
            r2 = 0
        L8:
            if (r1 >= r0) goto L49
            char r3 = r8.charAt(r1)
            r4 = 128(0x80, float:1.8E-43)
            if (r3 >= r4) goto L13
            goto L41
        L13:
            r4 = 2048(0x800, float:2.87E-42)
            if (r3 >= r4) goto L1a
            int r2 = r2 + 2
            goto L46
        L1a:
            r4 = 55296(0xd800, float:7.7486E-41)
            if (r3 < r4) goto L44
            r4 = 57343(0xdfff, float:8.0355E-41)
            if (r3 <= r4) goto L25
            goto L44
        L25:
            r5 = 56319(0xdbff, float:7.892E-41)
            if (r3 > r5) goto L41
            int r3 = r1 + 1
            if (r3 >= r0) goto L41
            char r5 = r8.charAt(r3)
            r6 = 56320(0xdc00, float:7.8921E-41)
            if (r5 < r6) goto L41
            char r5 = r8.charAt(r3)
            if (r5 > r4) goto L41
            int r2 = r2 + 4
            r1 = r3
            goto L46
        L41:
            int r2 = r2 + 1
            goto L46
        L44:
            int r2 = r2 + 3
        L46:
            int r1 = r1 + 1
            goto L8
        L49:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tapjoy.internal.c3.b(java.lang.Object):int");
    }

    @Override // com.tapjoy.internal.q7
    public final Object d(z7 z7Var) throws ProtocolException, EOFException {
        return ((n) z7Var.a).j(z7Var.a());
    }

    @Override // com.tapjoy.internal.q7
    public final void f(w5 w5Var, Object obj) {
        char cCharAt;
        String str = (String) obj;
        n nVar = (n) w5Var.a;
        nVar.getClass();
        int length = str.length();
        if (length < 0) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + length + " < 0");
        }
        if (length > str.length()) {
            throw new IllegalArgumentException("endIndex > string.length: " + length + " > " + str.length());
        }
        int i = 0;
        while (i < length) {
            char cCharAt2 = str.charAt(i);
            if (cCharAt2 < 128) {
                r7 r7VarF = nVar.f(1);
                byte[] bArr = r7VarF.a;
                int i2 = r7VarF.c - i;
                int iMin = Math.min(length, 8192 - i2);
                int i3 = i + 1;
                bArr[i + i2] = (byte) cCharAt2;
                while (true) {
                    i = i3;
                    if (i >= iMin || (cCharAt = str.charAt(i)) >= 128) {
                        break;
                    }
                    i3 = i + 1;
                    bArr[i + i2] = (byte) cCharAt;
                }
                int i4 = r7VarF.c;
                int i5 = (i2 + i) - i4;
                r7VarF.c = i4 + i5;
                nVar.b += (long) i5;
            } else {
                if (cCharAt2 < 2048) {
                    nVar.i((cCharAt2 >> 6) | PsExtractor.AUDIO_STREAM);
                    nVar.i((cCharAt2 & '?') | 128);
                } else if (cCharAt2 < 55296 || cCharAt2 > 57343) {
                    nVar.i((cCharAt2 >> '\f') | 224);
                    nVar.i(((cCharAt2 >> 6) & 63) | 128);
                    nVar.i((cCharAt2 & '?') | 128);
                } else {
                    int i6 = i + 1;
                    char cCharAt3 = i6 < length ? str.charAt(i6) : (char) 0;
                    if (cCharAt2 > 56319 || cCharAt3 < 56320 || cCharAt3 > 57343) {
                        nVar.i(63);
                        i = i6;
                    } else {
                        int i7 = (((cCharAt2 & (-55297)) << 10) | ((-56321) & cCharAt3)) + 65536;
                        nVar.i((i7 >> 18) | PsExtractor.VIDEO_STREAM_MASK);
                        nVar.i(((i7 >> 12) & 63) | 128);
                        nVar.i(((i7 >> 6) & 63) | 128);
                        nVar.i((i7 & 63) | 128);
                        i += 2;
                    }
                }
                i++;
            }
        }
    }
}
