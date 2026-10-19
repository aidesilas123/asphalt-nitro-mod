package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Pz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1283Pz extends AbstractC08448a<AnonymousClass75> {
    public final /* synthetic */ AnonymousClass76 A00;

    public C1283Pz(AnonymousClass76 anonymousClass76) {
        this.A00 = anonymousClass76;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC08448a
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(AnonymousClass75 anonymousClass75) {
        int iA00 = anonymousClass75.A00();
        int iA01 = anonymousClass75.A01();
        if (this.A00.A00 <= 0 || iA00 != iA01 || iA01 <= this.A00.A00) {
            if (iA01 >= iA00 + 500) {
                this.A00.A0d(iA00);
            } else if (iA01 != 0) {
                this.A00.A0d(iA01);
            } else {
                AnonymousClass76 anonymousClass76 = this.A00;
                anonymousClass76.A0d(anonymousClass76.A00);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC08448a
    public final Class<AnonymousClass75> A01() {
        return AnonymousClass75.class;
    }
}
