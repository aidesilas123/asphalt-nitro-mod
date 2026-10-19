package com.applovin.exoplayer2.i.b;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.applovin.exoplayer2.common.base.Ascii;
import com.applovin.exoplayer2.i.a;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.q;
import com.applovin.exoplayer2.l.x;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class b {
    private static final byte[] Qm = {0, 7, 8, Ascii.SI};
    private static final byte[] Qn = {0, 119, -120, -1};
    private static final byte[] Qo = {0, 17, 34, 51, 68, 85, 102, 119, -120, -103, -86, -69, -52, -35, -18, -1};
    private Bitmap NZ;
    private final Paint Qp;
    private final Paint Qq;
    private final Canvas Qr;
    private final C0045b Qs;
    private final a Qt;
    private final h Qu;

    private static final class a {
        public final int[] Qv;
        public final int[] Qw;
        public final int[] Qx;
        public final int zD;

        public a(int i, int[] iArr, int[] iArr2, int[] iArr3) {
            this.zD = i;
            this.Qv = iArr;
            this.Qw = iArr2;
            this.Qx = iArr3;
        }
    }

    /* JADX INFO: renamed from: com.applovin.exoplayer2.i.b.b$b, reason: collision with other inner class name */
    private static final class C0045b {
        public final int QA;
        public final int QB;
        public final int Qy;
        public final int Qz;
        public final int dE;
        public final int height;

        public C0045b(int i, int i2, int i3, int i4, int i5, int i6) {
            this.dE = i;
            this.height = i2;
            this.Qy = i3;
            this.Qz = i4;
            this.QA = i5;
            this.QB = i6;
        }
    }

    private static final class c {
        public final boolean QC;
        public final byte[] QD;
        public final byte[] QE;
        public final int zD;

        public c(int i, boolean z, byte[] bArr, byte[] bArr2) {
            this.zD = i;
            this.QC = z;
            this.QD = bArr;
            this.QE = bArr2;
        }
    }

    private static final class d {
        public final int QF;
        public final SparseArray<e> QG;
        public final int Z;
        public final int mH;

        public d(int i, int i2, int i3, SparseArray<e> sparseArray) {
            this.QF = i;
            this.mH = i2;
            this.Z = i3;
            this.QG = sparseArray;
        }
    }

    private static final class e {
        public final int QH;
        public final int QI;

        public e(int i, int i2) {
            this.QH = i;
            this.QI = i2;
        }
    }

    private static final class f {
        public final int Ju;
        public final boolean QJ;
        public final int QK;
        public final int QL;
        public final int QM;
        public final int QN;
        public final int QO;
        public final SparseArray<g> QP;
        public final int dE;
        public final int height;
        public final int zD;

        public f(int i, boolean z, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, SparseArray<g> sparseArray) {
            this.zD = i;
            this.QJ = z;
            this.dE = i2;
            this.height = i3;
            this.QK = i4;
            this.Ju = i5;
            this.QL = i6;
            this.QM = i7;
            this.QN = i8;
            this.QO = i9;
            this.QP = sparseArray;
        }

        public void a(f fVar) {
            SparseArray<g> sparseArray = fVar.QP;
            for (int i = 0; i < sparseArray.size(); i++) {
                this.QP.put(sparseArray.keyAt(i), sparseArray.valueAt(i));
            }
        }
    }

    private static final class g {
        public final int QQ;
        public final int QR;
        public final int QS;
        public final int QT;
        public final int QU;
        public final int bs;

        public g(int i, int i2, int i3, int i4, int i5, int i6) {
            this.bs = i;
            this.QQ = i2;
            this.QR = i3;
            this.QS = i4;
            this.QT = i5;
            this.QU = i6;
        }
    }

    private static final class h {
        public final int QV;
        public final int QW;

        @Nullable
        public C0045b Rb;

        @Nullable
        public d Rc;
        public final SparseArray<f> QG = new SparseArray<>();
        public final SparseArray<a> QX = new SparseArray<>();
        public final SparseArray<c> QY = new SparseArray<>();
        public final SparseArray<a> QZ = new SparseArray<>();
        public final SparseArray<c> Ra = new SparseArray<>();

        public h(int i, int i2) {
            this.QV = i;
            this.QW = i2;
        }

        public void Y() {
            this.QG.clear();
            this.QX.clear();
            this.QY.clear();
            this.QZ.clear();
            this.Ra.clear();
            this.Rb = null;
            this.Rc = null;
        }
    }

    public b(int i, int i2) {
        Paint paint = new Paint();
        this.Qp = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        paint.setPathEffect(null);
        Paint paint2 = new Paint();
        this.Qq = paint2;
        paint2.setStyle(Paint.Style.FILL);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OVER));
        paint2.setPathEffect(null);
        this.Qr = new Canvas();
        this.Qs = new C0045b(719, 575, 0, 719, 0, 575);
        this.Qt = new a(0, mB(), mC(), mD());
        this.Qu = new h(i, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0063 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0083 A[LOOP:0: B:3:0x0009->B:33:0x0083, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0082 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int a(com.applovin.exoplayer2.l.x r13, int[] r14, @androidx.annotation.Nullable byte[] r15, int r16, int r17, @androidx.annotation.Nullable android.graphics.Paint r18, android.graphics.Canvas r19) {
        /*
            r0 = r13
            r1 = r17
            r8 = r18
            r9 = 0
            r10 = r16
            r2 = 0
        L9:
            r3 = 2
            int r4 = r13.bQ(r3)
            r5 = 1
            if (r4 == 0) goto L14
            r11 = r2
        L12:
            r12 = 1
            goto L61
        L14:
            boolean r4 = r13.ik()
            r6 = 3
            if (r4 == 0) goto L28
            int r4 = r13.bQ(r6)
            int r4 = r4 + r6
            int r3 = r13.bQ(r3)
        L24:
            r11 = r2
            r12 = r4
            r4 = r3
            goto L61
        L28:
            boolean r4 = r13.ik()
            if (r4 == 0) goto L31
            r11 = r2
            r4 = 0
            goto L12
        L31:
            int r4 = r13.bQ(r3)
            if (r4 == 0) goto L5e
            if (r4 == r5) goto L5a
            if (r4 == r3) goto L4e
            if (r4 == r6) goto L41
            r11 = r2
            r4 = 0
        L3f:
            r12 = 0
            goto L61
        L41:
            r4 = 8
            int r4 = r13.bQ(r4)
            int r4 = r4 + 29
            int r3 = r13.bQ(r3)
            goto L24
        L4e:
            r4 = 4
            int r4 = r13.bQ(r4)
            int r4 = r4 + 12
            int r3 = r13.bQ(r3)
            goto L24
        L5a:
            r11 = r2
            r4 = 0
            r12 = 2
            goto L61
        L5e:
            r4 = 0
            r11 = 1
            goto L3f
        L61:
            if (r12 == 0) goto L7f
            if (r8 == 0) goto L7f
            if (r15 == 0) goto L69
            r4 = r15[r4]
        L69:
            r2 = r14[r4]
            r8.setColor(r2)
            float r3 = (float) r10
            float r4 = (float) r1
            int r2 = r10 + r12
            float r6 = (float) r2
            int r2 = r1 + 1
            float r7 = (float) r2
            r2 = r19
            r5 = r6
            r6 = r7
            r7 = r18
            r2.drawRect(r3, r4, r5, r6, r7)
        L7f:
            int r10 = r10 + r12
            if (r11 == 0) goto L83
            return r10
        L83:
            r2 = r11
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.i.b.b.a(com.applovin.exoplayer2.l.x, int[], byte[], int, int, android.graphics.Paint, android.graphics.Canvas):int");
    }

    private static void a(c cVar, a aVar, int i, int i2, int i3, @Nullable Paint paint, Canvas canvas) {
        int[] iArr = i == 3 ? aVar.Qx : i == 2 ? aVar.Qw : aVar.Qv;
        a(cVar.QD, iArr, i, i2, i3, paint, canvas);
        a(cVar.QE, iArr, i, i2, i3 + 1, paint, canvas);
    }

    private static void a(x xVar, h hVar) {
        f fVar;
        int iBQ = xVar.bQ(8);
        int iBQ2 = xVar.bQ(16);
        int iBQ3 = xVar.bQ(16);
        int iPg = xVar.pg() + iBQ3;
        if (iBQ3 * 8 > xVar.pf()) {
            q.h("DvbParser", "Data field length exceeds limit");
            xVar.bR(xVar.pf());
            return;
        }
        switch (iBQ) {
            case 16:
                if (iBQ2 == hVar.QV) {
                    d dVar = hVar.Rc;
                    d dVarC = c(xVar, iBQ3);
                    if (dVarC.Z != 0) {
                        hVar.Rc = dVarC;
                        hVar.QG.clear();
                        hVar.QX.clear();
                        hVar.QY.clear();
                    } else if (dVar != null && dVar.mH != dVarC.mH) {
                        hVar.Rc = dVarC;
                    }
                }
                break;
            case 17:
                d dVar2 = hVar.Rc;
                if (iBQ2 == hVar.QV && dVar2 != null) {
                    f fVarD = d(xVar, iBQ3);
                    if (dVar2.Z == 0 && (fVar = hVar.QG.get(fVarD.zD)) != null) {
                        fVarD.a(fVar);
                    }
                    hVar.QG.put(fVarD.zD, fVarD);
                }
                break;
            case 18:
                if (iBQ2 == hVar.QV) {
                    a aVarE = e(xVar, iBQ3);
                    hVar.QX.put(aVarE.zD, aVarE);
                } else if (iBQ2 == hVar.QW) {
                    a aVarE2 = e(xVar, iBQ3);
                    hVar.QZ.put(aVarE2.zD, aVarE2);
                }
                break;
            case 19:
                if (iBQ2 == hVar.QV) {
                    c cVarM = m(xVar);
                    hVar.QY.put(cVarM.zD, cVarM);
                } else if (iBQ2 == hVar.QW) {
                    c cVarM2 = m(xVar);
                    hVar.Ra.put(cVarM2.zD, cVarM2);
                }
                break;
            case 20:
                if (iBQ2 == hVar.QV) {
                    hVar.Rb = l(xVar);
                }
                break;
        }
        xVar.fz(iPg - xVar.pg());
    }

    private static void a(byte[] bArr, int[] iArr, int i, int i2, int i3, @Nullable Paint paint, Canvas canvas) {
        byte[] bArr2;
        byte[] bArr3;
        x xVar = new x(bArr);
        int iA = i2;
        int i4 = i3;
        byte[] bArrA = null;
        byte[] bArrA2 = null;
        byte[] bArrA3 = null;
        while (xVar.pf() != 0) {
            int iBQ = xVar.bQ(8);
            if (iBQ != 240) {
                switch (iBQ) {
                    case 16:
                        if (i == 3) {
                            bArr3 = bArrA == null ? Qn : bArrA;
                        } else if (i != 2) {
                            bArr2 = null;
                            iA = a(xVar, iArr, bArr2, iA, i4, paint, canvas);
                            xVar.pi();
                        } else {
                            bArr3 = bArrA3 == null ? Qm : bArrA3;
                        }
                        bArr2 = bArr3;
                        iA = a(xVar, iArr, bArr2, iA, i4, paint, canvas);
                        xVar.pi();
                        break;
                    case 17:
                        iA = b(xVar, iArr, i == 3 ? bArrA2 == null ? Qo : bArrA2 : null, iA, i4, paint, canvas);
                        xVar.pi();
                        break;
                    case 18:
                        iA = c(xVar, iArr, null, iA, i4, paint, canvas);
                        break;
                    default:
                        switch (iBQ) {
                            case 32:
                                bArrA3 = a(4, 4, xVar);
                                break;
                            case 33:
                                bArrA = a(4, 8, xVar);
                                break;
                            case 34:
                                bArrA2 = a(16, 8, xVar);
                                break;
                        }
                        break;
                }
            } else {
                i4 += 2;
                iA = i2;
            }
        }
    }

    private static byte[] a(int i, int i2, x xVar) {
        byte[] bArr = new byte[i];
        for (int i3 = 0; i3 < i; i3++) {
            bArr[i3] = (byte) xVar.bQ(i2);
        }
        return bArr;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x008e A[LOOP:0: B:3:0x0009->B:36:0x008e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008d A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static int b(com.applovin.exoplayer2.l.x r13, int[] r14, @androidx.annotation.Nullable byte[] r15, int r16, int r17, @androidx.annotation.Nullable android.graphics.Paint r18, android.graphics.Canvas r19) {
        /*
            r0 = r13
            r1 = r17
            r8 = r18
            r9 = 0
            r10 = r16
            r2 = 0
        L9:
            r3 = 4
            int r4 = r13.bQ(r3)
            r5 = 2
            r6 = 1
            if (r4 == 0) goto L16
            r11 = r2
        L13:
            r12 = 1
            goto L6e
        L16:
            boolean r4 = r13.ik()
            r7 = 3
            if (r4 != 0) goto L2c
            int r3 = r13.bQ(r7)
            if (r3 == 0) goto L29
            int r5 = r3 + 2
            r11 = r2
            r12 = r5
            r4 = 0
            goto L6e
        L29:
            r4 = 0
            r11 = 1
            goto L4d
        L2c:
            boolean r4 = r13.ik()
            if (r4 != 0) goto L3f
            int r4 = r13.bQ(r5)
            int r5 = r4 + 4
            int r4 = r13.bQ(r3)
        L3c:
            r11 = r2
            r12 = r5
            goto L6e
        L3f:
            int r4 = r13.bQ(r5)
            if (r4 == 0) goto L6b
            if (r4 == r6) goto L67
            if (r4 == r5) goto L5c
            if (r4 == r7) goto L4f
            r11 = r2
            r4 = 0
        L4d:
            r12 = 0
            goto L6e
        L4f:
            r4 = 8
            int r4 = r13.bQ(r4)
            int r5 = r4 + 25
            int r4 = r13.bQ(r3)
            goto L3c
        L5c:
            int r4 = r13.bQ(r3)
            int r5 = r4 + 9
            int r4 = r13.bQ(r3)
            goto L3c
        L67:
            r11 = r2
            r4 = 0
            r12 = 2
            goto L6e
        L6b:
            r11 = r2
            r4 = 0
            goto L13
        L6e:
            if (r12 == 0) goto L8a
            if (r8 == 0) goto L8a
            if (r15 == 0) goto L76
            r4 = r15[r4]
        L76:
            r2 = r14[r4]
            r8.setColor(r2)
            float r3 = (float) r10
            float r4 = (float) r1
            int r2 = r10 + r12
            float r5 = (float) r2
            int r2 = r1 + 1
            float r6 = (float) r2
            r2 = r19
            r7 = r18
            r2.drawRect(r3, r4, r5, r6, r7)
        L8a:
            int r10 = r10 + r12
            if (r11 == 0) goto L8e
            return r10
        L8e:
            r2 = r11
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.i.b.b.b(com.applovin.exoplayer2.l.x, int[], byte[], int, int, android.graphics.Paint, android.graphics.Canvas):int");
    }

    private static int c(int i, int i2, int i3, int i4) {
        return (i << 24) | (i2 << 16) | (i3 << 8) | i4;
    }

    private static int c(x xVar, int[] iArr, @Nullable byte[] bArr, int i, int i2, @Nullable Paint paint, Canvas canvas) {
        boolean z;
        int iBQ;
        int i3 = i;
        boolean z2 = false;
        while (true) {
            int iBQ2 = xVar.bQ(8);
            if (iBQ2 != 0) {
                z = z2;
                iBQ = 1;
            } else if (xVar.ik()) {
                z = z2;
                iBQ = xVar.bQ(7);
                iBQ2 = xVar.bQ(8);
            } else {
                int iBQ3 = xVar.bQ(7);
                if (iBQ3 != 0) {
                    z = z2;
                    iBQ = iBQ3;
                    iBQ2 = 0;
                } else {
                    iBQ2 = 0;
                    z = true;
                    iBQ = 0;
                }
            }
            if (iBQ != 0 && paint != null) {
                if (bArr != null) {
                    iBQ2 = bArr[iBQ2];
                }
                paint.setColor(iArr[iBQ2]);
                canvas.drawRect(i3, i2, i3 + iBQ, i2 + 1, paint);
            }
            i3 += iBQ;
            if (z) {
                return i3;
            }
            z2 = z;
        }
    }

    private static d c(x xVar, int i) {
        int iBQ = xVar.bQ(8);
        int iBQ2 = xVar.bQ(4);
        int iBQ3 = xVar.bQ(2);
        xVar.bR(2);
        int i2 = i - 2;
        SparseArray sparseArray = new SparseArray();
        while (i2 > 0) {
            int iBQ4 = xVar.bQ(8);
            xVar.bR(8);
            i2 -= 6;
            sparseArray.put(iBQ4, new e(xVar.bQ(16), xVar.bQ(16)));
        }
        return new d(iBQ, iBQ2, iBQ3, sparseArray);
    }

    private static f d(x xVar, int i) {
        int iBQ;
        int iBQ2;
        int iBQ3 = xVar.bQ(8);
        xVar.bR(4);
        boolean zIk = xVar.ik();
        xVar.bR(3);
        int i2 = 16;
        int iBQ4 = xVar.bQ(16);
        int iBQ5 = xVar.bQ(16);
        int iBQ6 = xVar.bQ(3);
        int iBQ7 = xVar.bQ(3);
        int i3 = 2;
        xVar.bR(2);
        int iBQ8 = xVar.bQ(8);
        int iBQ9 = xVar.bQ(8);
        int iBQ10 = xVar.bQ(4);
        int iBQ11 = xVar.bQ(2);
        xVar.bR(2);
        int i4 = i - 10;
        SparseArray sparseArray = new SparseArray();
        while (i4 > 0) {
            int iBQ12 = xVar.bQ(i2);
            int iBQ13 = xVar.bQ(i3);
            int iBQ14 = xVar.bQ(i3);
            int iBQ15 = xVar.bQ(12);
            int i5 = iBQ11;
            xVar.bR(4);
            int iBQ16 = xVar.bQ(12);
            i4 -= 6;
            if (iBQ13 == 1 || iBQ13 == 2) {
                i4 -= 2;
                iBQ = xVar.bQ(8);
                iBQ2 = xVar.bQ(8);
            } else {
                iBQ = 0;
                iBQ2 = 0;
            }
            sparseArray.put(iBQ12, new g(iBQ13, iBQ14, iBQ15, iBQ16, iBQ, iBQ2));
            iBQ11 = i5;
            i3 = 2;
            i2 = 16;
        }
        return new f(iBQ3, zIk, iBQ4, iBQ5, iBQ6, iBQ7, iBQ8, iBQ9, iBQ10, iBQ11, sparseArray);
    }

    private static a e(x xVar, int i) {
        int iBQ;
        int i2;
        int iBQ2;
        int iBQ3;
        int iBQ4;
        int i3 = 8;
        int iBQ5 = xVar.bQ(8);
        xVar.bR(8);
        int i4 = 2;
        int i5 = i - 2;
        int[] iArrMB = mB();
        int[] iArrMC = mC();
        int[] iArrMD = mD();
        while (i5 > 0) {
            int iBQ6 = xVar.bQ(i3);
            int iBQ7 = xVar.bQ(i3);
            int i6 = i5 - 2;
            int[] iArr = (iBQ7 & 128) != 0 ? iArrMB : (iBQ7 & 64) != 0 ? iArrMC : iArrMD;
            if ((iBQ7 & 1) != 0) {
                iBQ3 = xVar.bQ(i3);
                iBQ4 = xVar.bQ(i3);
                iBQ = xVar.bQ(i3);
                iBQ2 = xVar.bQ(i3);
                i2 = i6 - 4;
            } else {
                int iBQ8 = xVar.bQ(6) << i4;
                int iBQ9 = xVar.bQ(4) << 4;
                iBQ = xVar.bQ(4) << 4;
                i2 = i6 - 2;
                iBQ2 = xVar.bQ(i4) << 6;
                iBQ3 = iBQ8;
                iBQ4 = iBQ9;
            }
            if (iBQ3 == 0) {
                iBQ4 = 0;
                iBQ = 0;
                iBQ2 = 255;
            }
            double d2 = iBQ3;
            double d3 = iBQ4 - 128;
            double d4 = iBQ - 128;
            iArr[iBQ6] = c((byte) (255 - (iBQ2 & 255)), ai.k((int) (d2 + (1.402d * d3)), 0, 255), ai.k((int) ((d2 - (0.34414d * d4)) - (d3 * 0.71414d)), 0, 255), ai.k((int) (d2 + (d4 * 1.772d)), 0, 255));
            i5 = i2;
            iBQ5 = iBQ5;
            i3 = 8;
            i4 = 2;
        }
        return new a(iBQ5, iArrMB, iArrMC, iArrMD);
    }

    private static C0045b l(x xVar) {
        int i;
        int iBQ;
        int i2;
        int i3;
        xVar.bR(4);
        boolean zIk = xVar.ik();
        xVar.bR(3);
        int iBQ2 = xVar.bQ(16);
        int iBQ3 = xVar.bQ(16);
        if (zIk) {
            int iBQ4 = xVar.bQ(16);
            int iBQ5 = xVar.bQ(16);
            int iBQ6 = xVar.bQ(16);
            iBQ = xVar.bQ(16);
            i = iBQ5;
            i3 = iBQ6;
            i2 = iBQ4;
        } else {
            i = iBQ2;
            iBQ = iBQ3;
            i2 = 0;
            i3 = 0;
        }
        return new C0045b(iBQ2, iBQ3, i2, i, i3, iBQ);
    }

    private static c m(x xVar) {
        byte[] bArr;
        int iBQ = xVar.bQ(16);
        xVar.bR(4);
        int iBQ2 = xVar.bQ(2);
        boolean zIk = xVar.ik();
        xVar.bR(1);
        byte[] bArr2 = ai.ada;
        if (iBQ2 != 1) {
            if (iBQ2 == 0) {
                int iBQ3 = xVar.bQ(16);
                int iBQ4 = xVar.bQ(16);
                if (iBQ3 > 0) {
                    bArr2 = new byte[iBQ3];
                    xVar.r(bArr2, 0, iBQ3);
                }
                if (iBQ4 > 0) {
                    bArr = new byte[iBQ4];
                    xVar.r(bArr, 0, iBQ4);
                }
            }
            return new c(iBQ, zIk, bArr2, bArr);
        }
        xVar.bR(xVar.bQ(8) * 16);
        bArr = bArr2;
        return new c(iBQ, zIk, bArr2, bArr);
    }

    private static int[] mB() {
        return new int[]{0, -1, ViewCompat.MEASURED_STATE_MASK, -8421505};
    }

    private static int[] mC() {
        int[] iArr = new int[16];
        iArr[0] = 0;
        for (int i = 1; i < 16; i++) {
            if (i < 8) {
                iArr[i] = c(255, (i & 1) != 0 ? 255 : 0, (i & 2) != 0 ? 255 : 0, (i & 4) != 0 ? 255 : 0);
            } else {
                iArr[i] = c(255, (i & 1) != 0 ? 127 : 0, (i & 2) != 0 ? 127 : 0, (i & 4) == 0 ? 0 : 127);
            }
        }
        return iArr;
    }

    private static int[] mD() {
        int[] iArr = new int[256];
        iArr[0] = 0;
        for (int i = 0; i < 256; i++) {
            if (i < 8) {
                iArr[i] = c(63, (i & 1) != 0 ? 255 : 0, (i & 2) != 0 ? 255 : 0, (i & 4) == 0 ? 0 : 255);
            } else {
                int i2 = i & 136;
                if (i2 == 0) {
                    iArr[i] = c(255, ((i & 1) != 0 ? 85 : 0) + ((i & 16) != 0 ? 170 : 0), ((i & 2) != 0 ? 85 : 0) + ((i & 32) != 0 ? 170 : 0), ((i & 4) == 0 ? 0 : 85) + ((i & 64) == 0 ? 0 : 170));
                } else if (i2 == 8) {
                    iArr[i] = c(127, ((i & 1) != 0 ? 85 : 0) + ((i & 16) != 0 ? 170 : 0), ((i & 2) != 0 ? 85 : 0) + ((i & 32) != 0 ? 170 : 0), ((i & 4) == 0 ? 0 : 85) + ((i & 64) == 0 ? 0 : 170));
                } else if (i2 == 128) {
                    iArr[i] = c(255, ((i & 1) != 0 ? 43 : 0) + 127 + ((i & 16) != 0 ? 85 : 0), ((i & 2) != 0 ? 43 : 0) + 127 + ((i & 32) != 0 ? 85 : 0), ((i & 4) == 0 ? 0 : 43) + 127 + ((i & 64) == 0 ? 0 : 85));
                } else if (i2 == 136) {
                    iArr[i] = c(255, ((i & 1) != 0 ? 43 : 0) + ((i & 16) != 0 ? 85 : 0), ((i & 2) != 0 ? 43 : 0) + ((i & 32) != 0 ? 85 : 0), ((i & 4) == 0 ? 0 : 43) + ((i & 64) == 0 ? 0 : 85));
                }
            }
        }
        return iArr;
    }

    public void Y() {
        this.Qu.Y();
    }

    public List<com.applovin.exoplayer2.i.a> h(byte[] bArr, int i) {
        int i2;
        SparseArray<g> sparseArray;
        x xVar = new x(bArr, i);
        while (xVar.pf() >= 48 && xVar.bQ(8) == 15) {
            a(xVar, this.Qu);
        }
        h hVar = this.Qu;
        d dVar = hVar.Rc;
        if (dVar == null) {
            return Collections.emptyList();
        }
        C0045b c0045b = hVar.Rb;
        if (c0045b == null) {
            c0045b = this.Qs;
        }
        Bitmap bitmap = this.NZ;
        if (bitmap == null || c0045b.dE + 1 != bitmap.getWidth() || c0045b.height + 1 != this.NZ.getHeight()) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(c0045b.dE + 1, c0045b.height + 1, Bitmap.Config.ARGB_8888);
            this.NZ = bitmapCreateBitmap;
            this.Qr.setBitmap(bitmapCreateBitmap);
        }
        ArrayList arrayList = new ArrayList();
        SparseArray<e> sparseArray2 = dVar.QG;
        for (int i3 = 0; i3 < sparseArray2.size(); i3++) {
            this.Qr.save();
            e eVarValueAt = sparseArray2.valueAt(i3);
            f fVar = this.Qu.QG.get(sparseArray2.keyAt(i3));
            int i4 = eVarValueAt.QH + c0045b.Qy;
            int i5 = eVarValueAt.QI + c0045b.QA;
            this.Qr.clipRect(i4, i5, Math.min(fVar.dE + i4, c0045b.Qz), Math.min(fVar.height + i5, c0045b.QB));
            a aVar = this.Qu.QX.get(fVar.QL);
            if (aVar == null && (aVar = this.Qu.QZ.get(fVar.QL)) == null) {
                aVar = this.Qt;
            }
            SparseArray<g> sparseArray3 = fVar.QP;
            int i6 = 0;
            while (i6 < sparseArray3.size()) {
                int iKeyAt = sparseArray3.keyAt(i6);
                g gVarValueAt = sparseArray3.valueAt(i6);
                c cVar = this.Qu.QY.get(iKeyAt);
                c cVar2 = cVar == null ? this.Qu.Ra.get(iKeyAt) : cVar;
                if (cVar2 != null) {
                    i2 = i6;
                    sparseArray = sparseArray3;
                    a(cVar2, aVar, fVar.Ju, gVarValueAt.QR + i4, i5 + gVarValueAt.QS, cVar2.QC ? null : this.Qp, this.Qr);
                } else {
                    i2 = i6;
                    sparseArray = sparseArray3;
                }
                i6 = i2 + 1;
                sparseArray3 = sparseArray;
            }
            if (fVar.QJ) {
                int i7 = fVar.Ju;
                this.Qq.setColor(i7 == 3 ? aVar.Qx[fVar.QM] : i7 == 2 ? aVar.Qw[fVar.QN] : aVar.Qv[fVar.QO]);
                this.Qr.drawRect(i4, i5, fVar.dE + i4, fVar.height + i5, this.Qq);
            }
            arrayList.add(new a.C0041a().a(Bitmap.createBitmap(this.NZ, i4, i5, fVar.dE, fVar.height)).o(i4 / c0045b.dE).eg(0).b(i5 / c0045b.height, 0).ef(0).p(fVar.dE / c0045b.dE).q(fVar.height / c0045b.height).lU());
            this.Qr.drawColor(0, PorterDuff.Mode.CLEAR);
            this.Qr.restore();
        }
        return Collections.unmodifiableList(arrayList);
    }
}
