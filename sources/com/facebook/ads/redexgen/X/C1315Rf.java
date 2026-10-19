package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Rf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1315Rf implements R0 {
    public static String[] A01 = {"uB1RC", "E7rLPB8klTW5J9FjuULp7NzB4AWE19Zm", "BGfRoGqubHgomR1aknLAm7BQoVqY9Rjo", "2aqRDajB7mkFiu8JUeuEjEkcXKsGj4gd", "YPIu8FWl8tmTV", "O2dNNTCX3dr0fdBVB7HhwqWACslxe6aK", "WKmspm9NaQlidgYEldSczPSkp8W1cJlS", "CDbKVWoo3Luj5aOlcVCk0HC1kDrFWNgV"};
    public final /* synthetic */ PU A00;

    public C1315Rf(PU pu) {
        this.A00 = pu;
    }

    @Override // com.facebook.ads.redexgen.X.R0
    public final void AE0() {
        if (this.A00.A02 != null) {
            PU pu = this.A00;
            if (A01[3].charAt(8) == 'm') {
                throw new RuntimeException();
            }
            A01[3] = "G62o5XZ8JRlbj2NUyH9KkdSeUCUXeXTA";
            pu.A02.A3z(this.A00.A03.A7o());
        }
    }

    @Override // com.facebook.ads.redexgen.X.R0
    public final void AE2(R2 r2) {
        if (this.A00.A02 == null) {
            return;
        }
        if (r2 == null || !r2.A00()) {
            this.A00.A02.A3z(this.A00.A03.A7o());
            return;
        }
        InterfaceC1173Lt interfaceC1173Lt = this.A00.A02;
        PU pu = this.A00;
        if (A01[5].length() == 14) {
            throw new RuntimeException();
        }
        A01[1] = "MYgqySdSEunU6EGhIZ8lv2VKjJmAUpiH";
        interfaceC1173Lt.A3z(pu.A03.A7p());
    }
}
