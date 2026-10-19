package com.applovin.exoplayer2;

import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.ab;
import com.applovin.exoplayer2.ba;
import com.applovin.exoplayer2.common.a.s;
import com.applovin.exoplayer2.g;
import com.applovin.exoplayer2.h.a.a;
import com.mbridge.msdk.playercommon.exoplayer2.C;

/* JADX INFO: loaded from: classes.dex */
public abstract class ba implements g {
    public static final ba iw = new ba() { // from class: com.applovin.exoplayer2.ba.1
        @Override // com.applovin.exoplayer2.ba
        public a a(int i, a aVar, boolean z) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.applovin.exoplayer2.ba
        public c a(int i, c cVar, long j) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.applovin.exoplayer2.ba
        public Object b(int i) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.applovin.exoplayer2.ba
        public int c(Object obj) {
            return -1;
        }

        @Override // com.applovin.exoplayer2.ba
        public int cP() {
            return 0;
        }

        @Override // com.applovin.exoplayer2.ba
        public int cQ() {
            return 0;
        }
    };
    public static final g.a<ba> br = new g.a() { // from class: com.applovin.exoplayer2.q0
        @Override // com.applovin.exoplayer2.g.a
        public final g fromBundle(Bundle bundle) {
            return ba.q(bundle);
        }
    };

    public static final class a implements g {
        public static final g.a<a> br = new g.a() { // from class: com.applovin.exoplayer2.r0
            @Override // com.applovin.exoplayer2.g.a
            public final g fromBundle(Bundle bundle) {
                return ba.a.r(bundle);
            }
        };
        public int cN;

        @Nullable
        public Object ch;
        public long fH;
        private com.applovin.exoplayer2.h.a.a iA = com.applovin.exoplayer2.h.a.a.NI;

        @Nullable
        public Object ix;
        public long iy;
        public boolean iz;

        /* JADX INFO: Access modifiers changed from: private */
        public static a r(Bundle bundle) {
            int i = bundle.getInt(t(0), 0);
            long j = bundle.getLong(t(1), C.TIME_UNSET);
            long j2 = bundle.getLong(t(2), 0L);
            boolean z = bundle.getBoolean(t(3));
            Bundle bundle2 = bundle.getBundle(t(4));
            com.applovin.exoplayer2.h.a.a aVar = bundle2 != null ? (com.applovin.exoplayer2.h.a.a) com.applovin.exoplayer2.h.a.a.br.fromBundle(bundle2) : com.applovin.exoplayer2.h.a.a.NI;
            a aVar2 = new a();
            aVar2.a(null, null, i, j, j2, aVar, z);
            return aVar2;
        }

        private static String t(int i) {
            return Integer.toString(i, 36);
        }

        public int A(long j) {
            return this.iA.x(j, this.fH);
        }

        public int B(long j) {
            return this.iA.y(j, this.fH);
        }

        public a a(@Nullable Object obj, @Nullable Object obj2, int i, long j, long j2) {
            return a(obj, obj2, i, j, j2, com.applovin.exoplayer2.h.a.a.NI, false);
        }

        public a a(@Nullable Object obj, @Nullable Object obj2, int i, long j, long j2, com.applovin.exoplayer2.h.a.a aVar, boolean z) {
            this.ix = obj;
            this.ch = obj2;
            this.cN = i;
            this.fH = j;
            this.iy = j2;
            this.iA = aVar;
            this.iz = z;
            return this;
        }

        public long al(int i) {
            return this.iA.ec(i).rJ;
        }

        public int am(int i) {
            return this.iA.ec(i).lM();
        }

        public boolean an(int i) {
            return !this.iA.ec(i).lO();
        }

        public int ao(int i) {
            return this.iA.ec(i).NQ;
        }

        public boolean ap(int i) {
            return this.iA.ec(i).NU;
        }

        public long aq(int i) {
            return this.iA.ec(i).NT;
        }

        public long dd() {
            return this.fH;
        }

        public long de() {
            return h.f(this.iy);
        }

        public long df() {
            return this.iy;
        }

        public int dg() {
            return this.iA.NK;
        }

        public int dh() {
            return this.iA.NO;
        }

        public long di() {
            return this.iA.NM;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !a.class.equals(obj.getClass())) {
                return false;
            }
            a aVar = (a) obj;
            return com.applovin.exoplayer2.l.ai.r(this.ix, aVar.ix) && com.applovin.exoplayer2.l.ai.r(this.ch, aVar.ch) && this.cN == aVar.cN && this.fH == aVar.fH && this.iy == aVar.iy && this.iz == aVar.iz && com.applovin.exoplayer2.l.ai.r(this.iA, aVar.iA);
        }

        public int h(int i, int i2) {
            return this.iA.ec(i).ed(i2);
        }

        public int hashCode() {
            Object obj = this.ix;
            int iHashCode = (217 + (obj == null ? 0 : obj.hashCode())) * 31;
            Object obj2 = this.ch;
            int iHashCode2 = (((iHashCode + (obj2 != null ? obj2.hashCode() : 0)) * 31) + this.cN) * 31;
            long j = this.fH;
            int i = (iHashCode2 + ((int) (j ^ (j >>> 32)))) * 31;
            long j2 = this.iy;
            return ((((i + ((int) (j2 ^ (j2 >>> 32)))) * 31) + (this.iz ? 1 : 0)) * 31) + this.iA.hashCode();
        }

        public long i(int i, int i2) {
            a.C0039a c0039aEc = this.iA.ec(i);
            return c0039aEc.NQ != -1 ? c0039aEc.tT[i2] : C.TIME_UNSET;
        }
    }

    public static final class b extends ba {
        private final com.applovin.exoplayer2.common.a.s<c> iB;
        private final com.applovin.exoplayer2.common.a.s<a> iC;
        private final int[] iD;
        private final int[] iE;

        public b(com.applovin.exoplayer2.common.a.s<c> sVar, com.applovin.exoplayer2.common.a.s<a> sVar2, int[] iArr) {
            com.applovin.exoplayer2.l.a.checkArgument(sVar.size() == iArr.length);
            this.iB = sVar;
            this.iC = sVar2;
            this.iD = iArr;
            this.iE = new int[iArr.length];
            for (int i = 0; i < iArr.length; i++) {
                this.iE[iArr[i]] = i;
            }
        }

        @Override // com.applovin.exoplayer2.ba
        public int a(int i, int i2, boolean z) {
            if (i2 == 1) {
                return i;
            }
            if (i != c(z)) {
                return z ? this.iD[this.iE[i] + 1] : i + 1;
            }
            if (i2 == 2) {
                return d(z);
            }
            return -1;
        }

        @Override // com.applovin.exoplayer2.ba
        public a a(int i, a aVar, boolean z) {
            a aVar2 = this.iC.get(i);
            aVar.a(aVar2.ix, aVar2.ch, aVar2.cN, aVar2.fH, aVar2.iy, aVar2.iA, aVar2.iz);
            return aVar;
        }

        @Override // com.applovin.exoplayer2.ba
        public c a(int i, c cVar, long j) {
            c cVar2 = this.iB.get(i);
            cVar.a(cVar2.ch, cVar2.gL, cVar2.iI, cVar2.iJ, cVar2.iK, cVar2.iL, cVar2.iM, cVar2.iN, cVar2.eb, cVar2.iP, cVar2.fH, cVar2.iQ, cVar2.iR, cVar2.iS);
            cVar.iz = cVar2.iz;
            return cVar;
        }

        @Override // com.applovin.exoplayer2.ba
        public int b(int i, int i2, boolean z) {
            if (i2 == 1) {
                return i;
            }
            if (i != d(z)) {
                return z ? this.iD[this.iE[i] - 1] : i - 1;
            }
            if (i2 == 2) {
                return c(z);
            }
            return -1;
        }

        @Override // com.applovin.exoplayer2.ba
        public Object b(int i) {
            throw new UnsupportedOperationException();
        }

        @Override // com.applovin.exoplayer2.ba
        public int c(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.applovin.exoplayer2.ba
        public int c(boolean z) {
            if (isEmpty()) {
                return -1;
            }
            return z ? this.iD[cP() - 1] : cP() - 1;
        }

        @Override // com.applovin.exoplayer2.ba
        public int cP() {
            return this.iB.size();
        }

        @Override // com.applovin.exoplayer2.ba
        public int cQ() {
            return this.iC.size();
        }

        @Override // com.applovin.exoplayer2.ba
        public int d(boolean z) {
            if (isEmpty()) {
                return -1;
            }
            if (z) {
                return this.iD[0];
            }
            return 0;
        }
    }

    public static final class c implements g {

        @Nullable
        public ab.e eb;

        @Nullable
        @Deprecated
        public Object er;
        public long fH;

        @Nullable
        public Object iI;
        public long iJ;
        public long iK;
        public long iL;
        public boolean iM;
        public boolean iN;

        @Deprecated
        public boolean iO;
        public long iP;
        public int iQ;
        public int iR;
        public long iS;
        public boolean iz;
        public static final Object iF = new Object();
        private static final Object iG = new Object();
        private static final ab iH = new ab.b().n("com.applovin.exoplayer2.Timeline").b(Uri.EMPTY).bV();
        public static final g.a<c> br = new g.a() { // from class: com.applovin.exoplayer2.s0
            @Override // com.applovin.exoplayer2.g.a
            public final g fromBundle(Bundle bundle) {
                return ba.c.s(bundle);
            }
        };
        public Object ch = iF;
        public ab gL = iH;

        /* JADX INFO: Access modifiers changed from: private */
        public static c s(Bundle bundle) {
            Bundle bundle2 = bundle.getBundle(t(1));
            ab abVar = bundle2 != null ? (ab) ab.br.fromBundle(bundle2) : null;
            long j = bundle.getLong(t(2), C.TIME_UNSET);
            long j2 = bundle.getLong(t(3), C.TIME_UNSET);
            long j3 = bundle.getLong(t(4), C.TIME_UNSET);
            boolean z = bundle.getBoolean(t(5), false);
            boolean z2 = bundle.getBoolean(t(6), false);
            Bundle bundle3 = bundle.getBundle(t(7));
            ab.e eVar = bundle3 != null ? (ab.e) ab.e.br.fromBundle(bundle3) : null;
            boolean z3 = bundle.getBoolean(t(8), false);
            long j4 = bundle.getLong(t(9), 0L);
            long j5 = bundle.getLong(t(10), C.TIME_UNSET);
            int i = bundle.getInt(t(11), 0);
            int i2 = bundle.getInt(t(12), 0);
            long j6 = bundle.getLong(t(13), 0L);
            c cVar = new c();
            cVar.a(iG, abVar, null, j, j2, j3, z, z2, eVar, j4, j5, i, i2, j6);
            cVar.iz = z3;
            return cVar;
        }

        private static String t(int i) {
            return Integer.toString(i, 36);
        }

        public c a(Object obj, @Nullable ab abVar, @Nullable Object obj2, long j, long j2, long j3, boolean z, boolean z2, @Nullable ab.e eVar, long j4, long j5, int i, int i2, long j6) {
            ab.f fVar;
            this.ch = obj;
            this.gL = abVar != null ? abVar : iH;
            this.er = (abVar == null || (fVar = abVar.ea) == null) ? null : fVar.er;
            this.iI = obj2;
            this.iJ = j;
            this.iK = j2;
            this.iL = j3;
            this.iM = z;
            this.iN = z2;
            this.iO = eVar != null;
            this.eb = eVar;
            this.iP = j4;
            this.fH = j5;
            this.iQ = i;
            this.iR = i2;
            this.iS = j6;
            this.iz = false;
            return this;
        }

        public long dj() {
            return h.f(this.iP);
        }

        public long dk() {
            return this.iP;
        }

        public long dl() {
            return h.f(this.fH);
        }

        public long dm() {
            return com.applovin.exoplayer2.l.ai.bv(this.iL);
        }

        public boolean dn() {
            com.applovin.exoplayer2.l.a.checkState(this.iO == (this.eb != null));
            return this.eb != null;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !c.class.equals(obj.getClass())) {
                return false;
            }
            c cVar = (c) obj;
            return com.applovin.exoplayer2.l.ai.r(this.ch, cVar.ch) && com.applovin.exoplayer2.l.ai.r(this.gL, cVar.gL) && com.applovin.exoplayer2.l.ai.r(this.iI, cVar.iI) && com.applovin.exoplayer2.l.ai.r(this.eb, cVar.eb) && this.iJ == cVar.iJ && this.iK == cVar.iK && this.iL == cVar.iL && this.iM == cVar.iM && this.iN == cVar.iN && this.iz == cVar.iz && this.iP == cVar.iP && this.fH == cVar.fH && this.iQ == cVar.iQ && this.iR == cVar.iR && this.iS == cVar.iS;
        }

        public int hashCode() {
            int iHashCode = (((217 + this.ch.hashCode()) * 31) + this.gL.hashCode()) * 31;
            Object obj = this.iI;
            int iHashCode2 = (iHashCode + (obj == null ? 0 : obj.hashCode())) * 31;
            ab.e eVar = this.eb;
            int iHashCode3 = (iHashCode2 + (eVar != null ? eVar.hashCode() : 0)) * 31;
            long j = this.iJ;
            int i = (iHashCode3 + ((int) (j ^ (j >>> 32)))) * 31;
            long j2 = this.iK;
            int i2 = (i + ((int) (j2 ^ (j2 >>> 32)))) * 31;
            long j3 = this.iL;
            int i3 = (((((((i2 + ((int) (j3 ^ (j3 >>> 32)))) * 31) + (this.iM ? 1 : 0)) * 31) + (this.iN ? 1 : 0)) * 31) + (this.iz ? 1 : 0)) * 31;
            long j4 = this.iP;
            int i4 = (i3 + ((int) (j4 ^ (j4 >>> 32)))) * 31;
            long j5 = this.fH;
            int i5 = (((((i4 + ((int) (j5 ^ (j5 >>> 32)))) * 31) + this.iQ) * 31) + this.iR) * 31;
            long j6 = this.iS;
            return i5 + ((int) (j6 ^ (j6 >>> 32)));
        }
    }

    protected ba() {
    }

    private static <T extends g> com.applovin.exoplayer2.common.a.s<T> a(g.a<T> aVar, @Nullable IBinder iBinder) {
        if (iBinder == null) {
            return com.applovin.exoplayer2.common.a.s.ga();
        }
        s.a aVar2 = new s.a();
        com.applovin.exoplayer2.common.a.s<Bundle> sVarA = f.a(iBinder);
        for (int i = 0; i < sVarA.size(); i++) {
            aVar2.t(aVar.fromBundle(sVarA.get(i)));
        }
        return aVar2.gd();
    }

    private static int[] ak(int i) {
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = i2;
        }
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ba q(Bundle bundle) {
        com.applovin.exoplayer2.common.a.s sVarA = a(c.br, com.applovin.exoplayer2.l.b.a(bundle, t(0)));
        com.applovin.exoplayer2.common.a.s sVarA2 = a(a.br, com.applovin.exoplayer2.l.b.a(bundle, t(1)));
        int[] intArray = bundle.getIntArray(t(2));
        if (intArray == null) {
            intArray = ak(sVarA.size());
        }
        return new b(sVarA, sVarA2, intArray);
    }

    private static String t(int i) {
        return Integer.toString(i, 36);
    }

    public int a(int i, int i2, boolean z) {
        if (i2 == 0) {
            if (i == c(z)) {
                return -1;
            }
            return i + 1;
        }
        if (i2 == 1) {
            return i;
        }
        if (i2 == 2) {
            return i == c(z) ? d(z) : i + 1;
        }
        throw new IllegalStateException();
    }

    public final int a(int i, a aVar, c cVar, int i2, boolean z) {
        int i3 = a(i, aVar).cN;
        if (a(i3, cVar).iR != i) {
            return i + 1;
        }
        int iA = a(i3, i2, z);
        if (iA == -1) {
            return -1;
        }
        return a(iA, cVar).iQ;
    }

    public final Pair<Object, Long> a(c cVar, a aVar, int i, long j) {
        return (Pair) com.applovin.exoplayer2.l.a.checkNotNull(a(cVar, aVar, i, j, 0L));
    }

    @Nullable
    public final Pair<Object, Long> a(c cVar, a aVar, int i, long j, long j2) {
        com.applovin.exoplayer2.l.a.h(i, 0, cP());
        a(i, cVar, j2);
        if (j == C.TIME_UNSET) {
            j = cVar.dk();
            if (j == C.TIME_UNSET) {
                return null;
            }
        }
        int i2 = cVar.iQ;
        a(i2, aVar);
        while (i2 < cVar.iR && aVar.iy != j) {
            int i3 = i2 + 1;
            if (a(i3, aVar).iy > j) {
                break;
            }
            i2 = i3;
        }
        a(i2, aVar, true);
        long jMin = j - aVar.iy;
        long j3 = aVar.fH;
        if (j3 != C.TIME_UNSET) {
            jMin = Math.min(jMin, j3 - 1);
        }
        return Pair.create(com.applovin.exoplayer2.l.a.checkNotNull(aVar.ch), Long.valueOf(Math.max(0L, jMin)));
    }

    public final a a(int i, a aVar) {
        return a(i, aVar, false);
    }

    public abstract a a(int i, a aVar, boolean z);

    public a a(Object obj, a aVar) {
        return a(c(obj), aVar, true);
    }

    public final c a(int i, c cVar) {
        return a(i, cVar, 0L);
    }

    public abstract c a(int i, c cVar, long j);

    public int b(int i, int i2, boolean z) {
        if (i2 == 0) {
            if (i == d(z)) {
                return -1;
            }
            return i - 1;
        }
        if (i2 == 1) {
            return i;
        }
        if (i2 == 2) {
            return i == d(z) ? c(z) : i - 1;
        }
        throw new IllegalStateException();
    }

    public abstract Object b(int i);

    public final boolean b(int i, a aVar, c cVar, int i2, boolean z) {
        return a(i, aVar, cVar, i2, z) == -1;
    }

    public abstract int c(Object obj);

    public int c(boolean z) {
        if (isEmpty()) {
            return -1;
        }
        return cP() - 1;
    }

    public abstract int cP();

    public abstract int cQ();

    public int d(boolean z) {
        return isEmpty() ? -1 : 0;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ba)) {
            return false;
        }
        ba baVar = (ba) obj;
        if (baVar.cP() != cP() || baVar.cQ() != cQ()) {
            return false;
        }
        c cVar = new c();
        a aVar = new a();
        c cVar2 = new c();
        a aVar2 = new a();
        for (int i = 0; i < cP(); i++) {
            if (!a(i, cVar).equals(baVar.a(i, cVar2))) {
                return false;
            }
        }
        for (int i2 = 0; i2 < cQ(); i2++) {
            if (!a(i2, aVar, true).equals(baVar.a(i2, aVar2, true))) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        c cVar = new c();
        a aVar = new a();
        int iCP = 217 + cP();
        for (int i = 0; i < cP(); i++) {
            iCP = (iCP * 31) + a(i, cVar).hashCode();
        }
        int iCQ = (iCP * 31) + cQ();
        for (int i2 = 0; i2 < cQ(); i2++) {
            iCQ = (iCQ * 31) + a(i2, aVar, true).hashCode();
        }
        return iCQ;
    }

    public final boolean isEmpty() {
        return cP() == 0;
    }
}
