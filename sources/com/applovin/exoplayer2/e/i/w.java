package com.applovin.exoplayer2.e.i;

import android.net.Uri;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.core.view.InputDeviceCompat;
import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.e.i.ad;
import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.l.ag;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class w implements com.applovin.exoplayer2.e.h {
    public static final com.applovin.exoplayer2.e.l vq = new com.applovin.exoplayer2.e.l() { // from class: com.applovin.exoplayer2.e.i.e0
        @Override // com.applovin.exoplayer2.e.l
        public /* synthetic */ com.applovin.exoplayer2.e.h[] a(Uri uri, Map map) {
            return com.applovin.exoplayer2.e.c0.a(this, uri, map);
        }

        @Override // com.applovin.exoplayer2.e.l
        public final com.applovin.exoplayer2.e.h[] createExtractors() {
            return w.ih();
        }
    };
    private com.applovin.exoplayer2.e.j BG;
    private final SparseArray<a> Fa;
    private final com.applovin.exoplayer2.l.y Fb;
    private final v Fc;
    private boolean Fd;
    private boolean Fe;
    private boolean Ff;
    private long Fg;

    @Nullable
    private u Fh;
    private boolean vB;
    private final ag zS;

    private static final class a {
        private final com.applovin.exoplayer2.l.x EN = new com.applovin.exoplayer2.l.x(new byte[64]);
        private boolean EO;
        private boolean EP;
        private boolean EQ;
        private int ER;
        private final j Fi;
        private long rJ;
        private final ag zS;

        public a(j jVar, ag agVar) {
            this.Fi = jVar;
            this.zS = agVar;
        }

        private void jd() {
            this.EN.bR(8);
            this.EO = this.EN.ik();
            this.EP = this.EN.ik();
            this.EN.bR(6);
            this.ER = this.EN.bQ(8);
        }

        private void js() {
            this.rJ = 0L;
            if (this.EO) {
                this.EN.bR(4);
                long jBQ = ((long) this.EN.bQ(3)) << 30;
                this.EN.bR(1);
                long jBQ2 = jBQ | ((long) (this.EN.bQ(15) << 15));
                this.EN.bR(1);
                long jBQ3 = jBQ2 | ((long) this.EN.bQ(15));
                this.EN.bR(1);
                if (!this.EQ && this.EP) {
                    this.EN.bR(4);
                    long jBQ4 = ((long) this.EN.bQ(3)) << 30;
                    this.EN.bR(1);
                    long jBQ5 = jBQ4 | ((long) (this.EN.bQ(15) << 15));
                    this.EN.bR(1);
                    long jBQ6 = jBQ5 | ((long) this.EN.bQ(15));
                    this.EN.bR(1);
                    this.zS.br(jBQ6);
                    this.EQ = true;
                }
                this.rJ = this.zS.br(jBQ3);
            }
        }

        public void K(com.applovin.exoplayer2.l.y yVar) throws ai {
            yVar.r(this.EN.tf, 0, 3);
            this.EN.fx(0);
            jd();
            yVar.r(this.EN.tf, 0, this.ER);
            this.EN.fx(0);
            js();
            this.Fi.e(this.rJ, 4);
            this.Fi.K(yVar);
            this.Fi.jc();
        }

        public void jb() {
            this.EQ = false;
            this.Fi.jb();
        }
    }

    public w() {
        this(new ag(0L));
    }

    public w(ag agVar) {
        this.zS = agVar;
        this.Fb = new com.applovin.exoplayer2.l.y(4096);
        this.Fa = new SparseArray<>();
        this.Fc = new v();
    }

    private void aH(long j) {
        if (this.vB) {
            return;
        }
        this.vB = true;
        if (this.Fc.dd() == C.TIME_UNSET) {
            this.BG.a(new v.b(this.Fc.dd()));
            return;
        }
        u uVar = new u(this.Fc.ju(), this.Fc.dd(), j);
        this.Fh = uVar;
        this.BG.a(uVar.hS());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.applovin.exoplayer2.e.h[] ih() {
        return new com.applovin.exoplayer2.e.h[]{new w()};
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(com.applovin.exoplayer2.e.j jVar) {
        this.BG = jVar;
    }

    @Override // com.applovin.exoplayer2.e.h
    public boolean a(com.applovin.exoplayer2.e.i iVar) throws IOException {
        byte[] bArr = new byte[14];
        iVar.c(bArr, 0, 14);
        if (442 != (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        iVar.bI(bArr[13] & 7);
        iVar.c(bArr, 0, 3);
        return 1 == ((((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8)) | (bArr[2] & 255));
    }

    @Override // com.applovin.exoplayer2.e.h
    public int b(com.applovin.exoplayer2.e.i iVar, com.applovin.exoplayer2.e.u uVar) throws IOException {
        com.applovin.exoplayer2.l.a.N(this.BG);
        long jMo28if = iVar.mo28if();
        if ((jMo28if != -1) && !this.Fc.jt()) {
            return this.Fc.j(iVar, uVar);
        }
        aH(jMo28if);
        u uVar2 = this.Fh;
        if (uVar2 != null && uVar2.hT()) {
            return this.Fh.a(iVar, uVar);
        }
        iVar.ic();
        long jId = jMo28if != -1 ? jMo28if - iVar.id() : -1L;
        if ((jId != -1 && jId < 4) || !iVar.b(this.Fb.hO(), 0, 4, true)) {
            return -1;
        }
        this.Fb.fx(0);
        int iPx = this.Fb.px();
        if (iPx == 441) {
            return -1;
        }
        if (iPx == 442) {
            iVar.c(this.Fb.hO(), 0, 10);
            this.Fb.fx(9);
            iVar.bH((this.Fb.po() & 7) + 14);
            return 0;
        }
        if (iPx == 443) {
            iVar.c(this.Fb.hO(), 0, 2);
            this.Fb.fx(0);
            iVar.bH(this.Fb.pp() + 6);
            return 0;
        }
        if (((iPx & InputDeviceCompat.SOURCE_ANY) >> 8) != 1) {
            iVar.bH(1);
            return 0;
        }
        int i = iPx & 255;
        a aVar = this.Fa.get(i);
        if (!this.Fd) {
            if (aVar == null) {
                j kVar = null;
                if (i == 189) {
                    kVar = new b();
                    this.Fe = true;
                    this.Fg = iVar.ie();
                } else if ((i & 224) == 192) {
                    kVar = new q();
                    this.Fe = true;
                    this.Fg = iVar.ie();
                } else if ((i & PsExtractor.VIDEO_STREAM_MASK) == 224) {
                    kVar = new k();
                    this.Ff = true;
                    this.Fg = iVar.ie();
                }
                if (kVar != null) {
                    kVar.a(this.BG, new ad.d(i, 256));
                    aVar = new a(kVar, this.zS);
                    this.Fa.put(i, aVar);
                }
            }
            if (iVar.ie() > ((this.Fe && this.Ff) ? this.Fg + PlaybackStateCompat.ACTION_PLAY_FROM_URI : PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED)) {
                this.Fd = true;
                this.BG.ig();
            }
        }
        iVar.c(this.Fb.hO(), 0, 2);
        this.Fb.fx(0);
        int iPp = this.Fb.pp() + 6;
        if (aVar == null) {
            iVar.bH(iPp);
        } else {
            this.Fb.U(iPp);
            iVar.a(this.Fb.hO(), 0, iPp);
            this.Fb.fx(6);
            aVar.K(this.Fb);
            com.applovin.exoplayer2.l.y yVar = this.Fb;
            yVar.fA(yVar.pl());
        }
        return 0;
    }

    @Override // com.applovin.exoplayer2.e.h
    public void o(long j, long j2) {
        boolean z = this.zS.pU() == C.TIME_UNSET;
        if (!z) {
            long jPS = this.zS.pS();
            z = (jPS == C.TIME_UNSET || jPS == 0 || jPS == j2) ? false : true;
        }
        if (z) {
            this.zS.aI(j2);
        }
        u uVar = this.Fh;
        if (uVar != null) {
            uVar.ag(j2);
        }
        for (int i = 0; i < this.Fa.size(); i++) {
            this.Fa.valueAt(i).jb();
        }
    }

    @Override // com.applovin.exoplayer2.e.h
    public void release() {
    }
}
