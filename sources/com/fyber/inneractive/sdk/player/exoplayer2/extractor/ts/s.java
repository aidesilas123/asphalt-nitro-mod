package com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts;

import com.fyber.inneractive.sdk.player.exoplayer2.extractor.ts.v;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class s {
    public final List<com.fyber.inneractive.sdk.player.exoplayer2.i> a;
    public final com.fyber.inneractive.sdk.player.exoplayer2.extractor.n[] b;

    public s(List<com.fyber.inneractive.sdk.player.exoplayer2.i> list) {
        this.a = list;
        this.b = new com.fyber.inneractive.sdk.player.exoplayer2.extractor.n[list.size()];
    }

    public void a(com.fyber.inneractive.sdk.player.exoplayer2.extractor.h hVar, v.d dVar) {
        for (int i = 0; i < this.b.length; i++) {
            dVar.a();
            com.fyber.inneractive.sdk.player.exoplayer2.extractor.n nVarA = hVar.a(dVar.c(), 3);
            com.fyber.inneractive.sdk.player.exoplayer2.i iVar = this.a.get(i);
            String str = iVar.f2476f;
            com.fyber.inneractive.sdk.player.exoplayer2.util.a.a(MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str), "Invalid closed caption mime type provided: " + str);
            String strB = iVar.a;
            if (strB == null) {
                strB = dVar.b();
            }
            nVarA.a(com.fyber.inneractive.sdk.player.exoplayer2.i.a(strB, str, null, -1, iVar.x, iVar.y, iVar.z, null, Long.MAX_VALUE, Collections.emptyList()));
            this.b[i] = nVarA;
        }
    }
}
