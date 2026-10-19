package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Uq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1403Uq implements InterfaceC1638bj<IV, C1081Ia> {
    public C1400Un A00;

    public C1403Uq(C1400Un c1400Un) {
        this.A00 = c1400Un;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1638bj
    public final void A5X(C1635bg<IV, C1081Ia> c1635bg, InterfaceC1624bV interfaceC1624bV) {
        switch (IT.A00[interfaceC1624bV.A8A(c1635bg).ordinal()]) {
            case 1:
            case 2:
                this.A00.A02(c1635bg, interfaceC1624bV);
                break;
        }
    }
}
