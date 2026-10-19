package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.thirdparty.metadata.Metadata;
import java.io.EOFException;
import java.io.IOException;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class Bf {
    public final C1062Hh A00 = new C1062Hh(10);

    public final Metadata A00(InterfaceC0921Bb interfaceC0921Bb, DQ dq) throws InterruptedException, IOException {
        int i = 0;
        Metadata metadataA0O = null;
        while (true) {
            try {
                interfaceC0921Bb.ADl(this.A00.A00, 0, 10);
                this.A00.A0Y(0);
                if (this.A00.A0G() != C1431Vu.A03) {
                    break;
                }
                this.A00.A0Z(3);
                int iA0D = this.A00.A0D();
                int i2 = iA0D + 10;
                if (metadataA0O == null) {
                    byte[] bArr = new byte[i2];
                    System.arraycopy(this.A00.A00, 0, bArr, 0, 10);
                    interfaceC0921Bb.ADl(bArr, 10, iA0D);
                    metadataA0O = new C1431Vu(dq).A0O(bArr, i2);
                } else {
                    interfaceC0921Bb.A3S(iA0D);
                }
                i += i2;
            } catch (EOFException unused) {
            }
        }
        interfaceC0921Bb.AEm();
        interfaceC0921Bb.A3S(i);
        return metadataA0O;
    }
}
