package com.applovin.exoplayer2.e.d;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.e.g.g;
import com.applovin.exoplayer2.e.h;
import com.applovin.exoplayer2.e.i;
import com.applovin.exoplayer2.e.j;
import com.applovin.exoplayer2.e.u;
import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.g.a;
import com.applovin.exoplayer2.l.y;
import com.applovin.exoplayer2.v;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class a implements h {
    private int Z;
    private j vG;
    private int wr;
    private int ws;

    @Nullable
    private com.applovin.exoplayer2.g.f.b wu;
    private i wv;
    private c ww;

    @Nullable
    private g wx;
    private final y uO = new y(6);
    private long wt = -1;

    private void a(a.InterfaceC0038a... interfaceC0038aArr) {
        ((j) com.applovin.exoplayer2.l.a.checkNotNull(this.vG)).y(1024, 4).j(new v.a().l("image/jpeg").b(new com.applovin.exoplayer2.g.a(interfaceC0038aArr)).bT());
    }

    @Nullable
    private static com.applovin.exoplayer2.g.f.b c(String str, long j) throws IOException {
        b bVarE;
        if (j == -1 || (bVarE = e.E(str)) == null) {
            return null;
        }
        return bVarE.ao(j);
    }

    private void iu() {
        a((a.InterfaceC0038a) com.applovin.exoplayer2.l.a.checkNotNull(this.wu));
        this.Z = 5;
    }

    private void iv() {
        a(new a.InterfaceC0038a[0]);
        ((j) com.applovin.exoplayer2.l.a.checkNotNull(this.vG)).ig();
        this.vG.a(new v.b(C.TIME_UNSET));
        this.Z = 6;
    }

    private int s(i iVar) throws IOException {
        this.uO.U(2);
        iVar.c(this.uO.hO(), 0, 2);
        return this.uO.pp();
    }

    private void t(i iVar) throws IOException {
        this.uO.U(2);
        iVar.c(this.uO.hO(), 0, 2);
        iVar.bI(this.uO.pp() - 2);
    }

    private void u(i iVar) throws IOException {
        this.uO.U(2);
        iVar.a(this.uO.hO(), 0, 2);
        int iPp = this.uO.pp();
        this.wr = iPp;
        if (iPp == 65498) {
            if (this.wt != -1) {
                this.Z = 4;
                return;
            } else {
                iv();
                return;
            }
        }
        if ((iPp < 65488 || iPp > 65497) && iPp != 65281) {
            this.Z = 1;
        }
    }

    private void v(i iVar) throws IOException {
        this.uO.U(2);
        iVar.a(this.uO.hO(), 0, 2);
        this.ws = this.uO.pp() - 2;
        this.Z = 2;
    }

    private void w(i iVar) throws IOException {
        String strPI;
        if (this.wr == 65505) {
            y yVar = new y(this.ws);
            iVar.a(yVar.hO(), 0, this.ws);
            if (this.wu == null && "http://ns.adobe.com/xap/1.0/".equals(yVar.pI()) && (strPI = yVar.pI()) != null) {
                com.applovin.exoplayer2.g.f.b bVarC = c(strPI, iVar.mo28if());
                this.wu = bVarC;
                if (bVarC != null) {
                    this.wt = bVarC.Kg;
                }
            }
        } else {
            iVar.bH(this.ws);
        }
        this.Z = 0;
    }

    private void x(i iVar) throws IOException {
        if (!iVar.b(this.uO.hO(), 0, 1, true)) {
            iv();
            return;
        }
        iVar.ic();
        if (this.wx == null) {
            this.wx = new g();
        }
        c cVar = new c(iVar, this.wt);
        this.ww = cVar;
        if (!this.wx.a(cVar)) {
            iv();
        } else {
            this.wx.a(new d(this.wt, (j) com.applovin.exoplayer2.l.a.checkNotNull(this.vG)));
            iu();
        }
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(j jVar) {
        this.vG = jVar;
    }

    @Override // com.applovin.exoplayer2.e.h
    public boolean a(i iVar) throws IOException {
        if (s(iVar) != 65496) {
            return false;
        }
        int iS = s(iVar);
        this.wr = iS;
        if (iS == 65504) {
            t(iVar);
            this.wr = s(iVar);
        }
        if (this.wr != 65505) {
            return false;
        }
        iVar.bI(2);
        this.uO.U(6);
        iVar.c(this.uO.hO(), 0, 6);
        return this.uO.pv() == 1165519206 && this.uO.pp() == 0;
    }

    @Override // com.applovin.exoplayer2.e.h
    public int b(i iVar, u uVar) throws IOException {
        int i = this.Z;
        if (i == 0) {
            u(iVar);
            return 0;
        }
        if (i == 1) {
            v(iVar);
            return 0;
        }
        if (i == 2) {
            w(iVar);
            return 0;
        }
        if (i == 4) {
            long jIe = iVar.ie();
            long j = this.wt;
            if (jIe != j) {
                uVar.uc = j;
                return 1;
            }
            x(iVar);
            return 0;
        }
        if (i != 5) {
            if (i == 6) {
                return -1;
            }
            throw new IllegalStateException();
        }
        if (this.ww == null || iVar != this.wv) {
            this.wv = iVar;
            this.ww = new c(iVar, this.wt);
        }
        int iB = ((g) com.applovin.exoplayer2.l.a.checkNotNull(this.wx)).b(this.ww, uVar);
        if (iB == 1) {
            uVar.uc += this.wt;
        }
        return iB;
    }

    @Override // com.applovin.exoplayer2.e.h
    public void o(long j, long j2) {
        if (j == 0) {
            this.Z = 0;
            this.wx = null;
        } else if (this.Z == 5) {
            ((g) com.applovin.exoplayer2.l.a.checkNotNull(this.wx)).o(j, j2);
        }
    }

    @Override // com.applovin.exoplayer2.e.h
    public void release() {
        g gVar = this.wx;
        if (gVar != null) {
            gVar.release();
        }
    }
}
