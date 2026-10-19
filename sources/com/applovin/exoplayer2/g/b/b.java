package com.applovin.exoplayer2.g.b;

import com.applovin.exoplayer2.g.d;
import com.applovin.exoplayer2.g.g;
import com.applovin.exoplayer2.l.y;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class b extends g {
    public a W(y yVar) {
        return new a((String) com.applovin.exoplayer2.l.a.checkNotNull(yVar.pI()), (String) com.applovin.exoplayer2.l.a.checkNotNull(yVar.pI()), yVar.pz(), yVar.pz(), Arrays.copyOfRange(yVar.hO(), yVar.il(), yVar.pk()));
    }

    @Override // com.applovin.exoplayer2.g.g
    protected com.applovin.exoplayer2.g.a a(d dVar, ByteBuffer byteBuffer) {
        return new com.applovin.exoplayer2.g.a(W(new y(byteBuffer.array(), byteBuffer.limit())));
    }
}
