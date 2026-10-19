package com.applovin.exoplayer2.e.i;

import android.net.Uri;
import com.applovin.exoplayer2.e.i.ad;
import com.applovin.exoplayer2.e.v;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class a implements com.applovin.exoplayer2.e.h {
    public static final com.applovin.exoplayer2.e.l vq = new com.applovin.exoplayer2.e.l() { // from class: com.applovin.exoplayer2.e.i.a0
        @Override // com.applovin.exoplayer2.e.l
        public /* synthetic */ com.applovin.exoplayer2.e.h[] a(Uri uri, Map map) {
            return com.applovin.exoplayer2.e.c0.a(this, uri, map);
        }

        @Override // com.applovin.exoplayer2.e.l
        public final com.applovin.exoplayer2.e.h[] createExtractors() {
            return a.ih();
        }
    };
    private final b Co = new b();
    private final com.applovin.exoplayer2.l.y Cp = new com.applovin.exoplayer2.l.y(2786);
    private boolean Cq;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.applovin.exoplayer2.e.h[] ih() {
        return new com.applovin.exoplayer2.e.h[]{new a()};
    }

    @Override // com.applovin.exoplayer2.e.h
    public void a(com.applovin.exoplayer2.e.j jVar) {
        this.Co.a(jVar, new ad.d(0, 1));
        jVar.ig();
        jVar.a(new v.b(C.TIME_UNSET));
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0040, code lost:
    
        if ((r4 - r3) < 8192) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0042, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0037, code lost:
    
        r8.ic();
        r4 = r4 + 1;
     */
    @Override // com.applovin.exoplayer2.e.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean a(com.applovin.exoplayer2.e.i r8) throws java.io.IOException {
        /*
            r7 = this;
            com.applovin.exoplayer2.l.y r0 = new com.applovin.exoplayer2.l.y
            r1 = 10
            r0.<init>(r1)
            r2 = 0
            r3 = 0
        L9:
            byte[] r4 = r0.hO()
            r8.c(r4, r2, r1)
            r0.fx(r2)
            int r4 = r0.pt()
            r5 = 4801587(0x494433, float:6.728456E-39)
            if (r4 == r5) goto L5f
            r8.ic()
            r8.bI(r3)
            r4 = r3
        L23:
            r1 = 0
        L24:
            byte[] r5 = r0.hO()
            r6 = 6
            r8.c(r5, r2, r6)
            r0.fx(r2)
            int r5 = r0.pp()
            r6 = 2935(0xb77, float:4.113E-42)
            if (r5 == r6) goto L47
            r8.ic()
            int r4 = r4 + 1
            int r1 = r4 - r3
            r5 = 8192(0x2000, float:1.148E-41)
            if (r1 < r5) goto L43
            return r2
        L43:
            r8.bI(r4)
            goto L23
        L47:
            r5 = 1
            int r1 = r1 + r5
            r6 = 4
            if (r1 < r6) goto L4d
            return r5
        L4d:
            byte[] r5 = r0.hO()
            int r5 = com.applovin.exoplayer2.b.b.c(r5)
            r6 = -1
            if (r5 != r6) goto L59
            return r2
        L59:
            int r5 = r5 + (-6)
            r8.bI(r5)
            goto L24
        L5f:
            r4 = 3
            r0.fz(r4)
            int r4 = r0.pC()
            int r5 = r4 + 10
            int r3 = r3 + r5
            r8.bI(r4)
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.e.i.a.a(com.applovin.exoplayer2.e.i):boolean");
    }

    @Override // com.applovin.exoplayer2.e.h
    public int b(com.applovin.exoplayer2.e.i iVar, com.applovin.exoplayer2.e.u uVar) throws IOException {
        int i = iVar.read(this.Cp.hO(), 0, 2786);
        if (i == -1) {
            return -1;
        }
        this.Cp.fx(0);
        this.Cp.fA(i);
        if (!this.Cq) {
            this.Co.e(0L, 4);
            this.Cq = true;
        }
        this.Co.K(this.Cp);
        return 0;
    }

    @Override // com.applovin.exoplayer2.e.h
    public void o(long j, long j2) {
        this.Cq = false;
        this.Co.jb();
    }

    @Override // com.applovin.exoplayer2.e.h
    public void release() {
    }
}
