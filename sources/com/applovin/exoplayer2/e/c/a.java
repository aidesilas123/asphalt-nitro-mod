package com.applovin.exoplayer2.e.c;

import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.b.a;
import com.applovin.exoplayer2.e.c.d;
import com.applovin.exoplayer2.e.x;
import com.applovin.exoplayer2.l.y;
import com.applovin.exoplayer2.v;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
final class a extends d {
    private static final int[] vT = {5512, 11025, 22050, 44100};
    private boolean vJ;
    private boolean vU;
    private int vV;

    public a(x xVar) {
        super(xVar);
    }

    @Override // com.applovin.exoplayer2.e.c.d
    protected boolean a(y yVar, long j) throws ai {
        if (this.vV == 2) {
            int iPj = yVar.pj();
            this.wl.c(yVar, iPj);
            this.wl.a(j, 1, iPj, 0, null);
            return true;
        }
        int iPo = yVar.po();
        if (iPo != 0 || this.vJ) {
            if (this.vV == 10 && iPo != 1) {
                return false;
            }
            int iPj2 = yVar.pj();
            this.wl.c(yVar, iPj2);
            this.wl.a(j, 1, iPj2, 0, null);
            return true;
        }
        int iPj3 = yVar.pj();
        byte[] bArr = new byte[iPj3];
        yVar.r(bArr, 0, iPj3);
        a.C0019a c0019aB = com.applovin.exoplayer2.b.a.b(bArr);
        this.wl.j(new v.a().m(MimeTypes.AUDIO_AAC).k(c0019aB.dw).N(c0019aB.dL).O(c0019aB.js).c(Collections.singletonList(bArr)).bT());
        this.vJ = true;
        return false;
    }

    @Override // com.applovin.exoplayer2.e.c.d
    protected boolean e(y yVar) throws d.a {
        if (this.vU) {
            yVar.fz(1);
        } else {
            int iPo = yVar.po();
            int i = (iPo >> 4) & 15;
            this.vV = i;
            if (i == 2) {
                this.wl.j(new v.a().m(MimeTypes.AUDIO_MPEG).N(1).O(vT[(iPo >> 2) & 3]).bT());
                this.vJ = true;
            } else if (i == 7 || i == 8) {
                this.wl.j(new v.a().m(i == 7 ? MimeTypes.AUDIO_ALAW : MimeTypes.AUDIO_MLAW).N(1).O(8000).bT());
                this.vJ = true;
            } else if (i != 10) {
                throw new d.a("Audio format not supported: " + this.vV);
            }
            this.vU = true;
        }
        return true;
    }
}
