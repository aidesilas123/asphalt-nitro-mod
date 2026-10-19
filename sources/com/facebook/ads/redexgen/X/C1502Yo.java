package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Yo, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1502Yo extends AbstractRunnableC1125Jv {
    public final /* synthetic */ C1501Yn A00;

    public C1502Yo(C1501Yn c1501Yn) {
        this.A00 = c1501Yn;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1125Jv
    public final void A01() {
        if (this.A00.A01.A06() != null) {
            this.A00.A01.A06().onLoggingImpression(this.A00.A01.A07());
        }
    }
}
