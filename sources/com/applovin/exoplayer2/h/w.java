package com.applovin.exoplayer2.h;

import android.os.Looper;
import androidx.annotation.CallSuper;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.d.f;
import com.applovin.exoplayer2.d.g;
import com.applovin.exoplayer2.d.h;
import com.applovin.exoplayer2.e.x;
import com.applovin.exoplayer2.h.w;
import com.applovin.exoplayer2.l.ai;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class w implements com.applovin.exoplayer2.e.x {

    @Nullable
    private final com.applovin.exoplayer2.d.h LS;
    private final v MS;

    @Nullable
    private c MV;

    @Nullable
    private com.applovin.exoplayer2.v MW;

    @Nullable
    private com.applovin.exoplayer2.d.f MX;
    private int Nb;
    private int Nc;
    private int Nd;
    private boolean Ng;
    private boolean Nj;

    @Nullable
    private com.applovin.exoplayer2.v Nk;

    @Nullable
    private com.applovin.exoplayer2.v Nl;
    private int Nm;
    private boolean Nn;
    private boolean No;
    private long Np;
    private boolean Nq;

    @Nullable
    private final Looper co;
    private int fR;

    @Nullable
    private final g.a fY;
    private final a MT = new a();
    private int MY = 1000;
    private int[] MZ = new int[1000];
    private long[] tS = new long[1000];
    private long[] tU = new long[1000];
    private int[] zJ = new int[1000];
    private int[] tR = new int[1000];
    private x.a[] Na = new x.a[1000];
    private final ab<b> MU = new ab<>(new com.applovin.exoplayer2.l.h() { // from class: com.applovin.exoplayer2.h.n0
        @Override // com.applovin.exoplayer2.l.h
        public final void accept(Object obj) {
            w.a((w.b) obj);
        }
    });
    private long Gi = Long.MIN_VALUE;
    private long Ne = Long.MIN_VALUE;
    private long Nf = Long.MIN_VALUE;
    private boolean Ni = true;
    private boolean Nh = true;

    static final class a {
        public int oW;

        @Nullable
        public x.a xZ;
        public long zr;

        a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class b {
        public final h.a Nr;
        public final com.applovin.exoplayer2.v dU;

        private b(com.applovin.exoplayer2.v vVar, h.a aVar) {
            this.dU = vVar;
            this.Nr = aVar;
        }
    }

    public interface c {
        void t(com.applovin.exoplayer2.v vVar);
    }

    protected w(com.applovin.exoplayer2.k.b bVar, @Nullable Looper looper, @Nullable com.applovin.exoplayer2.d.h hVar, @Nullable g.a aVar) {
        this.co = looper;
        this.LS = hVar;
        this.fY = aVar;
        this.MS = new v(bVar);
    }

    private int a(int i, int i2, long j, boolean z) {
        int i3 = -1;
        for (int i4 = 0; i4 < i2; i4++) {
            long[] jArr = this.tU;
            if (jArr[i] > j) {
                return i3;
            }
            if (!z || (this.zJ[i] & 1) != 0) {
                if (jArr[i] == j) {
                    return i4;
                }
                i3 = i4;
            }
            i++;
            if (i == this.MY) {
                i = 0;
            }
        }
        return i3;
    }

    private synchronized int a(com.applovin.exoplayer2.w wVar, com.applovin.exoplayer2.c.g gVar, boolean z, boolean z2, a aVar) {
        gVar.rI = false;
        if (!lF()) {
            if (!z2 && !this.Ng) {
                com.applovin.exoplayer2.v vVar = this.Nl;
                if (vVar == null || (!z && vVar == this.MW)) {
                    return -3;
                }
                a((com.applovin.exoplayer2.v) com.applovin.exoplayer2.l.a.checkNotNull(vVar), wVar);
                return -5;
            }
            gVar.bs(4);
            return -4;
        }
        com.applovin.exoplayer2.v vVar2 = this.MU.get(ly()).dU;
        if (!z && vVar2 == this.MW) {
            int iDU = dU(this.Nd);
            if (!dR(iDU)) {
                gVar.rI = true;
                return -3;
            }
            gVar.bs(this.zJ[iDU]);
            long j = this.tU[iDU];
            gVar.rJ = j;
            if (j < this.Gi) {
                gVar.bt(Integer.MIN_VALUE);
            }
            aVar.oW = this.tR[iDU];
            aVar.zr = this.tS[iDU];
            aVar.xZ = this.Na[iDU];
            return -4;
        }
        a(vVar2, wVar);
        return -5;
    }

    public static w a(com.applovin.exoplayer2.k.b bVar, Looper looper, com.applovin.exoplayer2.d.h hVar, g.a aVar) {
        return new w(bVar, (Looper) com.applovin.exoplayer2.l.a.checkNotNull(looper), (com.applovin.exoplayer2.d.h) com.applovin.exoplayer2.l.a.checkNotNull(hVar), (g.a) com.applovin.exoplayer2.l.a.checkNotNull(aVar));
    }

    private synchronized void a(long j, int i, long j2, int i2, @Nullable x.a aVar) {
        int i3 = this.fR;
        if (i3 > 0) {
            int iDU = dU(i3 - 1);
            com.applovin.exoplayer2.l.a.checkArgument(this.tS[iDU] + ((long) this.tR[iDU]) <= j2);
        }
        this.Ng = (536870912 & i) != 0;
        this.Nf = Math.max(this.Nf, j);
        int iDU2 = dU(this.fR);
        this.tU[iDU2] = j;
        this.tS[iDU2] = j2;
        this.tR[iDU2] = i2;
        this.zJ[iDU2] = i;
        this.Na[iDU2] = aVar;
        this.MZ[iDU2] = this.Nm;
        if (this.MU.isEmpty() || !this.MU.lK().dU.equals(this.Nl)) {
            com.applovin.exoplayer2.d.h hVar = this.LS;
            this.MU.b(lw(), new b((com.applovin.exoplayer2.v) com.applovin.exoplayer2.l.a.checkNotNull(this.Nl), hVar != null ? hVar.a((Looper) com.applovin.exoplayer2.l.a.checkNotNull(this.co), this.fY, this.Nl) : h.a.tk));
        }
        int i4 = this.fR + 1;
        this.fR = i4;
        int i5 = this.MY;
        if (i4 == i5) {
            int i6 = i5 + 1000;
            int[] iArr = new int[i6];
            long[] jArr = new long[i6];
            long[] jArr2 = new long[i6];
            int[] iArr2 = new int[i6];
            int[] iArr3 = new int[i6];
            x.a[] aVarArr = new x.a[i6];
            int i7 = this.Nc;
            int i8 = i5 - i7;
            System.arraycopy(this.tS, i7, jArr, 0, i8);
            System.arraycopy(this.tU, this.Nc, jArr2, 0, i8);
            System.arraycopy(this.zJ, this.Nc, iArr2, 0, i8);
            System.arraycopy(this.tR, this.Nc, iArr3, 0, i8);
            System.arraycopy(this.Na, this.Nc, aVarArr, 0, i8);
            System.arraycopy(this.MZ, this.Nc, iArr, 0, i8);
            int i9 = this.Nc;
            System.arraycopy(this.tS, 0, jArr, i8, i9);
            System.arraycopy(this.tU, 0, jArr2, i8, i9);
            System.arraycopy(this.zJ, 0, iArr2, i8, i9);
            System.arraycopy(this.tR, 0, iArr3, i8, i9);
            System.arraycopy(this.Na, 0, aVarArr, i8, i9);
            System.arraycopy(this.MZ, 0, iArr, i8, i9);
            this.tS = jArr;
            this.tU = jArr2;
            this.zJ = iArr2;
            this.tR = iArr3;
            this.Na = aVarArr;
            this.MZ = iArr;
            this.Nc = 0;
            this.MY = i6;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(b bVar) {
        bVar.Nr.release();
    }

    private void a(com.applovin.exoplayer2.v vVar, com.applovin.exoplayer2.w wVar) {
        com.applovin.exoplayer2.v vVar2 = this.MW;
        boolean z = vVar2 == null;
        com.applovin.exoplayer2.d.e eVar = z ? null : vVar2.dC;
        this.MW = vVar;
        com.applovin.exoplayer2.d.e eVar2 = vVar.dC;
        com.applovin.exoplayer2.d.h hVar = this.LS;
        wVar.dU = hVar != null ? vVar.B(hVar.g(vVar)) : vVar;
        wVar.dT = this.MX;
        if (this.LS == null) {
            return;
        }
        if (z || !ai.r(eVar, eVar2)) {
            com.applovin.exoplayer2.d.f fVar = this.MX;
            com.applovin.exoplayer2.d.f fVarB = this.LS.b((Looper) com.applovin.exoplayer2.l.a.checkNotNull(this.co), this.fY, vVar);
            this.MX = fVarB;
            wVar.dT = fVarB;
            if (fVar != null) {
                fVar.b(this.fY);
            }
        }
    }

    private synchronized boolean bb(long j) {
        if (this.fR == 0) {
            return j > this.Ne;
        }
        if (lA() >= j) {
            return false;
        }
        dQ(this.Nb + bc(j));
        return true;
    }

    private int bc(long j) {
        int i = this.fR;
        int iDU = dU(i - 1);
        while (i > this.Nd && this.tU[iDU] >= j) {
            i--;
            iDU--;
            if (iDU == -1) {
                iDU = this.MY - 1;
            }
        }
        return i;
    }

    private synchronized long c(long j, boolean z, boolean z2) {
        int i;
        int i2 = this.fR;
        if (i2 != 0) {
            long[] jArr = this.tU;
            int i3 = this.Nc;
            if (j >= jArr[i3]) {
                if (z2 && (i = this.Nd) != i2) {
                    i2 = i + 1;
                }
                int iA = a(i3, i2, j, z);
                if (iA == -1) {
                    return -1L;
                }
                return dS(iA);
            }
        }
        return -1L;
    }

    private long dQ(int i) {
        int iLw = lw() - i;
        boolean z = false;
        com.applovin.exoplayer2.l.a.checkArgument(iLw >= 0 && iLw <= this.fR - this.Nd);
        int i2 = this.fR - iLw;
        this.fR = i2;
        this.Nf = Math.max(this.Ne, dT(i2));
        if (iLw == 0 && this.Ng) {
            z = true;
        }
        this.Ng = z;
        this.MU.dY(i);
        int i3 = this.fR;
        if (i3 == 0) {
            return 0L;
        }
        int iDU = dU(i3 - 1);
        return this.tS[iDU] + ((long) this.tR[iDU]);
    }

    private boolean dR(int i) {
        com.applovin.exoplayer2.d.f fVar = this.MX;
        return fVar == null || fVar.P() == 4 || ((this.zJ[i] & 1073741824) == 0 && this.MX.hs());
    }

    @GuardedBy("this")
    private long dS(int i) {
        this.Ne = Math.max(this.Ne, dT(i));
        this.fR -= i;
        int i2 = this.Nb + i;
        this.Nb = i2;
        int i3 = this.Nc + i;
        this.Nc = i3;
        int i4 = this.MY;
        if (i3 >= i4) {
            this.Nc = i3 - i4;
        }
        int i5 = this.Nd - i;
        this.Nd = i5;
        if (i5 < 0) {
            this.Nd = 0;
        }
        this.MU.dX(i2);
        if (this.fR != 0) {
            return this.tS[this.Nc];
        }
        int i6 = this.Nc;
        if (i6 == 0) {
            i6 = this.MY;
        }
        int i7 = i6 - 1;
        return this.tS[i7] + ((long) this.tR[i7]);
    }

    private long dT(int i) {
        long jMax = Long.MIN_VALUE;
        if (i == 0) {
            return Long.MIN_VALUE;
        }
        int iDU = dU(i - 1);
        for (int i2 = 0; i2 < i; i2++) {
            jMax = Math.max(jMax, this.tU[iDU]);
            if ((this.zJ[iDU] & 1) != 0) {
                break;
            }
            iDU--;
            if (iDU == -1) {
                iDU = this.MY - 1;
            }
        }
        return jMax;
    }

    private int dU(int i) {
        int i2 = this.Nc + i;
        int i3 = this.MY;
        return i2 < i3 ? i2 : i2 - i3;
    }

    private synchronized long lD() {
        int i = this.fR;
        if (i == 0) {
            return -1L;
        }
        return dS(i);
    }

    private void lE() {
        com.applovin.exoplayer2.d.f fVar = this.MX;
        if (fVar != null) {
            fVar.b(this.fY);
            this.MX = null;
            this.MW = null;
        }
    }

    private boolean lF() {
        return this.Nd != this.fR;
    }

    private synchronized void lt() {
        this.Nd = 0;
        this.MS.lt();
    }

    private synchronized boolean v(com.applovin.exoplayer2.v vVar) {
        this.Ni = false;
        if (ai.r(vVar, this.Nl)) {
            return false;
        }
        if (this.MU.isEmpty() || !this.MU.lK().dU.equals(vVar)) {
            this.Nl = vVar;
        } else {
            this.Nl = this.MU.lK().dU;
        }
        com.applovin.exoplayer2.v vVar2 = this.Nl;
        this.Nn = com.applovin.exoplayer2.l.u.j(vVar2.dz, vVar2.dw);
        this.No = false;
        return true;
    }

    @CallSuper
    public synchronized boolean Q(boolean z) {
        com.applovin.exoplayer2.v vVar;
        boolean z2 = true;
        if (lF()) {
            if (this.MU.get(ly()).dU != this.MW) {
                return true;
            }
            return dR(dU(this.Nd));
        }
        if (!z && !this.Ng && ((vVar = this.Nl) == null || vVar == this.MW)) {
            z2 = false;
        }
        return z2;
    }

    public final void Y() {
        e(false);
    }

    @Override // com.applovin.exoplayer2.e.x
    public /* synthetic */ int a(com.applovin.exoplayer2.k.g gVar, int i, boolean z) {
        return com.applovin.exoplayer2.e.d0.a(this, gVar, i, z);
    }

    @Override // com.applovin.exoplayer2.e.x
    public final int a(com.applovin.exoplayer2.k.g gVar, int i, boolean z, int i2) throws IOException {
        return this.MS.a(gVar, i, z);
    }

    @CallSuper
    public int a(com.applovin.exoplayer2.w wVar, com.applovin.exoplayer2.c.g gVar, int i, boolean z) {
        int iA = a(wVar, gVar, (i & 2) != 0, z, this.MT);
        if (iA == -4 && !gVar.gY()) {
            boolean z2 = (i & 1) != 0;
            if ((i & 4) == 0) {
                if (z2) {
                    this.MS.b(gVar, this.MT);
                } else {
                    this.MS.a(gVar, this.MT);
                }
            }
            if (!z2) {
                this.Nd++;
            }
        }
        return iA;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0054  */
    @Override // com.applovin.exoplayer2.e.x
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(long r12, int r14, int r15, int r16, @androidx.annotation.Nullable com.applovin.exoplayer2.e.x.a r17) {
        /*
            r11 = this;
            r8 = r11
            boolean r0 = r8.Nj
            if (r0 == 0) goto L10
            com.applovin.exoplayer2.v r0 = r8.Nk
            java.lang.Object r0 = com.applovin.exoplayer2.l.a.N(r0)
            com.applovin.exoplayer2.v r0 = (com.applovin.exoplayer2.v) r0
            r11.j(r0)
        L10:
            r0 = r14 & 1
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L18
            r3 = 1
            goto L19
        L18:
            r3 = 0
        L19:
            boolean r4 = r8.Nh
            if (r4 == 0) goto L22
            if (r3 != 0) goto L20
            return
        L20:
            r8.Nh = r1
        L22:
            long r4 = r8.Np
            long r4 = r4 + r12
            boolean r6 = r8.Nn
            if (r6 == 0) goto L54
            long r6 = r8.Gi
            int r9 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r9 >= 0) goto L30
            return
        L30:
            if (r0 != 0) goto L54
            boolean r0 = r8.No
            if (r0 != 0) goto L50
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r6 = "Overriding unexpected non-sync sample for format: "
            r0.append(r6)
            com.applovin.exoplayer2.v r6 = r8.Nl
            r0.append(r6)
            java.lang.String r0 = r0.toString()
            java.lang.String r6 = "SampleQueue"
            com.applovin.exoplayer2.l.q.h(r6, r0)
            r8.No = r2
        L50:
            r0 = r14 | 1
            r6 = r0
            goto L55
        L54:
            r6 = r14
        L55:
            boolean r0 = r8.Nq
            if (r0 == 0) goto L66
            if (r3 == 0) goto L65
            boolean r0 = r11.bb(r4)
            if (r0 != 0) goto L62
            goto L65
        L62:
            r8.Nq = r1
            goto L66
        L65:
            return
        L66:
            com.applovin.exoplayer2.h.v r0 = r8.MS
            long r0 = r0.lu()
            r7 = r15
            long r2 = (long) r7
            long r0 = r0 - r2
            r2 = r16
            long r2 = (long) r2
            long r9 = r0 - r2
            r0 = r11
            r1 = r4
            r3 = r6
            r4 = r9
            r6 = r15
            r7 = r17
            r0.a(r1, r3, r4, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.h.w.a(long, int, int, int, com.applovin.exoplayer2.e.x$a):void");
    }

    public final void a(@Nullable c cVar) {
        this.MV = cVar;
    }

    @Override // com.applovin.exoplayer2.e.x
    public final void a(com.applovin.exoplayer2.l.y yVar, int i, int i2) {
        this.MS.c(yVar, i);
    }

    public final void b(long j, boolean z, boolean z2) {
        this.MS.aY(c(j, z, z2));
    }

    public final void ba(long j) {
        this.Gi = j;
    }

    @Override // com.applovin.exoplayer2.e.x
    public /* synthetic */ void c(com.applovin.exoplayer2.l.y yVar, int i) {
        com.applovin.exoplayer2.e.d0.b(this, yVar, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x000e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized void dP(int r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            if (r3 < 0) goto Le
            int r0 = r2.Nd     // Catch: java.lang.Throwable -> Lc
            int r0 = r0 + r3
            int r1 = r2.fR     // Catch: java.lang.Throwable -> Lc
            if (r0 > r1) goto Le
            r0 = 1
            goto Lf
        Lc:
            r3 = move-exception
            goto L19
        Le:
            r0 = 0
        Lf:
            com.applovin.exoplayer2.l.a.checkArgument(r0)     // Catch: java.lang.Throwable -> Lc
            int r0 = r2.Nd     // Catch: java.lang.Throwable -> Lc
            int r0 = r0 + r3
            r2.Nd = r0     // Catch: java.lang.Throwable -> Lc
            monitor-exit(r2)
            return
        L19:
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.h.w.dP(int):void");
    }

    @CallSuper
    public void e(boolean z) {
        this.MS.Y();
        this.fR = 0;
        this.Nb = 0;
        this.Nc = 0;
        this.Nd = 0;
        this.Nh = true;
        this.Gi = Long.MIN_VALUE;
        this.Ne = Long.MIN_VALUE;
        this.Nf = Long.MIN_VALUE;
        this.Ng = false;
        this.MU.clear();
        if (z) {
            this.Nk = null;
            this.Nl = null;
            this.Ni = true;
        }
    }

    public final synchronized boolean e(long j, boolean z) {
        lt();
        int iDU = dU(this.Nd);
        if (lF() && j >= this.tU[iDU] && (j <= this.Nf || z)) {
            int iA = a(iDU, this.fR - this.Nd, j, true);
            if (iA == -1) {
                return false;
            }
            this.Gi = j;
            this.Nd += iA;
            return true;
        }
        return false;
    }

    public final synchronized int f(long j, boolean z) {
        int iDU = dU(this.Nd);
        if (lF() && j >= this.tU[iDU]) {
            if (j > this.Nf && z) {
                return this.fR - this.Nd;
            }
            int iA = a(iDU, this.fR - this.Nd, j, true);
            if (iA == -1) {
                return 0;
            }
            return iA;
        }
        return 0;
    }

    @Override // com.applovin.exoplayer2.e.x
    public final void j(com.applovin.exoplayer2.v vVar) {
        com.applovin.exoplayer2.v vVarU = u(vVar);
        this.Nj = false;
        this.Nk = vVar;
        boolean zV = v(vVarU);
        c cVar = this.MV;
        if (cVar == null || !zV) {
            return;
        }
        cVar.t(vVarU);
    }

    @CallSuper
    public void kR() throws IOException {
        com.applovin.exoplayer2.d.f fVar = this.MX;
        if (fVar != null && fVar.P() == 1) {
            throw ((f.a) com.applovin.exoplayer2.l.a.checkNotNull(this.MX.ht()));
        }
    }

    public final synchronized long lA() {
        return Math.max(this.Ne, dT(this.Nd));
    }

    public final synchronized boolean lB() {
        return this.Ng;
    }

    public final void lC() {
        this.MS.aY(lD());
    }

    public final synchronized long lj() {
        return this.Nf;
    }

    public final int lw() {
        return this.Nb + this.fR;
    }

    @CallSuper
    public void lx() {
        lC();
        lE();
    }

    public final int ly() {
        return this.Nb + this.Nd;
    }

    @Nullable
    public final synchronized com.applovin.exoplayer2.v lz() {
        return this.Ni ? null : this.Nl;
    }

    @CallSuper
    public void release() {
        e(true);
        lE();
    }

    @CallSuper
    protected com.applovin.exoplayer2.v u(com.applovin.exoplayer2.v vVar) {
        return (this.Np == 0 || vVar.dD == Long.MAX_VALUE) ? vVar : vVar.bR().p(vVar.dD + this.Np).bT();
    }
}
