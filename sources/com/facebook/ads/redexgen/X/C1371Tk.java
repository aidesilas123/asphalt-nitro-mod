package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Tk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1371Tk extends AbstractC07594h {
    public static String[] A01 = {"8Yn2PgyedH1iX", "R67HljoZMbsPm0e6EtybvG", "", "R8Pp2uuVTku92bGxcvFWCvwfHASfPd1y", "2y5E80sPhAjkTDK", "Itturke", "abRBLy2wdT4xlnoMDCf2vtSzdY3x1mV2", "QG421Xj1ReSIzqeVHucrcoJTP843GzsJ"};
    public final /* synthetic */ C2O A00;

    public C1371Tk(C2O c2o) {
        this.A00 = c2o;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC07594h
    public final void A0L(ED ed, int i) {
        int iA27;
        super.A0L(ed, i);
        ZC layoutManager = this.A00.getLayoutManager();
        if (layoutManager != null && (iA27 = layoutManager.A27()) >= 0 && this.A00.getAdapter() != null && iA27 < this.A00.getAdapter().A0D()) {
            InterfaceC1176Lw interfaceC1176Lw = (InterfaceC1176Lw) ed.A1F(iA27);
            if (A01[1].length() == 0) {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[5] = "EBOsosi";
            strArr[2] = "";
            if (interfaceC1176Lw == null) {
                return;
            }
            interfaceC1176Lw.AF7();
        }
    }
}
