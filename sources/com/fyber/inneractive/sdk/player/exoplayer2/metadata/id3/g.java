package com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3;

import com.fyber.inneractive.sdk.player.exoplayer2.util.u;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final class g {
    public static final int b = u.a("ID3");
    public final a a;

    public interface a {
    }

    public static final class b {
        public final int a;
        public final boolean b;
        public final int c;

        public b(int i, boolean z, int i2) {
            this.a = i;
            this.b = z;
            this.c = i2;
        }
    }

    public g() {
        this(null);
    }

    public g(a aVar) {
        this.a = aVar;
    }

    public static int a(int i) {
        return (i == 0 || i == 3) ? 1 : 2;
    }

    public static int a(byte[] bArr, int i, int i2) {
        int iB = b(bArr, i);
        if (i2 == 0 || i2 == 3) {
            return iB;
        }
        while (iB < bArr.length - 1) {
            if (iB % 2 == 0 && bArr[iB + 1] == 0) {
                return iB;
            }
            iB = b(bArr, iB + 1);
        }
        return bArr.length;
    }

    public static com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.a a(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar, int i, int i2) throws UnsupportedEncodingException {
        int iB;
        String str;
        int iL = kVar.l();
        String strB = b(iL);
        int i3 = i - 1;
        byte[] bArr = new byte[i3];
        System.arraycopy(kVar.a, kVar.b, bArr, 0, i3);
        kVar.b += i3;
        if (i2 == 2) {
            str = "image/" + new String(bArr, 0, 3, "ISO-8859-1").toLowerCase(Locale.US);
            if (str.equals("image/jpg")) {
                str = "image/jpeg";
            }
            iB = 2;
        } else {
            iB = b(bArr, 0);
            String lowerCase = new String(bArr, 0, iB, "ISO-8859-1").toLowerCase(Locale.US);
            if (lowerCase.indexOf(47) == -1) {
                str = "image/" + lowerCase;
            } else {
                str = lowerCase;
            }
        }
        int i4 = bArr[iB + 1] & 255;
        int i5 = iB + 2;
        int iA = a(bArr, i5, iL);
        return new com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.a(str, new String(bArr, i5, iA - i5, strB), i4, Arrays.copyOfRange(bArr, iA + a(iL), i3));
    }

    public static com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.b a(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar, int i, String str) {
        byte[] bArr = new byte[i];
        System.arraycopy(kVar.a, kVar.b, bArr, 0, i);
        kVar.b += i;
        return new com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.b(str, bArr);
    }

    public static c a(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar, int i, int i2, boolean z, int i3, a aVar) throws UnsupportedEncodingException {
        int i4 = kVar.b;
        int iB = b(kVar.a, i4);
        String str = new String(kVar.a, i4, iB - i4, "ISO-8859-1");
        kVar.e(iB + 1);
        int iC = kVar.c();
        int iC2 = kVar.c();
        long jM = kVar.m();
        long j = jM == 4294967295L ? -1L : jM;
        long jM2 = kVar.m();
        long j2 = jM2 == 4294967295L ? -1L : jM2;
        ArrayList arrayList = new ArrayList();
        int i5 = i4 + i;
        while (kVar.b < i5) {
            h hVarA = a(i2, kVar, z, i3, aVar);
            if (hVarA != null) {
                arrayList.add(hVarA);
            }
        }
        h[] hVarArr = new h[arrayList.size()];
        arrayList.toArray(hVarArr);
        return new c(str, iC, iC2, j, j2, hVarArr);
    }

    public static e a(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar, int i) throws UnsupportedEncodingException {
        if (i < 4) {
            return null;
        }
        int iL = kVar.l();
        String strB = b(iL);
        byte[] bArr = new byte[3];
        System.arraycopy(kVar.a, kVar.b, bArr, 0, 3);
        kVar.b += 3;
        String str = new String(bArr, 0, 3);
        int i2 = i - 4;
        byte[] bArr2 = new byte[i2];
        System.arraycopy(kVar.a, kVar.b, bArr2, 0, i2);
        kVar.b += i2;
        int iA = a(bArr2, 0, iL);
        String str2 = new String(bArr2, 0, iA, strB);
        int iA2 = iA + a(iL);
        return new e(str, str2, iA2 < i2 ? new String(bArr2, iA2, a(bArr2, iA2, iL) - iA2, strB) : "");
    }

    /* JADX WARN: Removed duplicated region for block: B:143:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x01d4 A[Catch: all -> 0x012c, UnsupportedEncodingException -> 0x0202, TryCatch #0 {UnsupportedEncodingException -> 0x0202, blocks: (B:95:0x011a, B:157:0x01de, B:97:0x0122, B:106:0x013b, B:108:0x0143, B:116:0x015d, B:125:0x0173, B:136:0x018c, B:142:0x019b, B:148:0x01aa, B:154:0x01c4, B:155:0x01d4), top: B:167:0x0110, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.h a(int r21, com.fyber.inneractive.sdk.player.exoplayer2.util.k r22, boolean r23, int r24, com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.g.a r25) {
        /*
            Method dump skipped, instruction units count: 537
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.g.a(int, com.fyber.inneractive.sdk.player.exoplayer2.util.k, boolean, int, com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.g$a):com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.h");
    }

    public static String a(int i, int i2, int i3, int i4, int i5) {
        return i == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    public static boolean a(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar, int i, int i2, boolean z) {
        int iN;
        long jN;
        int iQ;
        int i3;
        int i4 = kVar.b;
        while (true) {
            try {
                boolean z2 = true;
                if (kVar.a() < i2) {
                    return true;
                }
                if (i >= 3) {
                    iN = kVar.c();
                    jN = kVar.m();
                    iQ = kVar.q();
                } else {
                    iN = kVar.n();
                    jN = kVar.n();
                    iQ = 0;
                }
                if (iN == 0 && jN == 0 && iQ == 0) {
                    return true;
                }
                if (i == 4 && !z) {
                    if ((8421504 & jN) != 0) {
                        return false;
                    }
                    jN = (((jN >> 24) & 255) << 21) | (jN & 255) | (((jN >> 8) & 255) << 7) | (((jN >> 16) & 255) << 14);
                }
                if (i == 4) {
                    i3 = (iQ & 64) != 0 ? 1 : 0;
                    if ((iQ & 1) == 0) {
                        z2 = false;
                    }
                } else {
                    if (i == 3) {
                        i3 = (iQ & 32) != 0 ? 1 : 0;
                        if ((iQ & 128) == 0) {
                        }
                    } else {
                        i3 = 0;
                    }
                    z2 = false;
                }
                if (z2) {
                    i3 += 4;
                }
                if (jN < i3) {
                    return false;
                }
                if (kVar.a() < jN) {
                    return false;
                }
                kVar.f((int) jN);
            } finally {
                kVar.e(i4);
            }
        }
    }

    public static int b(byte[] bArr, int i) {
        while (i < bArr.length) {
            if (bArr[i] == 0) {
                return i;
            }
            i++;
        }
        return bArr.length;
    }

    public static d b(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar, int i, int i2, boolean z, int i3, a aVar) throws UnsupportedEncodingException {
        int i4 = kVar.b;
        int iB = b(kVar.a, i4);
        String str = new String(kVar.a, i4, iB - i4, "ISO-8859-1");
        kVar.e(iB + 1);
        int iL = kVar.l();
        boolean z2 = (iL & 2) != 0;
        boolean z3 = (iL & 1) != 0;
        int iL2 = kVar.l();
        String[] strArr = new String[iL2];
        for (int i5 = 0; i5 < iL2; i5++) {
            int i6 = kVar.b;
            int iB2 = b(kVar.a, i6);
            strArr[i5] = new String(kVar.a, i6, iB2 - i6, "ISO-8859-1");
            kVar.e(iB2 + 1);
        }
        ArrayList arrayList = new ArrayList();
        int i7 = i4 + i;
        while (kVar.b < i7) {
            h hVarA = a(i2, kVar, z, i3, aVar);
            if (hVarA != null) {
                arrayList.add(hVarA);
            }
        }
        h[] hVarArr = new h[arrayList.size()];
        arrayList.toArray(hVarArr);
        return new d(str, z2, z3, strArr, hVarArr);
    }

    public static f b(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar, int i) throws UnsupportedEncodingException {
        int iL = kVar.l();
        String strB = b(iL);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        System.arraycopy(kVar.a, kVar.b, bArr, 0, i2);
        kVar.b += i2;
        int iB = b(bArr, 0);
        String str = new String(bArr, 0, iB, "ISO-8859-1");
        int i3 = iB + 1;
        int iA = a(bArr, i3, iL);
        String str2 = new String(bArr, i3, iA - i3, strB);
        int iA2 = iA + a(iL);
        int iA3 = a(bArr, iA2, iL);
        return new f(str, str2, new String(bArr, iA2, iA3 - iA2, strB), Arrays.copyOfRange(bArr, iA3 + a(iL), i2));
    }

    public static j b(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar, int i, String str) throws UnsupportedEncodingException {
        if (i < 1) {
            return null;
        }
        int iL = kVar.l();
        String strB = b(iL);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        System.arraycopy(kVar.a, kVar.b, bArr, 0, i2);
        kVar.b += i2;
        return new j(str, null, new String(bArr, 0, a(bArr, 0, iL), strB));
    }

    public static String b(int i) {
        return i != 1 ? i != 2 ? i != 3 ? "ISO-8859-1" : C.UTF8_NAME : "UTF-16BE" : C.UTF16_NAME;
    }

    public static i c(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar, int i) throws UnsupportedEncodingException {
        byte[] bArr = new byte[i];
        System.arraycopy(kVar.a, kVar.b, bArr, 0, i);
        kVar.b += i;
        int iB = b(bArr, 0);
        String str = new String(bArr, 0, iB, "ISO-8859-1");
        int i2 = iB + 1;
        return new i(str, i2 < i ? Arrays.copyOfRange(bArr, i2, i) : new byte[0]);
    }

    public static k c(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar, int i, String str) throws UnsupportedEncodingException {
        byte[] bArr = new byte[i];
        System.arraycopy(kVar.a, kVar.b, bArr, 0, i);
        kVar.b += i;
        return new k(str, null, new String(bArr, 0, b(bArr, 0), "ISO-8859-1"));
    }

    public static j d(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar, int i) throws UnsupportedEncodingException {
        if (i < 1) {
            return null;
        }
        int iL = kVar.l();
        String strB = b(iL);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        System.arraycopy(kVar.a, kVar.b, bArr, 0, i2);
        kVar.b += i2;
        int iA = a(bArr, 0, iL);
        String str = new String(bArr, 0, iA, strB);
        int iA2 = iA + a(iL);
        return new j("TXXX", str, iA2 < i2 ? new String(bArr, iA2, a(bArr, iA2, iL) - iA2, strB) : "");
    }

    public static k e(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar, int i) throws UnsupportedEncodingException {
        if (i < 1) {
            return null;
        }
        int iL = kVar.l();
        String strB = b(iL);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        System.arraycopy(kVar.a, kVar.b, bArr, 0, i2);
        kVar.b += i2;
        int iA = a(bArr, 0, iL);
        String str = new String(bArr, 0, iA, strB);
        int iA2 = iA + a(iL);
        return new k("WXXX", str, iA2 < i2 ? new String(bArr, iA2, b(bArr, iA2) - iA2, "ISO-8859-1") : "");
    }

    public static int f(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar, int i) {
        byte[] bArr = kVar.a;
        int i2 = kVar.b;
        while (true) {
            int i3 = i2 + 1;
            if (i3 >= i) {
                return i;
            }
            if ((bArr[i2] & 255) == 255 && bArr[i3] == 0) {
                System.arraycopy(bArr, i2 + 2, bArr, i3, (i - i2) - 2);
                i--;
            }
            i2 = i3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00bb A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00bc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.fyber.inneractive.sdk.player.exoplayer2.metadata.a a(byte[] r13, int r14) {
        /*
            Method dump skipped, instruction units count: 278
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.metadata.id3.g.a(byte[], int):com.fyber.inneractive.sdk.player.exoplayer2.metadata.a");
    }
}
