package com.applovin.exoplayer2.g.e;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.common.base.Ascii;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.l.x;
import com.applovin.exoplayer2.l.y;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public final class g extends com.applovin.exoplayer2.g.g {
    public static final a JP = new a() { // from class: com.applovin.exoplayer2.g.e.n
        @Override // com.applovin.exoplayer2.g.e.g.a
        public final boolean evaluate(int i, int i2, int i3, int i4, int i5) {
            return g.c(i, i2, i3, i4, i5);
        }
    };

    @Nullable
    private final a JQ;

    public interface a {
        boolean evaluate(int i, int i2, int i3, int i4, int i5);
    }

    private static final class b {
        private final int JR;
        private final boolean JS;
        private final int JT;

        public b(int i, boolean z, int i2) {
            this.JR = i;
            this.JS = z;
            this.JT = i2;
        }
    }

    public g() {
        this(null);
    }

    public g(@Nullable a aVar) {
        this.JQ = aVar;
    }

    @Nullable
    private static b X(y yVar) {
        if (yVar.pj() < 10) {
            q.h("Id3Decoder", "Data too short to be an ID3 tag");
            return null;
        }
        int iPt = yVar.pt();
        boolean z = false;
        if (iPt != 4801587) {
            q.h("Id3Decoder", "Unexpected first three bytes of ID3 tag header: 0x" + String.format("%06X", Integer.valueOf(iPt)));
            return null;
        }
        int iPo = yVar.po();
        yVar.fz(1);
        int iPo2 = yVar.po();
        int iPC = yVar.pC();
        if (iPo == 2) {
            if ((iPo2 & 64) != 0) {
                q.h("Id3Decoder", "Skipped ID3 tag with majorVersion=2 and undefined compression scheme");
                return null;
            }
        } else if (iPo == 3) {
            if ((iPo2 & 64) != 0) {
                int iPx = yVar.px();
                yVar.fz(iPx);
                iPC -= iPx + 4;
            }
        } else {
            if (iPo != 4) {
                q.h("Id3Decoder", "Skipped ID3 tag with unsupported majorVersion=" + iPo);
                return null;
            }
            if ((iPo2 & 64) != 0) {
                int iPC2 = yVar.pC();
                yVar.fz(iPC2 - 4);
                iPC -= iPC2;
            }
            if ((iPo2 & 16) != 0) {
                iPC -= 10;
            }
        }
        if (iPo < 4 && (iPo2 & 128) != 0) {
            z = true;
        }
        return new b(iPo, z, iPC);
    }

    private static c a(y yVar, int i, int i2, boolean z, int i3, @Nullable a aVar) throws UnsupportedEncodingException {
        int iIl = yVar.il();
        int iG = g(yVar.hO(), iIl);
        String str = new String(yVar.hO(), iIl, iG - iIl, "ISO-8859-1");
        yVar.fx(iG + 1);
        int iPx = yVar.px();
        int iPx2 = yVar.px();
        long jPv = yVar.pv();
        long j = jPv == 4294967295L ? -1L : jPv;
        long jPv2 = yVar.pv();
        long j2 = jPv2 == 4294967295L ? -1L : jPv2;
        ArrayList arrayList = new ArrayList();
        int i4 = iIl + i;
        while (yVar.il() < i4) {
            h hVarA = a(i2, yVar, z, i3, aVar);
            if (hVarA != null) {
                arrayList.add(hVarA);
            }
        }
        return new c(str, iPx, iPx2, j, j2, (h[]) arrayList.toArray(new h[0]));
    }

    /* JADX WARN: Removed duplicated region for block: B:140:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x01db  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x01ea A[Catch: all -> 0x012e, UnsupportedEncodingException -> 0x0218, TryCatch #0 {UnsupportedEncodingException -> 0x0218, blocks: (B:91:0x011c, B:159:0x01f4, B:93:0x0124, B:102:0x013d, B:104:0x0145, B:112:0x015f, B:121:0x0177, B:132:0x0192, B:139:0x01a4, B:145:0x01b3, B:150:0x01cb, B:156:0x01e5, B:157:0x01ea), top: B:169:0x0112, outer: #1 }] */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static com.applovin.exoplayer2.g.e.h a(int r19, com.applovin.exoplayer2.l.y r20, boolean r21, int r22, @androidx.annotation.Nullable com.applovin.exoplayer2.g.e.g.a r23) {
        /*
            Method dump skipped, instruction units count: 558
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.g.e.g.a(int, com.applovin.exoplayer2.l.y, boolean, int, com.applovin.exoplayer2.g.e.g$a):com.applovin.exoplayer2.g.e.h");
    }

    private static String a(byte[] bArr, int i, int i2, String str) throws UnsupportedEncodingException {
        return (i2 <= i || i2 > bArr.length) ? "" : new String(bArr, i, i2 - i, str);
    }

    private static boolean a(y yVar, int i, int i2, boolean z) {
        int iPt;
        long jPt;
        int iPp;
        int i3;
        int iIl = yVar.il();
        while (true) {
            try {
                boolean z2 = true;
                if (yVar.pj() < i2) {
                    return true;
                }
                if (i >= 3) {
                    iPt = yVar.px();
                    jPt = yVar.pv();
                    iPp = yVar.pp();
                } else {
                    iPt = yVar.pt();
                    jPt = yVar.pt();
                    iPp = 0;
                }
                if (iPt == 0 && jPt == 0 && iPp == 0) {
                    return true;
                }
                if (i == 4 && !z) {
                    if ((8421504 & jPt) != 0) {
                        return false;
                    }
                    jPt = (((jPt >> 24) & 255) << 21) | (jPt & 255) | (((jPt >> 8) & 255) << 7) | (((jPt >> 16) & 255) << 14);
                }
                if (i == 4) {
                    i3 = (iPp & 64) != 0 ? 1 : 0;
                    if ((iPp & 1) == 0) {
                        z2 = false;
                    }
                } else {
                    if (i == 3) {
                        i3 = (iPp & 32) != 0 ? 1 : 0;
                        if ((iPp & 128) == 0) {
                        }
                    } else {
                        i3 = 0;
                    }
                    z2 = false;
                }
                if (z2) {
                    i3 += 4;
                }
                if (jPt < i3) {
                    return false;
                }
                if (yVar.pj() < jPt) {
                    return false;
                }
                yVar.fz((int) jPt);
            } finally {
                yVar.fx(iIl);
            }
        }
    }

    private static d b(y yVar, int i, int i2, boolean z, int i3, @Nullable a aVar) throws UnsupportedEncodingException {
        int iIl = yVar.il();
        int iG = g(yVar.hO(), iIl);
        String str = new String(yVar.hO(), iIl, iG - iIl, "ISO-8859-1");
        yVar.fx(iG + 1);
        int iPo = yVar.po();
        boolean z2 = (iPo & 2) != 0;
        boolean z3 = (iPo & 1) != 0;
        int iPo2 = yVar.po();
        String[] strArr = new String[iPo2];
        for (int i4 = 0; i4 < iPo2; i4++) {
            int iIl2 = yVar.il();
            int iG2 = g(yVar.hO(), iIl2);
            strArr[i4] = new String(yVar.hO(), iIl2, iG2 - iIl2, "ISO-8859-1");
            yVar.fx(iG2 + 1);
        }
        ArrayList arrayList = new ArrayList();
        int i5 = iIl + i;
        while (yVar.il() < i5) {
            h hVarA = a(i2, yVar, z, i3, aVar);
            if (hVarA != null) {
                arrayList.add(hVarA);
            }
        }
        return new d(str, z2, z3, strArr, (h[]) arrayList.toArray(new h[0]));
    }

    @Nullable
    private static l b(y yVar, int i, String str) throws UnsupportedEncodingException {
        if (i < 1) {
            return null;
        }
        int iPo = yVar.po();
        String strDs = ds(iPo);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        yVar.r(bArr, 0, i2);
        return new l(str, null, new String(bArr, 0, j(bArr, 0, iPo), strDs));
    }

    private static String b(int i, int i2, int i3, int i4, int i5) {
        return i == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    private static m c(y yVar, int i, String str) throws UnsupportedEncodingException {
        byte[] bArr = new byte[i];
        yVar.r(bArr, 0, i);
        return new m(str, null, new String(bArr, 0, g(bArr, 0), "ISO-8859-1"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean c(int i, int i2, int i3, int i4, int i5) {
        return false;
    }

    private static com.applovin.exoplayer2.g.e.b d(y yVar, int i, String str) {
        byte[] bArr = new byte[i];
        yVar.r(bArr, 0, i);
        return new com.applovin.exoplayer2.g.e.b(str, bArr);
    }

    private static String ds(int i) {
        return i != 1 ? i != 2 ? i != 3 ? "ISO-8859-1" : C.UTF8_NAME : "UTF-16BE" : C.UTF16_NAME;
    }

    private static int dt(int i) {
        return (i == 0 || i == 3) ? 1 : 2;
    }

    private static int g(byte[] bArr, int i) {
        while (i < bArr.length) {
            if (bArr[i] == 0) {
                return i;
            }
            i++;
        }
        return bArr.length;
    }

    private static com.applovin.exoplayer2.g.e.a g(y yVar, int i, int i2) throws UnsupportedEncodingException {
        int iG;
        String str;
        int iPo = yVar.po();
        String strDs = ds(iPo);
        int i3 = i - 1;
        byte[] bArr = new byte[i3];
        yVar.r(bArr, 0, i3);
        if (i2 == 2) {
            str = "image/" + Ascii.toLowerCase(new String(bArr, 0, 3, "ISO-8859-1"));
            if ("image/jpg".equals(str)) {
                str = "image/jpeg";
            }
            iG = 2;
        } else {
            iG = g(bArr, 0);
            String lowerCase = Ascii.toLowerCase(new String(bArr, 0, iG, "ISO-8859-1"));
            if (lowerCase.indexOf(47) == -1) {
                str = "image/" + lowerCase;
            } else {
                str = lowerCase;
            }
        }
        int i4 = bArr[iG + 1] & 255;
        int i5 = iG + 2;
        int iJ = j(bArr, i5, iPo);
        return new com.applovin.exoplayer2.g.e.a(str, new String(bArr, i5, iJ - i5, strDs), i4, k(bArr, iJ + dt(iPo), i3));
    }

    private static int j(byte[] bArr, int i, int i2) {
        int iG = g(bArr, i);
        if (i2 == 0 || i2 == 3) {
            return iG;
        }
        while (iG < bArr.length - 1) {
            if ((iG - i) % 2 == 0 && bArr[iG + 1] == 0) {
                return iG;
            }
            iG = g(bArr, iG + 1);
        }
        return bArr.length;
    }

    private static byte[] k(byte[] bArr, int i, int i2) {
        return i2 <= i ? ai.ada : Arrays.copyOfRange(bArr, i, i2);
    }

    @Nullable
    private static l t(y yVar, int i) throws UnsupportedEncodingException {
        if (i < 1) {
            return null;
        }
        int iPo = yVar.po();
        String strDs = ds(iPo);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        yVar.r(bArr, 0, i2);
        int iJ = j(bArr, 0, iPo);
        String str = new String(bArr, 0, iJ, strDs);
        int iDt = iJ + dt(iPo);
        return new l("TXXX", str, a(bArr, iDt, j(bArr, iDt, iPo), strDs));
    }

    @Nullable
    private static m u(y yVar, int i) throws UnsupportedEncodingException {
        if (i < 1) {
            return null;
        }
        int iPo = yVar.po();
        String strDs = ds(iPo);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        yVar.r(bArr, 0, i2);
        int iJ = j(bArr, 0, iPo);
        String str = new String(bArr, 0, iJ, strDs);
        int iDt = iJ + dt(iPo);
        return new m("WXXX", str, a(bArr, iDt, g(bArr, iDt), "ISO-8859-1"));
    }

    private static k v(y yVar, int i) throws UnsupportedEncodingException {
        byte[] bArr = new byte[i];
        yVar.r(bArr, 0, i);
        int iG = g(bArr, 0);
        return new k(new String(bArr, 0, iG, "ISO-8859-1"), k(bArr, iG + 1, i));
    }

    private static f w(y yVar, int i) throws UnsupportedEncodingException {
        int iPo = yVar.po();
        String strDs = ds(iPo);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        yVar.r(bArr, 0, i2);
        int iG = g(bArr, 0);
        String str = new String(bArr, 0, iG, "ISO-8859-1");
        int i3 = iG + 1;
        int iJ = j(bArr, i3, iPo);
        String strA = a(bArr, i3, iJ, strDs);
        int iDt = iJ + dt(iPo);
        int iJ2 = j(bArr, iDt, iPo);
        return new f(str, strA, a(bArr, iDt, iJ2, strDs), k(bArr, iJ2 + dt(iPo), i2));
    }

    @Nullable
    private static e x(y yVar, int i) throws UnsupportedEncodingException {
        if (i < 4) {
            return null;
        }
        int iPo = yVar.po();
        String strDs = ds(iPo);
        byte[] bArr = new byte[3];
        yVar.r(bArr, 0, 3);
        String str = new String(bArr, 0, 3);
        int i2 = i - 4;
        byte[] bArr2 = new byte[i2];
        yVar.r(bArr2, 0, i2);
        int iJ = j(bArr2, 0, iPo);
        String str2 = new String(bArr2, 0, iJ, strDs);
        int iDt = iJ + dt(iPo);
        return new e(str, str2, a(bArr2, iDt, j(bArr2, iDt, iPo), strDs));
    }

    private static j y(y yVar, int i) {
        int iPp = yVar.pp();
        int iPt = yVar.pt();
        int iPt2 = yVar.pt();
        int iPo = yVar.po();
        int iPo2 = yVar.po();
        x xVar = new x();
        xVar.ar(yVar);
        int i2 = ((i - 10) * 8) / (iPo + iPo2);
        int[] iArr = new int[i2];
        int[] iArr2 = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            int iBQ = xVar.bQ(iPo);
            int iBQ2 = xVar.bQ(iPo2);
            iArr[i3] = iBQ;
            iArr2[i3] = iBQ2;
        }
        return new j(iPp, iPt, iPt2, iArr, iArr2);
    }

    private static int z(y yVar, int i) {
        byte[] bArrHO = yVar.hO();
        int iIl = yVar.il();
        int i2 = iIl;
        while (true) {
            int i3 = i2 + 1;
            if (i3 >= iIl + i) {
                return i;
            }
            if ((bArrHO[i2] & 255) == 255 && bArrHO[i3] == 0) {
                System.arraycopy(bArrHO, i2 + 2, bArrHO, i3, (i - (i2 - iIl)) - 2);
                i--;
            }
            i2 = i3;
        }
    }

    @Override // com.applovin.exoplayer2.g.g
    @Nullable
    protected com.applovin.exoplayer2.g.a a(com.applovin.exoplayer2.g.d dVar, ByteBuffer byteBuffer) {
        return f(byteBuffer.array(), byteBuffer.limit());
    }

    @Nullable
    public com.applovin.exoplayer2.g.a f(byte[] bArr, int i) {
        ArrayList arrayList = new ArrayList();
        y yVar = new y(bArr, i);
        b bVarX = X(yVar);
        if (bVarX == null) {
            return null;
        }
        int iIl = yVar.il();
        int i2 = bVarX.JR == 2 ? 6 : 10;
        int iZ = bVarX.JT;
        if (bVarX.JS) {
            iZ = z(yVar, bVarX.JT);
        }
        yVar.fA(iIl + iZ);
        boolean z = false;
        if (!a(yVar, bVarX.JR, i2, false)) {
            if (bVarX.JR != 4 || !a(yVar, 4, i2, true)) {
                q.h("Id3Decoder", "Failed to validate ID3 tag with majorVersion=" + bVarX.JR);
                return null;
            }
            z = true;
        }
        while (yVar.pj() >= i2) {
            h hVarA = a(bVarX.JR, yVar, z, i2, this.JQ);
            if (hVarA != null) {
                arrayList.add(hVarA);
            }
        }
        return new com.applovin.exoplayer2.g.a(arrayList);
    }
}
