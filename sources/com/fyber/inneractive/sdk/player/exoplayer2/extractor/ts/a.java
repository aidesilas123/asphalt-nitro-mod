package com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts;

import com.fyber.inneractive.sdk.player.exoplayer2.extractor.m;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements com.fyber.inneractive.sdk.player.exoplayer2.extractor.f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f2378e = com.fyber.inneractive.sdk.player.exoplayer2.util.u.a("ID3");
    public final long a;
    public final com.fyber.inneractive.sdk.player.exoplayer2.util.k b = new com.fyber.inneractive.sdk.player.exoplayer2.util.k(2786);
    public b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2379d;

    public a(long j) {
        this.a = j;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public int a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.g gVar, com.fyber.inneractive.sdk.player.exoplayer2.extractor.l lVar) throws InterruptedException, IOException {
        int iA = ((com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) gVar).a(this.b.a, 0, 2786);
        if (iA == -1) {
            return -1;
        }
        this.b.e(0);
        this.b.d(iA);
        if (!this.f2379d) {
            this.c.l = this.a;
            this.f2379d = true;
        }
        this.c.a(this.b);
        return 0;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public void a(long j, long j2) {
        this.f2379d = false;
        this.c.a();
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.h hVar) {
        b bVar = new b(null);
        this.c = bVar;
        bVar.f2380d = "0";
        bVar.f2381e = hVar.a(0, 1);
        hVar.c();
        hVar.a(new m.a(C.TIME_UNSET));
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003c, code lost:
    
        if ((r1 - r3) < 8192) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003e, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0034, code lost:
    
        r5.f2229e = 0;
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
            r2 = 0
            r3 = 0
        L9:
            byte[] r4 = r0.a
            r5 = r11
            com.fyber.inneractive.sdk.player.exoplayer2.extractor.b r5 = (com.fyber.inneractive.sdk.player.exoplayer2.extractor.b) r5
            r5.a(r4, r2, r1, r2)
            r0.e(r2)
            int r4 = r0.n()
            int r6 = com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.a.f2378e
            if (r4 == r6) goto L68
            r5.f2229e = r2
            r5.a(r3, r2)
            r1 = r3
        L22:
            r11 = 0
        L23:
            byte[] r4 = r0.a
            r6 = 5
            r5.a(r4, r2, r6, r2)
            r0.e(r2)
            int r4 = r0.q()
            r7 = 2935(0xb77, float:4.113E-42)
            if (r4 == r7) goto L43
            r5.f2229e = r2
            int r1 = r1 + 1
            int r11 = r1 - r3
            r4 = 8192(0x2000, float:1.148E-41)
            if (r11 < r4) goto L3f
            return r2
        L3f:
            r5.a(r1, r2)
            goto L22
        L43:
            r4 = 1
            int r11 = r11 + r4
            r7 = 4
            if (r11 < r7) goto L49
            return r4
        L49:
            byte[] r4 = r0.a
            int r8 = r4.length
            r9 = -1
            if (r8 >= r6) goto L51
            r4 = -1
            goto L5f
        L51:
            r6 = r4[r7]
            r6 = r6 & 192(0xc0, float:2.69E-43)
            int r6 = r6 >> 6
            r4 = r4[r7]
            r4 = r4 & 63
            int r4 = com.fyber.inneractive.sdk.player.exoplayer2.audio.a.a(r6, r4)
        L5f:
            if (r4 != r9) goto L62
            return r2
        L62:
            int r4 = r4 + (-5)
            r5.a(r4, r2)
            goto L23
        L68:
            r4 = 3
            r0.f(r4)
            int r4 = r0.k()
            int r6 = r4 + 10
            int r3 = r3 + r6
            r5.a(r4, r2)
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.a.a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.g):boolean");
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.f
    public void b() {
    }
}
