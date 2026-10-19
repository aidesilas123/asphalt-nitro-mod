package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class Z5 implements C4W {
    public static String[] A01 = {"IP6gXu3Aic9rrZpr", "DSm6OHbiM4aoMyjFh2wy7Spd3inn5axc", "lJd94ygIcpnkIi9oYNWqXg3HQV8t0X4Q", "337I3pVrWHOBtYrFGcdtPHZp8Kpz9VIJ", "vd5lczoeg9gY82TvyWngHoQKFpNC9gt0", "CefcuhKyPhUbDvzsvxPUhaoMgi2Xy5FO", "Qia1n7qQgpdEP2KZeQvga8Xzcvoo51Ij", "UfDKqgBAky8ekVpIbdpaQQPTuf6RISL4"};
    public final /* synthetic */ ED A00;

    public Z5(ED ed) {
        this.A00 = ed;
    }

    @Override // com.facebook.ads.redexgen.X.C4W
    public final void AAU(AbstractC07714u abstractC07714u) {
        abstractC07714u.A0Z(true);
        if (abstractC07714u.A06 != null && abstractC07714u.A07 == null) {
            abstractC07714u.A06 = null;
        }
        abstractC07714u.A07 = null;
        if (abstractC07714u.A0A() || this.A00.A20(abstractC07714u.A0H) || !abstractC07714u.A0e()) {
            return;
        }
        ED ed = this.A00;
        if (A01[6].charAt(16) != 'e') {
            throw new RuntimeException();
        }
        A01[0] = "BbBTSQcWyeSpGVnm";
        ed.removeDetachedView(abstractC07714u.A0H, false);
    }
}
