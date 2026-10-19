package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class Q0 extends AbstractC08448a<AnonymousClass71> {
    public final /* synthetic */ AnonymousClass76 A00;

    public Q0(AnonymousClass76 anonymousClass76) {
        this.A00 = anonymousClass76;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC08448a
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(AnonymousClass71 anonymousClass71) {
        int iA00 = anonymousClass71.A00();
        if (this.A00.A00 <= 0 || iA00 != this.A00.A0B.getDuration() || this.A00.A0B.getDuration() <= this.A00.A00) {
            this.A00.A0e(iA00);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC08448a
    public final Class<AnonymousClass71> A01() {
        return AnonymousClass71.class;
    }
}
