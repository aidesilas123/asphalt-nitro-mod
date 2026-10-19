package com.applovin.exoplayer2.e.b;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.e.c0;
import com.applovin.exoplayer2.e.h;
import com.applovin.exoplayer2.e.i;
import com.applovin.exoplayer2.e.j;
import com.applovin.exoplayer2.e.l;
import com.applovin.exoplayer2.e.m;
import com.applovin.exoplayer2.e.n;
import com.applovin.exoplayer2.e.o;
import com.applovin.exoplayer2.e.p;
import com.applovin.exoplayer2.e.u;
import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.e.x;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.l.y;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class b implements h {
    public static final l vq = new l() { // from class: com.applovin.exoplayer2.e.b.c
        @Override // com.applovin.exoplayer2.e.l
        public /* synthetic */ h[] a(Uri uri, Map map) {
            return c0.a(this, uri, map);
        }

        @Override // com.applovin.exoplayer2.e.l
        public final h[] createExtractors() {
            return b.ih();
        }
    };
    private int Z;
    private int uD;
    private p uz;
    private j vG;
    private x vH;
    private int vK;
    private final m.a vL;
    private final byte[] vM;
    private final y vN;
    private final boolean vO;

    @Nullable
    private com.applovin.exoplayer2.g.a vP;
    private a vQ;
    private int vR;
    private long vS;

    public b() {
        this(0);
    }

    public b(int i) {
        this.vM = new byte[42];
        this.vN = new y(new byte[32768], 0);
        this.vO = (i & 1) != 0;
        this.vL = new m.a();
        this.Z = 0;
    }

    private long a(y yVar, boolean z) {
        boolean zA;
        com.applovin.exoplayer2.l.a.checkNotNull(this.uz);
        int iIl = yVar.il();
        while (iIl <= yVar.pk() - 16) {
            yVar.fx(iIl);
            if (m.a(yVar, this.uz, this.vK, this.vL)) {
                yVar.fx(iIl);
                return this.vL.uy;
            }
            iIl++;
        }
        if (!z) {
            yVar.fx(iIl);
            return -1L;
        }
        while (iIl <= yVar.pk() - this.uD) {
            yVar.fx(iIl);
            try {
                zA = m.a(yVar, this.uz, this.vK, this.vL);
            } catch (IndexOutOfBoundsException unused) {
                zA = false;
            }
            if (yVar.il() <= yVar.pk() ? zA : false) {
                yVar.fx(iIl);
                return this.vL.uy;
            }
            iIl++;
        }
        yVar.fx(yVar.pk());
        return -1L;
    }

    private int c(i iVar, u uVar) throws IOException {
        boolean z;
        com.applovin.exoplayer2.l.a.checkNotNull(this.vH);
        com.applovin.exoplayer2.l.a.checkNotNull(this.uz);
        a aVar = this.vQ;
        if (aVar != null && aVar.hT()) {
            return this.vQ.a(iVar, uVar);
        }
        if (this.vS == -1) {
            this.vS = m.a(iVar, this.uz);
            return 0;
        }
        int iPk = this.vN.pk();
        if (iPk < 32768) {
            int i = iVar.read(this.vN.hO(), iPk, 32768 - iPk);
            z = i == -1;
            if (!z) {
                this.vN.fA(iPk + i);
            } else if (this.vN.pj() == 0) {
                ip();
                return -1;
            }
        } else {
            z = false;
        }
        int iIl = this.vN.il();
        int i2 = this.vR;
        int i3 = this.uD;
        if (i2 < i3) {
            y yVar = this.vN;
            yVar.fz(Math.min(i3 - i2, yVar.pj()));
        }
        long jA = a(this.vN, z);
        int iIl2 = this.vN.il() - iIl;
        this.vN.fx(iIl);
        this.vH.c(this.vN, iIl2);
        this.vR += iIl2;
        if (jA != -1) {
            ip();
            this.vR = 0;
            this.vS = jA;
        }
        if (this.vN.pj() < 16) {
            int iPj = this.vN.pj();
            System.arraycopy(this.vN.hO(), this.vN.il(), this.vN.hO(), 0, iPj);
            this.vN.fx(0);
            this.vN.fA(iPj);
        }
        return 0;
    }

    private void c(i iVar) throws IOException {
        n.c(iVar);
        this.Z = 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ h[] ih() {
        return new h[]{new b()};
    }

    private void ip() {
        ((x) ai.R(this.vH)).a((this.vS * 1000000) / ((long) ((p) ai.R(this.uz)).dM), 1, this.vR, 0, null);
    }

    private void j(i iVar) throws IOException {
        this.vP = n.b(iVar, !this.vO);
        this.Z = 1;
    }

    private void k(i iVar) throws IOException {
        byte[] bArr = this.vM;
        iVar.c(bArr, 0, bArr.length);
        iVar.ic();
        this.Z = 2;
    }

    private void l(i iVar) throws IOException {
        n.a aVar = new n.a(this.uz);
        boolean zA = false;
        while (!zA) {
            zA = n.a(iVar, aVar);
            this.uz = (p) ai.R(aVar.uz);
        }
        com.applovin.exoplayer2.l.a.checkNotNull(this.uz);
        this.uD = Math.max(this.uz.uD, 6);
        ((x) ai.R(this.vH)).j(this.uz.a(this.vM, this.vP));
        this.Z = 4;
    }

    private void m(i iVar) throws IOException {
        this.vK = n.d(iVar);
        ((j) ai.R(this.vG)).a(r(iVar.ie(), iVar.mo28if()));
        this.Z = 5;
    }

    private v r(long j, long j2) {
        com.applovin.exoplayer2.l.a.checkNotNull(this.uz);
        p pVar = this.uz;
        if (pVar.uJ != null) {
            return new o(pVar, j);
        }
        if (j2 == -1 || pVar.uI <= 0) {
            return new v.b(pVar.dd());
        }
        a aVar = new a(pVar, this.vK, j, j2);
        this.vQ = aVar;
        return aVar.hS();
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(j jVar) {
        this.vG = jVar;
        this.vH = jVar.y(0, 1);
        jVar.ig();
    }

    @Override // com.applovin.exoplayer2.e.h
    public boolean a(i iVar) throws IOException {
        n.a(iVar, false);
        return n.b(iVar);
    }

    @Override // com.applovin.exoplayer2.e.h
    public int b(i iVar, u uVar) throws IOException {
        int i = this.Z;
        if (i == 0) {
            j(iVar);
            return 0;
        }
        if (i == 1) {
            k(iVar);
            return 0;
        }
        if (i == 2) {
            c(iVar);
            return 0;
        }
        if (i == 3) {
            l(iVar);
            return 0;
        }
        if (i == 4) {
            m(iVar);
            return 0;
        }
        if (i == 5) {
            return c(iVar, uVar);
        }
        throw new IllegalStateException();
    }

    @Override // com.applovin.exoplayer2.e.h
    public void o(long j, long j2) {
        if (j == 0) {
            this.Z = 0;
        } else {
            a aVar = this.vQ;
            if (aVar != null) {
                aVar.ag(j2);
            }
        }
        this.vS = j2 != 0 ? -1L : 0L;
        this.vR = 0;
        this.vN.U(0);
    }

    @Override // com.applovin.exoplayer2.e.h
    public void release() {
    }
}
