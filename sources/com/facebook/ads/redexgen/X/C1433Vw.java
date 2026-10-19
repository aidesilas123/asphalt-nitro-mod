package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.thirdparty.metadata.Metadata;
import com.facebook.ads.internal.exoplayer2.thirdparty.metadata.emsg.EventMessage;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Vw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1433Vw implements DE {
    @Override // com.facebook.ads.redexgen.X.DE
    public final Metadata A4x(D1 d1) {
        ByteBuffer byteBuffer = d1.A01;
        byte[] bArrArray = byteBuffer.array();
        int iLimit = byteBuffer.limit();
        C1062Hh c1062Hh = new C1062Hh(bArrArray, iLimit);
        String strA0Q = c1062Hh.A0Q();
        String strA0Q2 = c1062Hh.A0Q();
        long jA0M = c1062Hh.A0M();
        return new Metadata(new EventMessage(strA0Q, strA0Q2, C1078Hx.A0F(c1062Hh.A0M(), 1000L, jA0M), c1062Hh.A0M(), Arrays.copyOfRange(bArrArray, c1062Hh.A06(), iLimit), C1078Hx.A0F(c1062Hh.A0M(), 1000000L, jA0M)));
    }
}
