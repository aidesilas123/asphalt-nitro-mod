package com.applovin.exoplayer2;

import androidx.annotation.Nullable;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public abstract class e implements ar, as {
    private final int V;

    @Nullable
    private at X;
    private int Y;
    private int Z;

    @Nullable
    private com.applovin.exoplayer2.h.x aa;

    @Nullable
    private v[] ab;
    private long ac;
    private long ad;
    private boolean af;
    private boolean ag;
    private final w W = new w();
    private long ae = Long.MIN_VALUE;

    public e(int i) {
        this.V = i;
    }

    @Override // com.applovin.exoplayer2.ar, com.applovin.exoplayer2.as
    public final int M() {
        return this.V;
    }

    @Override // com.applovin.exoplayer2.ar
    public final as N() {
        return this;
    }

    @Override // com.applovin.exoplayer2.ar
    @Nullable
    public com.applovin.exoplayer2.l.s O() {
        return null;
    }

    @Override // com.applovin.exoplayer2.ar
    public final int P() {
        return this.Z;
    }

    @Override // com.applovin.exoplayer2.ar
    @Nullable
    public final com.applovin.exoplayer2.h.x Q() {
        return this.aa;
    }

    @Override // com.applovin.exoplayer2.ar
    public final boolean R() {
        return this.ae == Long.MIN_VALUE;
    }

    @Override // com.applovin.exoplayer2.ar
    public final long S() {
        return this.ae;
    }

    @Override // com.applovin.exoplayer2.ar
    public final void T() {
        this.af = true;
    }

    @Override // com.applovin.exoplayer2.ar
    public final boolean U() {
        return this.af;
    }

    @Override // com.applovin.exoplayer2.ar
    public final void V() throws IOException {
        ((com.applovin.exoplayer2.h.x) com.applovin.exoplayer2.l.a.checkNotNull(this.aa)).kR();
    }

    @Override // com.applovin.exoplayer2.ar
    public final void W() {
        com.applovin.exoplayer2.l.a.checkState(this.Z == 2);
        this.Z = 1;
        ab();
    }

    @Override // com.applovin.exoplayer2.ar
    public final void X() {
        com.applovin.exoplayer2.l.a.checkState(this.Z == 1);
        this.W.clear();
        this.Z = 0;
        this.aa = null;
        this.ab = null;
        this.af = false;
        ac();
    }

    @Override // com.applovin.exoplayer2.ar
    public final void Y() {
        com.applovin.exoplayer2.l.a.checkState(this.Z == 0);
        this.W.clear();
        ad();
    }

    @Override // com.applovin.exoplayer2.as
    public int Z() throws p {
        return 0;
    }

    protected final int a(w wVar, com.applovin.exoplayer2.c.g gVar, int i) {
        int iB = ((com.applovin.exoplayer2.h.x) com.applovin.exoplayer2.l.a.checkNotNull(this.aa)).b(wVar, gVar, i);
        if (iB == -4) {
            if (gVar.gY()) {
                this.ae = Long.MIN_VALUE;
                return this.af ? -4 : -3;
            }
            long j = gVar.rJ + this.ac;
            gVar.rJ = j;
            this.ae = Math.max(this.ae, j);
        } else if (iB == -5) {
            v vVar = (v) com.applovin.exoplayer2.l.a.checkNotNull(wVar.dU);
            if (vVar.dD != Long.MAX_VALUE) {
                wVar.dU = vVar.bR().p(vVar.dD + this.ac).bT();
            }
        }
        return iB;
    }

    protected final p a(Throwable th, @Nullable v vVar, int i) {
        return a(th, vVar, false, i);
    }

    protected final p a(Throwable th, @Nullable v vVar, boolean z, int i) {
        int i2;
        if (vVar == null || this.ag) {
            i2 = 4;
        } else {
            this.ag = true;
            try {
                int iC = z1.c(b(vVar));
                this.ag = false;
                i2 = iC;
            } catch (p unused) {
                this.ag = false;
                i2 = 4;
            } catch (Throwable th2) {
                this.ag = false;
                throw th2;
            }
        }
        return p.a(th, getName(), ah(), vVar, i2, z, i);
    }

    @Override // com.applovin.exoplayer2.ar
    public /* synthetic */ void a(float f2, float f3) throws p {
        y1.a(this, f2, f3);
    }

    @Override // com.applovin.exoplayer2.ao.b
    public void a(int i, @Nullable Object obj) throws p {
    }

    protected void a(long j, boolean z) throws p {
    }

    @Override // com.applovin.exoplayer2.ar
    public final void a(at atVar, v[] vVarArr, com.applovin.exoplayer2.h.x xVar, long j, boolean z, boolean z2, long j2, long j3) throws p {
        com.applovin.exoplayer2.l.a.checkState(this.Z == 0);
        this.X = atVar;
        this.Z = 1;
        this.ad = j;
        a(z, z2);
        a(vVarArr, xVar, j2, j3);
        a(j, z);
    }

    protected void a(boolean z, boolean z2) throws p {
    }

    protected void a(v[] vVarArr, long j, long j2) throws p {
    }

    @Override // com.applovin.exoplayer2.ar
    public final void a(v[] vVarArr, com.applovin.exoplayer2.h.x xVar, long j, long j2) throws p {
        com.applovin.exoplayer2.l.a.checkState(!this.af);
        this.aa = xVar;
        if (this.ae == Long.MIN_VALUE) {
            this.ae = j;
        }
        this.ab = vVarArr;
        this.ac = j2;
        a(vVarArr, j, j2);
    }

    protected void aa() throws p {
    }

    protected void ab() {
    }

    protected void ac() {
    }

    protected void ad() {
    }

    protected final w ae() {
        this.W.clear();
        return this.W;
    }

    protected final v[] af() {
        return (v[]) com.applovin.exoplayer2.l.a.checkNotNull(this.ab);
    }

    protected final at ag() {
        return (at) com.applovin.exoplayer2.l.a.checkNotNull(this.X);
    }

    protected final int ah() {
        return this.Y;
    }

    protected final boolean ai() {
        return R() ? this.af : ((com.applovin.exoplayer2.h.x) com.applovin.exoplayer2.l.a.checkNotNull(this.aa)).isReady();
    }

    @Override // com.applovin.exoplayer2.ar
    public final void d(long j) throws p {
        this.af = false;
        this.ad = j;
        this.ae = j;
        a(j, false);
    }

    protected int e(long j) {
        return ((com.applovin.exoplayer2.h.x) com.applovin.exoplayer2.l.a.checkNotNull(this.aa)).aS(j - this.ac);
    }

    @Override // com.applovin.exoplayer2.ar
    public final void p(int i) {
        this.Y = i;
    }

    @Override // com.applovin.exoplayer2.ar
    public final void start() throws p {
        com.applovin.exoplayer2.l.a.checkState(this.Z == 1);
        this.Z = 2;
        aa();
    }
}
