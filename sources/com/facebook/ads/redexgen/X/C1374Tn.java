package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Tn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1374Tn implements N5 {
    public final /* synthetic */ InterfaceC1173Lt A00;
    public final /* synthetic */ C1372Tl A01;

    public C1374Tn(C1372Tl c1372Tl, InterfaceC1173Lt interfaceC1173Lt) {
        this.A01 = c1372Tl;
        this.A00 = interfaceC1173Lt;
    }

    @Override // com.facebook.ads.redexgen.X.N5
    public final void ACG(String str) {
        this.A01.A0A.setProgress(100);
        this.A01.A05 = false;
    }

    @Override // com.facebook.ads.redexgen.X.N5
    public final void ACI(String str) {
        this.A01.A05 = true;
        this.A01.A09.setUrl(str);
    }

    @Override // com.facebook.ads.redexgen.X.N5
    public final void ACa(int i) {
        if (this.A01.A05) {
            this.A01.A0A.setProgress(i);
        }
    }

    @Override // com.facebook.ads.redexgen.X.N5
    public final void ACf(String str) {
        this.A01.A09.setTitle(str);
    }

    @Override // com.facebook.ads.redexgen.X.N5
    public final void ACh() {
        this.A00.AAl(14);
    }
}
