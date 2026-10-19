package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Te, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1366Te implements InterfaceC1142Km {
    public static String[] A02 = {"loUGRX1wFwfO8pi8DgxPrGsPJe85sO42", "t9Fx4", "3oarn8HbUVUj6u6EULIVhfy23k9jn", "", "MOoTM", "MayuUyWiOMYLrKJeDUJbe9Zh46", "X9niQtR04keYRbnSLMpJZHmvyyUcrdIf", "5gFPyDfRsmHweMwy7A1yA2IFiPZ"};
    public final /* synthetic */ int A00;
    public final /* synthetic */ AbstractC1365Td A01;

    public C1366Te(AbstractC1365Td abstractC1365Td, int i) {
        this.A01 = abstractC1365Td;
        this.A00 = i;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1142Km
    public final void AAv() {
        this.A01.A03 = false;
        this.A01.A0U();
        this.A01.A0E.setToolbarActionMode(this.A01.getCloseButtonStyle());
        if (this.A01.A07) {
            PU pu = this.A01.A06;
            if (A02[2].length() == 15) {
                throw new RuntimeException();
            }
            String[] strArr = A02;
            strArr[7] = "KtnVXPQG8pyake3V1oVxr2XzOzf";
            strArr[3] = "";
            if (pu != null) {
                this.A01.A06.A05();
                this.A01.A09.A3z(new TQ().A5o());
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1142Km
    public final void ACZ(float f2) {
        this.A01.A0E.setProgress(100.0f * (1.0f - (f2 / this.A00)));
    }
}
