package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.6y, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C08206y extends MI {
    public final /* synthetic */ K2 A00;

    public C08206y(K2 k2) {
        this.A00 = k2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.AbstractC08448a
    /* JADX INFO: renamed from: A00, reason: merged with bridge method [inline-methods] */
    public final void A03(MJ mj) {
        if (this.A00.A03 && this.A00.A02) {
            this.A00.A03 = false;
            if (this.A00.A0D(Q5.A04) || this.A00.A04) {
                this.A00.A04 = false;
                this.A00.A05.postDelayed(new K4(this), this.A00.A00);
            } else if (this.A00.A0D(Q5.A03)) {
                this.A00.A03();
                this.A00.A06(true, true);
            }
        }
    }
}
