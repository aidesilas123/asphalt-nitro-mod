package com.applovin.exoplayer2.m.a;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.x;
import com.applovin.exoplayer2.l.y;
import com.applovin.exoplayer2.m.a.e;
import java.util.ArrayList;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes.dex */
final class f {
    @Nullable
    private static e.a aA(y yVar) {
        int iPx = yVar.px();
        if (iPx > 10000) {
            return null;
        }
        float[] fArr = new float[iPx];
        for (int i = 0; i < iPx; i++) {
            fArr[i] = yVar.pG();
        }
        int iPx2 = yVar.px();
        if (iPx2 > 32000) {
            return null;
        }
        double d2 = 2.0d;
        double dLog = Math.log(2.0d);
        int iCeil = (int) Math.ceil(Math.log(((double) iPx) * 2.0d) / dLog);
        x xVar = new x(yVar.hO());
        int i2 = 8;
        xVar.fx(yVar.il() * 8);
        float[] fArr2 = new float[iPx2 * 5];
        int i3 = 5;
        int[] iArr = new int[5];
        int i4 = 0;
        int i5 = 0;
        while (i4 < iPx2) {
            int i6 = 0;
            while (i6 < i3) {
                int iFV = iArr[i6] + fV(xVar.bQ(iCeil));
                if (iFV >= iPx || iFV < 0) {
                    return null;
                }
                fArr2[i5] = fArr[iFV];
                iArr[i6] = iFV;
                i6++;
                i5++;
                i3 = 5;
            }
            i4++;
            i3 = 5;
        }
        xVar.fx((xVar.il() + 7) & (-8));
        int i7 = 32;
        int iBQ = xVar.bQ(32);
        e.b[] bVarArr = new e.b[iBQ];
        int i8 = 0;
        while (i8 < iBQ) {
            int iBQ2 = xVar.bQ(i2);
            int iBQ3 = xVar.bQ(i2);
            int iBQ4 = xVar.bQ(i7);
            if (iBQ4 > 128000) {
                return null;
            }
            int iCeil2 = (int) Math.ceil(Math.log(((double) iPx2) * d2) / dLog);
            float[] fArr3 = new float[iBQ4 * 3];
            float[] fArr4 = new float[iBQ4 * 2];
            int iFV2 = 0;
            for (int i9 = 0; i9 < iBQ4; i9++) {
                iFV2 += fV(xVar.bQ(iCeil2));
                if (iFV2 < 0 || iFV2 >= iPx2) {
                    return null;
                }
                int i10 = i9 * 3;
                int i11 = iFV2 * 5;
                fArr3[i10] = fArr2[i11];
                fArr3[i10 + 1] = fArr2[i11 + 1];
                fArr3[i10 + 2] = fArr2[i11 + 2];
                int i12 = i9 * 2;
                fArr4[i12] = fArr2[i11 + 3];
                fArr4[i12 + 1] = fArr2[i11 + 4];
            }
            bVarArr[i8] = new e.b(iBQ2, fArr3, fArr4, iBQ3);
            i8++;
            i7 = 32;
            d2 = 2.0d;
            i2 = 8;
        }
        return new e.a(bVarArr);
    }

    private static boolean aw(y yVar) {
        yVar.fz(4);
        int iPx = yVar.px();
        yVar.fx(0);
        return iPx == 1886547818;
    }

    @Nullable
    private static ArrayList<e.a> ax(y yVar) {
        int iPx;
        yVar.fz(8);
        int iIl = yVar.il();
        int iPk = yVar.pk();
        while (iIl < iPk && (iPx = yVar.px() + iIl) > iIl && iPx <= iPk) {
            int iPx2 = yVar.px();
            if (iPx2 == 2037673328 || iPx2 == 1836279920) {
                yVar.fA(iPx);
                return ay(yVar);
            }
            yVar.fx(iPx);
            iIl = iPx;
        }
        return null;
    }

    @Nullable
    private static ArrayList<e.a> ay(y yVar) {
        if (yVar.po() != 0) {
            return null;
        }
        yVar.fz(7);
        int iPx = yVar.px();
        if (iPx == 1684433976) {
            y yVar2 = new y();
            Inflater inflater = new Inflater(true);
            try {
                if (!ai.a(yVar, yVar2, inflater)) {
                    return null;
                }
                inflater.end();
                yVar = yVar2;
            } finally {
                inflater.end();
            }
        } else if (iPx != 1918990112) {
            return null;
        }
        return az(yVar);
    }

    @Nullable
    private static ArrayList<e.a> az(y yVar) {
        ArrayList<e.a> arrayList = new ArrayList<>();
        int iIl = yVar.il();
        int iPk = yVar.pk();
        while (iIl < iPk) {
            int iPx = yVar.px() + iIl;
            if (iPx <= iIl || iPx > iPk) {
                return null;
            }
            if (yVar.px() == 1835365224) {
                e.a aVarAA = aA(yVar);
                if (aVarAA == null) {
                    return null;
                }
                arrayList.add(aVarAA);
            }
            yVar.fx(iPx);
            iIl = iPx;
        }
        return arrayList;
    }

    private static int fV(int i) {
        return (-(i & 1)) ^ (i >> 1);
    }

    @Nullable
    public static e m(byte[] bArr, int i) {
        ArrayList<e.a> arrayListAx;
        y yVar = new y(bArr);
        try {
            arrayListAx = aw(yVar) ? ax(yVar) : ay(yVar);
        } catch (ArrayIndexOutOfBoundsException unused) {
            arrayListAx = null;
        }
        if (arrayListAx == null) {
            return null;
        }
        int size = arrayListAx.size();
        if (size == 1) {
            return new e(arrayListAx.get(0), i);
        }
        if (size != 2) {
            return null;
        }
        return new e(arrayListAx.get(0), arrayListAx.get(1), i);
    }
}
