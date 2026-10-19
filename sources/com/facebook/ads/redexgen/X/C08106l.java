package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.6l, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C08106l extends L1 {
    public final /* synthetic */ C1124Ju A00;

    public C08106l(C1124Ju c1124Ju) {
        this.A00 = c1124Ju;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC08448a
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(L2 l2) {
        if (this.A00.A01 != null && l2.A00().getAction() == 0) {
            this.A00.A04.removeCallbacksAndMessages(null);
            this.A00.A07(new C1278Pu(this));
        }
    }
}
