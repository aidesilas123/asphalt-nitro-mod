package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import java.io.EOFException;
import java.io.IOException;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class X2 implements InterfaceC0930Bm {
    @Override // com.facebook.ads.redexgen.X.InterfaceC0930Bm
    public final void A5j(Format format) {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0930Bm
    public final int AEq(InterfaceC0921Bb interfaceC0921Bb, int i, boolean z) throws InterruptedException, IOException {
        int iAFb = interfaceC0921Bb.AFb(i);
        if (iAFb != -1) {
            return iAFb;
        }
        if (z) {
            return -1;
        }
        throw new EOFException();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0930Bm
    public final void AEr(C1062Hh c1062Hh, int i) {
        c1062Hh.A0Z(i);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0930Bm
    public final void AEs(long j, int i, int i2, int i3, C0929Bl c0929Bl) {
    }
}
