package com.applovin.exoplayer2.j;

import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.ba;
import com.applovin.exoplayer2.common.a.ad;
import com.applovin.exoplayer2.common.a.s;
import com.applovin.exoplayer2.h.ac;
import com.applovin.exoplayer2.h.p;
import com.applovin.exoplayer2.j.d;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class a extends com.applovin.exoplayer2.j.b {
    private final long TO;
    private final long TP;
    private final long TQ;
    private final float TR;
    private final float TS;
    private final s<C0048a> TT;
    private float TU;
    private int TV;
    private long TW;

    @Nullable
    private com.applovin.exoplayer2.h.b.b TX;
    private final com.applovin.exoplayer2.k.d bO;
    private final com.applovin.exoplayer2.l.d bR;
    private int tA;

    /* JADX INFO: renamed from: com.applovin.exoplayer2.j.a$a, reason: collision with other inner class name */
    public static final class C0048a {
        public final long TY;
        public final long TZ;

        public C0048a(long j, long j2) {
            this.TY = j;
            this.TZ = j2;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0048a)) {
                return false;
            }
            C0048a c0048a = (C0048a) obj;
            return this.TY == c0048a.TY && this.TZ == c0048a.TZ;
        }

        public int hashCode() {
            return (((int) this.TY) * 31) + ((int) this.TZ);
        }
    }

    public static class b implements d.b {
        private final float TR;
        private final float TS;
        private final int Ua;
        private final int Ub;
        private final int Uc;
        private final com.applovin.exoplayer2.l.d bR;

        public b() {
            this(10000, 25000, 25000, 0.7f, 0.75f, com.applovin.exoplayer2.l.d.abJ);
        }

        public b(int i, int i2, int i3, float f2, float f3, com.applovin.exoplayer2.l.d dVar) {
            this.Ua = i;
            this.Ub = i2;
            this.Uc = i3;
            this.TR = f2;
            this.TS = f3;
            this.bR = dVar;
        }

        protected a a(ac acVar, int[] iArr, int i, com.applovin.exoplayer2.k.d dVar, s<C0048a> sVar) {
            return new a(acVar, iArr, i, dVar, this.Ua, this.Ub, this.Uc, this.TR, this.TS, sVar, this.bR);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.applovin.exoplayer2.j.d.b
        public final d[] a(d.a[] aVarArr, com.applovin.exoplayer2.k.d dVar, p.a aVar, ba baVar) {
            s sVarA = a.a(aVarArr);
            d[] dVarArr = new d[aVarArr.length];
            for (int i = 0; i < aVarArr.length; i++) {
                d.a aVar2 = aVarArr[i];
                if (aVar2 != null) {
                    int[] iArr = aVar2.Ue;
                    if (iArr.length != 0) {
                        dVarArr[i] = iArr.length == 1 ? new e(aVar2.Ud, iArr[0], aVar2.bs) : a(aVar2.Ud, iArr, aVar2.bs, dVar, (s) sVarA.get(i));
                    }
                }
            }
            return dVarArr;
        }
    }

    protected a(ac acVar, int[] iArr, int i, com.applovin.exoplayer2.k.d dVar, long j, long j2, long j3, float f2, float f3, List<C0048a> list, com.applovin.exoplayer2.l.d dVar2) {
        super(acVar, iArr, i);
        if (j3 < j) {
            com.applovin.exoplayer2.l.q.h("AdaptiveTrackSelection", "Adjusting minDurationToRetainAfterDiscardMs to be at least minDurationForQualityIncreaseMs");
            j3 = j;
        }
        this.bO = dVar;
        this.TO = j * 1000;
        this.TP = j2 * 1000;
        this.TQ = j3 * 1000;
        this.TR = f2;
        this.TS = f3;
        this.TT = s.d(list);
        this.bR = dVar2;
        this.TU = 1.0f;
        this.tA = 0;
        this.TW = C.TIME_UNSET;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static s<s<C0048a>> a(d.a[] aVarArr) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < aVarArr.length; i++) {
            if (aVarArr[i] == null || aVarArr[i].Ue.length <= 1) {
                arrayList.add(null);
            } else {
                s.a aVarGc = s.gc();
                aVarGc.t(new C0048a(0L, 0L));
                arrayList.add(aVarGc);
            }
        }
        long[][] jArrB = b(aVarArr);
        int[] iArr = new int[jArrB.length];
        long[] jArr = new long[jArrB.length];
        for (int i2 = 0; i2 < jArrB.length; i2++) {
            jArr[i2] = jArrB[i2].length == 0 ? 0L : jArrB[i2][0];
        }
        a(arrayList, jArr);
        s<Integer> sVarA = a(jArrB);
        for (int i3 = 0; i3 < sVarA.size(); i3++) {
            int iIntValue = sVarA.get(i3).intValue();
            int i4 = iArr[iIntValue] + 1;
            iArr[iIntValue] = i4;
            jArr[iIntValue] = jArrB[iIntValue][i4];
            a(arrayList, jArr);
        }
        for (int i5 = 0; i5 < aVarArr.length; i5++) {
            if (arrayList.get(i5) != null) {
                jArr[i5] = jArr[i5] * 2;
            }
        }
        a(arrayList, jArr);
        s.a aVarGc2 = s.gc();
        for (int i6 = 0; i6 < arrayList.size(); i6++) {
            s.a aVar = (s.a) arrayList.get(i6);
            aVarGc2.t(aVar == null ? s.ga() : aVar.gd());
        }
        return aVarGc2.gd();
    }

    private static s<Integer> a(long[][] jArr) {
        com.applovin.exoplayer2.common.a.ac acVarGL = ad.gI().gM().gL();
        for (int i = 0; i < jArr.length; i++) {
            if (jArr[i].length > 1) {
                int length = jArr[i].length;
                double[] dArr = new double[length];
                int i2 = 0;
                while (true) {
                    double dLog = 0.0d;
                    if (i2 >= jArr[i].length) {
                        break;
                    }
                    if (jArr[i][i2] != -1) {
                        dLog = Math.log(jArr[i][i2]);
                    }
                    dArr[i2] = dLog;
                    i2++;
                }
                int i3 = length - 1;
                double d2 = dArr[i3] - dArr[0];
                int i4 = 0;
                while (i4 < i3) {
                    double d3 = dArr[i4];
                    i4++;
                    acVarGL.c(Double.valueOf(d2 == 0.0d ? 1.0d : (((d3 + dArr[i4]) * 0.5d) - dArr[0]) / d2), Integer.valueOf(i));
                }
            }
        }
        return s.d(acVarGL.values());
    }

    private static void a(List<s.a<C0048a>> list, long[] jArr) {
        long j = 0;
        for (long j2 : jArr) {
            j += j2;
        }
        for (int i = 0; i < list.size(); i++) {
            s.a<C0048a> aVar = list.get(i);
            if (aVar != null) {
                aVar.t(new C0048a(j, jArr[i]));
            }
        }
    }

    private static long[][] b(d.a[] aVarArr) {
        long[][] jArr = new long[aVarArr.length][];
        for (int i = 0; i < aVarArr.length; i++) {
            d.a aVar = aVarArr[i];
            if (aVar == null) {
                jArr[i] = new long[0];
            } else {
                jArr[i] = new long[aVar.Ue.length];
                int i2 = 0;
                while (true) {
                    if (i2 >= aVar.Ue.length) {
                        break;
                    }
                    jArr[i][i2] = aVar.Ud.dZ(r5[i2]).dv;
                    i2++;
                }
                Arrays.sort(jArr[i]);
            }
        }
        return jArr;
    }

    @Override // com.applovin.exoplayer2.j.b, com.applovin.exoplayer2.j.d
    @CallSuper
    public void X() {
        this.TX = null;
    }

    @Override // com.applovin.exoplayer2.j.b, com.applovin.exoplayer2.j.d
    @CallSuper
    public void enable() {
        this.TW = C.TIME_UNSET;
        this.TX = null;
    }

    @Override // com.applovin.exoplayer2.j.d
    public int ne() {
        return this.TV;
    }

    @Override // com.applovin.exoplayer2.j.b, com.applovin.exoplayer2.j.d
    public void v(float f2) {
        this.TU = f2;
    }
}
