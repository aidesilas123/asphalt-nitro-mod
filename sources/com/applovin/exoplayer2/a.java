package com.applovin.exoplayer2;

import android.util.Pair;
import com.applovin.exoplayer2.ba;

/* JADX INFO: loaded from: classes.dex */
public abstract class a extends ba {
    private final int B;
    private final com.applovin.exoplayer2.h.z C;
    private final boolean D;

    public a(boolean z, com.applovin.exoplayer2.h.z zVar) {
        this.D = z;
        this.C = zVar;
        this.B = zVar.lG();
    }

    private int a(int i, boolean z) {
        if (z) {
            return this.C.dV(i);
        }
        if (i < this.B - 1) {
            return i + 1;
        }
        return -1;
    }

    public static Object a(Object obj) {
        return ((Pair) obj).first;
    }

    public static Object a(Object obj, Object obj2) {
        return Pair.create(obj, obj2);
    }

    private int b(int i, boolean z) {
        if (z) {
            return this.C.dW(i);
        }
        if (i > 0) {
            return i - 1;
        }
        return -1;
    }

    public static Object b(Object obj) {
        return ((Pair) obj).second;
    }

    @Override // com.applovin.exoplayer2.ba
    public int a(int i, int i2, boolean z) {
        if (this.D) {
            if (i2 == 1) {
                i2 = 2;
            }
            z = false;
        }
        int iD = d(i);
        int iG = g(iD);
        int iA = e(iD).a(i - iG, i2 != 2 ? i2 : 0, z);
        if (iA != -1) {
            return iG + iA;
        }
        int iA2 = a(iD, z);
        while (iA2 != -1 && e(iA2).isEmpty()) {
            iA2 = a(iA2, z);
        }
        if (iA2 != -1) {
            return g(iA2) + e(iA2).d(z);
        }
        if (i2 == 2) {
            return d(z);
        }
        return -1;
    }

    @Override // com.applovin.exoplayer2.ba
    public final ba.a a(int i, ba.a aVar, boolean z) {
        int iC = c(i);
        int iG = g(iC);
        e(iC).a(i - f(iC), aVar, z);
        aVar.cN += iG;
        if (z) {
            aVar.ch = a(h(iC), com.applovin.exoplayer2.l.a.checkNotNull(aVar.ch));
        }
        return aVar;
    }

    @Override // com.applovin.exoplayer2.ba
    public final ba.a a(Object obj, ba.a aVar) {
        Object objA = a(obj);
        Object objB = b(obj);
        int iD = d(objA);
        int iG = g(iD);
        e(iD).a(objB, aVar);
        aVar.cN += iG;
        aVar.ch = obj;
        return aVar;
    }

    @Override // com.applovin.exoplayer2.ba
    public final ba.c a(int i, ba.c cVar, long j) {
        int iD = d(i);
        int iG = g(iD);
        int iF = f(iD);
        e(iD).a(i - iG, cVar, j);
        Object objH = h(iD);
        if (!ba.c.iF.equals(cVar.ch)) {
            objH = a(objH, cVar.ch);
        }
        cVar.ch = objH;
        cVar.iQ += iF;
        cVar.iR += iF;
        return cVar;
    }

    @Override // com.applovin.exoplayer2.ba
    public int b(int i, int i2, boolean z) {
        if (this.D) {
            if (i2 == 1) {
                i2 = 2;
            }
            z = false;
        }
        int iD = d(i);
        int iG = g(iD);
        int iB = e(iD).b(i - iG, i2 != 2 ? i2 : 0, z);
        if (iB != -1) {
            return iG + iB;
        }
        int iB2 = b(iD, z);
        while (iB2 != -1 && e(iB2).isEmpty()) {
            iB2 = b(iB2, z);
        }
        if (iB2 != -1) {
            return g(iB2) + e(iB2).c(z);
        }
        if (i2 == 2) {
            return c(z);
        }
        return -1;
    }

    @Override // com.applovin.exoplayer2.ba
    public final Object b(int i) {
        int iC = c(i);
        return a(h(iC), e(iC).b(i - f(iC)));
    }

    protected abstract int c(int i);

    @Override // com.applovin.exoplayer2.ba
    public final int c(Object obj) {
        int iC;
        if (!(obj instanceof Pair)) {
            return -1;
        }
        Object objA = a(obj);
        Object objB = b(obj);
        int iD = d(objA);
        if (iD == -1 || (iC = e(iD).c(objB)) == -1) {
            return -1;
        }
        return f(iD) + iC;
    }

    @Override // com.applovin.exoplayer2.ba
    public int c(boolean z) {
        int i = this.B;
        if (i == 0) {
            return -1;
        }
        if (this.D) {
            z = false;
        }
        int iLH = z ? this.C.lH() : i - 1;
        while (e(iLH).isEmpty()) {
            iLH = b(iLH, z);
            if (iLH == -1) {
                return -1;
            }
        }
        return g(iLH) + e(iLH).c(z);
    }

    protected abstract int d(int i);

    protected abstract int d(Object obj);

    @Override // com.applovin.exoplayer2.ba
    public int d(boolean z) {
        if (this.B == 0) {
            return -1;
        }
        if (this.D) {
            z = false;
        }
        int iLI = z ? this.C.lI() : 0;
        while (e(iLI).isEmpty()) {
            iLI = a(iLI, z);
            if (iLI == -1) {
                return -1;
            }
        }
        return g(iLI) + e(iLI).d(z);
    }

    protected abstract ba e(int i);

    protected abstract int f(int i);

    protected abstract int g(int i);

    protected abstract Object h(int i);
}
