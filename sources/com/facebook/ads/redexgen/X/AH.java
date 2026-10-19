package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class AH extends MU {
    public final /* synthetic */ AF A00;

    public AH(AF af) {
        this.A00 = af;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC08448a
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(AnonymousClass72 anonymousClass72) {
        if (this.A00.A03 == null) {
            return;
        }
        this.A00.A03.onPause();
    }
}
