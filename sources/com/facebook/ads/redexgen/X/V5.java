package com.facebook.ads.redexgen.X;

import android.net.Uri;
import java.io.IOException;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class V5 implements InterfaceC1033Gc {
    public final int A00;
    public final InterfaceC1033Gc A01;
    public final C1066Hl A02;

    public V5(InterfaceC1033Gc interfaceC1033Gc, C1066Hl c1066Hl, int i) {
        this.A01 = (InterfaceC1033Gc) HI.A01(interfaceC1033Gc);
        this.A02 = (C1066Hl) HI.A01(c1066Hl);
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final Uri A85() {
        return this.A01.A85();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final long ADb(C1037Gg c1037Gg) throws IOException {
        this.A02.A02(this.A00);
        return this.A01.ADb(c1037Gg);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final void close() throws IOException {
        this.A01.close();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        this.A02.A02(this.A00);
        return this.A01.read(bArr, i, i2);
    }
}
