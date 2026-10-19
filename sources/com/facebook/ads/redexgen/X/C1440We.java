package com.facebook.ads.redexgen.X;

import android.util.Log;
import android.util.Pair;
import android.util.SparseArray;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import com.facebook.ads.internal.exoplayer2.thirdparty.drm.DrmInitData;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.We, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1440We implements InterfaceC0920Ba {
    public static byte[] A0X;
    public static String[] A0Y = {"XdJWu", "FUlE3E4RGCFuY0n1jkLa4sDNStY", "LTfWg4MeBgD", "ea2mTe", "5aN4xnjUR54", "JRDUjTwIRED0cdRjG5ryaKaac6vLzQ8c", "s80pf3iUB", "VFz"};
    public static final InterfaceC0923Bd A0Z;
    public static final int A0a;
    public static final Format A0b;
    public static final byte[] A0c;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05;
    public int A06;
    public long A07;
    public long A08;
    public long A09;
    public long A0A;
    public long A0B;
    public InterfaceC0922Bc A0C;
    public CD A0D;
    public C1062Hh A0E;
    public boolean A0F;
    public boolean A0G;
    public InterfaceC0930Bm[] A0H;
    public InterfaceC0930Bm[] A0I;
    public final int A0J;
    public final SparseArray<CD> A0K;
    public final DrmInitData A0L;
    public final InterfaceC0930Bm A0M;
    public final CM A0N;
    public final C1062Hh A0O;
    public final C1062Hh A0P;
    public final C1062Hh A0Q;
    public final C1062Hh A0R;
    public final C1074Ht A0S;
    public final ArrayDeque<C1446Wk> A0T;
    public final ArrayDeque<CC> A0U;
    public final List<Format> A0V;
    public final byte[] A0W;

    static {
        A0D();
        A0Z = new C1441Wf();
        A0a = C1078Hx.A08(A0A(682, 4, 23));
        A0c = new byte[]{-94, 57, 79, 82, 90, -101, 79, Ascii.DC4, -94, 68, 108, 66, 124, 100, -115, -12};
        A0b = Format.A02(null, A0A(664, 18, 25), Long.MAX_VALUE);
    }

    public C1440We() {
        this(0);
    }

    public C1440We(int i) {
        this(i, null);
    }

    public C1440We(int i, C1074Ht c1074Ht) {
        this(i, c1074Ht, null, null);
    }

    public C1440We(int i, C1074Ht c1074Ht, CM cm, DrmInitData drmInitData) {
        this(i, c1074Ht, cm, drmInitData, Collections.emptyList());
    }

    public C1440We(int i, C1074Ht c1074Ht, CM cm, DrmInitData drmInitData, List<Format> list) {
        this(i, c1074Ht, cm, drmInitData, list, null);
    }

    public C1440We(int i, C1074Ht c1074Ht, CM cm, DrmInitData drmInitData, List<Format> list, InterfaceC0930Bm interfaceC0930Bm) {
        this.A0J = (cm != null ? 8 : 0) | i;
        this.A0S = c1074Ht;
        this.A0N = cm;
        this.A0L = drmInitData;
        this.A0V = Collections.unmodifiableList(list);
        this.A0M = interfaceC0930Bm;
        this.A0O = new C1062Hh(16);
        this.A0R = new C1062Hh(C1058Hd.A03);
        this.A0Q = new C1062Hh(5);
        this.A0P = new C1062Hh();
        this.A0W = new byte[16];
        this.A0T = new ArrayDeque<>();
        this.A0U = new ArrayDeque<>();
        this.A0K = new SparseArray<>();
        this.A08 = C.TIME_UNSET;
        this.A0A = C.TIME_UNSET;
        this.A0B = C.TIME_UNSET;
        A0B();
    }

    public static int A00(CD cd, int i, long j, int i2, C1062Hh c1062Hh, int i3) {
        int iA0H;
        int i4 = i3;
        long j2 = j;
        c1062Hh.A0Y(8);
        int iA00 = C1.A00(c1062Hh.A08());
        CM cm = cd.A05;
        CO co = cd.A07;
        C7 c7 = co.A07;
        co.A0E[i] = c1062Hh.A0H();
        co.A0G[i] = co.A05;
        if ((iA00 & 1) != 0) {
            long[] jArr = co.A0G;
            jArr[i] = jArr[i] + ((long) c1062Hh.A08());
        }
        boolean z = (iA00 & 4) != 0;
        int iA0H2 = c7.A01;
        if (z) {
            iA0H2 = c1062Hh.A0H();
        }
        boolean z2 = (iA00 & 256) != 0;
        boolean z3 = (iA00 & 512) != 0;
        boolean z4 = (iA00 & 1024) != 0;
        boolean z5 = (iA00 & 2048) != 0;
        long jA0F = 0;
        if (cm.A08 != null && cm.A08.length == 1 && cm.A08[0] == 0) {
            jA0F = C1078Hx.A0F(cm.A09[0], 1000L, cm.A06);
        }
        int[] iArr = co.A0D;
        int[] iArr2 = co.A0C;
        long[] jArr2 = co.A0F;
        boolean[] zArr = co.A0I;
        boolean z6 = cm.A03 == 2 && (i2 & 1) != 0;
        int i5 = i4 + co.A0E[i];
        long j3 = cm.A06;
        if (i > 0) {
            j2 = co.A06;
        }
        while (i4 < i5) {
            int iA0H3 = z2 ? c1062Hh.A0H() : c7.A00;
            if (z3) {
                iA0H = c1062Hh.A0H();
            } else {
                iA0H = c7.A03;
                if (A0Y[5].charAt(2) == 'C') {
                    throw new RuntimeException();
                }
                A0Y[6] = "dkwnFPd0";
            }
            int iA08 = (i4 == 0 && z) ? iA0H2 : z4 ? c1062Hh.A08() : c7.A01;
            if (z5) {
                iArr2[i4] = (int) ((((long) c1062Hh.A08()) * 1000) / j3);
            } else {
                iArr2[i4] = 0;
            }
            jArr2[i4] = C1078Hx.A0F(j2, 1000L, j3) - jA0F;
            iArr[i4] = iA0H;
            zArr[i4] = ((iA08 >> 16) & 1) == 0 && (!z6 || i4 == 0);
            j2 += (long) iA0H3;
            i4++;
        }
        co.A06 = j2;
        return i5;
    }

    public static long A01(C1062Hh c1062Hh) {
        c1062Hh.A0Y(8);
        return C1.A01(c1062Hh.A08()) == 0 ? c1062Hh.A0M() : c1062Hh.A0N();
    }

    public static long A02(C1062Hh c1062Hh) {
        c1062Hh.A0Y(8);
        return C1.A01(c1062Hh.A08()) == 1 ? c1062Hh.A0N() : c1062Hh.A0M();
    }

    public static Pair<Integer, C7> A03(C1062Hh c1062Hh) {
        c1062Hh.A0Y(12);
        return Pair.create(Integer.valueOf(c1062Hh.A08()), new C7(c1062Hh.A0H() - 1, c1062Hh.A0H(), c1062Hh.A0H(), c1062Hh.A08()));
    }

    public static Pair<Long, X5> A04(C1062Hh c1062Hh, long j) throws C08729d {
        long jA0N;
        long jA0N2;
        c1062Hh.A0Y(8);
        int iA01 = C1.A01(c1062Hh.A08());
        c1062Hh.A0Z(4);
        long jA0M = c1062Hh.A0M();
        if (iA01 == 0) {
            jA0N = c1062Hh.A0M();
            jA0N2 = j + c1062Hh.A0M();
        } else {
            jA0N = c1062Hh.A0N();
            jA0N2 = j + c1062Hh.A0N();
        }
        long jA0F = C1078Hx.A0F(jA0N, 1000000L, jA0M);
        c1062Hh.A0Z(2);
        int iA0I = c1062Hh.A0I();
        int[] iArr = new int[iA0I];
        long[] jArr = new long[iA0I];
        long[] jArr2 = new long[iA0I];
        long[] jArr3 = new long[iA0I];
        long jA0F2 = jA0F;
        for (int i = 0; i < iA0I; i++) {
            int iA08 = c1062Hh.A08();
            if ((Integer.MIN_VALUE & iA08) != 0) {
                throw new C08729d(A0A(581, 28, 126));
            }
            long jA0M2 = c1062Hh.A0M();
            iArr[i] = Integer.MAX_VALUE & iA08;
            jArr[i] = jA0N2;
            jArr3[i] = jA0F2;
            jA0N += jA0M2;
            jA0F2 = C1078Hx.A0F(jA0N, 1000000L, jA0M);
            jArr2[i] = jA0F2 - jArr3[i];
            c1062Hh.A0Z(4);
            jA0N2 += (long) iArr[i];
        }
        return Pair.create(Long.valueOf(jA0F), new X5(iArr, jArr, jArr2, jArr3));
    }

    public static DrmInitData A05(List<C1445Wj> list) {
        ArrayList arrayList = null;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            C1445Wj c1445Wj = list.get(i);
            if (((C1) c1445Wj).A00 == C1.A0s) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] bArr = c1445Wj.A00.A00;
                UUID uuidA03 = CJ.A03(bArr);
                if (A0Y[3].length() != 6) {
                    throw new RuntimeException();
                }
                A0Y[7] = "tzO";
                if (uuidA03 == null) {
                    Log.w(A0A(128, 22, 24), A0A(437, 42, 58));
                } else {
                    arrayList.add(new DrmInitData.SchemeData(uuidA03, A0A(696, 9, 23), bArr));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new DrmInitData(arrayList);
    }

    private C7 A06(SparseArray<C7> sparseArray, int i) {
        return sparseArray.size() == 1 ? sparseArray.valueAt(0) : (C7) HI.A01(sparseArray.get(i));
    }

    public static CD A07(SparseArray<CD> sparseArray) {
        CD cd = null;
        long j = Long.MAX_VALUE;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            CD cdValueAt = sparseArray.valueAt(i);
            int i2 = cdValueAt.A02;
            if (A0Y[1].length() == 5) {
                throw new RuntimeException();
            }
            A0Y[0] = "VXm0n";
            if (i2 != cdValueAt.A07.A02) {
                long j2 = cdValueAt.A07.A0G[cdValueAt.A02];
                if (j2 < j) {
                    cd = cdValueAt;
                    j = j2;
                }
            }
        }
        return cd;
    }

    public static CD A08(SparseArray<CD> sparseArray, int i) {
        return sparseArray.size() == 1 ? sparseArray.valueAt(0) : sparseArray.get(i);
    }

    public static CD A09(C1062Hh c1062Hh, SparseArray<CD> sparseArray) {
        c1062Hh.A0Y(8);
        int iA00 = C1.A00(c1062Hh.A08());
        CD cdA08 = A08(sparseArray, c1062Hh.A08());
        if (cdA08 == null) {
            return null;
        }
        if ((iA00 & 1) != 0) {
            long jA0N = c1062Hh.A0N();
            cdA08.A07.A05 = jA0N;
            cdA08.A07.A04 = jA0N;
        }
        C7 c7 = cdA08.A04;
        cdA08.A07.A07 = new C7((iA00 & 2) != 0 ? c1062Hh.A0H() - 1 : c7.A02, (iA00 & 8) != 0 ? c1062Hh.A0H() : c7.A00, (iA00 & 16) != 0 ? c1062Hh.A0H() : c7.A03, (iA00 & 32) != 0 ? c1062Hh.A0H() : c7.A01);
        return cdA08;
    }

    public static String A0A(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0X, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 103);
        }
        return new String(bArrCopyOfRange);
    }

    private void A0B() {
        this.A02 = 0;
        this.A00 = 0;
    }

    private void A0C() {
        if (this.A0I == null) {
            InterfaceC0930Bm[] interfaceC0930BmArr = new InterfaceC0930Bm[2];
            this.A0I = interfaceC0930BmArr;
            int i = 0;
            InterfaceC0930Bm interfaceC0930Bm = this.A0M;
            if (interfaceC0930Bm != null) {
                interfaceC0930BmArr[0] = interfaceC0930Bm;
                i = 0 + 1;
            }
            if ((this.A0J & 4) != 0) {
                interfaceC0930BmArr[i] = this.A0C.AFx(this.A0K.size(), 4);
                i++;
            }
            InterfaceC0930Bm[] interfaceC0930BmArr2 = (InterfaceC0930Bm[]) Arrays.copyOf(this.A0I, i);
            this.A0I = interfaceC0930BmArr2;
            for (InterfaceC0930Bm interfaceC0930Bm2 : interfaceC0930BmArr2) {
                interfaceC0930Bm2.A5j(A0b);
            }
        }
        InterfaceC0930Bm[] interfaceC0930BmArr3 = this.A0H;
        if (A0Y[6].length() == 17) {
            throw new RuntimeException();
        }
        A0Y[3] = "8HQd7O";
        if (interfaceC0930BmArr3 == null) {
            this.A0H = new InterfaceC0930Bm[this.A0V.size()];
            for (int i2 = 0; i2 < this.A0H.length; i2++) {
                InterfaceC0930Bm interfaceC0930BmAFx = this.A0C.AFx(this.A0K.size() + 1 + i2, 3);
                interfaceC0930BmAFx.A5j(this.A0V.get(i2));
                this.A0H[i2] = interfaceC0930BmAFx;
            }
        }
    }

    public static void A0D() {
        A0X = new byte[]{117, 121, 84, 97, 122, 120, 53, 102, 124, 111, 112, 53, 121, 112, 102, 102, 53, 97, 125, 116, 123, 53, 125, 112, 116, 113, 112, 103, 53, 121, 112, 123, 114, 97, 125, 53, 61, 96, 123, 102, 96, 101, 101, 122, 103, 97, 112, 113, 60, 59, 114, 89, 67, 69, 78, Ascii.ETB, 84, 88, 66, 89, 67, Ascii.ETB, 94, 89, Ascii.ETB, 68, 85, 80, 71, Ascii.ETB, Ascii.SYN, 10, Ascii.ETB, 6, Ascii.ETB, Ascii.US, 66, 89, 68, 66, 71, 71, 88, 69, 67, 82, 83, Ascii.RS, Ascii.EM, 119, 92, 70, 64, 75, Ascii.DC2, 81, 93, 71, 92, 70, Ascii.DC2, 91, 92, Ascii.DC2, 65, 85, 66, 86, Ascii.DC2, 19, Ascii.SI, Ascii.DC2, 3, Ascii.DC2, Ascii.SUB, 71, 92, 65, 71, 66, 66, 93, 64, 70, 87, 86, Ascii.ESC, Ascii.FS, 57, Ascii.CR, Ascii.RS, Ascii.CAN, Ascii.DC2, Ascii.SUB, 17, Ascii.VT, Ascii.SUB, Ascii.ESC, 50, Ascii.SI, 75, 58, 7, Ascii.VT, Ascii.CR, Ascii.RS, Ascii.FS, Ascii.VT, Ascii.DLE, Ascii.CR, 0, 46, 39, 38, 59, 32, 39, 46, 105, 39, 44, 46, 40, 61, 32, 63, 44, 105, 38, 47, 47, 58, 44, 61, 105, 61, 38, 105, 58, 40, 36, 57, 37, 44, 105, 45, 40, 61, 40, 103, 51, Ascii.SUB, Ascii.RS, Ascii.EM, 95, Ascii.RS, Ascii.VT, Ascii.DLE, Ascii.DC2, 95, Ascii.ESC, Ascii.SUB, Ascii.EM, Ascii.SYN, 17, Ascii.SUB, Ascii.FF, 95, Ascii.SUB, 7, Ascii.VT, Ascii.SUB, 17, Ascii.ESC, Ascii.SUB, Ascii.ESC, 95, Ascii.RS, Ascii.VT, Ascii.DLE, Ascii.DC2, 95, Ascii.FF, Ascii.SYN, 5, Ascii.SUB, 95, 87, 10, 17, Ascii.FF, 10, Ascii.SI, Ascii.SI, Ascii.DLE, Ascii.CR, Ascii.VT, Ascii.SUB, Ascii.ESC, 86, 81, Ascii.RS, 55, 51, 52, 114, 51, 38, 61, 63, 114, 37, 59, 38, 58, 114, 62, 55, 60, 53, 38, 58, 114, 108, 114, 96, 99, 102, 101, 102, 106, 97, 100, 102, 101, 114, 122, 39, 60, 33, 39, 34, 34, 61, 32, 38, 55, 54, 123, 124, 63, Ascii.SYN, Ascii.GS, Ascii.DC4, 7, Ascii.ESC, 83, Ascii.RS, Ascii.SUB, 0, Ascii.RS, Ascii.DC2, 7, Ascii.DLE, Ascii.ESC, 73, 83, Ascii.SI, 38, 38, 51, 37, 52, 96, 52, 47, 96, 37, 46, 35, 50, 57, 48, 52, 41, 47, 46, 96, 36, 33, 52, 33, 96, 55, 33, 51, 96, 46, 37, 39, 33, 52, 41, 54, 37, 110, Ascii.DLE, 57, 57, 44, 58, 43, Ascii.DEL, 43, 48, Ascii.DEL, 58, 49, 59, Ascii.DEL, 48, 57, Ascii.DEL, 50, 59, 62, 43, Ascii.DEL, 40, 62, 44, Ascii.DEL, 49, 58, 56, 62, 43, 54, 41, 58, 113, 106, 83, 64, 87, 87, 76, 65, 76, 75, 66, 5, 113, 87, 68, 70, 78, 96, 75, 70, 87, 92, 85, 81, 76, 74, 75, 103, 74, 93, 5, 85, 68, 87, 68, 72, 64, 81, 64, 87, 86, 5, 76, 86, 5, 80, 75, 86, 80, 85, 85, 74, 87, 81, 64, 65, Ascii.VT, Ascii.SO, 54, 52, 45, 45, 56, 57, 125, 45, 46, 46, 53, 125, 60, 41, 50, 48, 125, 117, 59, 60, 52, 49, 56, 57, 125, 41, 50, 125, 56, 37, 41, 47, 60, 62, 41, 125, 40, 40, 52, 57, 116, 54, Ascii.SO, Ascii.FF, Ascii.NAK, Ascii.NAK, Ascii.FF, Ascii.VT, 2, 69, 4, 17, 10, 8, 69, Ascii.DC2, Ascii.FF, 17, Ascii.CR, 69, 9, 0, Ascii.VT, 2, 17, Ascii.CR, 69, 91, 69, 87, 84, 81, 82, 81, 93, 86, 83, 81, 82, 69, 77, Ascii.DLE, Ascii.VT, Ascii.SYN, Ascii.DLE, Ascii.NAK, Ascii.NAK, 10, Ascii.ETB, 17, 0, 1, 76, 75, 62, 5, Ascii.SO, 19, Ascii.ESC, Ascii.SO, 8, Ascii.US, Ascii.SO, Ascii.SI, 75, 6, 4, 4, Ascii.GS, 75, 9, 4, 19, 69, Ascii.CR, 54, 61, 32, 40, 61, 59, 44, 61, 60, 120, 43, 57, 49, 55, 120, 61, 54, 44, 42, 33, 120, 59, 55, 45, 54, 44, 98, 120, 76, 119, 113, 120, 119, 125, 117, 124, 125, 57, 112, 119, 125, 112, 107, 124, 122, 109, 57, 107, 124, Ascii.DEL, 124, 107, 124, 119, 122, 124, 58, Ascii.CR, Ascii.RS, 5, Ascii.CR, Ascii.SO, 0, 9, 76, 0, 9, 2, Ascii.VT, Ascii.CAN, 4, 76, 8, 9, Ascii.US, Ascii.SI, Ascii.RS, 5, Ascii.FS, Ascii.CAN, 5, 3, 2, 76, 5, 2, 76, Ascii.US, Ascii.VT, Ascii.FS, 8, 76, 10, 3, Ascii.EM, 2, 8, 76, 68, Ascii.EM, 2, Ascii.US, Ascii.EM, Ascii.FS, Ascii.FS, 3, Ascii.RS, Ascii.CAN, 9, 8, 69, Ascii.US, Ascii.SO, Ascii.SO, Ascii.DC2, Ascii.ETB, Ascii.GS, Ascii.US, 10, Ascii.ETB, 17, Ascii.DLE, 81, 6, 83, Ascii.ESC, 19, Ascii.CR, Ascii.EM, 3, Ascii.NAK, Ascii.EM, Ascii.ETB, Ascii.ETB, 8, 5, 4, Ascii.SO, 78, 9, 4, Ascii.ETB, 2, 6, Ascii.EM, Ascii.DC4, Ascii.NAK, Ascii.US, 95, Ascii.GS, 0, 68};
    }

    private void A0E(long j) {
        while (!this.A0U.isEmpty()) {
            CC ccRemoveFirst = this.A0U.removeFirst();
            this.A03 -= ccRemoveFirst.A00;
            long jA06 = j + ccRemoveFirst.A01;
            C1074Ht c1074Ht = this.A0S;
            if (c1074Ht != null) {
                jA06 = c1074Ht.A06(jA06);
            }
            InterfaceC0930Bm[] interfaceC0930BmArr = this.A0I;
            if (A0Y[7].length() != 3) {
                throw new RuntimeException();
            }
            A0Y[7] = "ltl";
            for (InterfaceC0930Bm interfaceC0930Bm : interfaceC0930BmArr) {
                interfaceC0930Bm.AEs(jA06, 1, ccRemoveFirst.A00, this.A03, null);
            }
        }
    }

    private void A0F(long j) throws C08729d {
        while (!this.A0T.isEmpty() && this.A0T.peek().A00 == j) {
            A0I(this.A0T.pop());
        }
        A0B();
    }

    private void A0G(InterfaceC0921Bb interfaceC0921Bb) throws InterruptedException, IOException {
        int i = ((int) this.A07) - this.A00;
        C1062Hh c1062Hh = this.A0E;
        if (c1062Hh != null) {
            interfaceC0921Bb.readFully(c1062Hh.A00, 8, i);
            A0O(new C1445Wj(this.A01, this.A0E), interfaceC0921Bb.A7a());
        } else {
            interfaceC0921Bb.AFe(i);
        }
        A0F(interfaceC0921Bb.A7a());
        String[] strArr = A0Y;
        if (strArr[2].length() != strArr[4].length()) {
            throw new RuntimeException();
        }
        A0Y[1] = "jmSEpbOdW733bHBoDHkBty1cmj";
    }

    private void A0H(InterfaceC0921Bb interfaceC0921Bb) throws InterruptedException, IOException {
        CD cdValueAt = null;
        long j = Long.MAX_VALUE;
        int size = this.A0K.size();
        for (int i = 0; i < size; i++) {
            CO co = this.A0K.valueAt(i).A07;
            if (co.A0B && co.A04 < j) {
                j = co.A04;
                cdValueAt = this.A0K.valueAt(i);
            }
        }
        if (cdValueAt == null) {
            this.A02 = 3;
            return;
        }
        int iA7a = (int) (j - interfaceC0921Bb.A7a());
        if (iA7a < 0) {
            throw new C08729d(A0A(307, 39, 39));
        }
        interfaceC0921Bb.AFe(iA7a);
        cdValueAt.A07.A04(interfaceC0921Bb);
    }

    private void A0I(C1446Wk c1446Wk) throws C08729d {
        if (((C1) c1446Wk).A00 == C1.A0k) {
            A0K(c1446Wk);
            return;
        }
        int i = ((C1) c1446Wk).A00;
        int i2 = C1.A0j;
        String[] strArr = A0Y;
        if (strArr[2].length() != strArr[4].length()) {
            throw new RuntimeException();
        }
        A0Y[6] = "QeKmRdkmErMZReeQj8";
        if (i == i2) {
            A0J(c1446Wk);
            return;
        }
        if (this.A0T.isEmpty()) {
            return;
        }
        C1446Wk c1446WkPeek = this.A0T.peek();
        if (A0Y[6].length() != 17) {
            A0Y[1] = "g8UpS1NyodMZ5eBXtPatKQwsoR";
            c1446WkPeek.A08(c1446Wk);
        } else {
            A0Y[5] = "mkv5is6F5Mu6y6USr0b4mkDGodGLaqlp";
            c1446WkPeek.A08(c1446Wk);
        }
    }

    private void A0J(C1446Wk c1446Wk) throws C08729d {
        DrmInitData drmInitDataA05;
        A0L(c1446Wk, this.A0K, this.A0J, this.A0W);
        if (this.A0L != null) {
            drmInitDataA05 = null;
        } else {
            List<C1445Wj> list = c1446Wk.A02;
            if (A0Y[3].length() != 6) {
                throw new RuntimeException();
            }
            String[] strArr = A0Y;
            strArr[2] = "YTpzURZBrt0";
            strArr[4] = "jDJUPBNch9x";
            drmInitDataA05 = A05(list);
        }
        if (drmInitDataA05 != null) {
            int size = this.A0K.size();
            for (int i = 0; i < size; i++) {
                this.A0K.valueAt(i).A06(drmInitDataA05);
            }
        }
        if (this.A0A != C.TIME_UNSET) {
            int size2 = this.A0K.size();
            for (int i2 = 0; i2 < size2; i2++) {
                this.A0K.valueAt(i2).A05(this.A0A);
            }
            this.A0A = C.TIME_UNSET;
        }
    }

    private void A0K(C1446Wk c1446Wk) throws C08729d {
        HI.A06(this.A0N == null, A0A(532, 20, 12));
        DrmInitData drmInitDataA05 = this.A0L;
        if (drmInitDataA05 == null) {
            drmInitDataA05 = A05(c1446Wk.A02);
        }
        C1446Wk c1446WkA06 = c1446Wk.A06(C1.A0n);
        SparseArray<C7> sparseArray = new SparseArray<>();
        long jA01 = C.TIME_UNSET;
        int size = c1446WkA06.A02.size();
        for (int i = 0; i < size; i++) {
            C1445Wj c1445Wj = c1446WkA06.A02.get(i);
            if (((C1) c1445Wj).A00 == C1.A1N) {
                Pair<Integer, C7> pairA03 = A03(c1445Wj.A00);
                sparseArray.put(((Integer) pairA03.first).intValue(), (C7) pairA03.second);
            } else if (((C1) c1445Wj).A00 == C1.A0g) {
                jA01 = A01(c1445Wj.A00);
            }
        }
        SparseArray sparseArray2 = new SparseArray();
        int size2 = c1446Wk.A01.size();
        for (int i2 = 0; i2 < size2; i2++) {
            C1446Wk c1446Wk2 = c1446Wk.A01.get(i2);
            if (((C1) c1446Wk2).A00 == C1.A1M) {
                CM cmA0C = C6.A0C(c1446Wk2, c1446Wk.A07(C1.A0o), jA01, drmInitDataA05, (this.A0J & 16) != 0, false);
                if (cmA0C != null) {
                    sparseArray2.put(cmA0C.A00, cmA0C);
                }
            }
        }
        int size3 = sparseArray2.size();
        if (this.A0K.size() != 0) {
            HI.A04(this.A0K.size() == size3);
            for (int i3 = 0; i3 < size3; i3++) {
                CM cm = (CM) sparseArray2.valueAt(i3);
                this.A0K.get(cm.A00).A07(cm, A06(sparseArray, cm.A00));
            }
            return;
        }
        for (int i4 = 0; i4 < size3; i4++) {
            CM cm2 = (CM) sparseArray2.valueAt(i4);
            CD cd = new CD(this.A0C.AFx(i4, cm2.A03));
            cd.A07(cm2, A06(sparseArray, cm2.A00));
            this.A0K.put(cm2.A00, cd);
            this.A08 = Math.max(this.A08, cm2.A04);
        }
        A0C();
        this.A0C.A5T();
    }

    public static void A0L(C1446Wk c1446Wk, SparseArray<CD> sparseArray, int i, byte[] bArr) throws C08729d {
        int size = c1446Wk.A01.size();
        for (int i2 = 0; i2 < size; i2++) {
            C1446Wk c1446Wk2 = c1446Wk.A01.get(i2);
            if (((C1) c1446Wk2).A00 == C1.A1L) {
                A0M(c1446Wk2, sparseArray, i, bArr);
            }
        }
    }

    public static void A0M(C1446Wk c1446Wk, SparseArray<CD> sparseArray, int i, byte[] bArr) throws C08729d {
        CD cdA09 = A09(c1446Wk.A07(C1.A1J).A00, sparseArray);
        if (cdA09 == null) {
            return;
        }
        CO co = cdA09.A07;
        long jA02 = co.A06;
        cdA09.A04();
        if (c1446Wk.A07(C1.A1I) != null && (i & 2) == 0) {
            jA02 = A02(c1446Wk.A07(C1.A1I).A00);
        }
        A0N(c1446Wk, cdA09, jA02, i);
        CN cnA00 = cdA09.A05.A00(co.A07.A02);
        C1445Wj c1445WjA07 = c1446Wk.A07(C1.A0v);
        if (c1445WjA07 != null) {
            A0P(cnA00, c1445WjA07.A00, co);
        }
        C1445Wj c1445WjA072 = c1446Wk.A07(C1.A0u);
        if (c1445WjA072 != null) {
            A0S(c1445WjA072.A00, co);
        }
        C1445Wj c1445WjA073 = c1446Wk.A07(C1.A11);
        if (c1445WjA073 != null) {
            A0T(c1445WjA073.A00, co);
        }
        C1445Wj c1445WjA074 = c1446Wk.A07(C1.A0y);
        C1445Wj c1445WjA075 = c1446Wk.A07(C1.A12);
        if (c1445WjA074 != null && c1445WjA075 != null) {
            A0V(c1445WjA074.A00, c1445WjA075.A00, cnA00 != null ? cnA00.A02 : null, co);
        }
        int size = c1446Wk.A02.size();
        for (int i2 = 0; i2 < size; i2++) {
            C1445Wj c1445Wj = c1446Wk.A02.get(i2);
            if (A0Y[7].length() != 3) {
                throw new RuntimeException();
            }
            A0Y[7] = "89j";
            C1445Wj c1445Wj2 = c1445Wj;
            if (((C1) c1445Wj2).A00 == C1.A1R) {
                A0U(c1445Wj2.A00, co, bArr);
            }
        }
    }

    public static void A0N(C1446Wk c1446Wk, CD cd, long j, int i) {
        int i2 = 0;
        int i3 = 0;
        List<C1445Wj> list = c1446Wk.A02;
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            C1445Wj c1445Wj = list.get(i4);
            if (((C1) c1445Wj).A00 == C1.A1O) {
                C1062Hh c1062Hh = c1445Wj.A00;
                c1062Hh.A0Y(12);
                int iA0H = c1062Hh.A0H();
                if (iA0H > 0) {
                    i3 += iA0H;
                    i2++;
                }
            }
        }
        cd.A02 = 0;
        cd.A00 = 0;
        cd.A01 = 0;
        cd.A07.A03(i2, i3);
        int i5 = 0;
        int iA00 = 0;
        for (int i6 = 0; i6 < size; i6++) {
            C1445Wj c1445Wj2 = list.get(i6);
            if (((C1) c1445Wj2).A00 == C1.A1O) {
                iA00 = A00(cd, i5, j, i, c1445Wj2.A00, iA00);
                i5++;
            }
        }
    }

    private void A0O(C1445Wj c1445Wj, long j) throws C08729d {
        if (!this.A0T.isEmpty()) {
            this.A0T.peek().A09(c1445Wj);
            return;
        }
        if (((C1) c1445Wj).A00 != C1.A13) {
            if (((C1) c1445Wj).A00 == C1.A0Q) {
                A0Q(c1445Wj.A00);
            }
        } else {
            Pair<Long, X5> pairA04 = A04(c1445Wj.A00, j);
            this.A0B = ((Long) pairA04.first).longValue();
            this.A0C.AEx((InterfaceC0927Bj) pairA04.second);
            this.A0F = true;
        }
    }

    public static void A0P(CN cn, C1062Hh c1062Hh, CO co) throws C08729d {
        int i = cn.A00;
        c1062Hh.A0Y(8);
        if ((C1.A00(c1062Hh.A08()) & 1) == 1) {
            c1062Hh.A0Z(8);
        }
        int iA0E = c1062Hh.A0E();
        int iA0H = c1062Hh.A0H();
        if (iA0H != co.A00) {
            throw new C08729d(A0A(290, 17, 20) + iA0H + A0A(0, 2, 62) + co.A00);
        }
        int i2 = 0;
        if (iA0E == 0) {
            boolean[] zArr = co.A0H;
            for (int i3 = 0; i3 < iA0H; i3++) {
                int iA0E2 = c1062Hh.A0E();
                i2 += iA0E2;
                zArr[i3] = iA0E2 > i;
            }
        } else {
            i2 = 0 + (iA0E * iA0H);
            Arrays.fill(co.A0H, 0, iA0H, iA0E > i);
        }
        co.A02(i2);
        if (A0Y[6].length() == 17) {
            throw new RuntimeException();
        }
        String[] strArr = A0Y;
        strArr[2] = "tC3WLCXP6DZ";
        strArr[4] = "0Zxl8CEli3D";
    }

    private void A0Q(C1062Hh c1062Hh) {
        InterfaceC0930Bm[] interfaceC0930BmArr = this.A0I;
        if (interfaceC0930BmArr == null || interfaceC0930BmArr.length == 0) {
            return;
        }
        c1062Hh.A0Y(12);
        int iA04 = c1062Hh.A04();
        c1062Hh.A0Q();
        c1062Hh.A0Q();
        long jA0F = C1078Hx.A0F(c1062Hh.A0M(), 1000000L, c1062Hh.A0M());
        for (InterfaceC0930Bm interfaceC0930Bm : this.A0I) {
            c1062Hh.A0Y(12);
            interfaceC0930Bm.AEr(c1062Hh, iA04);
        }
        long j = this.A0B;
        if (j == C.TIME_UNSET) {
            this.A0U.addLast(new CC(jA0F, iA04));
            this.A03 += iA04;
            return;
        }
        long jA06 = j + jA0F;
        C1074Ht c1074Ht = this.A0S;
        if (c1074Ht != null) {
            jA06 = c1074Ht.A06(jA06);
        }
        for (InterfaceC0930Bm interfaceC0930Bm2 : this.A0I) {
            interfaceC0930Bm2.AEs(jA06, 1, iA04, 0, null);
        }
    }

    public static void A0R(C1062Hh c1062Hh, int i, CO co) throws C08729d {
        c1062Hh.A0Y(i + 8);
        int iA00 = C1.A00(c1062Hh.A08());
        if ((iA00 & 1) != 0) {
            throw new C08729d(A0A(381, 56, 66));
        }
        boolean z = (iA00 & 2) != 0;
        int iA0H = c1062Hh.A0H();
        if (iA0H != co.A00) {
            throw new C08729d(A0A(290, 17, 20) + iA0H + A0A(0, 2, 62) + co.A00);
        }
        Arrays.fill(co.A0H, 0, iA0H, z);
        co.A02(c1062Hh.A04());
        co.A05(c1062Hh);
    }

    public static void A0S(C1062Hh c1062Hh, CO co) throws C08729d {
        c1062Hh.A0Y(8);
        int iA08 = c1062Hh.A08();
        if ((C1.A00(iA08) & 1) == 1) {
            c1062Hh.A0Z(8);
        }
        int iA0H = c1062Hh.A0H();
        if (iA0H != 1) {
            throw new C08729d(A0A(552, 29, 63) + iA0H);
        }
        co.A04 += C1.A01(iA08) == 0 ? c1062Hh.A0M() : c1062Hh.A0N();
    }

    public static void A0T(C1062Hh c1062Hh, CO co) throws C08729d {
        A0R(c1062Hh, 0, co);
    }

    public static void A0U(C1062Hh c1062Hh, CO co, byte[] bArr) throws C08729d {
        c1062Hh.A0Y(8);
        c1062Hh.A0c(bArr, 0, 16);
        if (Arrays.equals(bArr, A0c)) {
            A0R(c1062Hh, 16, co);
        }
    }

    public static void A0V(C1062Hh c1062Hh, C1062Hh c1062Hh2, String str, CO co) throws C08729d {
        c1062Hh.A0Y(8);
        int iA08 = c1062Hh.A08();
        int iA082 = c1062Hh.A08();
        int i = A0a;
        if (iA082 != i) {
            return;
        }
        if (C1.A01(iA08) == 1) {
            c1062Hh.A0Z(4);
        }
        if (c1062Hh.A08() != 1) {
            throw new C08729d(A0A(50, 39, 80));
        }
        c1062Hh2.A0Y(8);
        int iA083 = c1062Hh2.A08();
        if (c1062Hh2.A08() != i) {
            return;
        }
        int iA01 = C1.A01(iA083);
        if (iA01 == 1) {
            if (c1062Hh2.A0M() == 0) {
                throw new C08729d(A0A(609, 55, 11));
            }
        } else if (iA01 >= 2) {
            c1062Hh2.A0Z(4);
        }
        if (c1062Hh2.A0M() != 1) {
            throw new C08729d(A0A(89, 39, 85));
        }
        c1062Hh2.A0Z(1);
        int iA0E = c1062Hh2.A0E();
        int i2 = (iA0E & PsExtractor.VIDEO_STREAM_MASK) >> 4;
        int i3 = iA0E & 15;
        boolean z = c1062Hh2.A0E() == 1;
        if (z) {
            int iA0E2 = c1062Hh2.A0E();
            byte[] bArr = new byte[16];
            c1062Hh2.A0c(bArr, 0, bArr.length);
            byte[] bArr2 = null;
            if (z && iA0E2 == 0) {
                int iA0E3 = c1062Hh2.A0E();
                bArr2 = new byte[iA0E3];
                c1062Hh2.A0c(bArr2, 0, iA0E3);
            }
            co.A0A = true;
            co.A08 = new CN(z, str, iA0E2, bArr, i2, i3, bArr2);
        }
    }

    public static boolean A0W(int i) {
        return i == C1.A0k || i == C1.A1M || i == C1.A0e || i == C1.A0i || i == C1.A17 || i == C1.A0j || i == C1.A1L || i == C1.A0n || i == C1.A0O;
    }

    public static boolean A0X(int i) {
        if (i != C1.A0W && i != C1.A0d && i != C1.A0o && i != C1.A13 && i != C1.A1B) {
            int i2 = C1.A1I;
            if (A0Y[6].length() != 17) {
                A0Y[0] = "0bfDB";
                if (i != i2 && i != C1.A1J && i != C1.A1K && i != C1.A1N && i != C1.A1O && i != C1.A0s && i != C1.A0v) {
                    int i3 = C1.A0u;
                    if (A0Y[1].length() != 5) {
                        A0Y[5] = "GM1eDi9JpLsxcWxFcWWsCjSZthCJdr4f";
                        if (i != i3 && i != C1.A11 && i != C1.A1R && i != C1.A0y && i != C1.A12 && i != C1.A0P) {
                            int i4 = C1.A0g;
                            if (A0Y[3].length() == 6) {
                                A0Y[7] = "Eu3";
                                if (i != i4 && i != C1.A0Q) {
                                    return false;
                                }
                            }
                        }
                    }
                }
            }
            throw new RuntimeException();
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x007c, code lost:
    
        if (r2 >= r8) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x007e, code lost:
    
        r2 = r11.A7a() - ((long) r10.A00);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x008a, code lost:
    
        if (r10.A01 != com.facebook.ads.redexgen.X.C1.A0j) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x008c, code lost:
    
        r9 = r10.A0K.size();
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0093, code lost:
    
        if (r8 >= r9) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0095, code lost:
    
        r0 = r10.A0K.valueAt(r8).A07;
        r0.A03 = r2;
        r0.A04 = r2;
        r0.A05 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00af, code lost:
    
        if (com.facebook.ads.redexgen.X.C1440We.A0Y[3].length() == 6) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00b1, code lost:
    
        r7 = com.facebook.ads.redexgen.X.C1440We.A0Y;
        r7[2] = "tKeeSnEBB5V";
        r7[4] = "1ppH9MP2kpM";
        r8 = r8 + 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00c0, code lost:
    
        com.facebook.ads.redexgen.X.C1440We.A0Y[0] = "GrBVN";
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00d4, code lost:
    
        if (r2 >= r8) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x012c, code lost:
    
        if (r10.A01 != com.facebook.ads.redexgen.X.C1.A0c) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x012e, code lost:
    
        r10.A0D = null;
        r10.A09 = r10.A07 + r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0137, code lost:
    
        if (r10.A0F != false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0139, code lost:
    
        r10.A0C.AEx(new com.facebook.ads.redexgen.X.X0(r10.A08, r2));
        r10.A0F = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0147, code lost:
    
        r10.A02 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x014a, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0159, code lost:
    
        throw new com.facebook.ads.redexgen.X.C08729d(A0A(2, 48, 114));
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0163, code lost:
    
        if (A0X(r10.A01) == false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0165, code lost:
    
        r3 = r10.A00;
        r2 = com.facebook.ads.redexgen.X.C1440We.A0Y;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0177, code lost:
    
        if (r2[2].length() == r2[4].length()) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x017f, code lost:
    
        com.facebook.ads.redexgen.X.C1440We.A0Y[7] = "6Yw";
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0186, code lost:
    
        if (r3 != 8) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0188, code lost:
    
        r2 = r10.A07;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x018c, code lost:
    
        if (r2 > 2147483647L) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x018e, code lost:
    
        r10.A0E = new com.facebook.ads.redexgen.X.C1062Hh((int) r2);
        java.lang.System.arraycopy(r10.A0O.A00, 0, r10.A0E.A00, 0, 8);
        r10.A02 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x01a8, code lost:
    
        if (r10.A07 > 2147483647L) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01aa, code lost:
    
        r10.A0E = null;
        r10.A02 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x01b5, code lost:
    
        if (A0W(r10.A01) == false) goto L50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x01b7, code lost:
    
        r5 = (r11.A7a() + r10.A07) - 8;
        r10.A0T.push(new com.facebook.ads.redexgen.X.C1446Wk(r10.A01, r5));
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x01d4, code lost:
    
        if (r10.A07 != r10.A00) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01d6, code lost:
    
        A0F(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01d9, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x01da, code lost:
    
        A0B();
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01ed, code lost:
    
        throw new com.facebook.ads.redexgen.X.C08729d(A0A(241, 49, 53));
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01fd, code lost:
    
        throw new com.facebook.ads.redexgen.X.C08729d(A0A(com.facebook.internal.FacebookRequestErrorClassification.EC_INVALID_TOKEN, 51, 24));
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x020c, code lost:
    
        throw new com.facebook.ads.redexgen.X.C08729d(A0A(479, 53, 2));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean A0Y(com.facebook.ads.redexgen.X.InterfaceC0921Bb r11) throws java.lang.InterruptedException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 525
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1440We.A0Y(com.facebook.ads.redexgen.X.Bb):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0107 A[PHI: r0 r1 r5 r7 r8
      0x0107: PHI (r0v80 com.facebook.ads.redexgen.X.Ht) = (r0v9 com.facebook.ads.redexgen.X.Ht), (r0v84 com.facebook.ads.redexgen.X.Ht) binds: [B:62:0x020c, B:36:0x0105] A[DONT_GENERATE, DONT_INLINE]
      0x0107: PHI (r1v6 long) = (r1v4 long), (r1v10 long) binds: [B:62:0x020c, B:36:0x0105] A[DONT_GENERATE, DONT_INLINE]
      0x0107: PHI (r5v3 com.facebook.ads.redexgen.X.CM) = (r5v0 com.facebook.ads.redexgen.X.CM), (r5v4 com.facebook.ads.redexgen.X.CM) binds: [B:62:0x020c, B:36:0x0105] A[DONT_GENERATE, DONT_INLINE]
      0x0107: PHI (r7v3 com.facebook.ads.redexgen.X.Bm) = (r7v0 com.facebook.ads.redexgen.X.Bm), (r7v4 com.facebook.ads.redexgen.X.Bm) binds: [B:62:0x020c, B:36:0x0105] A[DONT_GENERATE, DONT_INLINE]
      0x0107: PHI (r8v3 int) = (r8v0 int), (r8v4 int) binds: [B:62:0x020c, B:36:0x0105] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01ec  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean A0Z(com.facebook.ads.redexgen.X.InterfaceC0921Bb r19) throws java.lang.InterruptedException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 605
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1440We.A0Z(com.facebook.ads.redexgen.X.Bb):boolean");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0920Ba
    public final void A8e(InterfaceC0922Bc interfaceC0922Bc) {
        this.A0C = interfaceC0922Bc;
        CM cm = this.A0N;
        if (cm != null) {
            CD cd = new CD(interfaceC0922Bc.AFx(0, cm.A03));
            cd.A07(this.A0N, new C7(0, 0, 0, 0));
            this.A0K.put(0, cd);
            A0C();
            this.A0C.A5T();
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0920Ba
    public final int AE9(InterfaceC0921Bb interfaceC0921Bb, C0925Bh c0925Bh) throws InterruptedException, IOException {
        while (true) {
            int i = this.A02;
            if (A0Y[6].length() == 17) {
                throw new RuntimeException();
            }
            A0Y[6] = "Adcvl3OLLWBEEjCvRjB7l1tHvWvuGk";
            switch (i) {
                case 0:
                    if (!A0Y(interfaceC0921Bb)) {
                        return -1;
                    }
                    break;
                    break;
                case 1:
                    A0G(interfaceC0921Bb);
                    break;
                case 2:
                    A0H(interfaceC0921Bb);
                    break;
                default:
                    if (A0Z(interfaceC0921Bb)) {
                        return 0;
                    }
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0920Ba
    public final void AEw(long j, long j2) {
        int size = this.A0K.size();
        for (int i = 0; i < size; i++) {
            this.A0K.valueAt(i).A04();
        }
        this.A0U.clear();
        this.A03 = 0;
        this.A0A = j2;
        this.A0T.clear();
        A0B();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0920Ba
    public final boolean AFg(InterfaceC0921Bb interfaceC0921Bb) throws InterruptedException, IOException {
        return CK.A03(interfaceC0921Bb);
    }
}
