package com.google.zxing.pdf417.decoder;

import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.pdf417.PDF417Common;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Formatter;

/* JADX INFO: loaded from: classes3.dex */
public final class PDF417ScanningDecoder {
    private static final com.google.zxing.pdf417.decoder.i.a a = new com.google.zxing.pdf417.decoder.i.a();

    private PDF417ScanningDecoder() {
    }

    private static c a(g gVar) throws NotFoundException {
        int[] iArrJ;
        if (gVar == null || (iArrJ = gVar.j()) == null) {
            return null;
        }
        int iO = o(iArrJ);
        int i = 0;
        int i2 = 0;
        for (int i3 : iArrJ) {
            i2 += iO - i3;
            if (i3 > 0) {
                break;
            }
        }
        d[] dVarArrD = gVar.d();
        for (int i4 = 0; i2 > 0 && dVarArrD[i4] == null; i4++) {
            i2--;
        }
        for (int length = iArrJ.length - 1; length >= 0; length--) {
            i += iO - iArrJ[length];
            if (iArrJ[length] > 0) {
                break;
            }
        }
        for (int length2 = dVarArrD.length - 1; i > 0 && dVarArrD[length2] == null; length2--) {
            i--;
        }
        return gVar.a().a(i2, i, gVar.k());
    }

    private static void b(e eVar, b[][] bVarArr) throws NotFoundException {
        b bVar = bVarArr[0][1];
        int[] iArrB = bVar.b();
        int iJ = (eVar.j() * eVar.l()) - q(eVar.k());
        if (iArrB.length == 0) {
            if (iJ < 1 || iJ > 928) {
                throw NotFoundException.getNotFoundInstance();
            }
            bVar.c(iJ);
            return;
        }
        if (iArrB[0] == iJ || iJ < 1 || iJ > 928) {
            return;
        }
        bVar.c(iJ);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0022, code lost:
    
        r0 = -r0;
        r8 = !r8;
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0022, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0022, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0022, code lost:
    
        continue;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0011  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int c(com.google.zxing.common.BitMatrix r5, int r6, int r7, boolean r8, int r9, int r10) {
        /*
            if (r8 == 0) goto L4
            r0 = -1
            goto L5
        L4:
            r0 = 1
        L5:
            r1 = 0
            r2 = r9
        L7:
            r3 = 2
            if (r1 >= r3) goto L28
        La:
            if (r8 == 0) goto Lf
            if (r2 < r6) goto L22
            goto L11
        Lf:
            if (r2 >= r7) goto L22
        L11:
            boolean r4 = r5.f(r2, r10)
            if (r8 != r4) goto L22
            int r4 = r9 - r2
            int r4 = java.lang.Math.abs(r4)
            if (r4 <= r3) goto L20
            return r9
        L20:
            int r2 = r2 + r0
            goto La
        L22:
            int r0 = -r0
            r8 = r8 ^ 1
            int r1 = r1 + 1
            goto L7
        L28:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.decoder.PDF417ScanningDecoder.c(com.google.zxing.common.BitMatrix, int, int, boolean, int, int):int");
    }

    private static boolean d(int i, int i2, int i3) {
        return i2 + (-2) <= i && i <= i3 + 2;
    }

    public static com.google.zxing.common.b decode(BitMatrix bitMatrix, ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i, int i2) throws NotFoundException, ChecksumException, FormatException {
        e eVarU;
        int i3;
        int i4;
        int i5;
        g gVarR = null;
        g gVarR2 = null;
        c cVar = new c(bitMatrix, resultPoint, resultPoint2, resultPoint3, resultPoint4);
        boolean z = true;
        while (true) {
            if (resultPoint != null) {
                gVarR = r(bitMatrix, cVar, resultPoint, true, i, i2);
            }
            if (resultPoint3 != null) {
                gVarR2 = r(bitMatrix, cVar, resultPoint3, false, i, i2);
            }
            eVarU = u(gVarR, gVarR2);
            if (eVarU == null) {
                throw NotFoundException.getNotFoundInstance();
            }
            c cVarM = eVarU.m();
            if (!z || cVarM == null || (cVarM.g() >= cVar.g() && cVarM.e() <= cVar.e())) {
                break;
            }
            cVar = cVarM;
            z = false;
        }
        eVarU.p(cVar);
        int iJ = eVarU.j() + 1;
        eVarU.q(0, gVarR);
        eVarU.q(iJ, gVarR2);
        boolean z2 = gVarR != null;
        int iMin = i;
        int iMax = i2;
        for (int i6 = 1; i6 <= iJ; i6++) {
            int i7 = z2 ? i6 : iJ - i6;
            if (eVarU.n(i7) == null) {
                f gVar = (i7 == 0 || i7 == iJ) ? new g(cVar, i7 == 0) : new f(cVar);
                eVarU.q(i7, gVar);
                int i8 = -1;
                int iG = cVar.g();
                int i9 = -1;
                while (iG <= cVar.e()) {
                    int iS = s(eVarU, i7, iG, z2);
                    if (iS >= 0 && iS <= cVar.d()) {
                        i3 = iS;
                    } else if (i9 == i8) {
                        i4 = i9;
                        i5 = iG;
                        i9 = i4;
                        iG = i5 + 1;
                        i8 = -1;
                    } else {
                        i3 = i9;
                    }
                    i4 = i9;
                    int i10 = iG;
                    d dVarJ = j(bitMatrix, cVar.f(), cVar.d(), z2, i3, i10, iMin, iMax);
                    i5 = i10;
                    if (dVarJ != null) {
                        gVar.f(i5, dVarJ);
                        iMin = Math.min(iMin, dVarJ.f());
                        iMax = Math.max(iMax, dVarJ.f());
                        i9 = i3;
                    } else {
                        i9 = i4;
                    }
                    iG = i5 + 1;
                    i8 = -1;
                }
            }
        }
        return g(eVarU);
    }

    private static int e(int[] iArr, int[] iArr2, int i) throws ChecksumException {
        if ((iArr2 == null || iArr2.length <= (i / 2) + 3) && i >= 0 && i <= 512) {
            return a.a(iArr, i, iArr2);
        }
        throw ChecksumException.getChecksumInstance();
    }

    private static b[][] f(e eVar) {
        int iC;
        b[][] bVarArr = (b[][]) Array.newInstance((Class<?>) b.class, eVar.l(), eVar.j() + 2);
        for (int i = 0; i < bVarArr.length; i++) {
            for (int i2 = 0; i2 < bVarArr[i].length; i2++) {
                bVarArr[i][i2] = new b();
            }
        }
        int i3 = 0;
        for (f fVar : eVar.o()) {
            if (fVar != null) {
                for (d dVar : fVar.d()) {
                    if (dVar != null && (iC = dVar.c()) >= 0 && iC < bVarArr.length) {
                        bVarArr[iC][i3].c(dVar.e());
                    }
                }
            }
            i3++;
        }
        return bVarArr;
    }

    private static com.google.zxing.common.b g(e eVar) throws NotFoundException, ChecksumException, FormatException {
        b[][] bVarArrF = f(eVar);
        b(eVar, bVarArrF);
        ArrayList arrayList = new ArrayList();
        int[] iArr = new int[eVar.l() * eVar.j()];
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (int i = 0; i < eVar.l(); i++) {
            int i2 = 0;
            while (i2 < eVar.j()) {
                int i3 = i2 + 1;
                int[] iArrB = bVarArrF[i][i3].b();
                int iJ = (eVar.j() * i) + i2;
                if (iArrB.length == 0) {
                    arrayList.add(Integer.valueOf(iJ));
                } else if (iArrB.length == 1) {
                    iArr[iJ] = iArrB[0];
                } else {
                    arrayList3.add(Integer.valueOf(iJ));
                    arrayList2.add(iArrB);
                }
                i2 = i3;
            }
        }
        int size = arrayList2.size();
        int[][] iArr2 = new int[size][];
        for (int i4 = 0; i4 < size; i4++) {
            iArr2[i4] = (int[]) arrayList2.get(i4);
        }
        return h(eVar.k(), iArr, PDF417Common.toIntArray(arrayList), PDF417Common.toIntArray(arrayList3), iArr2);
    }

    private static com.google.zxing.common.b h(int i, int[] iArr, int[] iArr2, int[] iArr3, int[][] iArr4) throws ChecksumException, FormatException {
        int length = iArr3.length;
        int[] iArr5 = new int[length];
        int i2 = 100;
        while (true) {
            int i3 = i2 - 1;
            if (i2 <= 0) {
                throw ChecksumException.getChecksumInstance();
            }
            for (int i4 = 0; i4 < length; i4++) {
                iArr[iArr3[i4]] = iArr4[i4][iArr5[i4]];
            }
            try {
                return i(iArr, i, iArr2);
            } catch (ChecksumException unused) {
                if (length == 0) {
                    throw ChecksumException.getChecksumInstance();
                }
                int i5 = 0;
                while (true) {
                    if (i5 >= length) {
                        break;
                    }
                    if (iArr5[i5] < iArr4[i5].length - 1) {
                        iArr5[i5] = iArr5[i5] + 1;
                        break;
                    }
                    iArr5[i5] = 0;
                    if (i5 == length - 1) {
                        throw ChecksumException.getChecksumInstance();
                    }
                    i5++;
                }
                i2 = i3;
            }
        }
    }

    private static com.google.zxing.common.b i(int[] iArr, int i, int[] iArr2) throws ChecksumException, FormatException {
        if (iArr.length == 0) {
            throw FormatException.getFormatInstance();
        }
        int i2 = 1 << (i + 1);
        int iE = e(iArr, iArr2, i2);
        v(iArr, i2);
        com.google.zxing.common.b bVarB = DecodedBitStreamParser.b(iArr, String.valueOf(i));
        bVarB.b(Integer.valueOf(iE));
        bVarB.a(Integer.valueOf(iArr2.length));
        return bVarB;
    }

    private static d j(BitMatrix bitMatrix, int i, int i2, boolean z, int i3, int i4, int i5, int i6) {
        int i7;
        int iD;
        int codeword;
        int iC = c(bitMatrix, i, i2, z, i3, i4);
        int[] iArrP = p(bitMatrix, i, i2, z, iC, i4);
        if (iArrP == null) {
            return null;
        }
        int iSum = MathUtils.sum(iArrP);
        if (z) {
            i7 = iC + iSum;
        } else {
            for (int i8 = 0; i8 < iArrP.length / 2; i8++) {
                int i9 = iArrP[i8];
                iArrP[i8] = iArrP[(iArrP.length - 1) - i8];
                iArrP[(iArrP.length - 1) - i8] = i9;
            }
            iC -= iSum;
            i7 = iC;
        }
        if (d(iSum, i5, i6) && (codeword = PDF417Common.getCodeword((iD = h.d(iArrP)))) != -1) {
            return new d(iC, i7, m(iD), codeword);
        }
        return null;
    }

    private static a k(g gVar, g gVar2) {
        a aVarI;
        a aVarI2;
        if (gVar == null || (aVarI = gVar.i()) == null) {
            if (gVar2 == null) {
                return null;
            }
            return gVar2.i();
        }
        if (gVar2 == null || (aVarI2 = gVar2.i()) == null || aVarI.a() == aVarI2.a() || aVarI.b() == aVarI2.b() || aVarI.c() == aVarI2.c()) {
            return aVarI;
        }
        return null;
    }

    private static int[] l(int i) {
        int[] iArr = new int[8];
        int i2 = 0;
        int i3 = 7;
        while (true) {
            int i4 = i & 1;
            if (i4 != i2) {
                i3--;
                if (i3 < 0) {
                    return iArr;
                }
                i2 = i4;
            }
            iArr[i3] = iArr[i3] + 1;
            i >>= 1;
        }
    }

    private static int m(int i) {
        return n(l(i));
    }

    private static int n(int[] iArr) {
        return ((((iArr[0] - iArr[2]) + iArr[4]) - iArr[6]) + 9) % 9;
    }

    private static int o(int[] iArr) {
        int iMax = -1;
        for (int i : iArr) {
            iMax = Math.max(iMax, i);
        }
        return iMax;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int[] p(com.google.zxing.common.BitMatrix r7, int r8, int r9, boolean r10, int r11, int r12) {
        /*
            r0 = 8
            int[] r1 = new int[r0]
            r2 = 1
            if (r10 == 0) goto L9
            r3 = 1
            goto La
        L9:
            r3 = -1
        La:
            r4 = 0
            r5 = r10
        Lc:
            if (r10 == 0) goto L11
            if (r11 >= r9) goto L27
            goto L13
        L11:
            if (r11 < r8) goto L27
        L13:
            if (r4 >= r0) goto L27
            boolean r6 = r7.f(r11, r12)
            if (r6 != r5) goto L22
            r6 = r1[r4]
            int r6 = r6 + r2
            r1[r4] = r6
            int r11 = r11 + r3
            goto Lc
        L22:
            int r4 = r4 + 1
            r5 = r5 ^ 1
            goto Lc
        L27:
            if (r4 == r0) goto L34
            if (r10 == 0) goto L2c
            r8 = r9
        L2c:
            if (r11 != r8) goto L32
            r7 = 7
            if (r4 != r7) goto L32
            goto L34
        L32:
            r7 = 0
            return r7
        L34:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.pdf417.decoder.PDF417ScanningDecoder.p(com.google.zxing.common.BitMatrix, int, int, boolean, int, int):int[]");
    }

    private static int q(int i) {
        return 2 << i;
    }

    private static g r(BitMatrix bitMatrix, c cVar, ResultPoint resultPoint, boolean z, int i, int i2) {
        g gVar = new g(cVar, z);
        int i3 = 0;
        while (i3 < 2) {
            int i4 = i3 == 0 ? 1 : -1;
            int iB = (int) resultPoint.b();
            for (int iC = (int) resultPoint.c(); iC <= cVar.e() && iC >= cVar.g(); iC += i4) {
                d dVarJ = j(bitMatrix, 0, bitMatrix.h(), z, iB, iC, i, i2);
                if (dVarJ != null) {
                    gVar.f(iC, dVarJ);
                    iB = z ? dVarJ.d() : dVarJ.b();
                }
            }
            i3++;
        }
        return gVar;
    }

    private static int s(e eVar, int i, int i2, boolean z) {
        int i3 = z ? 1 : -1;
        int i4 = i - i3;
        d dVarB = t(eVar, i4) ? eVar.n(i4).b(i2) : null;
        if (dVarB != null) {
            return z ? dVarB.b() : dVarB.d();
        }
        d dVarC = eVar.n(i).c(i2);
        if (dVarC != null) {
            return z ? dVarC.d() : dVarC.b();
        }
        if (t(eVar, i4)) {
            dVarC = eVar.n(i4).c(i2);
        }
        if (dVarC != null) {
            return z ? dVarC.b() : dVarC.d();
        }
        int i5 = 0;
        while (true) {
            i -= i3;
            if (!t(eVar, i)) {
                c cVarM = eVar.m();
                return z ? cVarM.f() : cVarM.d();
            }
            for (d dVar : eVar.n(i).d()) {
                if (dVar != null) {
                    return (z ? dVar.b() : dVar.d()) + (i3 * i5 * (dVar.b() - dVar.d()));
                }
            }
            i5++;
        }
    }

    private static boolean t(e eVar, int i) {
        return i >= 0 && i <= eVar.j() + 1;
    }

    public static String toString(b[][] bVarArr) {
        Formatter formatter = new Formatter();
        for (int i = 0; i < bVarArr.length; i++) {
            try {
                formatter.format("Row %2d: ", Integer.valueOf(i));
                for (int i2 = 0; i2 < bVarArr[i].length; i2++) {
                    b bVar = bVarArr[i][i2];
                    if (bVar.b().length == 0) {
                        formatter.format("        ", null);
                    } else {
                        formatter.format("%4d(%2d)", Integer.valueOf(bVar.b()[0]), bVar.a(bVar.b()[0]));
                    }
                }
                formatter.format("%n", new Object[0]);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        formatter.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        }
        String string = formatter.toString();
        formatter.close();
        return string;
    }

    private static e u(g gVar, g gVar2) throws NotFoundException {
        a aVarK;
        if ((gVar == null && gVar2 == null) || (aVarK = k(gVar, gVar2)) == null) {
            return null;
        }
        return new e(aVarK, c.j(a(gVar), a(gVar2)));
    }

    private static void v(int[] iArr, int i) throws FormatException {
        if (iArr.length < 4) {
            throw FormatException.getFormatInstance();
        }
        int i2 = iArr[0];
        if (i2 > iArr.length) {
            throw FormatException.getFormatInstance();
        }
        if (i2 == 0) {
            if (i >= iArr.length) {
                throw FormatException.getFormatInstance();
            }
            iArr[0] = iArr.length - i;
        }
    }
}
