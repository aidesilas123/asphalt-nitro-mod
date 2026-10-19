package com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts;

import com.fyber.inneractive.sdk.player.exoplayer2.extractor.m;
import com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.v;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements com.fyber.inneractive.sdk.player.exoplayer2.extractor.f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f2384e = com.fyber.inneractive.sdk.player.exoplayer2.util.u.a("ID3");
    public final long a;
    public final com.fyber.inneractive.sdk.player.exoplayer2.util.k b = new com.fyber.inneractive.sdk.player.exoplayer2.util.k(200);
    public d c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2385d;

    public c(long j) {
        this.a = j;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public int a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.g gVar, com.fyber.inneractive.sdk.player.exoplayer2.extractor.l lVar) throws InterruptedException, IOException {
        int iA = ((com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar).a(this.b.a, 0, 200);
        if (iA == -1) {
            return -1;
        }
        this.b.e(0);
        this.b.d(iA);
        if (!this.f2385d) {
            this.c.o = this.a;
            this.f2385d = true;
        }
        this.c.a(this.b);
        return 0;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public void a(long j, long j2) {
        this.f2385d = false;
        this.c.c();
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.h hVar) {
        d dVar = new d(true, null);
        this.c = dVar;
        dVar.a(hVar, new v.d(Integer.MIN_VALUE, 0, 1));
        hVar.c();
        hVar.a(new m.a(C.TIME_UNSET));
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x004a, code lost:
    
        if ((r1 - r4) < 8192) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x004c, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0042, code lost:
    
        r6.f2229e = 0;
        r1 = r1 + 1;
     */
    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.g r11) throws java.lang.InterruptedException, java.io.IOException {
        /*
            r10 = this;
            com.fyber.inneractive.sdk.player.exoplayer2.util.k r0 = new com.fyber.inneractive.sdk.player.exoplayer2.util.k
            r1 = 10
            r0.<init>(r1)
            com.fyber.inneractive.sdk.player.exoplayer2.util.j r2 = new com.fyber.inneractive.sdk.player.exoplayer2.util.j
            byte[] r3 = r0.a
            int r4 = r3.length
            r2.<init>(r3, r4)
            r3 = 0
            r4 = 0
        L11:
            byte[] r5 = r0.a
            r6 = r11
            com.fyber.inneractive.sdk.player.exoplayer2.extractor.b r6 = (com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) r6
            r6.a(r5, r3, r1, r3)
            r0.e(r3)
            int r5 = r0.n()
            int r7 = com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.c.f2384e
            if (r5 == r7) goto L76
            r6.f2229e = r3
            r6.a(r4, r3)
            r1 = r4
        L2a:
            r11 = 0
            r5 = 0
        L2c:
            byte[] r7 = r0.a
            r8 = 2
            r6.a(r7, r3, r8, r3)
            r0.e(r3)
            int r7 = r0.q()
            r8 = 65526(0xfff6, float:9.1821E-41)
            r7 = r7 & r8
            r8 = 65520(0xfff0, float:9.1813E-41)
            if (r7 == r8) goto L51
            r6.f2229e = r3
            int r1 = r1 + 1
            int r11 = r1 - r4
            r5 = 8192(0x2000, float:1.148E-41)
            if (r11 < r5) goto L4d
            return r3
        L4d:
            r6.a(r1, r3)
            goto L2a
        L51:
            r7 = 1
            int r11 = r11 + r7
            r8 = 4
            if (r11 < r8) goto L5b
            r9 = 188(0xbc, float:2.63E-43)
            if (r5 <= r9) goto L5b
            return r7
        L5b:
            byte[] r7 = r0.a
            r6.a(r7, r3, r8, r3)
            r7 = 14
            r2.b(r7)
            r7 = 13
            int r7 = r2.a(r7)
            r8 = 6
            if (r7 > r8) goto L6f
            return r3
        L6f:
            int r8 = r7 + (-6)
            r6.a(r8, r3)
            int r5 = r5 + r7
            goto L2c
        L76:
            r5 = 3
            r0.f(r5)
            int r5 = r0.k()
            int r7 = r5 + 10
            int r4 = r4 + r7
            r6.a(r5, r3)
            goto L11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.c.a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.g):boolean");
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public void b() {
    }
}
