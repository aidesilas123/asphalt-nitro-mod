package com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts;

import com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.v;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;

/* JADX INFO: loaded from: classes2.dex */
public final class t implements q {
    public com.fyber.inneractive.sdk.player.exoplayer2.util.r a;
    public com.fyber.inneractive.sdk.player.exoplayer2.extractor.n b;
    public boolean c;

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.q
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.util.k kVar) {
        long j;
        boolean z = this.c;
        long j2 = C.TIME_UNSET;
        if (!z) {
            if (this.a.a() == C.TIME_UNSET) {
                return;
            }
            this.b.a(com.fyber.inneractive.sdk.player.exoplayer2.i.a((String) null, MimeTypes.APPLICATION_SCTE35, this.a.a()));
            this.c = true;
        }
        int iA = kVar.a();
        this.b.a(kVar, iA);
        com.fyber.inneractive.sdk.player.exoplayer2.extractor.n nVar = this.b;
        com.fyber.inneractive.sdk.player.exoplayer2.util.r rVar = this.a;
        if (rVar.c == C.TIME_UNSET) {
            j = rVar.a;
            if (j == Long.MAX_VALUE) {
            }
            nVar.a(j, 1, iA, 0, null);
        }
        j2 = rVar.c;
        j = j2;
        nVar.a(j, 1, iA, 0, null);
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.q
    public void a(com.fyber.inneractive.sdk.player.exoplayer2.util.r rVar, com.fyber.inneractive.sdk.player.exoplayer2.extractor.h hVar, v.d dVar) {
        this.a = rVar;
        dVar.a();
        com.fyber.inneractive.sdk.player.exoplayer2.extractor.n nVarA = hVar.a(dVar.c(), 4);
        this.b = nVarA;
        nVarA.a(com.fyber.inneractive.sdk.player.exoplayer2.i.a(dVar.b(), MimeTypes.APPLICATION_SCTE35, null, -1, null));
    }
}
