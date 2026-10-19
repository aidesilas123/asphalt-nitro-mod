package com.applovin.exoplayer2.h;

import androidx.annotation.Nullable;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class c implements s {
    private final com.applovin.exoplayer2.e.l KP;

    @Nullable
    private com.applovin.exoplayer2.e.h KQ;

    @Nullable
    private com.applovin.exoplayer2.e.i KR;

    public c(com.applovin.exoplayer2.e.l lVar) {
        this.KP = lVar;
    }

    @Override // com.applovin.exoplayer2.h.s
    public int a(com.applovin.exoplayer2.e.u uVar) throws IOException {
        return ((com.applovin.exoplayer2.e.h) com.applovin.exoplayer2.l.a.checkNotNull(this.KQ)).b((com.applovin.exoplayer2.e.i) com.applovin.exoplayer2.l.a.checkNotNull(this.KR), uVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0067  */
    @Override // com.applovin.exoplayer2.h.s
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(com.applovin.exoplayer2.k.g r8, android.net.Uri r9, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r10, long r11, long r13, com.applovin.exoplayer2.e.j r15) throws java.io.IOException {
        /*
            r7 = this;
            com.applovin.exoplayer2.e.e r6 = new com.applovin.exoplayer2.e.e
            r0 = r6
            r1 = r8
            r2 = r11
            r4 = r13
            r0.<init>(r1, r2, r4)
            r7.KR = r6
            com.applovin.exoplayer2.e.h r8 = r7.KQ
            if (r8 == 0) goto L10
            return
        L10:
            com.applovin.exoplayer2.e.l r8 = r7.KP
            com.applovin.exoplayer2.e.h[] r8 = r8.a(r9, r10)
            int r10 = r8.length
            r13 = 0
            r14 = 1
            if (r10 != r14) goto L20
            r8 = r8[r13]
            r7.KQ = r8
            goto L75
        L20:
            int r10 = r8.length
            r0 = 0
        L22:
            if (r0 >= r10) goto L71
            r1 = r8[r0]
            boolean r2 = r1.a(r6)     // Catch: java.lang.Throwable -> L42 java.io.EOFException -> L57
            if (r2 == 0) goto L35
            r7.KQ = r1     // Catch: java.lang.Throwable -> L42 java.io.EOFException -> L57
            com.applovin.exoplayer2.l.a.checkState(r14)
            r6.ic()
            goto L71
        L35:
            com.applovin.exoplayer2.e.h r1 = r7.KQ
            if (r1 != 0) goto L67
            long r1 = r6.ie()
            int r3 = (r1 > r11 ? 1 : (r1 == r11 ? 0 : -1))
            if (r3 != 0) goto L65
            goto L67
        L42:
            r8 = move-exception
            com.applovin.exoplayer2.e.h r9 = r7.KQ
            if (r9 != 0) goto L4f
            long r9 = r6.ie()
            int r15 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r15 != 0) goto L50
        L4f:
            r13 = 1
        L50:
            com.applovin.exoplayer2.l.a.checkState(r13)
            r6.ic()
            throw r8
        L57:
            com.applovin.exoplayer2.e.h r1 = r7.KQ
            if (r1 != 0) goto L67
            long r1 = r6.ie()
            int r3 = (r1 > r11 ? 1 : (r1 == r11 ? 0 : -1))
            if (r3 != 0) goto L65
            goto L67
        L65:
            r1 = 0
            goto L68
        L67:
            r1 = 1
        L68:
            com.applovin.exoplayer2.l.a.checkState(r1)
            r6.ic()
            int r0 = r0 + 1
            goto L22
        L71:
            com.applovin.exoplayer2.e.h r10 = r7.KQ
            if (r10 == 0) goto L7b
        L75:
            com.applovin.exoplayer2.e.h r8 = r7.KQ
            r8.a(r15)
            return
        L7b:
            com.applovin.exoplayer2.h.ae r10 = new com.applovin.exoplayer2.h.ae
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = "None of the available extractors ("
            r11.append(r12)
            java.lang.String r8 = com.applovin.exoplayer2.l.ai.h(r8)
            r11.append(r8)
            java.lang.String r8 = ") could read the stream."
            r11.append(r8)
            java.lang.String r8 = r11.toString()
            java.lang.Object r9 = com.applovin.exoplayer2.l.a.checkNotNull(r9)
            android.net.Uri r9 = (android.net.Uri) r9
            r10.<init>(r8, r9)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.h.c.a(com.applovin.exoplayer2.k.g, android.net.Uri, java.util.Map, long, long, com.applovin.exoplayer2.e.j):void");
    }

    @Override // com.applovin.exoplayer2.h.s
    public void kK() {
        com.applovin.exoplayer2.e.h hVar = this.KQ;
        if (hVar instanceof com.applovin.exoplayer2.e.f.d) {
            ((com.applovin.exoplayer2.e.f.d) hVar).iG();
        }
    }

    @Override // com.applovin.exoplayer2.h.s
    public long kL() {
        com.applovin.exoplayer2.e.i iVar = this.KR;
        if (iVar != null) {
            return iVar.ie();
        }
        return -1L;
    }

    @Override // com.applovin.exoplayer2.h.s
    public void o(long j, long j2) {
        ((com.applovin.exoplayer2.e.h) com.applovin.exoplayer2.l.a.checkNotNull(this.KQ)).o(j, j2);
    }

    @Override // com.applovin.exoplayer2.h.s
    public void release() {
        com.applovin.exoplayer2.e.h hVar = this.KQ;
        if (hVar != null) {
            hVar.release();
            this.KQ = null;
        }
        this.KR = null;
    }
}
