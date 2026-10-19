package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class XN implements InterfaceC0899Af {
    public final XH A00;
    public final XG A01;
    public final AJ[] A02;

    public XN(AJ... ajArr) {
        AJ[] ajArr2 = (AJ[]) Arrays.copyOf(ajArr, ajArr.length + 2);
        this.A02 = ajArr2;
        XH xh = new XH();
        this.A00 = xh;
        XG xg = new XG();
        this.A01 = xg;
        ajArr2[ajArr.length] = xh;
        ajArr2[ajArr.length + 1] = xg;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0899Af
    public final C08749f A3X(C08749f c08749f) {
        this.A00.A0B(c08749f.A02);
        return new C08749f(this.A01.A01(c08749f.A01), this.A01.A00(c08749f.A00), c08749f.A02);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0899Af
    public final AJ[] A5z() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0899Af
    public final long A7H(long j) {
        return this.A01.A02(j);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0899Af
    public final long A7s() {
        return this.A00.A0A();
    }
}
