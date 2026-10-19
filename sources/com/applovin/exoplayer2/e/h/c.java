package com.applovin.exoplayer2.e.h;

import android.net.Uri;
import com.applovin.exoplayer2.ai;
import com.applovin.exoplayer2.e.c0;
import com.applovin.exoplayer2.e.l;
import com.applovin.exoplayer2.e.u;
import com.applovin.exoplayer2.e.x;
import com.applovin.exoplayer2.l.y;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class c implements com.applovin.exoplayer2.e.h {
    public static final l vq = new l() { // from class: com.applovin.exoplayer2.e.h.j
        @Override // com.applovin.exoplayer2.e.l
        public /* synthetic */ com.applovin.exoplayer2.e.h[] a(Uri uri, Map map) {
            return c0.a(this, uri, map);
        }

        @Override // com.applovin.exoplayer2.e.l
        public final com.applovin.exoplayer2.e.h[] createExtractors() {
            return c.ih();
        }
    };
    private com.applovin.exoplayer2.e.j BG;
    private boolean BH;
    private h Bu;

    private static y I(y yVar) {
        yVar.fx(0);
        return yVar;
    }

    private boolean R(com.applovin.exoplayer2.e.i iVar) throws IOException {
        e eVar = new e();
        if (eVar.f(iVar, true) && (eVar.bs & 2) == 2) {
            int iMin = Math.min(eVar.BU, 8);
            y yVar = new y(iMin);
            iVar.c(yVar.hO(), 0, iMin);
            if (b.F(I(yVar))) {
                this.Bu = new b();
            } else if (i.F(I(yVar))) {
                this.Bu = new i();
            } else if (g.F(I(yVar))) {
                this.Bu = new g();
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.applovin.exoplayer2.e.h[] ih() {
        return new com.applovin.exoplayer2.e.h[]{new c()};
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(com.applovin.exoplayer2.e.j jVar) {
        this.BG = jVar;
    }

    @Override // com.applovin.exoplayer2.e.h
    public boolean a(com.applovin.exoplayer2.e.i iVar) throws IOException {
        try {
            return R(iVar);
        } catch (ai unused) {
            return false;
        }
    }

    @Override // com.applovin.exoplayer2.e.h
    public int b(com.applovin.exoplayer2.e.i iVar, u uVar) throws IOException {
        com.applovin.exoplayer2.l.a.N(this.BG);
        if (this.Bu == null) {
            if (!R(iVar)) {
                throw ai.c("Failed to determine bitstream type", null);
            }
            iVar.ic();
        }
        if (!this.BH) {
            x xVarY = this.BG.y(0, 1);
            this.BG.ig();
            this.Bu.a(this.BG, xVarY);
            this.BH = true;
        }
        return this.Bu.b(iVar, uVar);
    }

    @Override // com.applovin.exoplayer2.e.h
    public void o(long j, long j2) {
        h hVar = this.Bu;
        if (hVar != null) {
            hVar.o(j, j2);
        }
    }

    @Override // com.applovin.exoplayer2.e.h
    public void release() {
    }
}
