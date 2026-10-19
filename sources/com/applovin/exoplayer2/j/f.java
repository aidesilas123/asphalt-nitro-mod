package com.applovin.exoplayer2.j;

import android.util.Pair;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.as;
import com.applovin.exoplayer2.at;
import com.applovin.exoplayer2.ba;
import com.applovin.exoplayer2.h.ac;
import com.applovin.exoplayer2.h.ad;
import com.applovin.exoplayer2.h.p;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.u;
import com.applovin.exoplayer2.z1;

/* JADX INFO: loaded from: classes.dex */
public abstract class f extends j {

    @Nullable
    private a UU;

    public static final class a {
        private final int UV;
        private final String[] UW;
        private final int[] UX;
        private final ad[] UY;
        private final int[] UZ;
        private final int[][][] Va;
        private final ad Vb;

        a(String[] strArr, int[] iArr, ad[] adVarArr, int[] iArr2, int[][][] iArr3, ad adVar) {
            this.UW = strArr;
            this.UX = iArr;
            this.UY = adVarArr;
            this.Va = iArr3;
            this.UZ = iArr2;
            this.Vb = adVar;
            this.UV = iArr.length;
        }

        public int eS(int i) {
            return this.UX[i];
        }

        public ad eT(int i) {
            return this.UY[i];
        }

        public int np() {
            return this.UV;
        }
    }

    private static int a(as[] asVarArr, ac acVar, int[] iArr, boolean z) throws com.applovin.exoplayer2.p {
        int length = asVarArr.length;
        int i = 0;
        boolean z2 = true;
        for (int i2 = 0; i2 < asVarArr.length; i2++) {
            as asVar = asVarArr[i2];
            int iMax = 0;
            for (int i3 = 0; i3 < acVar.fR; i3++) {
                iMax = Math.max(iMax, z1.c(asVar.b(acVar.dZ(i3))));
            }
            boolean z3 = iArr[i2] == 0;
            if (iMax > i || (iMax == i && z && !z2 && z3)) {
                length = i2;
                z2 = z3;
                i = iMax;
            }
        }
        return length;
    }

    private static int[] a(as asVar, ac acVar) throws com.applovin.exoplayer2.p {
        int[] iArr = new int[acVar.fR];
        for (int i = 0; i < acVar.fR; i++) {
            iArr[i] = asVar.b(acVar.dZ(i));
        }
        return iArr;
    }

    private static int[] a(as[] asVarArr) throws com.applovin.exoplayer2.p {
        int length = asVarArr.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = asVarArr[i].Z();
        }
        return iArr;
    }

    @Override // com.applovin.exoplayer2.j.j
    public final void J(@Nullable Object obj) {
        this.UU = (a) obj;
    }

    protected abstract Pair<at[], d[]> a(a aVar, int[][][] iArr, int[] iArr2, p.a aVar2, ba baVar) throws com.applovin.exoplayer2.p;

    @Override // com.applovin.exoplayer2.j.j
    public final k a(as[] asVarArr, ad adVar, p.a aVar, ba baVar) throws com.applovin.exoplayer2.p {
        int[] iArr = new int[asVarArr.length + 1];
        int length = asVarArr.length + 1;
        ac[][] acVarArr = new ac[length][];
        int[][][] iArr2 = new int[asVarArr.length + 1][][];
        for (int i = 0; i < length; i++) {
            int i2 = adVar.fR;
            acVarArr[i] = new ac[i2];
            iArr2[i] = new int[i2][];
        }
        int[] iArrA = a(asVarArr);
        for (int i3 = 0; i3 < adVar.fR; i3++) {
            ac acVarEb = adVar.eb(i3);
            int iA = a(asVarArr, acVarEb, iArr, u.ba(acVarEb.dZ(0).dz) == 5);
            int[] iArrA2 = iA == asVarArr.length ? new int[acVarEb.fR] : a(asVarArr[iA], acVarEb);
            int i4 = iArr[iA];
            acVarArr[iA][i4] = acVarEb;
            iArr2[iA][i4] = iArrA2;
            iArr[iA] = iArr[iA] + 1;
        }
        ad[] adVarArr = new ad[asVarArr.length];
        String[] strArr = new String[asVarArr.length];
        int[] iArr3 = new int[asVarArr.length];
        for (int i5 = 0; i5 < asVarArr.length; i5++) {
            int i6 = iArr[i5];
            adVarArr[i5] = new ad((ac[]) ai.e(acVarArr[i5], i6));
            iArr2[i5] = (int[][]) ai.e(iArr2[i5], i6);
            strArr[i5] = asVarArr[i5].getName();
            iArr3[i5] = asVarArr[i5].M();
        }
        a aVar2 = new a(strArr, iArr3, adVarArr, iArrA, iArr2, new ad((ac[]) ai.e(acVarArr[asVarArr.length], iArr[asVarArr.length])));
        Pair<at[], d[]> pairA = a(aVar2, iArr2, iArrA, aVar, baVar);
        return new k((at[]) pairA.first, (d[]) pairA.second, aVar2);
    }
}
